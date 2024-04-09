; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121230 () Bool)

(assert start!121230)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96302 0))(
  ( (array!96303 (arr!46490 (Array (_ BitVec 32) (_ BitVec 64))) (size!47041 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96302)

(declare-fun b!1409040 () Bool)

(declare-fun e!797422 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10823 0))(
  ( (MissingZero!10823 (index!45668 (_ BitVec 32))) (Found!10823 (index!45669 (_ BitVec 32))) (Intermediate!10823 (undefined!11635 Bool) (index!45670 (_ BitVec 32)) (x!127267 (_ BitVec 32))) (Undefined!10823) (MissingVacant!10823 (index!45671 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96302 (_ BitVec 32)) SeekEntryResult!10823)

(assert (=> b!1409040 (= e!797422 (= (seekEntryOrOpen!0 (select (arr!46490 a!2901) j!112) a!2901 mask!2840) (Found!10823 j!112)))))

(declare-fun b!1409041 () Bool)

(declare-fun e!797421 () Bool)

(declare-fun e!797420 () Bool)

(assert (=> b!1409041 (= e!797421 (not e!797420))))

(declare-fun res!946878 () Bool)

(assert (=> b!1409041 (=> res!946878 e!797420)))

(declare-fun lt!620544 () SeekEntryResult!10823)

(get-info :version)

(assert (=> b!1409041 (= res!946878 (or (not ((_ is Intermediate!10823) lt!620544)) (undefined!11635 lt!620544)))))

(assert (=> b!1409041 e!797422))

(declare-fun res!946875 () Bool)

(assert (=> b!1409041 (=> (not res!946875) (not e!797422))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96302 (_ BitVec 32)) Bool)

(assert (=> b!1409041 (= res!946875 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47570 0))(
  ( (Unit!47571) )
))
(declare-fun lt!620543 () Unit!47570)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96302 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47570)

(assert (=> b!1409041 (= lt!620543 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96302 (_ BitVec 32)) SeekEntryResult!10823)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409041 (= lt!620544 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46490 a!2901) j!112) mask!2840) (select (arr!46490 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1409042 () Bool)

(declare-fun res!946872 () Bool)

(assert (=> b!1409042 (=> (not res!946872) (not e!797421))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1409042 (= res!946872 (validKeyInArray!0 (select (arr!46490 a!2901) j!112)))))

(declare-fun b!1409043 () Bool)

(declare-fun res!946871 () Bool)

(assert (=> b!1409043 (=> (not res!946871) (not e!797421))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1409043 (= res!946871 (validKeyInArray!0 (select (arr!46490 a!2901) i!1037)))))

(declare-fun b!1409044 () Bool)

(declare-fun res!946873 () Bool)

(assert (=> b!1409044 (=> (not res!946873) (not e!797421))))

(declare-datatypes ((List!33189 0))(
  ( (Nil!33186) (Cons!33185 (h!34448 (_ BitVec 64)) (t!47890 List!33189)) )
))
(declare-fun arrayNoDuplicates!0 (array!96302 (_ BitVec 32) List!33189) Bool)

(assert (=> b!1409044 (= res!946873 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33186))))

(declare-fun res!946876 () Bool)

(assert (=> start!121230 (=> (not res!946876) (not e!797421))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121230 (= res!946876 (validMask!0 mask!2840))))

(assert (=> start!121230 e!797421))

(assert (=> start!121230 true))

(declare-fun array_inv!35435 (array!96302) Bool)

(assert (=> start!121230 (array_inv!35435 a!2901)))

(declare-fun b!1409045 () Bool)

(assert (=> b!1409045 (= e!797420 true)))

(declare-fun lt!620545 () SeekEntryResult!10823)

(assert (=> b!1409045 (= lt!620545 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46490 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46490 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96303 (store (arr!46490 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47041 a!2901)) mask!2840))))

(declare-fun b!1409046 () Bool)

(declare-fun res!946874 () Bool)

(assert (=> b!1409046 (=> (not res!946874) (not e!797421))))

(assert (=> b!1409046 (= res!946874 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1409047 () Bool)

(declare-fun res!946877 () Bool)

(assert (=> b!1409047 (=> (not res!946877) (not e!797421))))

(assert (=> b!1409047 (= res!946877 (and (= (size!47041 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47041 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47041 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!121230 res!946876) b!1409047))

(assert (= (and b!1409047 res!946877) b!1409043))

(assert (= (and b!1409043 res!946871) b!1409042))

(assert (= (and b!1409042 res!946872) b!1409046))

(assert (= (and b!1409046 res!946874) b!1409044))

(assert (= (and b!1409044 res!946873) b!1409041))

(assert (= (and b!1409041 res!946875) b!1409040))

(assert (= (and b!1409041 (not res!946878)) b!1409045))

(declare-fun m!1298685 () Bool)

(assert (=> b!1409041 m!1298685))

(declare-fun m!1298687 () Bool)

(assert (=> b!1409041 m!1298687))

(assert (=> b!1409041 m!1298685))

(declare-fun m!1298689 () Bool)

(assert (=> b!1409041 m!1298689))

(assert (=> b!1409041 m!1298687))

(assert (=> b!1409041 m!1298685))

(declare-fun m!1298691 () Bool)

(assert (=> b!1409041 m!1298691))

(declare-fun m!1298693 () Bool)

(assert (=> b!1409041 m!1298693))

(declare-fun m!1298695 () Bool)

(assert (=> start!121230 m!1298695))

(declare-fun m!1298697 () Bool)

(assert (=> start!121230 m!1298697))

(declare-fun m!1298699 () Bool)

(assert (=> b!1409044 m!1298699))

(assert (=> b!1409040 m!1298685))

(assert (=> b!1409040 m!1298685))

(declare-fun m!1298701 () Bool)

(assert (=> b!1409040 m!1298701))

(declare-fun m!1298703 () Bool)

(assert (=> b!1409043 m!1298703))

(assert (=> b!1409043 m!1298703))

(declare-fun m!1298705 () Bool)

(assert (=> b!1409043 m!1298705))

(declare-fun m!1298707 () Bool)

(assert (=> b!1409045 m!1298707))

(declare-fun m!1298709 () Bool)

(assert (=> b!1409045 m!1298709))

(assert (=> b!1409045 m!1298709))

(declare-fun m!1298711 () Bool)

(assert (=> b!1409045 m!1298711))

(assert (=> b!1409045 m!1298711))

(assert (=> b!1409045 m!1298709))

(declare-fun m!1298713 () Bool)

(assert (=> b!1409045 m!1298713))

(assert (=> b!1409042 m!1298685))

(assert (=> b!1409042 m!1298685))

(declare-fun m!1298715 () Bool)

(assert (=> b!1409042 m!1298715))

(declare-fun m!1298717 () Bool)

(assert (=> b!1409046 m!1298717))

(check-sat (not start!121230) (not b!1409046) (not b!1409044) (not b!1409045) (not b!1409043) (not b!1409041) (not b!1409040) (not b!1409042))
