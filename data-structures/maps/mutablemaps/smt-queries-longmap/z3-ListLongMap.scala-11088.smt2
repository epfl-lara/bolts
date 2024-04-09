; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129530 () Bool)

(assert start!129530)

(declare-fun b!1520460 () Bool)

(declare-fun res!1040012 () Bool)

(declare-fun e!848147 () Bool)

(assert (=> b!1520460 (=> (not res!1040012) (not e!848147))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-datatypes ((array!101183 0))(
  ( (array!101184 (arr!48821 (Array (_ BitVec 32) (_ BitVec 64))) (size!49372 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101183)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1520460 (= res!1040012 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49372 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49372 a!2804))))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun b!1520461 () Bool)

(declare-fun e!848148 () Bool)

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1520461 (= e!848148 (not (or (not (= (select (arr!48821 a!2804) j!70) (select (store (arr!48821 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48821 a!2804) index!487) (select (arr!48821 a!2804) j!70)) (= (select (arr!48821 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!848149 () Bool)

(assert (=> b!1520461 e!848149))

(declare-fun res!1040004 () Bool)

(assert (=> b!1520461 (=> (not res!1040004) (not e!848149))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101183 (_ BitVec 32)) Bool)

(assert (=> b!1520461 (= res!1040004 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50850 0))(
  ( (Unit!50851) )
))
(declare-fun lt!659055 () Unit!50850)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101183 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50850)

(assert (=> b!1520461 (= lt!659055 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1520462 () Bool)

(assert (=> b!1520462 (= e!848147 e!848148)))

(declare-fun res!1040008 () Bool)

(assert (=> b!1520462 (=> (not res!1040008) (not e!848148))))

(declare-datatypes ((SeekEntryResult!13013 0))(
  ( (MissingZero!13013 (index!54446 (_ BitVec 32))) (Found!13013 (index!54447 (_ BitVec 32))) (Intermediate!13013 (undefined!13825 Bool) (index!54448 (_ BitVec 32)) (x!136134 (_ BitVec 32))) (Undefined!13013) (MissingVacant!13013 (index!54449 (_ BitVec 32))) )
))
(declare-fun lt!659056 () SeekEntryResult!13013)

(declare-fun lt!659054 () SeekEntryResult!13013)

(assert (=> b!1520462 (= res!1040008 (= lt!659056 lt!659054))))

(assert (=> b!1520462 (= lt!659054 (Intermediate!13013 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101183 (_ BitVec 32)) SeekEntryResult!13013)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1520462 (= lt!659056 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48821 a!2804) j!70) mask!2512) (select (arr!48821 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1520463 () Bool)

(declare-fun res!1040003 () Bool)

(assert (=> b!1520463 (=> (not res!1040003) (not e!848147))))

(assert (=> b!1520463 (= res!1040003 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1520464 () Bool)

(declare-fun res!1040013 () Bool)

(assert (=> b!1520464 (=> (not res!1040013) (not e!848147))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1520464 (= res!1040013 (validKeyInArray!0 (select (arr!48821 a!2804) i!961)))))

(declare-fun b!1520465 () Bool)

(declare-fun res!1040010 () Bool)

(assert (=> b!1520465 (=> (not res!1040010) (not e!848147))))

(assert (=> b!1520465 (= res!1040010 (and (= (size!49372 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49372 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49372 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1520467 () Bool)

(declare-fun res!1040011 () Bool)

(assert (=> b!1520467 (=> (not res!1040011) (not e!848148))))

(assert (=> b!1520467 (= res!1040011 (= lt!659056 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48821 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48821 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101184 (store (arr!48821 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49372 a!2804)) mask!2512)))))

(declare-fun b!1520468 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101183 (_ BitVec 32)) SeekEntryResult!13013)

(assert (=> b!1520468 (= e!848149 (= (seekEntry!0 (select (arr!48821 a!2804) j!70) a!2804 mask!2512) (Found!13013 j!70)))))

(declare-fun b!1520469 () Bool)

(declare-fun res!1040006 () Bool)

(assert (=> b!1520469 (=> (not res!1040006) (not e!848148))))

(assert (=> b!1520469 (= res!1040006 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48821 a!2804) j!70) a!2804 mask!2512) lt!659054))))

(declare-fun b!1520470 () Bool)

(declare-fun res!1040009 () Bool)

(assert (=> b!1520470 (=> (not res!1040009) (not e!848147))))

(assert (=> b!1520470 (= res!1040009 (validKeyInArray!0 (select (arr!48821 a!2804) j!70)))))

(declare-fun res!1040005 () Bool)

(assert (=> start!129530 (=> (not res!1040005) (not e!848147))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129530 (= res!1040005 (validMask!0 mask!2512))))

(assert (=> start!129530 e!848147))

(assert (=> start!129530 true))

(declare-fun array_inv!37766 (array!101183) Bool)

(assert (=> start!129530 (array_inv!37766 a!2804)))

(declare-fun b!1520466 () Bool)

(declare-fun res!1040007 () Bool)

(assert (=> b!1520466 (=> (not res!1040007) (not e!848147))))

(declare-datatypes ((List!35484 0))(
  ( (Nil!35481) (Cons!35480 (h!36899 (_ BitVec 64)) (t!50185 List!35484)) )
))
(declare-fun arrayNoDuplicates!0 (array!101183 (_ BitVec 32) List!35484) Bool)

(assert (=> b!1520466 (= res!1040007 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35481))))

(assert (= (and start!129530 res!1040005) b!1520465))

(assert (= (and b!1520465 res!1040010) b!1520464))

(assert (= (and b!1520464 res!1040013) b!1520470))

(assert (= (and b!1520470 res!1040009) b!1520463))

(assert (= (and b!1520463 res!1040003) b!1520466))

(assert (= (and b!1520466 res!1040007) b!1520460))

(assert (= (and b!1520460 res!1040012) b!1520462))

(assert (= (and b!1520462 res!1040008) b!1520469))

(assert (= (and b!1520469 res!1040006) b!1520467))

(assert (= (and b!1520467 res!1040011) b!1520461))

(assert (= (and b!1520461 res!1040004) b!1520468))

(declare-fun m!1403743 () Bool)

(assert (=> b!1520470 m!1403743))

(assert (=> b!1520470 m!1403743))

(declare-fun m!1403745 () Bool)

(assert (=> b!1520470 m!1403745))

(assert (=> b!1520469 m!1403743))

(assert (=> b!1520469 m!1403743))

(declare-fun m!1403747 () Bool)

(assert (=> b!1520469 m!1403747))

(assert (=> b!1520468 m!1403743))

(assert (=> b!1520468 m!1403743))

(declare-fun m!1403749 () Bool)

(assert (=> b!1520468 m!1403749))

(assert (=> b!1520461 m!1403743))

(declare-fun m!1403751 () Bool)

(assert (=> b!1520461 m!1403751))

(declare-fun m!1403753 () Bool)

(assert (=> b!1520461 m!1403753))

(declare-fun m!1403755 () Bool)

(assert (=> b!1520461 m!1403755))

(declare-fun m!1403757 () Bool)

(assert (=> b!1520461 m!1403757))

(declare-fun m!1403759 () Bool)

(assert (=> b!1520461 m!1403759))

(assert (=> b!1520467 m!1403753))

(assert (=> b!1520467 m!1403757))

(assert (=> b!1520467 m!1403757))

(declare-fun m!1403761 () Bool)

(assert (=> b!1520467 m!1403761))

(assert (=> b!1520467 m!1403761))

(assert (=> b!1520467 m!1403757))

(declare-fun m!1403763 () Bool)

(assert (=> b!1520467 m!1403763))

(declare-fun m!1403765 () Bool)

(assert (=> b!1520466 m!1403765))

(assert (=> b!1520462 m!1403743))

(assert (=> b!1520462 m!1403743))

(declare-fun m!1403767 () Bool)

(assert (=> b!1520462 m!1403767))

(assert (=> b!1520462 m!1403767))

(assert (=> b!1520462 m!1403743))

(declare-fun m!1403769 () Bool)

(assert (=> b!1520462 m!1403769))

(declare-fun m!1403771 () Bool)

(assert (=> b!1520463 m!1403771))

(declare-fun m!1403773 () Bool)

(assert (=> start!129530 m!1403773))

(declare-fun m!1403775 () Bool)

(assert (=> start!129530 m!1403775))

(declare-fun m!1403777 () Bool)

(assert (=> b!1520464 m!1403777))

(assert (=> b!1520464 m!1403777))

(declare-fun m!1403779 () Bool)

(assert (=> b!1520464 m!1403779))

(check-sat (not b!1520463) (not b!1520467) (not b!1520466) (not start!129530) (not b!1520464) (not b!1520462) (not b!1520469) (not b!1520468) (not b!1520470) (not b!1520461))
(check-sat)
(get-model)

(declare-fun d!158867 () Bool)

(assert (=> d!158867 (= (validKeyInArray!0 (select (arr!48821 a!2804) j!70)) (and (not (= (select (arr!48821 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48821 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1520470 d!158867))

(declare-fun b!1520522 () Bool)

(declare-fun e!848176 () Bool)

(declare-fun e!848173 () Bool)

(assert (=> b!1520522 (= e!848176 e!848173)))

(declare-fun res!1040054 () Bool)

(declare-fun lt!659070 () SeekEntryResult!13013)

(get-info :version)

(assert (=> b!1520522 (= res!1040054 (and ((_ is Intermediate!13013) lt!659070) (not (undefined!13825 lt!659070)) (bvslt (x!136134 lt!659070) #b01111111111111111111111111111110) (bvsge (x!136134 lt!659070) #b00000000000000000000000000000000) (bvsge (x!136134 lt!659070) x!534)))))

(assert (=> b!1520522 (=> (not res!1040054) (not e!848173))))

(declare-fun b!1520523 () Bool)

(declare-fun e!848177 () SeekEntryResult!13013)

(assert (=> b!1520523 (= e!848177 (Intermediate!13013 false index!487 x!534))))

(declare-fun b!1520524 () Bool)

(assert (=> b!1520524 (and (bvsge (index!54448 lt!659070) #b00000000000000000000000000000000) (bvslt (index!54448 lt!659070) (size!49372 a!2804)))))

(declare-fun res!1040055 () Bool)

(assert (=> b!1520524 (= res!1040055 (= (select (arr!48821 a!2804) (index!54448 lt!659070)) (select (arr!48821 a!2804) j!70)))))

(declare-fun e!848175 () Bool)

(assert (=> b!1520524 (=> res!1040055 e!848175)))

(assert (=> b!1520524 (= e!848173 e!848175)))

(declare-fun b!1520525 () Bool)

(declare-fun e!848174 () SeekEntryResult!13013)

(assert (=> b!1520525 (= e!848174 (Intermediate!13013 true index!487 x!534))))

(declare-fun b!1520526 () Bool)

(assert (=> b!1520526 (and (bvsge (index!54448 lt!659070) #b00000000000000000000000000000000) (bvslt (index!54448 lt!659070) (size!49372 a!2804)))))

(assert (=> b!1520526 (= e!848175 (= (select (arr!48821 a!2804) (index!54448 lt!659070)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!158869 () Bool)

(assert (=> d!158869 e!848176))

(declare-fun c!139783 () Bool)

(assert (=> d!158869 (= c!139783 (and ((_ is Intermediate!13013) lt!659070) (undefined!13825 lt!659070)))))

(assert (=> d!158869 (= lt!659070 e!848174)))

(declare-fun c!139784 () Bool)

(assert (=> d!158869 (= c!139784 (bvsge x!534 #b01111111111111111111111111111110))))

(declare-fun lt!659071 () (_ BitVec 64))

(assert (=> d!158869 (= lt!659071 (select (arr!48821 a!2804) index!487))))

(assert (=> d!158869 (validMask!0 mask!2512)))

(assert (=> d!158869 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48821 a!2804) j!70) a!2804 mask!2512) lt!659070)))

(declare-fun b!1520527 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1520527 (= e!848177 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48821 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1520528 () Bool)

(assert (=> b!1520528 (and (bvsge (index!54448 lt!659070) #b00000000000000000000000000000000) (bvslt (index!54448 lt!659070) (size!49372 a!2804)))))

(declare-fun res!1040053 () Bool)

(assert (=> b!1520528 (= res!1040053 (= (select (arr!48821 a!2804) (index!54448 lt!659070)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1520528 (=> res!1040053 e!848175)))

(declare-fun b!1520529 () Bool)

(assert (=> b!1520529 (= e!848176 (bvsge (x!136134 lt!659070) #b01111111111111111111111111111110))))

(declare-fun b!1520530 () Bool)

(assert (=> b!1520530 (= e!848174 e!848177)))

(declare-fun c!139782 () Bool)

(assert (=> b!1520530 (= c!139782 (or (= lt!659071 (select (arr!48821 a!2804) j!70)) (= (bvadd lt!659071 lt!659071) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!158869 c!139784) b!1520525))

(assert (= (and d!158869 (not c!139784)) b!1520530))

(assert (= (and b!1520530 c!139782) b!1520523))

(assert (= (and b!1520530 (not c!139782)) b!1520527))

(assert (= (and d!158869 c!139783) b!1520529))

(assert (= (and d!158869 (not c!139783)) b!1520522))

(assert (= (and b!1520522 res!1040054) b!1520524))

(assert (= (and b!1520524 (not res!1040055)) b!1520528))

(assert (= (and b!1520528 (not res!1040053)) b!1520526))

(declare-fun m!1403819 () Bool)

(assert (=> b!1520527 m!1403819))

(assert (=> b!1520527 m!1403819))

(assert (=> b!1520527 m!1403743))

(declare-fun m!1403821 () Bool)

(assert (=> b!1520527 m!1403821))

(declare-fun m!1403823 () Bool)

(assert (=> b!1520524 m!1403823))

(assert (=> b!1520526 m!1403823))

(assert (=> d!158869 m!1403755))

(assert (=> d!158869 m!1403773))

(assert (=> b!1520528 m!1403823))

(assert (=> b!1520469 d!158869))

(declare-fun d!158871 () Bool)

(assert (=> d!158871 (= (validKeyInArray!0 (select (arr!48821 a!2804) i!961)) (and (not (= (select (arr!48821 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48821 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1520464 d!158871))

(declare-fun b!1520531 () Bool)

(declare-fun e!848181 () Bool)

(declare-fun e!848178 () Bool)

(assert (=> b!1520531 (= e!848181 e!848178)))

(declare-fun res!1040057 () Bool)

(declare-fun lt!659072 () SeekEntryResult!13013)

(assert (=> b!1520531 (= res!1040057 (and ((_ is Intermediate!13013) lt!659072) (not (undefined!13825 lt!659072)) (bvslt (x!136134 lt!659072) #b01111111111111111111111111111110) (bvsge (x!136134 lt!659072) #b00000000000000000000000000000000) (bvsge (x!136134 lt!659072) #b00000000000000000000000000000000)))))

(assert (=> b!1520531 (=> (not res!1040057) (not e!848178))))

(declare-fun b!1520532 () Bool)

(declare-fun e!848182 () SeekEntryResult!13013)

(assert (=> b!1520532 (= e!848182 (Intermediate!13013 false (toIndex!0 (select (arr!48821 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1520533 () Bool)

(assert (=> b!1520533 (and (bvsge (index!54448 lt!659072) #b00000000000000000000000000000000) (bvslt (index!54448 lt!659072) (size!49372 a!2804)))))

(declare-fun res!1040058 () Bool)

(assert (=> b!1520533 (= res!1040058 (= (select (arr!48821 a!2804) (index!54448 lt!659072)) (select (arr!48821 a!2804) j!70)))))

(declare-fun e!848180 () Bool)

(assert (=> b!1520533 (=> res!1040058 e!848180)))

(assert (=> b!1520533 (= e!848178 e!848180)))

(declare-fun b!1520534 () Bool)

(declare-fun e!848179 () SeekEntryResult!13013)

(assert (=> b!1520534 (= e!848179 (Intermediate!13013 true (toIndex!0 (select (arr!48821 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1520535 () Bool)

(assert (=> b!1520535 (and (bvsge (index!54448 lt!659072) #b00000000000000000000000000000000) (bvslt (index!54448 lt!659072) (size!49372 a!2804)))))

(assert (=> b!1520535 (= e!848180 (= (select (arr!48821 a!2804) (index!54448 lt!659072)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!158873 () Bool)

(assert (=> d!158873 e!848181))

(declare-fun c!139786 () Bool)

(assert (=> d!158873 (= c!139786 (and ((_ is Intermediate!13013) lt!659072) (undefined!13825 lt!659072)))))

(assert (=> d!158873 (= lt!659072 e!848179)))

(declare-fun c!139787 () Bool)

(assert (=> d!158873 (= c!139787 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!659073 () (_ BitVec 64))

(assert (=> d!158873 (= lt!659073 (select (arr!48821 a!2804) (toIndex!0 (select (arr!48821 a!2804) j!70) mask!2512)))))

(assert (=> d!158873 (validMask!0 mask!2512)))

(assert (=> d!158873 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48821 a!2804) j!70) mask!2512) (select (arr!48821 a!2804) j!70) a!2804 mask!2512) lt!659072)))

(declare-fun b!1520536 () Bool)

(assert (=> b!1520536 (= e!848182 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48821 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48821 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1520537 () Bool)

(assert (=> b!1520537 (and (bvsge (index!54448 lt!659072) #b00000000000000000000000000000000) (bvslt (index!54448 lt!659072) (size!49372 a!2804)))))

(declare-fun res!1040056 () Bool)

(assert (=> b!1520537 (= res!1040056 (= (select (arr!48821 a!2804) (index!54448 lt!659072)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1520537 (=> res!1040056 e!848180)))

(declare-fun b!1520538 () Bool)

(assert (=> b!1520538 (= e!848181 (bvsge (x!136134 lt!659072) #b01111111111111111111111111111110))))

(declare-fun b!1520539 () Bool)

(assert (=> b!1520539 (= e!848179 e!848182)))

(declare-fun c!139785 () Bool)

(assert (=> b!1520539 (= c!139785 (or (= lt!659073 (select (arr!48821 a!2804) j!70)) (= (bvadd lt!659073 lt!659073) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!158873 c!139787) b!1520534))

(assert (= (and d!158873 (not c!139787)) b!1520539))

(assert (= (and b!1520539 c!139785) b!1520532))

(assert (= (and b!1520539 (not c!139785)) b!1520536))

(assert (= (and d!158873 c!139786) b!1520538))

(assert (= (and d!158873 (not c!139786)) b!1520531))

(assert (= (and b!1520531 res!1040057) b!1520533))

(assert (= (and b!1520533 (not res!1040058)) b!1520537))

(assert (= (and b!1520537 (not res!1040056)) b!1520535))

(assert (=> b!1520536 m!1403767))

(declare-fun m!1403825 () Bool)

(assert (=> b!1520536 m!1403825))

(assert (=> b!1520536 m!1403825))

(assert (=> b!1520536 m!1403743))

(declare-fun m!1403827 () Bool)

(assert (=> b!1520536 m!1403827))

(declare-fun m!1403829 () Bool)

(assert (=> b!1520533 m!1403829))

(assert (=> b!1520535 m!1403829))

(assert (=> d!158873 m!1403767))

(declare-fun m!1403831 () Bool)

(assert (=> d!158873 m!1403831))

(assert (=> d!158873 m!1403773))

(assert (=> b!1520537 m!1403829))

(assert (=> b!1520462 d!158873))

(declare-fun d!158875 () Bool)

(declare-fun lt!659079 () (_ BitVec 32))

(declare-fun lt!659078 () (_ BitVec 32))

(assert (=> d!158875 (= lt!659079 (bvmul (bvxor lt!659078 (bvlshr lt!659078 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158875 (= lt!659078 ((_ extract 31 0) (bvand (bvxor (select (arr!48821 a!2804) j!70) (bvlshr (select (arr!48821 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158875 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1040059 (let ((h!36901 ((_ extract 31 0) (bvand (bvxor (select (arr!48821 a!2804) j!70) (bvlshr (select (arr!48821 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136137 (bvmul (bvxor h!36901 (bvlshr h!36901 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136137 (bvlshr x!136137 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1040059 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1040059 #b00000000000000000000000000000000))))))

(assert (=> d!158875 (= (toIndex!0 (select (arr!48821 a!2804) j!70) mask!2512) (bvand (bvxor lt!659079 (bvlshr lt!659079 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1520462 d!158875))

(declare-fun d!158881 () Bool)

(assert (=> d!158881 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!129530 d!158881))

(declare-fun d!158891 () Bool)

(assert (=> d!158891 (= (array_inv!37766 a!2804) (bvsge (size!49372 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!129530 d!158891))

(declare-fun b!1520585 () Bool)

(declare-fun e!848214 () Bool)

(declare-fun call!68364 () Bool)

(assert (=> b!1520585 (= e!848214 call!68364)))

(declare-fun bm!68361 () Bool)

(assert (=> bm!68361 (= call!68364 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1520586 () Bool)

(declare-fun e!848216 () Bool)

(assert (=> b!1520586 (= e!848216 e!848214)))

(declare-fun lt!659102 () (_ BitVec 64))

(assert (=> b!1520586 (= lt!659102 (select (arr!48821 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!659104 () Unit!50850)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101183 (_ BitVec 64) (_ BitVec 32)) Unit!50850)

(assert (=> b!1520586 (= lt!659104 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!659102 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!101183 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1520586 (arrayContainsKey!0 a!2804 lt!659102 #b00000000000000000000000000000000)))

(declare-fun lt!659103 () Unit!50850)

(assert (=> b!1520586 (= lt!659103 lt!659104)))

(declare-fun res!1040079 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101183 (_ BitVec 32)) SeekEntryResult!13013)

(assert (=> b!1520586 (= res!1040079 (= (seekEntryOrOpen!0 (select (arr!48821 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13013 #b00000000000000000000000000000000)))))

(assert (=> b!1520586 (=> (not res!1040079) (not e!848214))))

(declare-fun b!1520587 () Bool)

(assert (=> b!1520587 (= e!848216 call!68364)))

(declare-fun b!1520588 () Bool)

(declare-fun e!848215 () Bool)

(assert (=> b!1520588 (= e!848215 e!848216)))

(declare-fun c!139800 () Bool)

(assert (=> b!1520588 (= c!139800 (validKeyInArray!0 (select (arr!48821 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!158893 () Bool)

(declare-fun res!1040080 () Bool)

(assert (=> d!158893 (=> res!1040080 e!848215)))

(assert (=> d!158893 (= res!1040080 (bvsge #b00000000000000000000000000000000 (size!49372 a!2804)))))

(assert (=> d!158893 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!848215)))

(assert (= (and d!158893 (not res!1040080)) b!1520588))

(assert (= (and b!1520588 c!139800) b!1520586))

(assert (= (and b!1520588 (not c!139800)) b!1520587))

(assert (= (and b!1520586 res!1040079) b!1520585))

(assert (= (or b!1520585 b!1520587) bm!68361))

(declare-fun m!1403851 () Bool)

(assert (=> bm!68361 m!1403851))

(declare-fun m!1403853 () Bool)

(assert (=> b!1520586 m!1403853))

(declare-fun m!1403855 () Bool)

(assert (=> b!1520586 m!1403855))

(declare-fun m!1403857 () Bool)

(assert (=> b!1520586 m!1403857))

(assert (=> b!1520586 m!1403853))

(declare-fun m!1403859 () Bool)

(assert (=> b!1520586 m!1403859))

(assert (=> b!1520588 m!1403853))

(assert (=> b!1520588 m!1403853))

(declare-fun m!1403861 () Bool)

(assert (=> b!1520588 m!1403861))

(assert (=> b!1520463 d!158893))

(declare-fun b!1520655 () Bool)

(declare-fun e!848257 () SeekEntryResult!13013)

(declare-fun lt!659127 () SeekEntryResult!13013)

(assert (=> b!1520655 (= e!848257 (Found!13013 (index!54448 lt!659127)))))

(declare-fun b!1520656 () Bool)

(declare-fun e!848258 () SeekEntryResult!13013)

(assert (=> b!1520656 (= e!848258 (MissingZero!13013 (index!54448 lt!659127)))))

(declare-fun d!158899 () Bool)

(declare-fun lt!659128 () SeekEntryResult!13013)

(assert (=> d!158899 (and (or ((_ is MissingVacant!13013) lt!659128) (not ((_ is Found!13013) lt!659128)) (and (bvsge (index!54447 lt!659128) #b00000000000000000000000000000000) (bvslt (index!54447 lt!659128) (size!49372 a!2804)))) (not ((_ is MissingVacant!13013) lt!659128)) (or (not ((_ is Found!13013) lt!659128)) (= (select (arr!48821 a!2804) (index!54447 lt!659128)) (select (arr!48821 a!2804) j!70))))))

(declare-fun e!848259 () SeekEntryResult!13013)

(assert (=> d!158899 (= lt!659128 e!848259)))

(declare-fun c!139824 () Bool)

(assert (=> d!158899 (= c!139824 (and ((_ is Intermediate!13013) lt!659127) (undefined!13825 lt!659127)))))

(assert (=> d!158899 (= lt!659127 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48821 a!2804) j!70) mask!2512) (select (arr!48821 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!158899 (validMask!0 mask!2512)))

(assert (=> d!158899 (= (seekEntry!0 (select (arr!48821 a!2804) j!70) a!2804 mask!2512) lt!659128)))

(declare-fun b!1520657 () Bool)

(assert (=> b!1520657 (= e!848259 e!848257)))

(declare-fun lt!659130 () (_ BitVec 64))

(assert (=> b!1520657 (= lt!659130 (select (arr!48821 a!2804) (index!54448 lt!659127)))))

(declare-fun c!139823 () Bool)

(assert (=> b!1520657 (= c!139823 (= lt!659130 (select (arr!48821 a!2804) j!70)))))

(declare-fun b!1520658 () Bool)

(declare-fun lt!659129 () SeekEntryResult!13013)

(assert (=> b!1520658 (= e!848258 (ite ((_ is MissingVacant!13013) lt!659129) (MissingZero!13013 (index!54449 lt!659129)) lt!659129))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101183 (_ BitVec 32)) SeekEntryResult!13013)

(assert (=> b!1520658 (= lt!659129 (seekKeyOrZeroReturnVacant!0 (x!136134 lt!659127) (index!54448 lt!659127) (index!54448 lt!659127) (select (arr!48821 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1520659 () Bool)

(assert (=> b!1520659 (= e!848259 Undefined!13013)))

(declare-fun b!1520660 () Bool)

(declare-fun c!139825 () Bool)

(assert (=> b!1520660 (= c!139825 (= lt!659130 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1520660 (= e!848257 e!848258)))

(assert (= (and d!158899 c!139824) b!1520659))

(assert (= (and d!158899 (not c!139824)) b!1520657))

(assert (= (and b!1520657 c!139823) b!1520655))

(assert (= (and b!1520657 (not c!139823)) b!1520660))

(assert (= (and b!1520660 c!139825) b!1520656))

(assert (= (and b!1520660 (not c!139825)) b!1520658))

(declare-fun m!1403879 () Bool)

(assert (=> d!158899 m!1403879))

(assert (=> d!158899 m!1403743))

(assert (=> d!158899 m!1403767))

(assert (=> d!158899 m!1403767))

(assert (=> d!158899 m!1403743))

(assert (=> d!158899 m!1403769))

(assert (=> d!158899 m!1403773))

(declare-fun m!1403881 () Bool)

(assert (=> b!1520657 m!1403881))

(assert (=> b!1520658 m!1403743))

(declare-fun m!1403883 () Bool)

(assert (=> b!1520658 m!1403883))

(assert (=> b!1520468 d!158899))

(declare-fun b!1520661 () Bool)

(declare-fun e!848260 () Bool)

(declare-fun call!68367 () Bool)

(assert (=> b!1520661 (= e!848260 call!68367)))

(declare-fun bm!68364 () Bool)

(assert (=> bm!68364 (= call!68367 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1520662 () Bool)

(declare-fun e!848262 () Bool)

(assert (=> b!1520662 (= e!848262 e!848260)))

(declare-fun lt!659135 () (_ BitVec 64))

(assert (=> b!1520662 (= lt!659135 (select (arr!48821 a!2804) j!70))))

(declare-fun lt!659137 () Unit!50850)

(assert (=> b!1520662 (= lt!659137 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!659135 j!70))))

(assert (=> b!1520662 (arrayContainsKey!0 a!2804 lt!659135 #b00000000000000000000000000000000)))

(declare-fun lt!659136 () Unit!50850)

(assert (=> b!1520662 (= lt!659136 lt!659137)))

(declare-fun res!1040107 () Bool)

(assert (=> b!1520662 (= res!1040107 (= (seekEntryOrOpen!0 (select (arr!48821 a!2804) j!70) a!2804 mask!2512) (Found!13013 j!70)))))

(assert (=> b!1520662 (=> (not res!1040107) (not e!848260))))

(declare-fun b!1520663 () Bool)

(assert (=> b!1520663 (= e!848262 call!68367)))

(declare-fun b!1520664 () Bool)

(declare-fun e!848261 () Bool)

(assert (=> b!1520664 (= e!848261 e!848262)))

(declare-fun c!139826 () Bool)

(assert (=> b!1520664 (= c!139826 (validKeyInArray!0 (select (arr!48821 a!2804) j!70)))))

(declare-fun d!158907 () Bool)

(declare-fun res!1040108 () Bool)

(assert (=> d!158907 (=> res!1040108 e!848261)))

(assert (=> d!158907 (= res!1040108 (bvsge j!70 (size!49372 a!2804)))))

(assert (=> d!158907 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!848261)))

(assert (= (and d!158907 (not res!1040108)) b!1520664))

(assert (= (and b!1520664 c!139826) b!1520662))

(assert (= (and b!1520664 (not c!139826)) b!1520663))

(assert (= (and b!1520662 res!1040107) b!1520661))

(assert (= (or b!1520661 b!1520663) bm!68364))

(declare-fun m!1403885 () Bool)

(assert (=> bm!68364 m!1403885))

(assert (=> b!1520662 m!1403743))

(declare-fun m!1403887 () Bool)

(assert (=> b!1520662 m!1403887))

(declare-fun m!1403889 () Bool)

(assert (=> b!1520662 m!1403889))

(assert (=> b!1520662 m!1403743))

(declare-fun m!1403891 () Bool)

(assert (=> b!1520662 m!1403891))

(assert (=> b!1520664 m!1403743))

(assert (=> b!1520664 m!1403743))

(assert (=> b!1520664 m!1403745))

(assert (=> b!1520461 d!158907))

(declare-fun d!158911 () Bool)

(assert (=> d!158911 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!659148 () Unit!50850)

(declare-fun choose!38 (array!101183 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50850)

(assert (=> d!158911 (= lt!659148 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!158911 (validMask!0 mask!2512)))

(assert (=> d!158911 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!659148)))

(declare-fun bs!43629 () Bool)

(assert (= bs!43629 d!158911))

(assert (=> bs!43629 m!1403759))

(declare-fun m!1403915 () Bool)

(assert (=> bs!43629 m!1403915))

(assert (=> bs!43629 m!1403773))

(assert (=> b!1520461 d!158911))

(declare-fun b!1520710 () Bool)

(declare-fun e!848297 () Bool)

(declare-fun e!848294 () Bool)

(assert (=> b!1520710 (= e!848297 e!848294)))

(declare-fun c!139839 () Bool)

(assert (=> b!1520710 (= c!139839 (validKeyInArray!0 (select (arr!48821 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1520712 () Bool)

(declare-fun call!68374 () Bool)

(assert (=> b!1520712 (= e!848294 call!68374)))

(declare-fun b!1520713 () Bool)

(declare-fun e!848296 () Bool)

(declare-fun contains!9994 (List!35484 (_ BitVec 64)) Bool)

(assert (=> b!1520713 (= e!848296 (contains!9994 Nil!35481 (select (arr!48821 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1520714 () Bool)

(declare-fun e!848295 () Bool)

(assert (=> b!1520714 (= e!848295 e!848297)))

(declare-fun res!1040131 () Bool)

(assert (=> b!1520714 (=> (not res!1040131) (not e!848297))))

(assert (=> b!1520714 (= res!1040131 (not e!848296))))

(declare-fun res!1040132 () Bool)

(assert (=> b!1520714 (=> (not res!1040132) (not e!848296))))

(assert (=> b!1520714 (= res!1040132 (validKeyInArray!0 (select (arr!48821 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68371 () Bool)

(assert (=> bm!68371 (= call!68374 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139839 (Cons!35480 (select (arr!48821 a!2804) #b00000000000000000000000000000000) Nil!35481) Nil!35481)))))

(declare-fun d!158925 () Bool)

(declare-fun res!1040130 () Bool)

(assert (=> d!158925 (=> res!1040130 e!848295)))

(assert (=> d!158925 (= res!1040130 (bvsge #b00000000000000000000000000000000 (size!49372 a!2804)))))

(assert (=> d!158925 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35481) e!848295)))

(declare-fun b!1520711 () Bool)

(assert (=> b!1520711 (= e!848294 call!68374)))

(assert (= (and d!158925 (not res!1040130)) b!1520714))

(assert (= (and b!1520714 res!1040132) b!1520713))

(assert (= (and b!1520714 res!1040131) b!1520710))

(assert (= (and b!1520710 c!139839) b!1520712))

(assert (= (and b!1520710 (not c!139839)) b!1520711))

(assert (= (or b!1520712 b!1520711) bm!68371))

(assert (=> b!1520710 m!1403853))

(assert (=> b!1520710 m!1403853))

(assert (=> b!1520710 m!1403861))

(assert (=> b!1520713 m!1403853))

(assert (=> b!1520713 m!1403853))

(declare-fun m!1403925 () Bool)

(assert (=> b!1520713 m!1403925))

(assert (=> b!1520714 m!1403853))

(assert (=> b!1520714 m!1403853))

(assert (=> b!1520714 m!1403861))

(assert (=> bm!68371 m!1403853))

(declare-fun m!1403927 () Bool)

(assert (=> bm!68371 m!1403927))

(assert (=> b!1520466 d!158925))

(declare-fun b!1520715 () Bool)

(declare-fun e!848301 () Bool)

(declare-fun e!848298 () Bool)

(assert (=> b!1520715 (= e!848301 e!848298)))

(declare-fun res!1040134 () Bool)

(declare-fun lt!659158 () SeekEntryResult!13013)

(assert (=> b!1520715 (= res!1040134 (and ((_ is Intermediate!13013) lt!659158) (not (undefined!13825 lt!659158)) (bvslt (x!136134 lt!659158) #b01111111111111111111111111111110) (bvsge (x!136134 lt!659158) #b00000000000000000000000000000000) (bvsge (x!136134 lt!659158) #b00000000000000000000000000000000)))))

(assert (=> b!1520715 (=> (not res!1040134) (not e!848298))))

(declare-fun b!1520716 () Bool)

(declare-fun e!848302 () SeekEntryResult!13013)

(assert (=> b!1520716 (= e!848302 (Intermediate!13013 false (toIndex!0 (select (store (arr!48821 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1520717 () Bool)

(assert (=> b!1520717 (and (bvsge (index!54448 lt!659158) #b00000000000000000000000000000000) (bvslt (index!54448 lt!659158) (size!49372 (array!101184 (store (arr!48821 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49372 a!2804)))))))

(declare-fun res!1040135 () Bool)

(assert (=> b!1520717 (= res!1040135 (= (select (arr!48821 (array!101184 (store (arr!48821 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49372 a!2804))) (index!54448 lt!659158)) (select (store (arr!48821 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(declare-fun e!848300 () Bool)

(assert (=> b!1520717 (=> res!1040135 e!848300)))

(assert (=> b!1520717 (= e!848298 e!848300)))

(declare-fun e!848299 () SeekEntryResult!13013)

(declare-fun b!1520718 () Bool)

(assert (=> b!1520718 (= e!848299 (Intermediate!13013 true (toIndex!0 (select (store (arr!48821 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1520719 () Bool)

(assert (=> b!1520719 (and (bvsge (index!54448 lt!659158) #b00000000000000000000000000000000) (bvslt (index!54448 lt!659158) (size!49372 (array!101184 (store (arr!48821 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49372 a!2804)))))))

(assert (=> b!1520719 (= e!848300 (= (select (arr!48821 (array!101184 (store (arr!48821 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49372 a!2804))) (index!54448 lt!659158)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!158929 () Bool)

(assert (=> d!158929 e!848301))

(declare-fun c!139841 () Bool)

(assert (=> d!158929 (= c!139841 (and ((_ is Intermediate!13013) lt!659158) (undefined!13825 lt!659158)))))

(assert (=> d!158929 (= lt!659158 e!848299)))

(declare-fun c!139842 () Bool)

(assert (=> d!158929 (= c!139842 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!659159 () (_ BitVec 64))

(assert (=> d!158929 (= lt!659159 (select (arr!48821 (array!101184 (store (arr!48821 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49372 a!2804))) (toIndex!0 (select (store (arr!48821 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512)))))

(assert (=> d!158929 (validMask!0 mask!2512)))

(assert (=> d!158929 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48821 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48821 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101184 (store (arr!48821 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49372 a!2804)) mask!2512) lt!659158)))

(declare-fun b!1520720 () Bool)

(assert (=> b!1520720 (= e!848302 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!48821 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (store (arr!48821 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101184 (store (arr!48821 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49372 a!2804)) mask!2512))))

(declare-fun b!1520721 () Bool)

(assert (=> b!1520721 (and (bvsge (index!54448 lt!659158) #b00000000000000000000000000000000) (bvslt (index!54448 lt!659158) (size!49372 (array!101184 (store (arr!48821 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49372 a!2804)))))))

(declare-fun res!1040133 () Bool)

(assert (=> b!1520721 (= res!1040133 (= (select (arr!48821 (array!101184 (store (arr!48821 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49372 a!2804))) (index!54448 lt!659158)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1520721 (=> res!1040133 e!848300)))

(declare-fun b!1520722 () Bool)

(assert (=> b!1520722 (= e!848301 (bvsge (x!136134 lt!659158) #b01111111111111111111111111111110))))

(declare-fun b!1520723 () Bool)

(assert (=> b!1520723 (= e!848299 e!848302)))

(declare-fun c!139840 () Bool)

(assert (=> b!1520723 (= c!139840 (or (= lt!659159 (select (store (arr!48821 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)) (= (bvadd lt!659159 lt!659159) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!158929 c!139842) b!1520718))

(assert (= (and d!158929 (not c!139842)) b!1520723))

(assert (= (and b!1520723 c!139840) b!1520716))

(assert (= (and b!1520723 (not c!139840)) b!1520720))

(assert (= (and d!158929 c!139841) b!1520722))

(assert (= (and d!158929 (not c!139841)) b!1520715))

(assert (= (and b!1520715 res!1040134) b!1520717))

(assert (= (and b!1520717 (not res!1040135)) b!1520721))

(assert (= (and b!1520721 (not res!1040133)) b!1520719))

(assert (=> b!1520720 m!1403761))

(declare-fun m!1403929 () Bool)

(assert (=> b!1520720 m!1403929))

(assert (=> b!1520720 m!1403929))

(assert (=> b!1520720 m!1403757))

(declare-fun m!1403931 () Bool)

(assert (=> b!1520720 m!1403931))

(declare-fun m!1403933 () Bool)

(assert (=> b!1520717 m!1403933))

(assert (=> b!1520719 m!1403933))

(assert (=> d!158929 m!1403761))

(declare-fun m!1403935 () Bool)

(assert (=> d!158929 m!1403935))

(assert (=> d!158929 m!1403773))

(assert (=> b!1520721 m!1403933))

(assert (=> b!1520467 d!158929))

(declare-fun d!158931 () Bool)

(declare-fun lt!659165 () (_ BitVec 32))

(declare-fun lt!659164 () (_ BitVec 32))

(assert (=> d!158931 (= lt!659165 (bvmul (bvxor lt!659164 (bvlshr lt!659164 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158931 (= lt!659164 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48821 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48821 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158931 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1040059 (let ((h!36901 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48821 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48821 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136137 (bvmul (bvxor h!36901 (bvlshr h!36901 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136137 (bvlshr x!136137 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1040059 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1040059 #b00000000000000000000000000000000))))))

(assert (=> d!158931 (= (toIndex!0 (select (store (arr!48821 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (bvand (bvxor lt!659165 (bvlshr lt!659165 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1520467 d!158931))

(check-sat (not d!158911) (not bm!68361) (not b!1520714) (not d!158869) (not bm!68371) (not bm!68364) (not b!1520536) (not b!1520713) (not b!1520527) (not b!1520586) (not b!1520710) (not d!158873) (not b!1520658) (not b!1520720) (not b!1520664) (not b!1520662) (not d!158929) (not b!1520588) (not d!158899))
(check-sat)
