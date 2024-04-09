; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120430 () Bool)

(assert start!120430)

(declare-fun b!1401357 () Bool)

(declare-fun e!793518 () Bool)

(assert (=> b!1401357 (= e!793518 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!616876 () (_ BitVec 32))

(declare-fun lt!616877 () (_ BitVec 64))

(declare-datatypes ((array!95757 0))(
  ( (array!95758 (arr!46225 (Array (_ BitVec 32) (_ BitVec 64))) (size!46776 (_ BitVec 32))) )
))
(declare-fun lt!616873 () array!95757)

(declare-datatypes ((SeekEntryResult!10564 0))(
  ( (MissingZero!10564 (index!44632 (_ BitVec 32))) (Found!10564 (index!44633 (_ BitVec 32))) (Intermediate!10564 (undefined!11376 Bool) (index!44634 (_ BitVec 32)) (x!126274 (_ BitVec 32))) (Undefined!10564) (MissingVacant!10564 (index!44635 (_ BitVec 32))) )
))
(declare-fun lt!616874 () SeekEntryResult!10564)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95757 (_ BitVec 32)) SeekEntryResult!10564)

(assert (=> b!1401357 (= lt!616874 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616876 lt!616877 lt!616873 mask!2840))))

(declare-fun a!2901 () array!95757)

(declare-fun e!793520 () Bool)

(declare-fun b!1401358 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95757 (_ BitVec 32)) SeekEntryResult!10564)

(assert (=> b!1401358 (= e!793520 (= (seekEntryOrOpen!0 (select (arr!46225 a!2901) j!112) a!2901 mask!2840) (Found!10564 j!112)))))

(declare-fun b!1401359 () Bool)

(declare-fun e!793522 () Bool)

(assert (=> b!1401359 (= e!793522 e!793518)))

(declare-fun res!939983 () Bool)

(assert (=> b!1401359 (=> res!939983 e!793518)))

(declare-fun lt!616875 () SeekEntryResult!10564)

(declare-fun lt!616879 () SeekEntryResult!10564)

(assert (=> b!1401359 (= res!939983 (or (bvslt (x!126274 lt!616879) #b00000000000000000000000000000000) (bvsgt (x!126274 lt!616879) #b01111111111111111111111111111110) (bvslt (x!126274 lt!616875) #b00000000000000000000000000000000) (bvsgt (x!126274 lt!616875) #b01111111111111111111111111111110) (bvslt lt!616876 #b00000000000000000000000000000000) (bvsge lt!616876 (size!46776 a!2901)) (bvslt (index!44634 lt!616879) #b00000000000000000000000000000000) (bvsge (index!44634 lt!616879) (size!46776 a!2901)) (bvslt (index!44634 lt!616875) #b00000000000000000000000000000000) (bvsge (index!44634 lt!616875) (size!46776 a!2901)) (not (= lt!616879 (Intermediate!10564 false (index!44634 lt!616879) (x!126274 lt!616879)))) (not (= lt!616875 (Intermediate!10564 false (index!44634 lt!616875) (x!126274 lt!616875))))))))

(declare-fun e!793519 () Bool)

(assert (=> b!1401359 e!793519))

(declare-fun res!939982 () Bool)

(assert (=> b!1401359 (=> (not res!939982) (not e!793519))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1401359 (= res!939982 (and (not (undefined!11376 lt!616875)) (= (index!44634 lt!616875) i!1037) (bvslt (x!126274 lt!616875) (x!126274 lt!616879)) (= (select (store (arr!46225 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44634 lt!616875)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47082 0))(
  ( (Unit!47083) )
))
(declare-fun lt!616872 () Unit!47082)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95757 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47082)

(assert (=> b!1401359 (= lt!616872 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616876 (x!126274 lt!616879) (index!44634 lt!616879) (x!126274 lt!616875) (index!44634 lt!616875) (undefined!11376 lt!616875) mask!2840))))

(declare-fun b!1401360 () Bool)

(declare-fun e!793521 () Bool)

(declare-fun e!793523 () Bool)

(assert (=> b!1401360 (= e!793521 (not e!793523))))

(declare-fun res!939981 () Bool)

(assert (=> b!1401360 (=> res!939981 e!793523)))

(assert (=> b!1401360 (= res!939981 (or (not (is-Intermediate!10564 lt!616879)) (undefined!11376 lt!616879)))))

(assert (=> b!1401360 e!793520))

(declare-fun res!939977 () Bool)

(assert (=> b!1401360 (=> (not res!939977) (not e!793520))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95757 (_ BitVec 32)) Bool)

(assert (=> b!1401360 (= res!939977 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!616878 () Unit!47082)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95757 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47082)

(assert (=> b!1401360 (= lt!616878 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1401360 (= lt!616879 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616876 (select (arr!46225 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1401360 (= lt!616876 (toIndex!0 (select (arr!46225 a!2901) j!112) mask!2840))))

(declare-fun b!1401361 () Bool)

(declare-fun res!939985 () Bool)

(assert (=> b!1401361 (=> (not res!939985) (not e!793521))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1401361 (= res!939985 (validKeyInArray!0 (select (arr!46225 a!2901) i!1037)))))

(declare-fun b!1401362 () Bool)

(declare-fun res!939980 () Bool)

(assert (=> b!1401362 (=> (not res!939980) (not e!793521))))

(assert (=> b!1401362 (= res!939980 (validKeyInArray!0 (select (arr!46225 a!2901) j!112)))))

(declare-fun b!1401364 () Bool)

(declare-fun res!939978 () Bool)

(assert (=> b!1401364 (=> (not res!939978) (not e!793521))))

(declare-datatypes ((List!32924 0))(
  ( (Nil!32921) (Cons!32920 (h!34168 (_ BitVec 64)) (t!47625 List!32924)) )
))
(declare-fun arrayNoDuplicates!0 (array!95757 (_ BitVec 32) List!32924) Bool)

(assert (=> b!1401364 (= res!939978 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32921))))

(declare-fun b!1401365 () Bool)

(declare-fun res!939979 () Bool)

(assert (=> b!1401365 (=> (not res!939979) (not e!793521))))

(assert (=> b!1401365 (= res!939979 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1401366 () Bool)

(assert (=> b!1401366 (= e!793523 e!793522)))

(declare-fun res!939987 () Bool)

(assert (=> b!1401366 (=> res!939987 e!793522)))

(assert (=> b!1401366 (= res!939987 (or (= lt!616879 lt!616875) (not (is-Intermediate!10564 lt!616875))))))

(assert (=> b!1401366 (= lt!616875 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616877 mask!2840) lt!616877 lt!616873 mask!2840))))

(assert (=> b!1401366 (= lt!616877 (select (store (arr!46225 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1401366 (= lt!616873 (array!95758 (store (arr!46225 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46776 a!2901)))))

(declare-fun b!1401367 () Bool)

(declare-fun res!939986 () Bool)

(assert (=> b!1401367 (=> (not res!939986) (not e!793521))))

(assert (=> b!1401367 (= res!939986 (and (= (size!46776 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46776 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46776 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!939984 () Bool)

(assert (=> start!120430 (=> (not res!939984) (not e!793521))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120430 (= res!939984 (validMask!0 mask!2840))))

(assert (=> start!120430 e!793521))

(assert (=> start!120430 true))

(declare-fun array_inv!35170 (array!95757) Bool)

(assert (=> start!120430 (array_inv!35170 a!2901)))

(declare-fun b!1401363 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95757 (_ BitVec 32)) SeekEntryResult!10564)

(assert (=> b!1401363 (= e!793519 (= (seekEntryOrOpen!0 lt!616877 lt!616873 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126274 lt!616875) (index!44634 lt!616875) (index!44634 lt!616875) (select (arr!46225 a!2901) j!112) lt!616873 mask!2840)))))

(assert (= (and start!120430 res!939984) b!1401367))

(assert (= (and b!1401367 res!939986) b!1401361))

(assert (= (and b!1401361 res!939985) b!1401362))

(assert (= (and b!1401362 res!939980) b!1401365))

(assert (= (and b!1401365 res!939979) b!1401364))

(assert (= (and b!1401364 res!939978) b!1401360))

(assert (= (and b!1401360 res!939977) b!1401358))

(assert (= (and b!1401360 (not res!939981)) b!1401366))

(assert (= (and b!1401366 (not res!939987)) b!1401359))

(assert (= (and b!1401359 res!939982) b!1401363))

(assert (= (and b!1401359 (not res!939983)) b!1401357))

(declare-fun m!1289201 () Bool)

(assert (=> b!1401363 m!1289201))

(declare-fun m!1289203 () Bool)

(assert (=> b!1401363 m!1289203))

(assert (=> b!1401363 m!1289203))

(declare-fun m!1289205 () Bool)

(assert (=> b!1401363 m!1289205))

(assert (=> b!1401360 m!1289203))

(declare-fun m!1289207 () Bool)

(assert (=> b!1401360 m!1289207))

(assert (=> b!1401360 m!1289203))

(declare-fun m!1289209 () Bool)

(assert (=> b!1401360 m!1289209))

(assert (=> b!1401360 m!1289203))

(declare-fun m!1289211 () Bool)

(assert (=> b!1401360 m!1289211))

(declare-fun m!1289213 () Bool)

(assert (=> b!1401360 m!1289213))

(declare-fun m!1289215 () Bool)

(assert (=> start!120430 m!1289215))

(declare-fun m!1289217 () Bool)

(assert (=> start!120430 m!1289217))

(assert (=> b!1401358 m!1289203))

(assert (=> b!1401358 m!1289203))

(declare-fun m!1289219 () Bool)

(assert (=> b!1401358 m!1289219))

(declare-fun m!1289221 () Bool)

(assert (=> b!1401357 m!1289221))

(declare-fun m!1289223 () Bool)

(assert (=> b!1401364 m!1289223))

(declare-fun m!1289225 () Bool)

(assert (=> b!1401361 m!1289225))

(assert (=> b!1401361 m!1289225))

(declare-fun m!1289227 () Bool)

(assert (=> b!1401361 m!1289227))

(declare-fun m!1289229 () Bool)

(assert (=> b!1401365 m!1289229))

(declare-fun m!1289231 () Bool)

(assert (=> b!1401359 m!1289231))

(declare-fun m!1289233 () Bool)

(assert (=> b!1401359 m!1289233))

(declare-fun m!1289235 () Bool)

(assert (=> b!1401359 m!1289235))

(declare-fun m!1289237 () Bool)

(assert (=> b!1401366 m!1289237))

(assert (=> b!1401366 m!1289237))

(declare-fun m!1289239 () Bool)

(assert (=> b!1401366 m!1289239))

(assert (=> b!1401366 m!1289231))

(declare-fun m!1289241 () Bool)

(assert (=> b!1401366 m!1289241))

(assert (=> b!1401362 m!1289203))

(assert (=> b!1401362 m!1289203))

(declare-fun m!1289243 () Bool)

(assert (=> b!1401362 m!1289243))

(push 1)

