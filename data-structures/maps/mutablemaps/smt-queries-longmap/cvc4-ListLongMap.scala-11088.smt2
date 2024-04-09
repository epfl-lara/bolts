; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129532 () Bool)

(assert start!129532)

(declare-fun b!1520493 () Bool)

(declare-fun res!1040041 () Bool)

(declare-fun e!848160 () Bool)

(assert (=> b!1520493 (=> (not res!1040041) (not e!848160))))

(declare-datatypes ((SeekEntryResult!13014 0))(
  ( (MissingZero!13014 (index!54450 (_ BitVec 32))) (Found!13014 (index!54451 (_ BitVec 32))) (Intermediate!13014 (undefined!13826 Bool) (index!54452 (_ BitVec 32)) (x!136135 (_ BitVec 32))) (Undefined!13014) (MissingVacant!13014 (index!54453 (_ BitVec 32))) )
))
(declare-fun lt!659065 () SeekEntryResult!13014)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101185 0))(
  ( (array!101186 (arr!48822 (Array (_ BitVec 32) (_ BitVec 64))) (size!49373 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101185)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101185 (_ BitVec 32)) SeekEntryResult!13014)

(assert (=> b!1520493 (= res!1040041 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48822 a!2804) j!70) a!2804 mask!2512) lt!659065))))

(declare-fun res!1040038 () Bool)

(declare-fun e!848162 () Bool)

(assert (=> start!129532 (=> (not res!1040038) (not e!848162))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129532 (= res!1040038 (validMask!0 mask!2512))))

(assert (=> start!129532 e!848162))

(assert (=> start!129532 true))

(declare-fun array_inv!37767 (array!101185) Bool)

(assert (=> start!129532 (array_inv!37767 a!2804)))

(declare-fun b!1520494 () Bool)

(declare-fun e!848159 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101185 (_ BitVec 32)) SeekEntryResult!13014)

(assert (=> b!1520494 (= e!848159 (= (seekEntry!0 (select (arr!48822 a!2804) j!70) a!2804 mask!2512) (Found!13014 j!70)))))

(declare-fun b!1520495 () Bool)

(declare-fun res!1040044 () Bool)

(assert (=> b!1520495 (=> (not res!1040044) (not e!848162))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1520495 (= res!1040044 (validKeyInArray!0 (select (arr!48822 a!2804) i!961)))))

(declare-fun b!1520496 () Bool)

(declare-fun res!1040043 () Bool)

(assert (=> b!1520496 (=> (not res!1040043) (not e!848162))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1520496 (= res!1040043 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49373 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49373 a!2804))))))

(declare-fun b!1520497 () Bool)

(declare-fun res!1040037 () Bool)

(assert (=> b!1520497 (=> (not res!1040037) (not e!848162))))

(declare-datatypes ((List!35485 0))(
  ( (Nil!35482) (Cons!35481 (h!36900 (_ BitVec 64)) (t!50186 List!35485)) )
))
(declare-fun arrayNoDuplicates!0 (array!101185 (_ BitVec 32) List!35485) Bool)

(assert (=> b!1520497 (= res!1040037 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35482))))

(declare-fun b!1520498 () Bool)

(assert (=> b!1520498 (= e!848162 e!848160)))

(declare-fun res!1040040 () Bool)

(assert (=> b!1520498 (=> (not res!1040040) (not e!848160))))

(declare-fun lt!659064 () SeekEntryResult!13014)

(assert (=> b!1520498 (= res!1040040 (= lt!659064 lt!659065))))

(assert (=> b!1520498 (= lt!659065 (Intermediate!13014 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1520498 (= lt!659064 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48822 a!2804) j!70) mask!2512) (select (arr!48822 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1520499 () Bool)

(assert (=> b!1520499 (= e!848160 (not (or (not (= (select (arr!48822 a!2804) j!70) (select (store (arr!48822 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48822 a!2804) index!487) (select (arr!48822 a!2804) j!70)) (= (select (arr!48822 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1520499 e!848159))

(declare-fun res!1040042 () Bool)

(assert (=> b!1520499 (=> (not res!1040042) (not e!848159))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101185 (_ BitVec 32)) Bool)

(assert (=> b!1520499 (= res!1040042 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50852 0))(
  ( (Unit!50853) )
))
(declare-fun lt!659063 () Unit!50852)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101185 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50852)

(assert (=> b!1520499 (= lt!659063 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1520500 () Bool)

(declare-fun res!1040036 () Bool)

(assert (=> b!1520500 (=> (not res!1040036) (not e!848162))))

(assert (=> b!1520500 (= res!1040036 (validKeyInArray!0 (select (arr!48822 a!2804) j!70)))))

(declare-fun b!1520501 () Bool)

(declare-fun res!1040039 () Bool)

(assert (=> b!1520501 (=> (not res!1040039) (not e!848162))))

(assert (=> b!1520501 (= res!1040039 (and (= (size!49373 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49373 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49373 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1520502 () Bool)

(declare-fun res!1040046 () Bool)

(assert (=> b!1520502 (=> (not res!1040046) (not e!848160))))

(assert (=> b!1520502 (= res!1040046 (= lt!659064 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48822 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48822 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101186 (store (arr!48822 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49373 a!2804)) mask!2512)))))

(declare-fun b!1520503 () Bool)

(declare-fun res!1040045 () Bool)

(assert (=> b!1520503 (=> (not res!1040045) (not e!848162))))

(assert (=> b!1520503 (= res!1040045 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!129532 res!1040038) b!1520501))

(assert (= (and b!1520501 res!1040039) b!1520495))

(assert (= (and b!1520495 res!1040044) b!1520500))

(assert (= (and b!1520500 res!1040036) b!1520503))

(assert (= (and b!1520503 res!1040045) b!1520497))

(assert (= (and b!1520497 res!1040037) b!1520496))

(assert (= (and b!1520496 res!1040043) b!1520498))

(assert (= (and b!1520498 res!1040040) b!1520493))

(assert (= (and b!1520493 res!1040041) b!1520502))

(assert (= (and b!1520502 res!1040046) b!1520499))

(assert (= (and b!1520499 res!1040042) b!1520494))

(declare-fun m!1403781 () Bool)

(assert (=> b!1520499 m!1403781))

(declare-fun m!1403783 () Bool)

(assert (=> b!1520499 m!1403783))

(declare-fun m!1403785 () Bool)

(assert (=> b!1520499 m!1403785))

(declare-fun m!1403787 () Bool)

(assert (=> b!1520499 m!1403787))

(declare-fun m!1403789 () Bool)

(assert (=> b!1520499 m!1403789))

(declare-fun m!1403791 () Bool)

(assert (=> b!1520499 m!1403791))

(declare-fun m!1403793 () Bool)

(assert (=> b!1520497 m!1403793))

(assert (=> b!1520493 m!1403781))

(assert (=> b!1520493 m!1403781))

(declare-fun m!1403795 () Bool)

(assert (=> b!1520493 m!1403795))

(declare-fun m!1403797 () Bool)

(assert (=> b!1520503 m!1403797))

(declare-fun m!1403799 () Bool)

(assert (=> b!1520495 m!1403799))

(assert (=> b!1520495 m!1403799))

(declare-fun m!1403801 () Bool)

(assert (=> b!1520495 m!1403801))

(assert (=> b!1520494 m!1403781))

(assert (=> b!1520494 m!1403781))

(declare-fun m!1403803 () Bool)

(assert (=> b!1520494 m!1403803))

(assert (=> b!1520498 m!1403781))

(assert (=> b!1520498 m!1403781))

(declare-fun m!1403805 () Bool)

(assert (=> b!1520498 m!1403805))

(assert (=> b!1520498 m!1403805))

(assert (=> b!1520498 m!1403781))

(declare-fun m!1403807 () Bool)

(assert (=> b!1520498 m!1403807))

(declare-fun m!1403809 () Bool)

(assert (=> start!129532 m!1403809))

(declare-fun m!1403811 () Bool)

(assert (=> start!129532 m!1403811))

(assert (=> b!1520500 m!1403781))

(assert (=> b!1520500 m!1403781))

(declare-fun m!1403813 () Bool)

(assert (=> b!1520500 m!1403813))

(assert (=> b!1520502 m!1403785))

(assert (=> b!1520502 m!1403789))

(assert (=> b!1520502 m!1403789))

(declare-fun m!1403815 () Bool)

(assert (=> b!1520502 m!1403815))

(assert (=> b!1520502 m!1403815))

(assert (=> b!1520502 m!1403789))

(declare-fun m!1403817 () Bool)

(assert (=> b!1520502 m!1403817))

(push 1)

(assert (not b!1520502))

(assert (not b!1520498))

(assert (not b!1520503))

(assert (not start!129532))

(assert (not b!1520500))

(assert (not b!1520495))

(assert (not b!1520494))

(assert (not b!1520497))

(assert (not b!1520493))

(assert (not b!1520499))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!158879 () Bool)

(assert (=> d!158879 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!129532 d!158879))

(declare-fun d!158887 () Bool)

(assert (=> d!158887 (= (array_inv!37767 a!2804) (bvsge (size!49373 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!129532 d!158887))

(declare-fun b!1520597 () Bool)

(declare-fun e!848227 () SeekEntryResult!13014)

(assert (=> b!1520597 (= e!848227 (Intermediate!13014 false (toIndex!0 (select (store (arr!48822 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1520598 () Bool)

(declare-fun lt!659105 () SeekEntryResult!13014)

(assert (=> b!1520598 (and (bvsge (index!54452 lt!659105) #b00000000000000000000000000000000) (bvslt (index!54452 lt!659105) (size!49373 (array!101186 (store (arr!48822 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49373 a!2804)))))))

(declare-fun res!1040087 () Bool)

(assert (=> b!1520598 (= res!1040087 (= (select (arr!48822 (array!101186 (store (arr!48822 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49373 a!2804))) (index!54452 lt!659105)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!848223 () Bool)

(assert (=> b!1520598 (=> res!1040087 e!848223)))

(declare-fun d!158889 () Bool)

(declare-fun e!848224 () Bool)

(assert (=> d!158889 e!848224))

(declare-fun c!139803 () Bool)

(assert (=> d!158889 (= c!139803 (and (is-Intermediate!13014 lt!659105) (undefined!13826 lt!659105)))))

(declare-fun e!848226 () SeekEntryResult!13014)

(assert (=> d!158889 (= lt!659105 e!848226)))

(declare-fun c!139805 () Bool)

(assert (=> d!158889 (= c!139805 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!659106 () (_ BitVec 64))

(assert (=> d!158889 (= lt!659106 (select (arr!48822 (array!101186 (store (arr!48822 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49373 a!2804))) (toIndex!0 (select (store (arr!48822 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512)))))

(assert (=> d!158889 (validMask!0 mask!2512)))

(assert (=> d!158889 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48822 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48822 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101186 (store (arr!48822 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49373 a!2804)) mask!2512) lt!659105)))

(declare-fun b!1520599 () Bool)

(assert (=> b!1520599 (and (bvsge (index!54452 lt!659105) #b00000000000000000000000000000000) (bvslt (index!54452 lt!659105) (size!49373 (array!101186 (store (arr!48822 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49373 a!2804)))))))

(assert (=> b!1520599 (= e!848223 (= (select (arr!48822 (array!101186 (store (arr!48822 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49373 a!2804))) (index!54452 lt!659105)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1520600 () Bool)

(assert (=> b!1520600 (= e!848224 (bvsge (x!136135 lt!659105) #b01111111111111111111111111111110))))

(declare-fun b!1520601 () Bool)

(assert (=> b!1520601 (and (bvsge (index!54452 lt!659105) #b00000000000000000000000000000000) (bvslt (index!54452 lt!659105) (size!49373 (array!101186 (store (arr!48822 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49373 a!2804)))))))

(declare-fun res!1040088 () Bool)

(assert (=> b!1520601 (= res!1040088 (= (select (arr!48822 (array!101186 (store (arr!48822 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49373 a!2804))) (index!54452 lt!659105)) (select (store (arr!48822 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(assert (=> b!1520601 (=> res!1040088 e!848223)))

(declare-fun e!848225 () Bool)

(assert (=> b!1520601 (= e!848225 e!848223)))

(declare-fun b!1520602 () Bool)

(assert (=> b!1520602 (= e!848226 e!848227)))

(declare-fun c!139804 () Bool)

(assert (=> b!1520602 (= c!139804 (or (= lt!659106 (select (store (arr!48822 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)) (= (bvadd lt!659106 lt!659106) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1520603 () Bool)

(assert (=> b!1520603 (= e!848224 e!848225)))

(declare-fun res!1040089 () Bool)

(assert (=> b!1520603 (= res!1040089 (and (is-Intermediate!13014 lt!659105) (not (undefined!13826 lt!659105)) (bvslt (x!136135 lt!659105) #b01111111111111111111111111111110) (bvsge (x!136135 lt!659105) #b00000000000000000000000000000000) (bvsge (x!136135 lt!659105) #b00000000000000000000000000000000)))))

(assert (=> b!1520603 (=> (not res!1040089) (not e!848225))))

(declare-fun b!1520604 () Bool)

(assert (=> b!1520604 (= e!848226 (Intermediate!13014 true (toIndex!0 (select (store (arr!48822 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1520605 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1520605 (= e!848227 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!48822 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (store (arr!48822 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101186 (store (arr!48822 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49373 a!2804)) mask!2512))))

(assert (= (and d!158889 c!139805) b!1520604))

(assert (= (and d!158889 (not c!139805)) b!1520602))

(assert (= (and b!1520602 c!139804) b!1520597))

(assert (= (and b!1520602 (not c!139804)) b!1520605))

(assert (= (and d!158889 c!139803) b!1520600))

(assert (= (and d!158889 (not c!139803)) b!1520603))

(assert (= (and b!1520603 res!1040089) b!1520601))

(assert (= (and b!1520601 (not res!1040088)) b!1520598))

(assert (= (and b!1520598 (not res!1040087)) b!1520599))

(assert (=> d!158889 m!1403815))

(declare-fun m!1403863 () Bool)

(assert (=> d!158889 m!1403863))

(assert (=> d!158889 m!1403809))

(assert (=> b!1520605 m!1403815))

(declare-fun m!1403865 () Bool)

(assert (=> b!1520605 m!1403865))

(assert (=> b!1520605 m!1403865))

(assert (=> b!1520605 m!1403789))

(declare-fun m!1403867 () Bool)

(assert (=> b!1520605 m!1403867))

(declare-fun m!1403869 () Bool)

(assert (=> b!1520599 m!1403869))

(assert (=> b!1520598 m!1403869))

(assert (=> b!1520601 m!1403869))

(assert (=> b!1520502 d!158889))

(declare-fun d!158901 () Bool)

(declare-fun lt!659116 () (_ BitVec 32))

(declare-fun lt!659115 () (_ BitVec 32))

(assert (=> d!158901 (= lt!659116 (bvmul (bvxor lt!659115 (bvlshr lt!659115 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158901 (= lt!659115 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48822 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48822 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158901 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1040090 (let ((h!36902 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48822 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48822 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136140 (bvmul (bvxor h!36902 (bvlshr h!36902 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136140 (bvlshr x!136140 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1040090 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1040090 #b00000000000000000000000000000000))))))

(assert (=> d!158901 (= (toIndex!0 (select (store (arr!48822 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (bvand (bvxor lt!659116 (bvlshr lt!659116 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1520502 d!158901))

(declare-fun b!1520665 () Bool)

(declare-fun e!848266 () Bool)

(declare-fun e!848265 () Bool)

(assert (=> b!1520665 (= e!848266 e!848265)))

(declare-fun c!139827 () Bool)

(assert (=> b!1520665 (= c!139827 (validKeyInArray!0 (select (arr!48822 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1520666 () Bool)

(declare-fun call!68368 () Bool)

(assert (=> b!1520666 (= e!848265 call!68368)))

(declare-fun b!1520667 () Bool)

(assert (=> b!1520667 (= e!848265 call!68368)))

(declare-fun b!1520668 () Bool)

(declare-fun e!848264 () Bool)

(declare-fun contains!9993 (List!35485 (_ BitVec 64)) Bool)

(assert (=> b!1520668 (= e!848264 (contains!9993 Nil!35482 (select (arr!48822 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68365 () Bool)

(assert (=> bm!68365 (= call!68368 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139827 (Cons!35481 (select (arr!48822 a!2804) #b00000000000000000000000000000000) Nil!35482) Nil!35482)))))

(declare-fun b!1520669 () Bool)

(declare-fun e!848263 () Bool)

(assert (=> b!1520669 (= e!848263 e!848266)))

(declare-fun res!1040111 () Bool)

(assert (=> b!1520669 (=> (not res!1040111) (not e!848266))))

(assert (=> b!1520669 (= res!1040111 (not e!848264))))

(declare-fun res!1040109 () Bool)

(assert (=> b!1520669 (=> (not res!1040109) (not e!848264))))

(assert (=> b!1520669 (= res!1040109 (validKeyInArray!0 (select (arr!48822 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!158903 () Bool)

(declare-fun res!1040110 () Bool)

(assert (=> d!158903 (=> res!1040110 e!848263)))

(assert (=> d!158903 (= res!1040110 (bvsge #b00000000000000000000000000000000 (size!49373 a!2804)))))

(assert (=> d!158903 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35482) e!848263)))

(assert (= (and d!158903 (not res!1040110)) b!1520669))

(assert (= (and b!1520669 res!1040109) b!1520668))

(assert (= (and b!1520669 res!1040111) b!1520665))

(assert (= (and b!1520665 c!139827) b!1520667))

(assert (= (and b!1520665 (not c!139827)) b!1520666))

(assert (= (or b!1520667 b!1520666) bm!68365))

(declare-fun m!1403893 () Bool)

(assert (=> b!1520665 m!1403893))

(assert (=> b!1520665 m!1403893))

(declare-fun m!1403895 () Bool)

(assert (=> b!1520665 m!1403895))

(assert (=> b!1520668 m!1403893))

(assert (=> b!1520668 m!1403893))

(declare-fun m!1403897 () Bool)

(assert (=> b!1520668 m!1403897))

(assert (=> bm!68365 m!1403893))

(declare-fun m!1403899 () Bool)

(assert (=> bm!68365 m!1403899))

(assert (=> b!1520669 m!1403893))

(assert (=> b!1520669 m!1403893))

(assert (=> b!1520669 m!1403895))

(assert (=> b!1520497 d!158903))

(declare-fun d!158913 () Bool)

(assert (=> d!158913 (= (validKeyInArray!0 (select (arr!48822 a!2804) j!70)) (and (not (= (select (arr!48822 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48822 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1520500 d!158913))

(declare-fun d!158917 () Bool)

(assert (=> d!158917 (= (validKeyInArray!0 (select (arr!48822 a!2804) i!961)) (and (not (= (select (arr!48822 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48822 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1520495 d!158917))

(declare-fun b!1520706 () Bool)

(declare-fun e!848292 () Bool)

(declare-fun call!68373 () Bool)

(assert (=> b!1520706 (= e!848292 call!68373)))

(declare-fun b!1520707 () Bool)

(declare-fun e!848293 () Bool)

(assert (=> b!1520707 (= e!848293 e!848292)))

(declare-fun c!139838 () Bool)

(assert (=> b!1520707 (= c!139838 (validKeyInArray!0 (select (arr!48822 a!2804) j!70)))))

(declare-fun b!1520708 () Bool)

(declare-fun e!848291 () Bool)

(assert (=> b!1520708 (= e!848291 call!68373)))

(declare-fun b!1520709 () Bool)

(assert (=> b!1520709 (= e!848292 e!848291)))

(declare-fun lt!659157 () (_ BitVec 64))

(assert (=> b!1520709 (= lt!659157 (select (arr!48822 a!2804) j!70))))

(declare-fun lt!659156 () Unit!50852)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101185 (_ BitVec 64) (_ BitVec 32)) Unit!50852)

(assert (=> b!1520709 (= lt!659156 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!659157 j!70))))

(declare-fun arrayContainsKey!0 (array!101185 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1520709 (arrayContainsKey!0 a!2804 lt!659157 #b00000000000000000000000000000000)))

(declare-fun lt!659155 () Unit!50852)

(assert (=> b!1520709 (= lt!659155 lt!659156)))

(declare-fun res!1040129 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101185 (_ BitVec 32)) SeekEntryResult!13014)

(assert (=> b!1520709 (= res!1040129 (= (seekEntryOrOpen!0 (select (arr!48822 a!2804) j!70) a!2804 mask!2512) (Found!13014 j!70)))))

(assert (=> b!1520709 (=> (not res!1040129) (not e!848291))))

(declare-fun d!158919 () Bool)

(declare-fun res!1040128 () Bool)

(assert (=> d!158919 (=> res!1040128 e!848293)))

(assert (=> d!158919 (= res!1040128 (bvsge j!70 (size!49373 a!2804)))))

(assert (=> d!158919 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!848293)))

(declare-fun bm!68370 () Bool)

(assert (=> bm!68370 (= call!68373 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(assert (= (and d!158919 (not res!1040128)) b!1520707))

(assert (= (and b!1520707 c!139838) b!1520709))

(assert (= (and b!1520707 (not c!139838)) b!1520706))

(assert (= (and b!1520709 res!1040129) b!1520708))

(assert (= (or b!1520708 b!1520706) bm!68370))

(assert (=> b!1520707 m!1403781))

(assert (=> b!1520707 m!1403781))

(assert (=> b!1520707 m!1403813))

(assert (=> b!1520709 m!1403781))

(declare-fun m!1403917 () Bool)

(assert (=> b!1520709 m!1403917))

(declare-fun m!1403919 () Bool)

(assert (=> b!1520709 m!1403919))

(assert (=> b!1520709 m!1403781))

(declare-fun m!1403921 () Bool)

(assert (=> b!1520709 m!1403921))

(declare-fun m!1403923 () Bool)

(assert (=> bm!68370 m!1403923))

(assert (=> b!1520499 d!158919))

(declare-fun d!158927 () Bool)

(assert (=> d!158927 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!659172 () Unit!50852)

(declare-fun choose!38 (array!101185 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50852)

(assert (=> d!158927 (= lt!659172 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!158927 (validMask!0 mask!2512)))

(assert (=> d!158927 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!659172)))

(declare-fun bs!43630 () Bool)

(assert (= bs!43630 d!158927))

(assert (=> bs!43630 m!1403791))

(declare-fun m!1403937 () Bool)

(assert (=> bs!43630 m!1403937))

(assert (=> bs!43630 m!1403809))

(assert (=> b!1520499 d!158927))

(declare-fun b!1520758 () Bool)

(declare-fun e!848323 () SeekEntryResult!13014)

(declare-fun e!848321 () SeekEntryResult!13014)

(assert (=> b!1520758 (= e!848323 e!848321)))

(declare-fun lt!659189 () (_ BitVec 64))

(declare-fun lt!659191 () SeekEntryResult!13014)

(assert (=> b!1520758 (= lt!659189 (select (arr!48822 a!2804) (index!54452 lt!659191)))))

(declare-fun c!139859 () Bool)

(assert (=> b!1520758 (= c!139859 (= lt!659189 (select (arr!48822 a!2804) j!70)))))

(declare-fun b!1520759 () Bool)

(assert (=> b!1520759 (= e!848321 (Found!13014 (index!54452 lt!659191)))))

(declare-fun b!1520760 () Bool)

(assert (=> b!1520760 (= e!848323 Undefined!13014)))

(declare-fun d!158933 () Bool)

(declare-fun lt!659188 () SeekEntryResult!13014)

(assert (=> d!158933 (and (or (is-MissingVacant!13014 lt!659188) (not (is-Found!13014 lt!659188)) (and (bvsge (index!54451 lt!659188) #b00000000000000000000000000000000) (bvslt (index!54451 lt!659188) (size!49373 a!2804)))) (not (is-MissingVacant!13014 lt!659188)) (or (not (is-Found!13014 lt!659188)) (= (select (arr!48822 a!2804) (index!54451 lt!659188)) (select (arr!48822 a!2804) j!70))))))

(assert (=> d!158933 (= lt!659188 e!848323)))

(declare-fun c!139860 () Bool)

(assert (=> d!158933 (= c!139860 (and (is-Intermediate!13014 lt!659191) (undefined!13826 lt!659191)))))

(assert (=> d!158933 (= lt!659191 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48822 a!2804) j!70) mask!2512) (select (arr!48822 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!158933 (validMask!0 mask!2512)))

(assert (=> d!158933 (= (seekEntry!0 (select (arr!48822 a!2804) j!70) a!2804 mask!2512) lt!659188)))

(declare-fun b!1520761 () Bool)

(declare-fun c!139861 () Bool)

(assert (=> b!1520761 (= c!139861 (= lt!659189 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!848322 () SeekEntryResult!13014)

(assert (=> b!1520761 (= e!848321 e!848322)))

(declare-fun b!1520762 () Bool)

(declare-fun lt!659190 () SeekEntryResult!13014)

(assert (=> b!1520762 (= e!848322 (ite (is-MissingVacant!13014 lt!659190) (MissingZero!13014 (index!54453 lt!659190)) lt!659190))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101185 (_ BitVec 32)) SeekEntryResult!13014)

(assert (=> b!1520762 (= lt!659190 (seekKeyOrZeroReturnVacant!0 (x!136135 lt!659191) (index!54452 lt!659191) (index!54452 lt!659191) (select (arr!48822 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1520763 () Bool)

(assert (=> b!1520763 (= e!848322 (MissingZero!13014 (index!54452 lt!659191)))))

(assert (= (and d!158933 c!139860) b!1520760))

(assert (= (and d!158933 (not c!139860)) b!1520758))

(assert (= (and b!1520758 c!139859) b!1520759))

(assert (= (and b!1520758 (not c!139859)) b!1520761))

(assert (= (and b!1520761 c!139861) b!1520763))

(assert (= (and b!1520761 (not c!139861)) b!1520762))

(declare-fun m!1403953 () Bool)

(assert (=> b!1520758 m!1403953))

(declare-fun m!1403955 () Bool)

(assert (=> d!158933 m!1403955))

(assert (=> d!158933 m!1403781))

(assert (=> d!158933 m!1403805))

(assert (=> d!158933 m!1403805))

(assert (=> d!158933 m!1403781))

(assert (=> d!158933 m!1403807))

(assert (=> d!158933 m!1403809))

(assert (=> b!1520762 m!1403781))

(declare-fun m!1403957 () Bool)

(assert (=> b!1520762 m!1403957))

(assert (=> b!1520494 d!158933))

(declare-fun b!1520764 () Bool)

(declare-fun e!848325 () Bool)

(declare-fun call!68376 () Bool)

(assert (=> b!1520764 (= e!848325 call!68376)))

(declare-fun b!1520765 () Bool)

(declare-fun e!848326 () Bool)

(assert (=> b!1520765 (= e!848326 e!848325)))

(declare-fun c!139862 () Bool)

(assert (=> b!1520765 (= c!139862 (validKeyInArray!0 (select (arr!48822 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1520766 () Bool)

(declare-fun e!848324 () Bool)

(assert (=> b!1520766 (= e!848324 call!68376)))

(declare-fun b!1520767 () Bool)

(assert (=> b!1520767 (= e!848325 e!848324)))

(declare-fun lt!659194 () (_ BitVec 64))

(assert (=> b!1520767 (= lt!659194 (select (arr!48822 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!659193 () Unit!50852)

(assert (=> b!1520767 (= lt!659193 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!659194 #b00000000000000000000000000000000))))

(assert (=> b!1520767 (arrayContainsKey!0 a!2804 lt!659194 #b00000000000000000000000000000000)))

(declare-fun lt!659192 () Unit!50852)

(assert (=> b!1520767 (= lt!659192 lt!659193)))

(declare-fun res!1040139 () Bool)

(assert (=> b!1520767 (= res!1040139 (= (seekEntryOrOpen!0 (select (arr!48822 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13014 #b00000000000000000000000000000000)))))

(assert (=> b!1520767 (=> (not res!1040139) (not e!848324))))

(declare-fun d!158943 () Bool)

(declare-fun res!1040138 () Bool)

(assert (=> d!158943 (=> res!1040138 e!848326)))

(assert (=> d!158943 (= res!1040138 (bvsge #b00000000000000000000000000000000 (size!49373 a!2804)))))

(assert (=> d!158943 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!848326)))

(declare-fun bm!68373 () Bool)

(assert (=> bm!68373 (= call!68376 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(assert (= (and d!158943 (not res!1040138)) b!1520765))

(assert (= (and b!1520765 c!139862) b!1520767))

(assert (= (and b!1520765 (not c!139862)) b!1520764))

(assert (= (and b!1520767 res!1040139) b!1520766))

(assert (= (or b!1520766 b!1520764) bm!68373))

(assert (=> b!1520765 m!1403893))

(assert (=> b!1520765 m!1403893))

(assert (=> b!1520765 m!1403895))

(assert (=> b!1520767 m!1403893))

(declare-fun m!1403959 () Bool)

(assert (=> b!1520767 m!1403959))

(declare-fun m!1403961 () Bool)

(assert (=> b!1520767 m!1403961))

(assert (=> b!1520767 m!1403893))

(declare-fun m!1403963 () Bool)

(assert (=> b!1520767 m!1403963))

(declare-fun m!1403965 () Bool)

(assert (=> bm!68373 m!1403965))

(assert (=> b!1520503 d!158943))

(declare-fun e!848331 () SeekEntryResult!13014)

(declare-fun b!1520768 () Bool)

(assert (=> b!1520768 (= e!848331 (Intermediate!13014 false (toIndex!0 (select (arr!48822 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1520769 () Bool)

(declare-fun lt!659195 () SeekEntryResult!13014)

(assert (=> b!1520769 (and (bvsge (index!54452 lt!659195) #b00000000000000000000000000000000) (bvslt (index!54452 lt!659195) (size!49373 a!2804)))))

(declare-fun res!1040140 () Bool)

(assert (=> b!1520769 (= res!1040140 (= (select (arr!48822 a!2804) (index!54452 lt!659195)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!848327 () Bool)

(assert (=> b!1520769 (=> res!1040140 e!848327)))

(declare-fun d!158945 () Bool)

(declare-fun e!848328 () Bool)

(assert (=> d!158945 e!848328))

(declare-fun c!139863 () Bool)

(assert (=> d!158945 (= c!139863 (and (is-Intermediate!13014 lt!659195) (undefined!13826 lt!659195)))))

(declare-fun e!848330 () SeekEntryResult!13014)

(assert (=> d!158945 (= lt!659195 e!848330)))

(declare-fun c!139865 () Bool)

(assert (=> d!158945 (= c!139865 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!659196 () (_ BitVec 64))

(assert (=> d!158945 (= lt!659196 (select (arr!48822 a!2804) (toIndex!0 (select (arr!48822 a!2804) j!70) mask!2512)))))

(assert (=> d!158945 (validMask!0 mask!2512)))

(assert (=> d!158945 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48822 a!2804) j!70) mask!2512) (select (arr!48822 a!2804) j!70) a!2804 mask!2512) lt!659195)))

(declare-fun b!1520770 () Bool)

(assert (=> b!1520770 (and (bvsge (index!54452 lt!659195) #b00000000000000000000000000000000) (bvslt (index!54452 lt!659195) (size!49373 a!2804)))))

(assert (=> b!1520770 (= e!848327 (= (select (arr!48822 a!2804) (index!54452 lt!659195)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1520771 () Bool)

(assert (=> b!1520771 (= e!848328 (bvsge (x!136135 lt!659195) #b01111111111111111111111111111110))))

(declare-fun b!1520772 () Bool)

(assert (=> b!1520772 (and (bvsge (index!54452 lt!659195) #b00000000000000000000000000000000) (bvslt (index!54452 lt!659195) (size!49373 a!2804)))))

(declare-fun res!1040141 () Bool)

(assert (=> b!1520772 (= res!1040141 (= (select (arr!48822 a!2804) (index!54452 lt!659195)) (select (arr!48822 a!2804) j!70)))))

(assert (=> b!1520772 (=> res!1040141 e!848327)))

(declare-fun e!848329 () Bool)

(assert (=> b!1520772 (= e!848329 e!848327)))

(declare-fun b!1520773 () Bool)

(assert (=> b!1520773 (= e!848330 e!848331)))

(declare-fun c!139864 () Bool)

(assert (=> b!1520773 (= c!139864 (or (= lt!659196 (select (arr!48822 a!2804) j!70)) (= (bvadd lt!659196 lt!659196) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1520774 () Bool)

(assert (=> b!1520774 (= e!848328 e!848329)))

(declare-fun res!1040142 () Bool)

(assert (=> b!1520774 (= res!1040142 (and (is-Intermediate!13014 lt!659195) (not (undefined!13826 lt!659195)) (bvslt (x!136135 lt!659195) #b01111111111111111111111111111110) (bvsge (x!136135 lt!659195) #b00000000000000000000000000000000) (bvsge (x!136135 lt!659195) #b00000000000000000000000000000000)))))

(assert (=> b!1520774 (=> (not res!1040142) (not e!848329))))

(declare-fun b!1520775 () Bool)

(assert (=> b!1520775 (= e!848330 (Intermediate!13014 true (toIndex!0 (select (arr!48822 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1520776 () Bool)

(assert (=> b!1520776 (= e!848331 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48822 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48822 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and d!158945 c!139865) b!1520775))

(assert (= (and d!158945 (not c!139865)) b!1520773))

(assert (= (and b!1520773 c!139864) b!1520768))

(assert (= (and b!1520773 (not c!139864)) b!1520776))

(assert (= (and d!158945 c!139863) b!1520771))

(assert (= (and d!158945 (not c!139863)) b!1520774))

(assert (= (and b!1520774 res!1040142) b!1520772))

