; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121698 () Bool)

(assert start!121698)

(declare-fun b!1413400 () Bool)

(declare-fun e!799911 () Bool)

(declare-fun e!799916 () Bool)

(assert (=> b!1413400 (= e!799911 e!799916)))

(declare-fun res!950504 () Bool)

(assert (=> b!1413400 (=> res!950504 e!799916)))

(declare-datatypes ((SeekEntryResult!10943 0))(
  ( (MissingZero!10943 (index!46151 (_ BitVec 32))) (Found!10943 (index!46152 (_ BitVec 32))) (Intermediate!10943 (undefined!11755 Bool) (index!46153 (_ BitVec 32)) (x!127737 (_ BitVec 32))) (Undefined!10943) (MissingVacant!10943 (index!46154 (_ BitVec 32))) )
))
(declare-fun lt!623009 () SeekEntryResult!10943)

(declare-fun lt!623007 () SeekEntryResult!10943)

(get-info :version)

(assert (=> b!1413400 (= res!950504 (or (= lt!623009 lt!623007) (not ((_ is Intermediate!10943) lt!623007))))))

(declare-fun lt!623010 () (_ BitVec 64))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96554 0))(
  ( (array!96555 (arr!46610 (Array (_ BitVec 32) (_ BitVec 64))) (size!47161 (_ BitVec 32))) )
))
(declare-fun lt!623006 () array!96554)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96554 (_ BitVec 32)) SeekEntryResult!10943)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1413400 (= lt!623007 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623010 mask!2840) lt!623010 lt!623006 mask!2840))))

(declare-fun a!2901 () array!96554)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1413400 (= lt!623010 (select (store (arr!46610 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1413400 (= lt!623006 (array!96555 (store (arr!46610 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47161 a!2901)))))

(declare-fun b!1413401 () Bool)

(declare-fun res!950501 () Bool)

(declare-fun e!799915 () Bool)

(assert (=> b!1413401 (=> (not res!950501) (not e!799915))))

(assert (=> b!1413401 (= res!950501 (and (= (size!47161 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47161 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47161 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1413402 () Bool)

(assert (=> b!1413402 (= e!799915 (not e!799911))))

(declare-fun res!950502 () Bool)

(assert (=> b!1413402 (=> res!950502 e!799911)))

(assert (=> b!1413402 (= res!950502 (or (not ((_ is Intermediate!10943) lt!623009)) (undefined!11755 lt!623009)))))

(declare-fun e!799914 () Bool)

(assert (=> b!1413402 e!799914))

(declare-fun res!950499 () Bool)

(assert (=> b!1413402 (=> (not res!950499) (not e!799914))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96554 (_ BitVec 32)) Bool)

(assert (=> b!1413402 (= res!950499 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47810 0))(
  ( (Unit!47811) )
))
(declare-fun lt!623005 () Unit!47810)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96554 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47810)

(assert (=> b!1413402 (= lt!623005 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!623011 () (_ BitVec 32))

(assert (=> b!1413402 (= lt!623009 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!623011 (select (arr!46610 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1413402 (= lt!623011 (toIndex!0 (select (arr!46610 a!2901) j!112) mask!2840))))

(declare-fun b!1413403 () Bool)

(declare-fun res!950506 () Bool)

(assert (=> b!1413403 (=> (not res!950506) (not e!799915))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1413403 (= res!950506 (validKeyInArray!0 (select (arr!46610 a!2901) j!112)))))

(declare-fun b!1413404 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96554 (_ BitVec 32)) SeekEntryResult!10943)

(assert (=> b!1413404 (= e!799914 (= (seekEntryOrOpen!0 (select (arr!46610 a!2901) j!112) a!2901 mask!2840) (Found!10943 j!112)))))

(declare-fun res!950508 () Bool)

(assert (=> start!121698 (=> (not res!950508) (not e!799915))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121698 (= res!950508 (validMask!0 mask!2840))))

(assert (=> start!121698 e!799915))

(assert (=> start!121698 true))

(declare-fun array_inv!35555 (array!96554) Bool)

(assert (=> start!121698 (array_inv!35555 a!2901)))

(declare-fun b!1413405 () Bool)

(declare-fun res!950507 () Bool)

(assert (=> b!1413405 (=> (not res!950507) (not e!799915))))

(assert (=> b!1413405 (= res!950507 (validKeyInArray!0 (select (arr!46610 a!2901) i!1037)))))

(declare-fun b!1413406 () Bool)

(declare-fun e!799912 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96554 (_ BitVec 32)) SeekEntryResult!10943)

(assert (=> b!1413406 (= e!799912 (= (seekEntryOrOpen!0 lt!623010 lt!623006 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127737 lt!623007) (index!46153 lt!623007) (index!46153 lt!623007) (select (arr!46610 a!2901) j!112) lt!623006 mask!2840)))))

(declare-fun b!1413407 () Bool)

(declare-fun res!950500 () Bool)

(assert (=> b!1413407 (=> (not res!950500) (not e!799915))))

(declare-datatypes ((List!33309 0))(
  ( (Nil!33306) (Cons!33305 (h!34580 (_ BitVec 64)) (t!48010 List!33309)) )
))
(declare-fun arrayNoDuplicates!0 (array!96554 (_ BitVec 32) List!33309) Bool)

(assert (=> b!1413407 (= res!950500 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33306))))

(declare-fun b!1413408 () Bool)

(assert (=> b!1413408 (= e!799916 (and (bvsge (x!127737 lt!623009) #b00000000000000000000000000000000) (bvsle (x!127737 lt!623009) #b01111111111111111111111111111110)))))

(assert (=> b!1413408 e!799912))

(declare-fun res!950503 () Bool)

(assert (=> b!1413408 (=> (not res!950503) (not e!799912))))

(assert (=> b!1413408 (= res!950503 (and (not (undefined!11755 lt!623007)) (= (index!46153 lt!623007) i!1037) (bvslt (x!127737 lt!623007) (x!127737 lt!623009)) (= (select (store (arr!46610 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46153 lt!623007)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!623008 () Unit!47810)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96554 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47810)

(assert (=> b!1413408 (= lt!623008 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623011 (x!127737 lt!623009) (index!46153 lt!623009) (x!127737 lt!623007) (index!46153 lt!623007) (undefined!11755 lt!623007) mask!2840))))

(declare-fun b!1413409 () Bool)

(declare-fun res!950505 () Bool)

(assert (=> b!1413409 (=> (not res!950505) (not e!799915))))

(assert (=> b!1413409 (= res!950505 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121698 res!950508) b!1413401))

(assert (= (and b!1413401 res!950501) b!1413405))

(assert (= (and b!1413405 res!950507) b!1413403))

(assert (= (and b!1413403 res!950506) b!1413409))

(assert (= (and b!1413409 res!950505) b!1413407))

(assert (= (and b!1413407 res!950500) b!1413402))

(assert (= (and b!1413402 res!950499) b!1413404))

(assert (= (and b!1413402 (not res!950502)) b!1413400))

(assert (= (and b!1413400 (not res!950504)) b!1413408))

(assert (= (and b!1413408 res!950503) b!1413406))

(declare-fun m!1303901 () Bool)

(assert (=> b!1413405 m!1303901))

(assert (=> b!1413405 m!1303901))

(declare-fun m!1303903 () Bool)

(assert (=> b!1413405 m!1303903))

(declare-fun m!1303905 () Bool)

(assert (=> b!1413402 m!1303905))

(declare-fun m!1303907 () Bool)

(assert (=> b!1413402 m!1303907))

(assert (=> b!1413402 m!1303905))

(declare-fun m!1303909 () Bool)

(assert (=> b!1413402 m!1303909))

(assert (=> b!1413402 m!1303905))

(declare-fun m!1303911 () Bool)

(assert (=> b!1413402 m!1303911))

(declare-fun m!1303913 () Bool)

(assert (=> b!1413402 m!1303913))

(declare-fun m!1303915 () Bool)

(assert (=> b!1413400 m!1303915))

(assert (=> b!1413400 m!1303915))

(declare-fun m!1303917 () Bool)

(assert (=> b!1413400 m!1303917))

(declare-fun m!1303919 () Bool)

(assert (=> b!1413400 m!1303919))

(declare-fun m!1303921 () Bool)

(assert (=> b!1413400 m!1303921))

(declare-fun m!1303923 () Bool)

(assert (=> b!1413407 m!1303923))

(assert (=> b!1413408 m!1303919))

(declare-fun m!1303925 () Bool)

(assert (=> b!1413408 m!1303925))

(declare-fun m!1303927 () Bool)

(assert (=> b!1413408 m!1303927))

(declare-fun m!1303929 () Bool)

(assert (=> start!121698 m!1303929))

(declare-fun m!1303931 () Bool)

(assert (=> start!121698 m!1303931))

(declare-fun m!1303933 () Bool)

(assert (=> b!1413406 m!1303933))

(assert (=> b!1413406 m!1303905))

(assert (=> b!1413406 m!1303905))

(declare-fun m!1303935 () Bool)

(assert (=> b!1413406 m!1303935))

(declare-fun m!1303937 () Bool)

(assert (=> b!1413409 m!1303937))

(assert (=> b!1413403 m!1303905))

(assert (=> b!1413403 m!1303905))

(declare-fun m!1303939 () Bool)

(assert (=> b!1413403 m!1303939))

(assert (=> b!1413404 m!1303905))

(assert (=> b!1413404 m!1303905))

(declare-fun m!1303941 () Bool)

(assert (=> b!1413404 m!1303941))

(check-sat (not b!1413408) (not b!1413409) (not b!1413406) (not b!1413403) (not b!1413407) (not start!121698) (not b!1413405) (not b!1413404) (not b!1413402) (not b!1413400))
(check-sat)
(get-model)

(declare-fun d!152051 () Bool)

(assert (=> d!152051 (= (validKeyInArray!0 (select (arr!46610 a!2901) i!1037)) (and (not (= (select (arr!46610 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46610 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1413405 d!152051))

(declare-fun b!1413459 () Bool)

(declare-fun lt!623038 () SeekEntryResult!10943)

(assert (=> b!1413459 (and (bvsge (index!46153 lt!623038) #b00000000000000000000000000000000) (bvslt (index!46153 lt!623038) (size!47161 lt!623006)))))

(declare-fun e!799949 () Bool)

(assert (=> b!1413459 (= e!799949 (= (select (arr!46610 lt!623006) (index!46153 lt!623038)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1413460 () Bool)

(declare-fun e!799948 () SeekEntryResult!10943)

(assert (=> b!1413460 (= e!799948 (Intermediate!10943 true (toIndex!0 lt!623010 mask!2840) #b00000000000000000000000000000000))))

(declare-fun e!799945 () SeekEntryResult!10943)

(declare-fun b!1413461 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1413461 (= e!799945 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!623010 mask!2840) #b00000000000000000000000000000000 mask!2840) lt!623010 lt!623006 mask!2840))))

(declare-fun b!1413462 () Bool)

(declare-fun e!799947 () Bool)

(declare-fun e!799946 () Bool)

(assert (=> b!1413462 (= e!799947 e!799946)))

(declare-fun res!950547 () Bool)

(assert (=> b!1413462 (= res!950547 (and ((_ is Intermediate!10943) lt!623038) (not (undefined!11755 lt!623038)) (bvslt (x!127737 lt!623038) #b01111111111111111111111111111110) (bvsge (x!127737 lt!623038) #b00000000000000000000000000000000) (bvsge (x!127737 lt!623038) #b00000000000000000000000000000000)))))

(assert (=> b!1413462 (=> (not res!950547) (not e!799946))))

(declare-fun b!1413463 () Bool)

(assert (=> b!1413463 (= e!799945 (Intermediate!10943 false (toIndex!0 lt!623010 mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1413464 () Bool)

(assert (=> b!1413464 (and (bvsge (index!46153 lt!623038) #b00000000000000000000000000000000) (bvslt (index!46153 lt!623038) (size!47161 lt!623006)))))

(declare-fun res!950545 () Bool)

(assert (=> b!1413464 (= res!950545 (= (select (arr!46610 lt!623006) (index!46153 lt!623038)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1413464 (=> res!950545 e!799949)))

(declare-fun b!1413458 () Bool)

(assert (=> b!1413458 (and (bvsge (index!46153 lt!623038) #b00000000000000000000000000000000) (bvslt (index!46153 lt!623038) (size!47161 lt!623006)))))

(declare-fun res!950546 () Bool)

(assert (=> b!1413458 (= res!950546 (= (select (arr!46610 lt!623006) (index!46153 lt!623038)) lt!623010))))

(assert (=> b!1413458 (=> res!950546 e!799949)))

(assert (=> b!1413458 (= e!799946 e!799949)))

(declare-fun d!152053 () Bool)

(assert (=> d!152053 e!799947))

(declare-fun c!130933 () Bool)

(assert (=> d!152053 (= c!130933 (and ((_ is Intermediate!10943) lt!623038) (undefined!11755 lt!623038)))))

(assert (=> d!152053 (= lt!623038 e!799948)))

(declare-fun c!130932 () Bool)

(assert (=> d!152053 (= c!130932 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!623037 () (_ BitVec 64))

(assert (=> d!152053 (= lt!623037 (select (arr!46610 lt!623006) (toIndex!0 lt!623010 mask!2840)))))

(assert (=> d!152053 (validMask!0 mask!2840)))

(assert (=> d!152053 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623010 mask!2840) lt!623010 lt!623006 mask!2840) lt!623038)))

(declare-fun b!1413465 () Bool)

(assert (=> b!1413465 (= e!799948 e!799945)))

(declare-fun c!130934 () Bool)

(assert (=> b!1413465 (= c!130934 (or (= lt!623037 lt!623010) (= (bvadd lt!623037 lt!623037) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1413466 () Bool)

(assert (=> b!1413466 (= e!799947 (bvsge (x!127737 lt!623038) #b01111111111111111111111111111110))))

(assert (= (and d!152053 c!130932) b!1413460))

(assert (= (and d!152053 (not c!130932)) b!1413465))

(assert (= (and b!1413465 c!130934) b!1413463))

(assert (= (and b!1413465 (not c!130934)) b!1413461))

(assert (= (and d!152053 c!130933) b!1413466))

(assert (= (and d!152053 (not c!130933)) b!1413462))

(assert (= (and b!1413462 res!950547) b!1413458))

(assert (= (and b!1413458 (not res!950546)) b!1413464))

(assert (= (and b!1413464 (not res!950545)) b!1413459))

(assert (=> b!1413461 m!1303915))

(declare-fun m!1303985 () Bool)

(assert (=> b!1413461 m!1303985))

(assert (=> b!1413461 m!1303985))

(declare-fun m!1303987 () Bool)

(assert (=> b!1413461 m!1303987))

(declare-fun m!1303989 () Bool)

(assert (=> b!1413459 m!1303989))

(assert (=> b!1413464 m!1303989))

(assert (=> b!1413458 m!1303989))

(assert (=> d!152053 m!1303915))

(declare-fun m!1303991 () Bool)

(assert (=> d!152053 m!1303991))

(assert (=> d!152053 m!1303929))

(assert (=> b!1413400 d!152053))

(declare-fun d!152055 () Bool)

(declare-fun lt!623044 () (_ BitVec 32))

(declare-fun lt!623043 () (_ BitVec 32))

(assert (=> d!152055 (= lt!623044 (bvmul (bvxor lt!623043 (bvlshr lt!623043 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152055 (= lt!623043 ((_ extract 31 0) (bvand (bvxor lt!623010 (bvlshr lt!623010 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152055 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!950548 (let ((h!34582 ((_ extract 31 0) (bvand (bvxor lt!623010 (bvlshr lt!623010 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127740 (bvmul (bvxor h!34582 (bvlshr h!34582 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127740 (bvlshr x!127740 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!950548 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!950548 #b00000000000000000000000000000000))))))

(assert (=> d!152055 (= (toIndex!0 lt!623010 mask!2840) (bvand (bvxor lt!623044 (bvlshr lt!623044 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1413400 d!152055))

(declare-fun d!152057 () Bool)

(assert (=> d!152057 (= (validKeyInArray!0 (select (arr!46610 a!2901) j!112)) (and (not (= (select (arr!46610 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46610 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1413403 d!152057))

(declare-fun bm!67095 () Bool)

(declare-fun call!67098 () Bool)

(assert (=> bm!67095 (= call!67098 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1413475 () Bool)

(declare-fun e!799956 () Bool)

(declare-fun e!799957 () Bool)

(assert (=> b!1413475 (= e!799956 e!799957)))

(declare-fun lt!623051 () (_ BitVec 64))

(assert (=> b!1413475 (= lt!623051 (select (arr!46610 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!623052 () Unit!47810)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96554 (_ BitVec 64) (_ BitVec 32)) Unit!47810)

(assert (=> b!1413475 (= lt!623052 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!623051 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96554 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1413475 (arrayContainsKey!0 a!2901 lt!623051 #b00000000000000000000000000000000)))

(declare-fun lt!623053 () Unit!47810)

(assert (=> b!1413475 (= lt!623053 lt!623052)))

(declare-fun res!950553 () Bool)

(assert (=> b!1413475 (= res!950553 (= (seekEntryOrOpen!0 (select (arr!46610 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10943 #b00000000000000000000000000000000)))))

(assert (=> b!1413475 (=> (not res!950553) (not e!799957))))

(declare-fun b!1413476 () Bool)

(assert (=> b!1413476 (= e!799957 call!67098)))

(declare-fun b!1413477 () Bool)

(declare-fun e!799958 () Bool)

(assert (=> b!1413477 (= e!799958 e!799956)))

(declare-fun c!130937 () Bool)

(assert (=> b!1413477 (= c!130937 (validKeyInArray!0 (select (arr!46610 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!152059 () Bool)

(declare-fun res!950554 () Bool)

(assert (=> d!152059 (=> res!950554 e!799958)))

(assert (=> d!152059 (= res!950554 (bvsge #b00000000000000000000000000000000 (size!47161 a!2901)))))

(assert (=> d!152059 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!799958)))

(declare-fun b!1413478 () Bool)

(assert (=> b!1413478 (= e!799956 call!67098)))

(assert (= (and d!152059 (not res!950554)) b!1413477))

(assert (= (and b!1413477 c!130937) b!1413475))

(assert (= (and b!1413477 (not c!130937)) b!1413478))

(assert (= (and b!1413475 res!950553) b!1413476))

(assert (= (or b!1413476 b!1413478) bm!67095))

(declare-fun m!1303993 () Bool)

(assert (=> bm!67095 m!1303993))

(declare-fun m!1303995 () Bool)

(assert (=> b!1413475 m!1303995))

(declare-fun m!1303997 () Bool)

(assert (=> b!1413475 m!1303997))

(declare-fun m!1303999 () Bool)

(assert (=> b!1413475 m!1303999))

(assert (=> b!1413475 m!1303995))

(declare-fun m!1304001 () Bool)

(assert (=> b!1413475 m!1304001))

(assert (=> b!1413477 m!1303995))

(assert (=> b!1413477 m!1303995))

(declare-fun m!1304003 () Bool)

(assert (=> b!1413477 m!1304003))

(assert (=> b!1413409 d!152059))

(declare-fun b!1413491 () Bool)

(declare-fun e!799965 () SeekEntryResult!10943)

(declare-fun lt!623062 () SeekEntryResult!10943)

(assert (=> b!1413491 (= e!799965 (MissingZero!10943 (index!46153 lt!623062)))))

(declare-fun d!152061 () Bool)

(declare-fun lt!623060 () SeekEntryResult!10943)

(assert (=> d!152061 (and (or ((_ is Undefined!10943) lt!623060) (not ((_ is Found!10943) lt!623060)) (and (bvsge (index!46152 lt!623060) #b00000000000000000000000000000000) (bvslt (index!46152 lt!623060) (size!47161 a!2901)))) (or ((_ is Undefined!10943) lt!623060) ((_ is Found!10943) lt!623060) (not ((_ is MissingZero!10943) lt!623060)) (and (bvsge (index!46151 lt!623060) #b00000000000000000000000000000000) (bvslt (index!46151 lt!623060) (size!47161 a!2901)))) (or ((_ is Undefined!10943) lt!623060) ((_ is Found!10943) lt!623060) ((_ is MissingZero!10943) lt!623060) (not ((_ is MissingVacant!10943) lt!623060)) (and (bvsge (index!46154 lt!623060) #b00000000000000000000000000000000) (bvslt (index!46154 lt!623060) (size!47161 a!2901)))) (or ((_ is Undefined!10943) lt!623060) (ite ((_ is Found!10943) lt!623060) (= (select (arr!46610 a!2901) (index!46152 lt!623060)) (select (arr!46610 a!2901) j!112)) (ite ((_ is MissingZero!10943) lt!623060) (= (select (arr!46610 a!2901) (index!46151 lt!623060)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10943) lt!623060) (= (select (arr!46610 a!2901) (index!46154 lt!623060)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!799967 () SeekEntryResult!10943)

(assert (=> d!152061 (= lt!623060 e!799967)))

(declare-fun c!130944 () Bool)

(assert (=> d!152061 (= c!130944 (and ((_ is Intermediate!10943) lt!623062) (undefined!11755 lt!623062)))))

(assert (=> d!152061 (= lt!623062 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46610 a!2901) j!112) mask!2840) (select (arr!46610 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!152061 (validMask!0 mask!2840)))

(assert (=> d!152061 (= (seekEntryOrOpen!0 (select (arr!46610 a!2901) j!112) a!2901 mask!2840) lt!623060)))

(declare-fun b!1413492 () Bool)

(declare-fun e!799966 () SeekEntryResult!10943)

(assert (=> b!1413492 (= e!799967 e!799966)))

(declare-fun lt!623061 () (_ BitVec 64))

(assert (=> b!1413492 (= lt!623061 (select (arr!46610 a!2901) (index!46153 lt!623062)))))

(declare-fun c!130946 () Bool)

(assert (=> b!1413492 (= c!130946 (= lt!623061 (select (arr!46610 a!2901) j!112)))))

(declare-fun b!1413493 () Bool)

(assert (=> b!1413493 (= e!799966 (Found!10943 (index!46153 lt!623062)))))

(declare-fun b!1413494 () Bool)

(declare-fun c!130945 () Bool)

(assert (=> b!1413494 (= c!130945 (= lt!623061 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1413494 (= e!799966 e!799965)))

(declare-fun b!1413495 () Bool)

(assert (=> b!1413495 (= e!799967 Undefined!10943)))

(declare-fun b!1413496 () Bool)

(assert (=> b!1413496 (= e!799965 (seekKeyOrZeroReturnVacant!0 (x!127737 lt!623062) (index!46153 lt!623062) (index!46153 lt!623062) (select (arr!46610 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and d!152061 c!130944) b!1413495))

(assert (= (and d!152061 (not c!130944)) b!1413492))

(assert (= (and b!1413492 c!130946) b!1413493))

(assert (= (and b!1413492 (not c!130946)) b!1413494))

(assert (= (and b!1413494 c!130945) b!1413491))

(assert (= (and b!1413494 (not c!130945)) b!1413496))

(assert (=> d!152061 m!1303905))

(assert (=> d!152061 m!1303907))

(declare-fun m!1304005 () Bool)

(assert (=> d!152061 m!1304005))

(assert (=> d!152061 m!1303929))

(declare-fun m!1304007 () Bool)

(assert (=> d!152061 m!1304007))

(declare-fun m!1304009 () Bool)

(assert (=> d!152061 m!1304009))

(assert (=> d!152061 m!1303907))

(assert (=> d!152061 m!1303905))

(declare-fun m!1304011 () Bool)

(assert (=> d!152061 m!1304011))

(declare-fun m!1304013 () Bool)

(assert (=> b!1413492 m!1304013))

(assert (=> b!1413496 m!1303905))

(declare-fun m!1304015 () Bool)

(assert (=> b!1413496 m!1304015))

(assert (=> b!1413404 d!152061))

(declare-fun b!1413507 () Bool)

(declare-fun e!799979 () Bool)

(declare-fun e!799978 () Bool)

(assert (=> b!1413507 (= e!799979 e!799978)))

(declare-fun res!950563 () Bool)

(assert (=> b!1413507 (=> (not res!950563) (not e!799978))))

(declare-fun e!799976 () Bool)

(assert (=> b!1413507 (= res!950563 (not e!799976))))

(declare-fun res!950561 () Bool)

(assert (=> b!1413507 (=> (not res!950561) (not e!799976))))

(assert (=> b!1413507 (= res!950561 (validKeyInArray!0 (select (arr!46610 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1413508 () Bool)

(declare-fun e!799977 () Bool)

(declare-fun call!67101 () Bool)

(assert (=> b!1413508 (= e!799977 call!67101)))

(declare-fun b!1413509 () Bool)

(declare-fun contains!9828 (List!33309 (_ BitVec 64)) Bool)

(assert (=> b!1413509 (= e!799976 (contains!9828 Nil!33306 (select (arr!46610 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1413510 () Bool)

(assert (=> b!1413510 (= e!799977 call!67101)))

(declare-fun d!152065 () Bool)

(declare-fun res!950562 () Bool)

(assert (=> d!152065 (=> res!950562 e!799979)))

(assert (=> d!152065 (= res!950562 (bvsge #b00000000000000000000000000000000 (size!47161 a!2901)))))

(assert (=> d!152065 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33306) e!799979)))

(declare-fun bm!67098 () Bool)

(declare-fun c!130949 () Bool)

(assert (=> bm!67098 (= call!67101 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130949 (Cons!33305 (select (arr!46610 a!2901) #b00000000000000000000000000000000) Nil!33306) Nil!33306)))))

(declare-fun b!1413511 () Bool)

(assert (=> b!1413511 (= e!799978 e!799977)))

(assert (=> b!1413511 (= c!130949 (validKeyInArray!0 (select (arr!46610 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!152065 (not res!950562)) b!1413507))

(assert (= (and b!1413507 res!950561) b!1413509))

(assert (= (and b!1413507 res!950563) b!1413511))

(assert (= (and b!1413511 c!130949) b!1413510))

(assert (= (and b!1413511 (not c!130949)) b!1413508))

(assert (= (or b!1413510 b!1413508) bm!67098))

(assert (=> b!1413507 m!1303995))

(assert (=> b!1413507 m!1303995))

(assert (=> b!1413507 m!1304003))

(assert (=> b!1413509 m!1303995))

(assert (=> b!1413509 m!1303995))

(declare-fun m!1304017 () Bool)

(assert (=> b!1413509 m!1304017))

(assert (=> bm!67098 m!1303995))

(declare-fun m!1304019 () Bool)

(assert (=> bm!67098 m!1304019))

(assert (=> b!1413511 m!1303995))

(assert (=> b!1413511 m!1303995))

(assert (=> b!1413511 m!1304003))

(assert (=> b!1413407 d!152065))

(declare-fun bm!67099 () Bool)

(declare-fun call!67102 () Bool)

(assert (=> bm!67099 (= call!67102 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1413512 () Bool)

(declare-fun e!799980 () Bool)

(declare-fun e!799981 () Bool)

(assert (=> b!1413512 (= e!799980 e!799981)))

(declare-fun lt!623063 () (_ BitVec 64))

(assert (=> b!1413512 (= lt!623063 (select (arr!46610 a!2901) j!112))))

(declare-fun lt!623064 () Unit!47810)

(assert (=> b!1413512 (= lt!623064 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!623063 j!112))))

(assert (=> b!1413512 (arrayContainsKey!0 a!2901 lt!623063 #b00000000000000000000000000000000)))

(declare-fun lt!623065 () Unit!47810)

(assert (=> b!1413512 (= lt!623065 lt!623064)))

(declare-fun res!950564 () Bool)

(assert (=> b!1413512 (= res!950564 (= (seekEntryOrOpen!0 (select (arr!46610 a!2901) j!112) a!2901 mask!2840) (Found!10943 j!112)))))

(assert (=> b!1413512 (=> (not res!950564) (not e!799981))))

(declare-fun b!1413513 () Bool)

(assert (=> b!1413513 (= e!799981 call!67102)))

(declare-fun b!1413514 () Bool)

(declare-fun e!799982 () Bool)

(assert (=> b!1413514 (= e!799982 e!799980)))

(declare-fun c!130950 () Bool)

(assert (=> b!1413514 (= c!130950 (validKeyInArray!0 (select (arr!46610 a!2901) j!112)))))

(declare-fun d!152069 () Bool)

(declare-fun res!950565 () Bool)

(assert (=> d!152069 (=> res!950565 e!799982)))

(assert (=> d!152069 (= res!950565 (bvsge j!112 (size!47161 a!2901)))))

(assert (=> d!152069 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!799982)))

(declare-fun b!1413515 () Bool)

(assert (=> b!1413515 (= e!799980 call!67102)))

(assert (= (and d!152069 (not res!950565)) b!1413514))

(assert (= (and b!1413514 c!130950) b!1413512))

(assert (= (and b!1413514 (not c!130950)) b!1413515))

(assert (= (and b!1413512 res!950564) b!1413513))

(assert (= (or b!1413513 b!1413515) bm!67099))

(declare-fun m!1304021 () Bool)

(assert (=> bm!67099 m!1304021))

(assert (=> b!1413512 m!1303905))

(declare-fun m!1304023 () Bool)

(assert (=> b!1413512 m!1304023))

(declare-fun m!1304025 () Bool)

(assert (=> b!1413512 m!1304025))

(assert (=> b!1413512 m!1303905))

(assert (=> b!1413512 m!1303941))

(assert (=> b!1413514 m!1303905))

(assert (=> b!1413514 m!1303905))

(assert (=> b!1413514 m!1303939))

(assert (=> b!1413402 d!152069))

(declare-fun d!152075 () Bool)

(assert (=> d!152075 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!623074 () Unit!47810)

(declare-fun choose!38 (array!96554 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47810)

(assert (=> d!152075 (= lt!623074 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!152075 (validMask!0 mask!2840)))

(assert (=> d!152075 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!623074)))

(declare-fun bs!41210 () Bool)

(assert (= bs!41210 d!152075))

(assert (=> bs!41210 m!1303913))

(declare-fun m!1304027 () Bool)

(assert (=> bs!41210 m!1304027))

(assert (=> bs!41210 m!1303929))

(assert (=> b!1413402 d!152075))

(declare-fun b!1413525 () Bool)

(declare-fun lt!623076 () SeekEntryResult!10943)

(assert (=> b!1413525 (and (bvsge (index!46153 lt!623076) #b00000000000000000000000000000000) (bvslt (index!46153 lt!623076) (size!47161 a!2901)))))

(declare-fun e!799993 () Bool)

(assert (=> b!1413525 (= e!799993 (= (select (arr!46610 a!2901) (index!46153 lt!623076)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1413526 () Bool)

(declare-fun e!799992 () SeekEntryResult!10943)

(assert (=> b!1413526 (= e!799992 (Intermediate!10943 true lt!623011 #b00000000000000000000000000000000))))

(declare-fun b!1413527 () Bool)

(declare-fun e!799989 () SeekEntryResult!10943)

(assert (=> b!1413527 (= e!799989 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!623011 #b00000000000000000000000000000000 mask!2840) (select (arr!46610 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1413528 () Bool)

(declare-fun e!799991 () Bool)

(declare-fun e!799990 () Bool)

(assert (=> b!1413528 (= e!799991 e!799990)))

(declare-fun res!950572 () Bool)

(assert (=> b!1413528 (= res!950572 (and ((_ is Intermediate!10943) lt!623076) (not (undefined!11755 lt!623076)) (bvslt (x!127737 lt!623076) #b01111111111111111111111111111110) (bvsge (x!127737 lt!623076) #b00000000000000000000000000000000) (bvsge (x!127737 lt!623076) #b00000000000000000000000000000000)))))

(assert (=> b!1413528 (=> (not res!950572) (not e!799990))))

(declare-fun b!1413529 () Bool)

(assert (=> b!1413529 (= e!799989 (Intermediate!10943 false lt!623011 #b00000000000000000000000000000000))))

(declare-fun b!1413530 () Bool)

(assert (=> b!1413530 (and (bvsge (index!46153 lt!623076) #b00000000000000000000000000000000) (bvslt (index!46153 lt!623076) (size!47161 a!2901)))))

(declare-fun res!950570 () Bool)

(assert (=> b!1413530 (= res!950570 (= (select (arr!46610 a!2901) (index!46153 lt!623076)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1413530 (=> res!950570 e!799993)))

(declare-fun b!1413524 () Bool)

(assert (=> b!1413524 (and (bvsge (index!46153 lt!623076) #b00000000000000000000000000000000) (bvslt (index!46153 lt!623076) (size!47161 a!2901)))))

(declare-fun res!950571 () Bool)

(assert (=> b!1413524 (= res!950571 (= (select (arr!46610 a!2901) (index!46153 lt!623076)) (select (arr!46610 a!2901) j!112)))))

(assert (=> b!1413524 (=> res!950571 e!799993)))

(assert (=> b!1413524 (= e!799990 e!799993)))

(declare-fun d!152077 () Bool)

(assert (=> d!152077 e!799991))

(declare-fun c!130954 () Bool)

(assert (=> d!152077 (= c!130954 (and ((_ is Intermediate!10943) lt!623076) (undefined!11755 lt!623076)))))

(assert (=> d!152077 (= lt!623076 e!799992)))

(declare-fun c!130953 () Bool)

(assert (=> d!152077 (= c!130953 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!623075 () (_ BitVec 64))

(assert (=> d!152077 (= lt!623075 (select (arr!46610 a!2901) lt!623011))))

(assert (=> d!152077 (validMask!0 mask!2840)))

(assert (=> d!152077 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!623011 (select (arr!46610 a!2901) j!112) a!2901 mask!2840) lt!623076)))

(declare-fun b!1413531 () Bool)

(assert (=> b!1413531 (= e!799992 e!799989)))

(declare-fun c!130955 () Bool)

(assert (=> b!1413531 (= c!130955 (or (= lt!623075 (select (arr!46610 a!2901) j!112)) (= (bvadd lt!623075 lt!623075) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1413532 () Bool)

(assert (=> b!1413532 (= e!799991 (bvsge (x!127737 lt!623076) #b01111111111111111111111111111110))))

(assert (= (and d!152077 c!130953) b!1413526))

(assert (= (and d!152077 (not c!130953)) b!1413531))

(assert (= (and b!1413531 c!130955) b!1413529))

(assert (= (and b!1413531 (not c!130955)) b!1413527))

(assert (= (and d!152077 c!130954) b!1413532))

(assert (= (and d!152077 (not c!130954)) b!1413528))

(assert (= (and b!1413528 res!950572) b!1413524))

(assert (= (and b!1413524 (not res!950571)) b!1413530))

(assert (= (and b!1413530 (not res!950570)) b!1413525))

(declare-fun m!1304029 () Bool)

(assert (=> b!1413527 m!1304029))

(assert (=> b!1413527 m!1304029))

(assert (=> b!1413527 m!1303905))

(declare-fun m!1304033 () Bool)

(assert (=> b!1413527 m!1304033))

(declare-fun m!1304037 () Bool)

(assert (=> b!1413525 m!1304037))

(assert (=> b!1413530 m!1304037))

(assert (=> b!1413524 m!1304037))

(declare-fun m!1304041 () Bool)

(assert (=> d!152077 m!1304041))

(assert (=> d!152077 m!1303929))

(assert (=> b!1413402 d!152077))

(declare-fun d!152079 () Bool)

(declare-fun lt!623086 () (_ BitVec 32))

(declare-fun lt!623084 () (_ BitVec 32))

(assert (=> d!152079 (= lt!623086 (bvmul (bvxor lt!623084 (bvlshr lt!623084 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152079 (= lt!623084 ((_ extract 31 0) (bvand (bvxor (select (arr!46610 a!2901) j!112) (bvlshr (select (arr!46610 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152079 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!950548 (let ((h!34582 ((_ extract 31 0) (bvand (bvxor (select (arr!46610 a!2901) j!112) (bvlshr (select (arr!46610 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127740 (bvmul (bvxor h!34582 (bvlshr h!34582 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127740 (bvlshr x!127740 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!950548 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!950548 #b00000000000000000000000000000000))))))

(assert (=> d!152079 (= (toIndex!0 (select (arr!46610 a!2901) j!112) mask!2840) (bvand (bvxor lt!623086 (bvlshr lt!623086 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1413402 d!152079))

(declare-fun d!152083 () Bool)

(assert (=> d!152083 (and (not (undefined!11755 lt!623007)) (= (index!46153 lt!623007) i!1037) (bvslt (x!127737 lt!623007) (x!127737 lt!623009)))))

(declare-fun lt!623093 () Unit!47810)

(declare-fun choose!62 (array!96554 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47810)

(assert (=> d!152083 (= lt!623093 (choose!62 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623011 (x!127737 lt!623009) (index!46153 lt!623009) (x!127737 lt!623007) (index!46153 lt!623007) (undefined!11755 lt!623007) mask!2840))))

(assert (=> d!152083 (validMask!0 mask!2840)))

(assert (=> d!152083 (= (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623011 (x!127737 lt!623009) (index!46153 lt!623009) (x!127737 lt!623007) (index!46153 lt!623007) (undefined!11755 lt!623007) mask!2840) lt!623093)))

(declare-fun bs!41211 () Bool)

(assert (= bs!41211 d!152083))

(declare-fun m!1304049 () Bool)

(assert (=> bs!41211 m!1304049))

(assert (=> bs!41211 m!1303929))

(assert (=> b!1413408 d!152083))

(declare-fun d!152085 () Bool)

(assert (=> d!152085 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!121698 d!152085))

(declare-fun d!152101 () Bool)

(assert (=> d!152101 (= (array_inv!35555 a!2901) (bvsge (size!47161 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!121698 d!152101))

(declare-fun b!1413553 () Bool)

(declare-fun e!800009 () SeekEntryResult!10943)

(declare-fun lt!623108 () SeekEntryResult!10943)

(assert (=> b!1413553 (= e!800009 (MissingZero!10943 (index!46153 lt!623108)))))

(declare-fun d!152103 () Bool)

(declare-fun lt!623106 () SeekEntryResult!10943)

(assert (=> d!152103 (and (or ((_ is Undefined!10943) lt!623106) (not ((_ is Found!10943) lt!623106)) (and (bvsge (index!46152 lt!623106) #b00000000000000000000000000000000) (bvslt (index!46152 lt!623106) (size!47161 lt!623006)))) (or ((_ is Undefined!10943) lt!623106) ((_ is Found!10943) lt!623106) (not ((_ is MissingZero!10943) lt!623106)) (and (bvsge (index!46151 lt!623106) #b00000000000000000000000000000000) (bvslt (index!46151 lt!623106) (size!47161 lt!623006)))) (or ((_ is Undefined!10943) lt!623106) ((_ is Found!10943) lt!623106) ((_ is MissingZero!10943) lt!623106) (not ((_ is MissingVacant!10943) lt!623106)) (and (bvsge (index!46154 lt!623106) #b00000000000000000000000000000000) (bvslt (index!46154 lt!623106) (size!47161 lt!623006)))) (or ((_ is Undefined!10943) lt!623106) (ite ((_ is Found!10943) lt!623106) (= (select (arr!46610 lt!623006) (index!46152 lt!623106)) lt!623010) (ite ((_ is MissingZero!10943) lt!623106) (= (select (arr!46610 lt!623006) (index!46151 lt!623106)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10943) lt!623106) (= (select (arr!46610 lt!623006) (index!46154 lt!623106)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!800011 () SeekEntryResult!10943)

(assert (=> d!152103 (= lt!623106 e!800011)))

(declare-fun c!130961 () Bool)

(assert (=> d!152103 (= c!130961 (and ((_ is Intermediate!10943) lt!623108) (undefined!11755 lt!623108)))))

(assert (=> d!152103 (= lt!623108 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623010 mask!2840) lt!623010 lt!623006 mask!2840))))

(assert (=> d!152103 (validMask!0 mask!2840)))

(assert (=> d!152103 (= (seekEntryOrOpen!0 lt!623010 lt!623006 mask!2840) lt!623106)))

(declare-fun b!1413554 () Bool)

(declare-fun e!800010 () SeekEntryResult!10943)

(assert (=> b!1413554 (= e!800011 e!800010)))

(declare-fun lt!623107 () (_ BitVec 64))

(assert (=> b!1413554 (= lt!623107 (select (arr!46610 lt!623006) (index!46153 lt!623108)))))

(declare-fun c!130963 () Bool)

(assert (=> b!1413554 (= c!130963 (= lt!623107 lt!623010))))

(declare-fun b!1413555 () Bool)

(assert (=> b!1413555 (= e!800010 (Found!10943 (index!46153 lt!623108)))))

(declare-fun b!1413556 () Bool)

(declare-fun c!130962 () Bool)

(assert (=> b!1413556 (= c!130962 (= lt!623107 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1413556 (= e!800010 e!800009)))

(declare-fun b!1413557 () Bool)

(assert (=> b!1413557 (= e!800011 Undefined!10943)))

(declare-fun b!1413558 () Bool)

(assert (=> b!1413558 (= e!800009 (seekKeyOrZeroReturnVacant!0 (x!127737 lt!623108) (index!46153 lt!623108) (index!46153 lt!623108) lt!623010 lt!623006 mask!2840))))

(assert (= (and d!152103 c!130961) b!1413557))

(assert (= (and d!152103 (not c!130961)) b!1413554))

(assert (= (and b!1413554 c!130963) b!1413555))

(assert (= (and b!1413554 (not c!130963)) b!1413556))

(assert (= (and b!1413556 c!130962) b!1413553))

(assert (= (and b!1413556 (not c!130962)) b!1413558))

(assert (=> d!152103 m!1303915))

(declare-fun m!1304069 () Bool)

(assert (=> d!152103 m!1304069))

(assert (=> d!152103 m!1303929))

(declare-fun m!1304071 () Bool)

(assert (=> d!152103 m!1304071))

(declare-fun m!1304073 () Bool)

(assert (=> d!152103 m!1304073))

(assert (=> d!152103 m!1303915))

(assert (=> d!152103 m!1303917))

(declare-fun m!1304075 () Bool)

(assert (=> b!1413554 m!1304075))

(declare-fun m!1304077 () Bool)

(assert (=> b!1413558 m!1304077))

(assert (=> b!1413406 d!152103))

(declare-fun b!1413616 () Bool)

(declare-fun e!800045 () SeekEntryResult!10943)

(assert (=> b!1413616 (= e!800045 (Found!10943 (index!46153 lt!623007)))))

(declare-fun b!1413617 () Bool)

(declare-fun e!800044 () SeekEntryResult!10943)

(assert (=> b!1413617 (= e!800044 (MissingVacant!10943 (index!46153 lt!623007)))))

(declare-fun b!1413618 () Bool)

(assert (=> b!1413618 (= e!800044 (seekKeyOrZeroReturnVacant!0 (bvadd (x!127737 lt!623007) #b00000000000000000000000000000001) (nextIndex!0 (index!46153 lt!623007) (x!127737 lt!623007) mask!2840) (index!46153 lt!623007) (select (arr!46610 a!2901) j!112) lt!623006 mask!2840))))

(declare-fun b!1413619 () Bool)

(declare-fun e!800043 () SeekEntryResult!10943)

(assert (=> b!1413619 (= e!800043 Undefined!10943)))

(declare-fun b!1413620 () Bool)

(assert (=> b!1413620 (= e!800043 e!800045)))

(declare-fun c!130985 () Bool)

(declare-fun lt!623130 () (_ BitVec 64))

(assert (=> b!1413620 (= c!130985 (= lt!623130 (select (arr!46610 a!2901) j!112)))))

(declare-fun b!1413621 () Bool)

(declare-fun c!130986 () Bool)

(assert (=> b!1413621 (= c!130986 (= lt!623130 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1413621 (= e!800045 e!800044)))

(declare-fun d!152105 () Bool)

(declare-fun lt!623129 () SeekEntryResult!10943)

(assert (=> d!152105 (and (or ((_ is Undefined!10943) lt!623129) (not ((_ is Found!10943) lt!623129)) (and (bvsge (index!46152 lt!623129) #b00000000000000000000000000000000) (bvslt (index!46152 lt!623129) (size!47161 lt!623006)))) (or ((_ is Undefined!10943) lt!623129) ((_ is Found!10943) lt!623129) (not ((_ is MissingVacant!10943) lt!623129)) (not (= (index!46154 lt!623129) (index!46153 lt!623007))) (and (bvsge (index!46154 lt!623129) #b00000000000000000000000000000000) (bvslt (index!46154 lt!623129) (size!47161 lt!623006)))) (or ((_ is Undefined!10943) lt!623129) (ite ((_ is Found!10943) lt!623129) (= (select (arr!46610 lt!623006) (index!46152 lt!623129)) (select (arr!46610 a!2901) j!112)) (and ((_ is MissingVacant!10943) lt!623129) (= (index!46154 lt!623129) (index!46153 lt!623007)) (= (select (arr!46610 lt!623006) (index!46154 lt!623129)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!152105 (= lt!623129 e!800043)))

(declare-fun c!130987 () Bool)

(assert (=> d!152105 (= c!130987 (bvsge (x!127737 lt!623007) #b01111111111111111111111111111110))))

(assert (=> d!152105 (= lt!623130 (select (arr!46610 lt!623006) (index!46153 lt!623007)))))

(assert (=> d!152105 (validMask!0 mask!2840)))

(assert (=> d!152105 (= (seekKeyOrZeroReturnVacant!0 (x!127737 lt!623007) (index!46153 lt!623007) (index!46153 lt!623007) (select (arr!46610 a!2901) j!112) lt!623006 mask!2840) lt!623129)))

(assert (= (and d!152105 c!130987) b!1413619))

(assert (= (and d!152105 (not c!130987)) b!1413620))

(assert (= (and b!1413620 c!130985) b!1413616))

(assert (= (and b!1413620 (not c!130985)) b!1413621))

(assert (= (and b!1413621 c!130986) b!1413617))

(assert (= (and b!1413621 (not c!130986)) b!1413618))

(declare-fun m!1304087 () Bool)

(assert (=> b!1413618 m!1304087))

(assert (=> b!1413618 m!1304087))

(assert (=> b!1413618 m!1303905))

(declare-fun m!1304089 () Bool)

(assert (=> b!1413618 m!1304089))

(declare-fun m!1304091 () Bool)

(assert (=> d!152105 m!1304091))

(declare-fun m!1304093 () Bool)

(assert (=> d!152105 m!1304093))

(declare-fun m!1304095 () Bool)

(assert (=> d!152105 m!1304095))

(assert (=> d!152105 m!1303929))

(assert (=> b!1413406 d!152105))

(check-sat (not d!152061) (not d!152077) (not b!1413507) (not b!1413509) (not b!1413511) (not b!1413461) (not d!152105) (not b!1413475) (not b!1413514) (not d!152103) (not bm!67099) (not d!152083) (not d!152053) (not b!1413496) (not bm!67095) (not b!1413558) (not bm!67098) (not d!152075) (not b!1413512) (not b!1413527) (not b!1413477) (not b!1413618))
(check-sat)
