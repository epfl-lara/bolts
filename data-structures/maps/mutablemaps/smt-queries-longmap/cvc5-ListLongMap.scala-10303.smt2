; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121180 () Bool)

(assert start!121180)

(declare-fun b!1408440 () Bool)

(declare-fun res!946278 () Bool)

(declare-fun e!797121 () Bool)

(assert (=> b!1408440 (=> (not res!946278) (not e!797121))))

(declare-datatypes ((array!96252 0))(
  ( (array!96253 (arr!46465 (Array (_ BitVec 32) (_ BitVec 64))) (size!47016 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96252)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408440 (= res!946278 (validKeyInArray!0 (select (arr!46465 a!2901) j!112)))))

(declare-fun b!1408441 () Bool)

(declare-fun res!946272 () Bool)

(assert (=> b!1408441 (=> (not res!946272) (not e!797121))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1408441 (= res!946272 (validKeyInArray!0 (select (arr!46465 a!2901) i!1037)))))

(declare-fun b!1408442 () Bool)

(declare-fun e!797122 () Bool)

(assert (=> b!1408442 (= e!797121 (not e!797122))))

(declare-fun res!946277 () Bool)

(assert (=> b!1408442 (=> res!946277 e!797122)))

(declare-datatypes ((SeekEntryResult!10798 0))(
  ( (MissingZero!10798 (index!45568 (_ BitVec 32))) (Found!10798 (index!45569 (_ BitVec 32))) (Intermediate!10798 (undefined!11610 Bool) (index!45570 (_ BitVec 32)) (x!127178 (_ BitVec 32))) (Undefined!10798) (MissingVacant!10798 (index!45571 (_ BitVec 32))) )
))
(declare-fun lt!620320 () SeekEntryResult!10798)

(assert (=> b!1408442 (= res!946277 (or (not (is-Intermediate!10798 lt!620320)) (undefined!11610 lt!620320)))))

(declare-fun e!797123 () Bool)

(assert (=> b!1408442 e!797123))

(declare-fun res!946275 () Bool)

(assert (=> b!1408442 (=> (not res!946275) (not e!797123))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96252 (_ BitVec 32)) Bool)

(assert (=> b!1408442 (= res!946275 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47520 0))(
  ( (Unit!47521) )
))
(declare-fun lt!620318 () Unit!47520)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96252 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47520)

(assert (=> b!1408442 (= lt!620318 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96252 (_ BitVec 32)) SeekEntryResult!10798)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408442 (= lt!620320 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46465 a!2901) j!112) mask!2840) (select (arr!46465 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!946273 () Bool)

(assert (=> start!121180 (=> (not res!946273) (not e!797121))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121180 (= res!946273 (validMask!0 mask!2840))))

(assert (=> start!121180 e!797121))

(assert (=> start!121180 true))

(declare-fun array_inv!35410 (array!96252) Bool)

(assert (=> start!121180 (array_inv!35410 a!2901)))

(declare-fun b!1408443 () Bool)

(declare-fun res!946274 () Bool)

(assert (=> b!1408443 (=> (not res!946274) (not e!797121))))

(declare-datatypes ((List!33164 0))(
  ( (Nil!33161) (Cons!33160 (h!34423 (_ BitVec 64)) (t!47865 List!33164)) )
))
(declare-fun arrayNoDuplicates!0 (array!96252 (_ BitVec 32) List!33164) Bool)

(assert (=> b!1408443 (= res!946274 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33161))))

(declare-fun b!1408444 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96252 (_ BitVec 32)) SeekEntryResult!10798)

(assert (=> b!1408444 (= e!797123 (= (seekEntryOrOpen!0 (select (arr!46465 a!2901) j!112) a!2901 mask!2840) (Found!10798 j!112)))))

(declare-fun b!1408445 () Bool)

(declare-fun res!946271 () Bool)

(assert (=> b!1408445 (=> (not res!946271) (not e!797121))))

(assert (=> b!1408445 (= res!946271 (and (= (size!47016 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47016 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47016 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1408446 () Bool)

(declare-fun res!946276 () Bool)

(assert (=> b!1408446 (=> (not res!946276) (not e!797121))))

(assert (=> b!1408446 (= res!946276 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1408447 () Bool)

(assert (=> b!1408447 (= e!797122 true)))

(declare-fun lt!620319 () SeekEntryResult!10798)

(assert (=> b!1408447 (= lt!620319 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46465 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46465 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96253 (store (arr!46465 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47016 a!2901)) mask!2840))))

(assert (= (and start!121180 res!946273) b!1408445))

(assert (= (and b!1408445 res!946271) b!1408441))

(assert (= (and b!1408441 res!946272) b!1408440))

(assert (= (and b!1408440 res!946278) b!1408446))

(assert (= (and b!1408446 res!946276) b!1408443))

(assert (= (and b!1408443 res!946274) b!1408442))

(assert (= (and b!1408442 res!946275) b!1408444))

(assert (= (and b!1408442 (not res!946277)) b!1408447))

(declare-fun m!1297835 () Bool)

(assert (=> b!1408441 m!1297835))

(assert (=> b!1408441 m!1297835))

(declare-fun m!1297837 () Bool)

(assert (=> b!1408441 m!1297837))

(declare-fun m!1297839 () Bool)

(assert (=> b!1408443 m!1297839))

(declare-fun m!1297841 () Bool)

(assert (=> b!1408446 m!1297841))

(declare-fun m!1297843 () Bool)

(assert (=> b!1408440 m!1297843))

(assert (=> b!1408440 m!1297843))

(declare-fun m!1297845 () Bool)

(assert (=> b!1408440 m!1297845))

(assert (=> b!1408442 m!1297843))

(declare-fun m!1297847 () Bool)

(assert (=> b!1408442 m!1297847))

(assert (=> b!1408442 m!1297843))

(declare-fun m!1297849 () Bool)

(assert (=> b!1408442 m!1297849))

(assert (=> b!1408442 m!1297847))

(assert (=> b!1408442 m!1297843))

(declare-fun m!1297851 () Bool)

(assert (=> b!1408442 m!1297851))

(declare-fun m!1297853 () Bool)

(assert (=> b!1408442 m!1297853))

(declare-fun m!1297855 () Bool)

(assert (=> b!1408447 m!1297855))

(declare-fun m!1297857 () Bool)

(assert (=> b!1408447 m!1297857))

(assert (=> b!1408447 m!1297857))

(declare-fun m!1297859 () Bool)

(assert (=> b!1408447 m!1297859))

(assert (=> b!1408447 m!1297859))

(assert (=> b!1408447 m!1297857))

(declare-fun m!1297861 () Bool)

(assert (=> b!1408447 m!1297861))

(declare-fun m!1297863 () Bool)

(assert (=> start!121180 m!1297863))

(declare-fun m!1297865 () Bool)

(assert (=> start!121180 m!1297865))

(assert (=> b!1408444 m!1297843))

(assert (=> b!1408444 m!1297843))

(declare-fun m!1297867 () Bool)

(assert (=> b!1408444 m!1297867))

(push 1)

(assert (not b!1408443))

(assert (not b!1408440))

(assert (not b!1408442))

(assert (not b!1408447))

(assert (not b!1408441))

(assert (not b!1408444))

(assert (not start!121180))

(assert (not b!1408446))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

