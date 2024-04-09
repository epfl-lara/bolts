; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120396 () Bool)

(assert start!120396)

(declare-fun b!1400796 () Bool)

(declare-fun e!793166 () Bool)

(declare-fun e!793160 () Bool)

(assert (=> b!1400796 (= e!793166 e!793160)))

(declare-fun res!939424 () Bool)

(assert (=> b!1400796 (=> res!939424 e!793160)))

(declare-datatypes ((array!95723 0))(
  ( (array!95724 (arr!46208 (Array (_ BitVec 32) (_ BitVec 64))) (size!46759 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95723)

(declare-datatypes ((SeekEntryResult!10547 0))(
  ( (MissingZero!10547 (index!44564 (_ BitVec 32))) (Found!10547 (index!44565 (_ BitVec 32))) (Intermediate!10547 (undefined!11359 Bool) (index!44566 (_ BitVec 32)) (x!126209 (_ BitVec 32))) (Undefined!10547) (MissingVacant!10547 (index!44567 (_ BitVec 32))) )
))
(declare-fun lt!616465 () SeekEntryResult!10547)

(declare-fun lt!616464 () (_ BitVec 32))

(declare-fun lt!616471 () SeekEntryResult!10547)

(assert (=> b!1400796 (= res!939424 (or (bvslt (x!126209 lt!616465) #b00000000000000000000000000000000) (bvsgt (x!126209 lt!616465) #b01111111111111111111111111111110) (bvslt (x!126209 lt!616471) #b00000000000000000000000000000000) (bvsgt (x!126209 lt!616471) #b01111111111111111111111111111110) (bvslt lt!616464 #b00000000000000000000000000000000) (bvsge lt!616464 (size!46759 a!2901)) (bvslt (index!44566 lt!616465) #b00000000000000000000000000000000) (bvsge (index!44566 lt!616465) (size!46759 a!2901)) (bvslt (index!44566 lt!616471) #b00000000000000000000000000000000) (bvsge (index!44566 lt!616471) (size!46759 a!2901)) (not (= lt!616465 (Intermediate!10547 false (index!44566 lt!616465) (x!126209 lt!616465)))) (not (= lt!616471 (Intermediate!10547 false (index!44566 lt!616471) (x!126209 lt!616471))))))))

(declare-fun e!793163 () Bool)

(assert (=> b!1400796 e!793163))

(declare-fun res!939421 () Bool)

(assert (=> b!1400796 (=> (not res!939421) (not e!793163))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1400796 (= res!939421 (and (not (undefined!11359 lt!616471)) (= (index!44566 lt!616471) i!1037) (bvslt (x!126209 lt!616471) (x!126209 lt!616465)) (= (select (store (arr!46208 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44566 lt!616471)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((Unit!47048 0))(
  ( (Unit!47049) )
))
(declare-fun lt!616470 () Unit!47048)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95723 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47048)

(assert (=> b!1400796 (= lt!616470 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616464 (x!126209 lt!616465) (index!44566 lt!616465) (x!126209 lt!616471) (index!44566 lt!616471) (undefined!11359 lt!616471) mask!2840))))

(declare-fun lt!616469 () (_ BitVec 64))

(declare-fun b!1400798 () Bool)

(declare-fun lt!616467 () array!95723)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95723 (_ BitVec 32)) SeekEntryResult!10547)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95723 (_ BitVec 32)) SeekEntryResult!10547)

(assert (=> b!1400798 (= e!793163 (= (seekEntryOrOpen!0 lt!616469 lt!616467 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126209 lt!616471) (index!44566 lt!616471) (index!44566 lt!616471) (select (arr!46208 a!2901) j!112) lt!616467 mask!2840)))))

(declare-fun b!1400799 () Bool)

(declare-fun res!939419 () Bool)

(declare-fun e!793161 () Bool)

(assert (=> b!1400799 (=> (not res!939419) (not e!793161))))

(declare-datatypes ((List!32907 0))(
  ( (Nil!32904) (Cons!32903 (h!34151 (_ BitVec 64)) (t!47608 List!32907)) )
))
(declare-fun arrayNoDuplicates!0 (array!95723 (_ BitVec 32) List!32907) Bool)

(assert (=> b!1400799 (= res!939419 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32904))))

(declare-fun b!1400800 () Bool)

(declare-fun res!939420 () Bool)

(assert (=> b!1400800 (=> (not res!939420) (not e!793161))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1400800 (= res!939420 (validKeyInArray!0 (select (arr!46208 a!2901) j!112)))))

(declare-fun b!1400797 () Bool)

(declare-fun e!793165 () Bool)

(assert (=> b!1400797 (= e!793161 (not e!793165))))

(declare-fun res!939422 () Bool)

(assert (=> b!1400797 (=> res!939422 e!793165)))

(get-info :version)

(assert (=> b!1400797 (= res!939422 (or (not ((_ is Intermediate!10547) lt!616465)) (undefined!11359 lt!616465)))))

(declare-fun e!793164 () Bool)

(assert (=> b!1400797 e!793164))

(declare-fun res!939425 () Bool)

(assert (=> b!1400797 (=> (not res!939425) (not e!793164))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95723 (_ BitVec 32)) Bool)

(assert (=> b!1400797 (= res!939425 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!616468 () Unit!47048)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95723 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47048)

(assert (=> b!1400797 (= lt!616468 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95723 (_ BitVec 32)) SeekEntryResult!10547)

(assert (=> b!1400797 (= lt!616465 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616464 (select (arr!46208 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1400797 (= lt!616464 (toIndex!0 (select (arr!46208 a!2901) j!112) mask!2840))))

(declare-fun res!939418 () Bool)

(assert (=> start!120396 (=> (not res!939418) (not e!793161))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120396 (= res!939418 (validMask!0 mask!2840))))

(assert (=> start!120396 e!793161))

(assert (=> start!120396 true))

(declare-fun array_inv!35153 (array!95723) Bool)

(assert (=> start!120396 (array_inv!35153 a!2901)))

(declare-fun b!1400801 () Bool)

(assert (=> b!1400801 (= e!793165 e!793166)))

(declare-fun res!939416 () Bool)

(assert (=> b!1400801 (=> res!939416 e!793166)))

(assert (=> b!1400801 (= res!939416 (or (= lt!616465 lt!616471) (not ((_ is Intermediate!10547) lt!616471))))))

(assert (=> b!1400801 (= lt!616471 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616469 mask!2840) lt!616469 lt!616467 mask!2840))))

(assert (=> b!1400801 (= lt!616469 (select (store (arr!46208 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1400801 (= lt!616467 (array!95724 (store (arr!46208 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46759 a!2901)))))

(declare-fun b!1400802 () Bool)

(declare-fun res!939426 () Bool)

(assert (=> b!1400802 (=> (not res!939426) (not e!793161))))

(assert (=> b!1400802 (= res!939426 (and (= (size!46759 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46759 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46759 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1400803 () Bool)

(declare-fun res!939417 () Bool)

(assert (=> b!1400803 (=> (not res!939417) (not e!793161))))

(assert (=> b!1400803 (= res!939417 (validKeyInArray!0 (select (arr!46208 a!2901) i!1037)))))

(declare-fun b!1400804 () Bool)

(declare-fun res!939423 () Bool)

(assert (=> b!1400804 (=> (not res!939423) (not e!793161))))

(assert (=> b!1400804 (= res!939423 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1400805 () Bool)

(assert (=> b!1400805 (= e!793164 (= (seekEntryOrOpen!0 (select (arr!46208 a!2901) j!112) a!2901 mask!2840) (Found!10547 j!112)))))

(declare-fun b!1400806 () Bool)

(assert (=> b!1400806 (= e!793160 true)))

(declare-fun lt!616466 () SeekEntryResult!10547)

(assert (=> b!1400806 (= lt!616466 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616464 lt!616469 lt!616467 mask!2840))))

(assert (= (and start!120396 res!939418) b!1400802))

(assert (= (and b!1400802 res!939426) b!1400803))

(assert (= (and b!1400803 res!939417) b!1400800))

(assert (= (and b!1400800 res!939420) b!1400804))

(assert (= (and b!1400804 res!939423) b!1400799))

(assert (= (and b!1400799 res!939419) b!1400797))

(assert (= (and b!1400797 res!939425) b!1400805))

(assert (= (and b!1400797 (not res!939422)) b!1400801))

(assert (= (and b!1400801 (not res!939416)) b!1400796))

(assert (= (and b!1400796 res!939421) b!1400798))

(assert (= (and b!1400796 (not res!939424)) b!1400806))

(declare-fun m!1288453 () Bool)

(assert (=> b!1400801 m!1288453))

(assert (=> b!1400801 m!1288453))

(declare-fun m!1288455 () Bool)

(assert (=> b!1400801 m!1288455))

(declare-fun m!1288457 () Bool)

(assert (=> b!1400801 m!1288457))

(declare-fun m!1288459 () Bool)

(assert (=> b!1400801 m!1288459))

(assert (=> b!1400796 m!1288457))

(declare-fun m!1288461 () Bool)

(assert (=> b!1400796 m!1288461))

(declare-fun m!1288463 () Bool)

(assert (=> b!1400796 m!1288463))

(declare-fun m!1288465 () Bool)

(assert (=> b!1400797 m!1288465))

(declare-fun m!1288467 () Bool)

(assert (=> b!1400797 m!1288467))

(assert (=> b!1400797 m!1288465))

(assert (=> b!1400797 m!1288465))

(declare-fun m!1288469 () Bool)

(assert (=> b!1400797 m!1288469))

(declare-fun m!1288471 () Bool)

(assert (=> b!1400797 m!1288471))

(declare-fun m!1288473 () Bool)

(assert (=> b!1400797 m!1288473))

(declare-fun m!1288475 () Bool)

(assert (=> b!1400804 m!1288475))

(declare-fun m!1288477 () Bool)

(assert (=> b!1400806 m!1288477))

(assert (=> b!1400800 m!1288465))

(assert (=> b!1400800 m!1288465))

(declare-fun m!1288479 () Bool)

(assert (=> b!1400800 m!1288479))

(assert (=> b!1400805 m!1288465))

(assert (=> b!1400805 m!1288465))

(declare-fun m!1288481 () Bool)

(assert (=> b!1400805 m!1288481))

(declare-fun m!1288483 () Bool)

(assert (=> start!120396 m!1288483))

(declare-fun m!1288485 () Bool)

(assert (=> start!120396 m!1288485))

(declare-fun m!1288487 () Bool)

(assert (=> b!1400798 m!1288487))

(assert (=> b!1400798 m!1288465))

(assert (=> b!1400798 m!1288465))

(declare-fun m!1288489 () Bool)

(assert (=> b!1400798 m!1288489))

(declare-fun m!1288491 () Bool)

(assert (=> b!1400799 m!1288491))

(declare-fun m!1288493 () Bool)

(assert (=> b!1400803 m!1288493))

(assert (=> b!1400803 m!1288493))

(declare-fun m!1288495 () Bool)

(assert (=> b!1400803 m!1288495))

(check-sat (not b!1400796) (not b!1400799) (not b!1400798) (not b!1400797) (not b!1400801) (not b!1400806) (not start!120396) (not b!1400803) (not b!1400804) (not b!1400800) (not b!1400805))
(check-sat)
