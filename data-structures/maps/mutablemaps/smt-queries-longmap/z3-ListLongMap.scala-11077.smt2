; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129342 () Bool)

(assert start!129342)

(declare-fun b!1518501 () Bool)

(declare-fun res!1038485 () Bool)

(declare-fun e!847134 () Bool)

(assert (=> b!1518501 (=> res!1038485 e!847134)))

(declare-datatypes ((SeekEntryResult!12980 0))(
  ( (MissingZero!12980 (index!54314 (_ BitVec 32))) (Found!12980 (index!54315 (_ BitVec 32))) (Intermediate!12980 (undefined!13792 Bool) (index!54316 (_ BitVec 32)) (x!135999 (_ BitVec 32))) (Undefined!12980) (MissingVacant!12980 (index!54317 (_ BitVec 32))) )
))
(declare-fun lt!658180 () SeekEntryResult!12980)

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((array!101111 0))(
  ( (array!101112 (arr!48788 (Array (_ BitVec 32) (_ BitVec 64))) (size!49339 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101111)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!658179 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101111 (_ BitVec 32)) SeekEntryResult!12980)

(assert (=> b!1518501 (= res!1038485 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658179 (select (arr!48788 a!2804) j!70) a!2804 mask!2512) lt!658180)))))

(declare-fun b!1518502 () Bool)

(declare-fun e!847135 () Bool)

(declare-fun e!847139 () Bool)

(assert (=> b!1518502 (= e!847135 e!847139)))

(declare-fun res!1038479 () Bool)

(assert (=> b!1518502 (=> (not res!1038479) (not e!847139))))

(declare-fun lt!658183 () SeekEntryResult!12980)

(declare-fun lt!658182 () array!101111)

(declare-fun lt!658177 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518502 (= res!1038479 (= lt!658183 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!658177 mask!2512) lt!658177 lt!658182 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1518502 (= lt!658177 (select (store (arr!48788 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1518502 (= lt!658182 (array!101112 (store (arr!48788 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49339 a!2804)))))

(declare-fun b!1518503 () Bool)

(declare-fun res!1038476 () Bool)

(declare-fun e!847133 () Bool)

(assert (=> b!1518503 (=> (not res!1038476) (not e!847133))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1518503 (= res!1038476 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49339 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49339 a!2804))))))

(declare-fun b!1518504 () Bool)

(declare-fun e!847138 () Bool)

(assert (=> b!1518504 (= e!847139 (not e!847138))))

(declare-fun res!1038481 () Bool)

(assert (=> b!1518504 (=> res!1038481 e!847138)))

(assert (=> b!1518504 (= res!1038481 (or (not (= (select (arr!48788 a!2804) j!70) lt!658177)) (= x!534 resX!21)))))

(declare-fun e!847137 () Bool)

(assert (=> b!1518504 e!847137))

(declare-fun res!1038487 () Bool)

(assert (=> b!1518504 (=> (not res!1038487) (not e!847137))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101111 (_ BitVec 32)) Bool)

(assert (=> b!1518504 (= res!1038487 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50784 0))(
  ( (Unit!50785) )
))
(declare-fun lt!658181 () Unit!50784)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101111 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50784)

(assert (=> b!1518504 (= lt!658181 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1518505 () Bool)

(declare-fun res!1038488 () Bool)

(assert (=> b!1518505 (=> (not res!1038488) (not e!847133))))

(declare-datatypes ((List!35451 0))(
  ( (Nil!35448) (Cons!35447 (h!36860 (_ BitVec 64)) (t!50152 List!35451)) )
))
(declare-fun arrayNoDuplicates!0 (array!101111 (_ BitVec 32) List!35451) Bool)

(assert (=> b!1518505 (= res!1038488 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35448))))

(declare-fun b!1518506 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101111 (_ BitVec 32)) SeekEntryResult!12980)

(assert (=> b!1518506 (= e!847137 (= (seekEntry!0 (select (arr!48788 a!2804) j!70) a!2804 mask!2512) (Found!12980 j!70)))))

(declare-fun b!1518507 () Bool)

(assert (=> b!1518507 (= e!847133 e!847135)))

(declare-fun res!1038489 () Bool)

(assert (=> b!1518507 (=> (not res!1038489) (not e!847135))))

(assert (=> b!1518507 (= res!1038489 (= lt!658183 lt!658180))))

(assert (=> b!1518507 (= lt!658180 (Intermediate!12980 false resIndex!21 resX!21))))

(assert (=> b!1518507 (= lt!658183 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48788 a!2804) j!70) mask!2512) (select (arr!48788 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1038486 () Bool)

(assert (=> start!129342 (=> (not res!1038486) (not e!847133))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129342 (= res!1038486 (validMask!0 mask!2512))))

(assert (=> start!129342 e!847133))

(assert (=> start!129342 true))

(declare-fun array_inv!37733 (array!101111) Bool)

(assert (=> start!129342 (array_inv!37733 a!2804)))

(declare-fun b!1518508 () Bool)

(declare-fun res!1038482 () Bool)

(assert (=> b!1518508 (=> (not res!1038482) (not e!847133))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1518508 (= res!1038482 (validKeyInArray!0 (select (arr!48788 a!2804) i!961)))))

(declare-fun b!1518509 () Bool)

(declare-fun res!1038477 () Bool)

(assert (=> b!1518509 (=> (not res!1038477) (not e!847133))))

(assert (=> b!1518509 (= res!1038477 (validKeyInArray!0 (select (arr!48788 a!2804) j!70)))))

(declare-fun b!1518510 () Bool)

(declare-fun res!1038478 () Bool)

(assert (=> b!1518510 (=> (not res!1038478) (not e!847133))))

(assert (=> b!1518510 (= res!1038478 (and (= (size!49339 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49339 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49339 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1518511 () Bool)

(declare-fun res!1038483 () Bool)

(assert (=> b!1518511 (=> (not res!1038483) (not e!847135))))

(assert (=> b!1518511 (= res!1038483 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48788 a!2804) j!70) a!2804 mask!2512) lt!658180))))

(declare-fun b!1518512 () Bool)

(declare-fun res!1038484 () Bool)

(assert (=> b!1518512 (=> (not res!1038484) (not e!847133))))

(assert (=> b!1518512 (= res!1038484 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1518513 () Bool)

(assert (=> b!1518513 (= e!847134 true)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101111 (_ BitVec 32)) SeekEntryResult!12980)

(assert (=> b!1518513 (= (seekEntryOrOpen!0 (select (arr!48788 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!658177 lt!658182 mask!2512))))

(declare-fun lt!658178 () Unit!50784)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101111 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50784)

(assert (=> b!1518513 (= lt!658178 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!658179 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1518514 () Bool)

(assert (=> b!1518514 (= e!847138 e!847134)))

(declare-fun res!1038480 () Bool)

(assert (=> b!1518514 (=> res!1038480 e!847134)))

(assert (=> b!1518514 (= res!1038480 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658179 #b00000000000000000000000000000000) (bvsge lt!658179 (size!49339 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518514 (= lt!658179 (nextIndex!0 index!487 x!534 mask!2512))))

(assert (= (and start!129342 res!1038486) b!1518510))

(assert (= (and b!1518510 res!1038478) b!1518508))

(assert (= (and b!1518508 res!1038482) b!1518509))

(assert (= (and b!1518509 res!1038477) b!1518512))

(assert (= (and b!1518512 res!1038484) b!1518505))

(assert (= (and b!1518505 res!1038488) b!1518503))

(assert (= (and b!1518503 res!1038476) b!1518507))

(assert (= (and b!1518507 res!1038489) b!1518511))

(assert (= (and b!1518511 res!1038483) b!1518502))

(assert (= (and b!1518502 res!1038479) b!1518504))

(assert (= (and b!1518504 res!1038487) b!1518506))

(assert (= (and b!1518504 (not res!1038481)) b!1518514))

(assert (= (and b!1518514 (not res!1038480)) b!1518501))

(assert (= (and b!1518501 (not res!1038485)) b!1518513))

(declare-fun m!1401877 () Bool)

(assert (=> b!1518514 m!1401877))

(declare-fun m!1401879 () Bool)

(assert (=> b!1518501 m!1401879))

(assert (=> b!1518501 m!1401879))

(declare-fun m!1401881 () Bool)

(assert (=> b!1518501 m!1401881))

(declare-fun m!1401883 () Bool)

(assert (=> b!1518505 m!1401883))

(assert (=> b!1518506 m!1401879))

(assert (=> b!1518506 m!1401879))

(declare-fun m!1401885 () Bool)

(assert (=> b!1518506 m!1401885))

(assert (=> b!1518507 m!1401879))

(assert (=> b!1518507 m!1401879))

(declare-fun m!1401887 () Bool)

(assert (=> b!1518507 m!1401887))

(assert (=> b!1518507 m!1401887))

(assert (=> b!1518507 m!1401879))

(declare-fun m!1401889 () Bool)

(assert (=> b!1518507 m!1401889))

(declare-fun m!1401891 () Bool)

(assert (=> b!1518508 m!1401891))

(assert (=> b!1518508 m!1401891))

(declare-fun m!1401893 () Bool)

(assert (=> b!1518508 m!1401893))

(declare-fun m!1401895 () Bool)

(assert (=> b!1518502 m!1401895))

(assert (=> b!1518502 m!1401895))

(declare-fun m!1401897 () Bool)

(assert (=> b!1518502 m!1401897))

(declare-fun m!1401899 () Bool)

(assert (=> b!1518502 m!1401899))

(declare-fun m!1401901 () Bool)

(assert (=> b!1518502 m!1401901))

(declare-fun m!1401903 () Bool)

(assert (=> b!1518512 m!1401903))

(assert (=> b!1518509 m!1401879))

(assert (=> b!1518509 m!1401879))

(declare-fun m!1401905 () Bool)

(assert (=> b!1518509 m!1401905))

(assert (=> b!1518513 m!1401879))

(assert (=> b!1518513 m!1401879))

(declare-fun m!1401907 () Bool)

(assert (=> b!1518513 m!1401907))

(declare-fun m!1401909 () Bool)

(assert (=> b!1518513 m!1401909))

(declare-fun m!1401911 () Bool)

(assert (=> b!1518513 m!1401911))

(assert (=> b!1518511 m!1401879))

(assert (=> b!1518511 m!1401879))

(declare-fun m!1401913 () Bool)

(assert (=> b!1518511 m!1401913))

(assert (=> b!1518504 m!1401879))

(declare-fun m!1401915 () Bool)

(assert (=> b!1518504 m!1401915))

(declare-fun m!1401917 () Bool)

(assert (=> b!1518504 m!1401917))

(declare-fun m!1401919 () Bool)

(assert (=> start!129342 m!1401919))

(declare-fun m!1401921 () Bool)

(assert (=> start!129342 m!1401921))

(check-sat (not b!1518505) (not b!1518504) (not start!129342) (not b!1518512) (not b!1518513) (not b!1518514) (not b!1518511) (not b!1518506) (not b!1518508) (not b!1518501) (not b!1518507) (not b!1518502) (not b!1518509))
(check-sat)
