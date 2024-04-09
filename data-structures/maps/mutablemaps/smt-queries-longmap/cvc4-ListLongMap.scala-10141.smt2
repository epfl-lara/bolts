; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119654 () Bool)

(assert start!119654)

(declare-fun b!1393221 () Bool)

(declare-fun res!932740 () Bool)

(declare-fun e!788934 () Bool)

(assert (=> b!1393221 (=> (not res!932740) (not e!788934))))

(declare-datatypes ((array!95254 0))(
  ( (array!95255 (arr!45981 (Array (_ BitVec 32) (_ BitVec 64))) (size!46532 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95254)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393221 (= res!932740 (validKeyInArray!0 (select (arr!45981 a!2901) i!1037)))))

(declare-fun b!1393223 () Bool)

(declare-fun e!788936 () Bool)

(assert (=> b!1393223 (= e!788934 (not e!788936))))

(declare-fun res!932743 () Bool)

(assert (=> b!1393223 (=> res!932743 e!788936)))

(declare-datatypes ((SeekEntryResult!10320 0))(
  ( (MissingZero!10320 (index!43650 (_ BitVec 32))) (Found!10320 (index!43651 (_ BitVec 32))) (Intermediate!10320 (undefined!11132 Bool) (index!43652 (_ BitVec 32)) (x!125335 (_ BitVec 32))) (Undefined!10320) (MissingVacant!10320 (index!43653 (_ BitVec 32))) )
))
(declare-fun lt!611880 () SeekEntryResult!10320)

(assert (=> b!1393223 (= res!932743 (or (not (is-Intermediate!10320 lt!611880)) (undefined!11132 lt!611880)))))

(declare-fun e!788935 () Bool)

(assert (=> b!1393223 e!788935))

(declare-fun res!932739 () Bool)

(assert (=> b!1393223 (=> (not res!932739) (not e!788935))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95254 (_ BitVec 32)) Bool)

(assert (=> b!1393223 (= res!932739 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46594 0))(
  ( (Unit!46595) )
))
(declare-fun lt!611879 () Unit!46594)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95254 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46594)

(assert (=> b!1393223 (= lt!611879 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95254 (_ BitVec 32)) SeekEntryResult!10320)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393223 (= lt!611880 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45981 a!2901) j!112) mask!2840) (select (arr!45981 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393224 () Bool)

(assert (=> b!1393224 (= e!788936 true)))

(declare-fun lt!611881 () SeekEntryResult!10320)

(assert (=> b!1393224 (= lt!611881 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45981 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45981 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95255 (store (arr!45981 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46532 a!2901)) mask!2840))))

(declare-fun b!1393225 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95254 (_ BitVec 32)) SeekEntryResult!10320)

(assert (=> b!1393225 (= e!788935 (= (seekEntryOrOpen!0 (select (arr!45981 a!2901) j!112) a!2901 mask!2840) (Found!10320 j!112)))))

(declare-fun b!1393226 () Bool)

(declare-fun res!932745 () Bool)

(assert (=> b!1393226 (=> (not res!932745) (not e!788934))))

(declare-datatypes ((List!32680 0))(
  ( (Nil!32677) (Cons!32676 (h!33909 (_ BitVec 64)) (t!47381 List!32680)) )
))
(declare-fun arrayNoDuplicates!0 (array!95254 (_ BitVec 32) List!32680) Bool)

(assert (=> b!1393226 (= res!932745 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32677))))

(declare-fun res!932741 () Bool)

(assert (=> start!119654 (=> (not res!932741) (not e!788934))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119654 (= res!932741 (validMask!0 mask!2840))))

(assert (=> start!119654 e!788934))

(assert (=> start!119654 true))

(declare-fun array_inv!34926 (array!95254) Bool)

(assert (=> start!119654 (array_inv!34926 a!2901)))

(declare-fun b!1393222 () Bool)

(declare-fun res!932738 () Bool)

(assert (=> b!1393222 (=> (not res!932738) (not e!788934))))

(assert (=> b!1393222 (= res!932738 (and (= (size!46532 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46532 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46532 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1393227 () Bool)

(declare-fun res!932744 () Bool)

(assert (=> b!1393227 (=> (not res!932744) (not e!788934))))

(assert (=> b!1393227 (= res!932744 (validKeyInArray!0 (select (arr!45981 a!2901) j!112)))))

(declare-fun b!1393228 () Bool)

(declare-fun res!932742 () Bool)

(assert (=> b!1393228 (=> (not res!932742) (not e!788934))))

(assert (=> b!1393228 (= res!932742 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!119654 res!932741) b!1393222))

(assert (= (and b!1393222 res!932738) b!1393221))

(assert (= (and b!1393221 res!932740) b!1393227))

(assert (= (and b!1393227 res!932744) b!1393228))

(assert (= (and b!1393228 res!932742) b!1393226))

(assert (= (and b!1393226 res!932745) b!1393223))

(assert (= (and b!1393223 res!932739) b!1393225))

(assert (= (and b!1393223 (not res!932743)) b!1393224))

(declare-fun m!1279135 () Bool)

(assert (=> b!1393225 m!1279135))

(assert (=> b!1393225 m!1279135))

(declare-fun m!1279137 () Bool)

(assert (=> b!1393225 m!1279137))

(declare-fun m!1279139 () Bool)

(assert (=> start!119654 m!1279139))

(declare-fun m!1279141 () Bool)

(assert (=> start!119654 m!1279141))

(assert (=> b!1393223 m!1279135))

(declare-fun m!1279143 () Bool)

(assert (=> b!1393223 m!1279143))

(assert (=> b!1393223 m!1279135))

(declare-fun m!1279145 () Bool)

(assert (=> b!1393223 m!1279145))

(assert (=> b!1393223 m!1279143))

(assert (=> b!1393223 m!1279135))

(declare-fun m!1279147 () Bool)

(assert (=> b!1393223 m!1279147))

(declare-fun m!1279149 () Bool)

(assert (=> b!1393223 m!1279149))

(declare-fun m!1279151 () Bool)

(assert (=> b!1393226 m!1279151))

(assert (=> b!1393227 m!1279135))

(assert (=> b!1393227 m!1279135))

(declare-fun m!1279153 () Bool)

(assert (=> b!1393227 m!1279153))

(declare-fun m!1279155 () Bool)

(assert (=> b!1393221 m!1279155))

(assert (=> b!1393221 m!1279155))

(declare-fun m!1279157 () Bool)

(assert (=> b!1393221 m!1279157))

(declare-fun m!1279159 () Bool)

(assert (=> b!1393228 m!1279159))

(declare-fun m!1279161 () Bool)

(assert (=> b!1393224 m!1279161))

(declare-fun m!1279163 () Bool)

(assert (=> b!1393224 m!1279163))

(assert (=> b!1393224 m!1279163))

(declare-fun m!1279165 () Bool)

(assert (=> b!1393224 m!1279165))

(assert (=> b!1393224 m!1279165))

(assert (=> b!1393224 m!1279163))

(declare-fun m!1279167 () Bool)

(assert (=> b!1393224 m!1279167))

(push 1)

(assert (not b!1393228))

(assert (not b!1393223))

(assert (not b!1393221))

(assert (not b!1393225))

(assert (not b!1393224))

(assert (not start!119654))

(assert (not b!1393227))

(assert (not b!1393226))

(check-sat)

(pop 1)

