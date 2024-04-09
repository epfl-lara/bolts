; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129470 () Bool)

(assert start!129470)

(declare-fun b!1520079 () Bool)

(declare-fun res!1039808 () Bool)

(declare-fun e!847937 () Bool)

(assert (=> b!1520079 (=> (not res!1039808) (not e!847937))))

(declare-datatypes ((array!101174 0))(
  ( (array!101175 (arr!48818 (Array (_ BitVec 32) (_ BitVec 64))) (size!49369 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101174)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101174 (_ BitVec 32)) Bool)

(assert (=> b!1520079 (= res!1039808 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1520080 () Bool)

(declare-fun res!1039815 () Bool)

(declare-fun e!847940 () Bool)

(assert (=> b!1520080 (=> (not res!1039815) (not e!847940))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13010 0))(
  ( (MissingZero!13010 (index!54434 (_ BitVec 32))) (Found!13010 (index!54435 (_ BitVec 32))) (Intermediate!13010 (undefined!13822 Bool) (index!54436 (_ BitVec 32)) (x!136117 (_ BitVec 32))) (Undefined!13010) (MissingVacant!13010 (index!54437 (_ BitVec 32))) )
))
(declare-fun lt!658892 () SeekEntryResult!13010)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101174 (_ BitVec 32)) SeekEntryResult!13010)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1520080 (= res!1039815 (= lt!658892 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48818 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48818 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101175 (store (arr!48818 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49369 a!2804)) mask!2512)))))

(declare-fun b!1520081 () Bool)

(declare-fun res!1039809 () Bool)

(assert (=> b!1520081 (=> (not res!1039809) (not e!847940))))

(declare-fun lt!658894 () SeekEntryResult!13010)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1520081 (= res!1039809 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48818 a!2804) j!70) a!2804 mask!2512) lt!658894))))

(declare-fun b!1520083 () Bool)

(assert (=> b!1520083 (= e!847937 e!847940)))

(declare-fun res!1039812 () Bool)

(assert (=> b!1520083 (=> (not res!1039812) (not e!847940))))

(assert (=> b!1520083 (= res!1039812 (= lt!658892 lt!658894))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1520083 (= lt!658894 (Intermediate!13010 false resIndex!21 resX!21))))

(assert (=> b!1520083 (= lt!658892 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48818 a!2804) j!70) mask!2512) (select (arr!48818 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1520084 () Bool)

(declare-fun res!1039813 () Bool)

(assert (=> b!1520084 (=> (not res!1039813) (not e!847937))))

(assert (=> b!1520084 (= res!1039813 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49369 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49369 a!2804))))))

(declare-fun b!1520085 () Bool)

(declare-fun res!1039807 () Bool)

(assert (=> b!1520085 (=> (not res!1039807) (not e!847937))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1520085 (= res!1039807 (validKeyInArray!0 (select (arr!48818 a!2804) i!961)))))

(declare-fun b!1520082 () Bool)

(declare-fun res!1039814 () Bool)

(assert (=> b!1520082 (=> (not res!1039814) (not e!847937))))

(assert (=> b!1520082 (= res!1039814 (and (= (size!49369 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49369 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49369 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1039811 () Bool)

(assert (=> start!129470 (=> (not res!1039811) (not e!847937))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129470 (= res!1039811 (validMask!0 mask!2512))))

(assert (=> start!129470 e!847937))

(assert (=> start!129470 true))

(declare-fun array_inv!37763 (array!101174) Bool)

(assert (=> start!129470 (array_inv!37763 a!2804)))

(declare-fun b!1520086 () Bool)

(declare-fun res!1039805 () Bool)

(assert (=> b!1520086 (=> (not res!1039805) (not e!847937))))

(assert (=> b!1520086 (= res!1039805 (validKeyInArray!0 (select (arr!48818 a!2804) j!70)))))

(declare-fun b!1520087 () Bool)

(assert (=> b!1520087 (= e!847940 (not (or (not (= (select (arr!48818 a!2804) j!70) (select (store (arr!48818 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (not (= (select (arr!48818 a!2804) index!487) (select (arr!48818 a!2804) j!70))) (= j!70 index!487))))))

(declare-fun e!847938 () Bool)

(assert (=> b!1520087 e!847938))

(declare-fun res!1039806 () Bool)

(assert (=> b!1520087 (=> (not res!1039806) (not e!847938))))

(assert (=> b!1520087 (= res!1039806 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50844 0))(
  ( (Unit!50845) )
))
(declare-fun lt!658893 () Unit!50844)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101174 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50844)

(assert (=> b!1520087 (= lt!658893 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1520088 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101174 (_ BitVec 32)) SeekEntryResult!13010)

(assert (=> b!1520088 (= e!847938 (= (seekEntry!0 (select (arr!48818 a!2804) j!70) a!2804 mask!2512) (Found!13010 j!70)))))

(declare-fun b!1520089 () Bool)

(declare-fun res!1039810 () Bool)

(assert (=> b!1520089 (=> (not res!1039810) (not e!847937))))

(declare-datatypes ((List!35481 0))(
  ( (Nil!35478) (Cons!35477 (h!36893 (_ BitVec 64)) (t!50182 List!35481)) )
))
(declare-fun arrayNoDuplicates!0 (array!101174 (_ BitVec 32) List!35481) Bool)

(assert (=> b!1520089 (= res!1039810 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35478))))

(assert (= (and start!129470 res!1039811) b!1520082))

(assert (= (and b!1520082 res!1039814) b!1520085))

(assert (= (and b!1520085 res!1039807) b!1520086))

(assert (= (and b!1520086 res!1039805) b!1520079))

(assert (= (and b!1520079 res!1039808) b!1520089))

(assert (= (and b!1520089 res!1039810) b!1520084))

(assert (= (and b!1520084 res!1039813) b!1520083))

(assert (= (and b!1520083 res!1039812) b!1520081))

(assert (= (and b!1520081 res!1039809) b!1520080))

(assert (= (and b!1520080 res!1039815) b!1520087))

(assert (= (and b!1520087 res!1039806) b!1520088))

(declare-fun m!1403467 () Bool)

(assert (=> b!1520080 m!1403467))

(declare-fun m!1403469 () Bool)

(assert (=> b!1520080 m!1403469))

(assert (=> b!1520080 m!1403469))

(declare-fun m!1403471 () Bool)

(assert (=> b!1520080 m!1403471))

(assert (=> b!1520080 m!1403471))

(assert (=> b!1520080 m!1403469))

(declare-fun m!1403473 () Bool)

(assert (=> b!1520080 m!1403473))

(declare-fun m!1403475 () Bool)

(assert (=> b!1520088 m!1403475))

(assert (=> b!1520088 m!1403475))

(declare-fun m!1403477 () Bool)

(assert (=> b!1520088 m!1403477))

(assert (=> b!1520087 m!1403475))

(declare-fun m!1403479 () Bool)

(assert (=> b!1520087 m!1403479))

(assert (=> b!1520087 m!1403467))

(declare-fun m!1403481 () Bool)

(assert (=> b!1520087 m!1403481))

(assert (=> b!1520087 m!1403469))

(declare-fun m!1403483 () Bool)

(assert (=> b!1520087 m!1403483))

(declare-fun m!1403485 () Bool)

(assert (=> b!1520085 m!1403485))

(assert (=> b!1520085 m!1403485))

(declare-fun m!1403487 () Bool)

(assert (=> b!1520085 m!1403487))

(declare-fun m!1403489 () Bool)

(assert (=> b!1520089 m!1403489))

(declare-fun m!1403491 () Bool)

(assert (=> start!129470 m!1403491))

(declare-fun m!1403493 () Bool)

(assert (=> start!129470 m!1403493))

(declare-fun m!1403495 () Bool)

(assert (=> b!1520079 m!1403495))

(assert (=> b!1520083 m!1403475))

(assert (=> b!1520083 m!1403475))

(declare-fun m!1403497 () Bool)

(assert (=> b!1520083 m!1403497))

(assert (=> b!1520083 m!1403497))

(assert (=> b!1520083 m!1403475))

(declare-fun m!1403499 () Bool)

(assert (=> b!1520083 m!1403499))

(assert (=> b!1520081 m!1403475))

(assert (=> b!1520081 m!1403475))

(declare-fun m!1403501 () Bool)

(assert (=> b!1520081 m!1403501))

(assert (=> b!1520086 m!1403475))

(assert (=> b!1520086 m!1403475))

(declare-fun m!1403503 () Bool)

(assert (=> b!1520086 m!1403503))

(check-sat (not b!1520081) (not b!1520088) (not b!1520086) (not start!129470) (not b!1520087) (not b!1520083) (not b!1520079) (not b!1520080) (not b!1520085) (not b!1520089))
(check-sat)
(get-model)

(declare-fun d!158781 () Bool)

(assert (=> d!158781 (= (validKeyInArray!0 (select (arr!48818 a!2804) j!70)) (and (not (= (select (arr!48818 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48818 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1520086 d!158781))

(declare-fun d!158783 () Bool)

(assert (=> d!158783 (= (validKeyInArray!0 (select (arr!48818 a!2804) i!961)) (and (not (= (select (arr!48818 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48818 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1520085 d!158783))

(declare-fun b!1520141 () Bool)

(declare-fun e!847965 () Bool)

(declare-fun e!847967 () Bool)

(assert (=> b!1520141 (= e!847965 e!847967)))

(declare-fun res!1039855 () Bool)

(declare-fun lt!658908 () SeekEntryResult!13010)

(get-info :version)

(assert (=> b!1520141 (= res!1039855 (and ((_ is Intermediate!13010) lt!658908) (not (undefined!13822 lt!658908)) (bvslt (x!136117 lt!658908) #b01111111111111111111111111111110) (bvsge (x!136117 lt!658908) #b00000000000000000000000000000000) (bvsge (x!136117 lt!658908) #b00000000000000000000000000000000)))))

(assert (=> b!1520141 (=> (not res!1039855) (not e!847967))))

(declare-fun b!1520142 () Bool)

(assert (=> b!1520142 (and (bvsge (index!54436 lt!658908) #b00000000000000000000000000000000) (bvslt (index!54436 lt!658908) (size!49369 (array!101175 (store (arr!48818 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49369 a!2804)))))))

(declare-fun e!847964 () Bool)

(assert (=> b!1520142 (= e!847964 (= (select (arr!48818 (array!101175 (store (arr!48818 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49369 a!2804))) (index!54436 lt!658908)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!158785 () Bool)

(assert (=> d!158785 e!847965))

(declare-fun c!139690 () Bool)

(assert (=> d!158785 (= c!139690 (and ((_ is Intermediate!13010) lt!658908) (undefined!13822 lt!658908)))))

(declare-fun e!847963 () SeekEntryResult!13010)

(assert (=> d!158785 (= lt!658908 e!847963)))

(declare-fun c!139691 () Bool)

(assert (=> d!158785 (= c!139691 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!658909 () (_ BitVec 64))

(assert (=> d!158785 (= lt!658909 (select (arr!48818 (array!101175 (store (arr!48818 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49369 a!2804))) (toIndex!0 (select (store (arr!48818 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512)))))

(assert (=> d!158785 (validMask!0 mask!2512)))

(assert (=> d!158785 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48818 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48818 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101175 (store (arr!48818 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49369 a!2804)) mask!2512) lt!658908)))

(declare-fun b!1520143 () Bool)

(declare-fun e!847966 () SeekEntryResult!13010)

(assert (=> b!1520143 (= e!847963 e!847966)))

(declare-fun c!139689 () Bool)

(assert (=> b!1520143 (= c!139689 (or (= lt!658909 (select (store (arr!48818 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)) (= (bvadd lt!658909 lt!658909) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1520144 () Bool)

(assert (=> b!1520144 (and (bvsge (index!54436 lt!658908) #b00000000000000000000000000000000) (bvslt (index!54436 lt!658908) (size!49369 (array!101175 (store (arr!48818 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49369 a!2804)))))))

(declare-fun res!1039856 () Bool)

(assert (=> b!1520144 (= res!1039856 (= (select (arr!48818 (array!101175 (store (arr!48818 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49369 a!2804))) (index!54436 lt!658908)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1520144 (=> res!1039856 e!847964)))

(declare-fun b!1520145 () Bool)

(assert (=> b!1520145 (= e!847966 (Intermediate!13010 false (toIndex!0 (select (store (arr!48818 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1520146 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1520146 (= e!847966 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!48818 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (store (arr!48818 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101175 (store (arr!48818 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49369 a!2804)) mask!2512))))

(declare-fun b!1520147 () Bool)

(assert (=> b!1520147 (and (bvsge (index!54436 lt!658908) #b00000000000000000000000000000000) (bvslt (index!54436 lt!658908) (size!49369 (array!101175 (store (arr!48818 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49369 a!2804)))))))

(declare-fun res!1039857 () Bool)

(assert (=> b!1520147 (= res!1039857 (= (select (arr!48818 (array!101175 (store (arr!48818 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49369 a!2804))) (index!54436 lt!658908)) (select (store (arr!48818 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(assert (=> b!1520147 (=> res!1039857 e!847964)))

(assert (=> b!1520147 (= e!847967 e!847964)))

(declare-fun b!1520148 () Bool)

(assert (=> b!1520148 (= e!847963 (Intermediate!13010 true (toIndex!0 (select (store (arr!48818 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1520149 () Bool)

(assert (=> b!1520149 (= e!847965 (bvsge (x!136117 lt!658908) #b01111111111111111111111111111110))))

(assert (= (and d!158785 c!139691) b!1520148))

(assert (= (and d!158785 (not c!139691)) b!1520143))

(assert (= (and b!1520143 c!139689) b!1520145))

(assert (= (and b!1520143 (not c!139689)) b!1520146))

(assert (= (and d!158785 c!139690) b!1520149))

(assert (= (and d!158785 (not c!139690)) b!1520141))

(assert (= (and b!1520141 res!1039855) b!1520147))

(assert (= (and b!1520147 (not res!1039857)) b!1520144))

(assert (= (and b!1520144 (not res!1039856)) b!1520142))

(assert (=> b!1520146 m!1403471))

(declare-fun m!1403543 () Bool)

(assert (=> b!1520146 m!1403543))

(assert (=> b!1520146 m!1403543))

(assert (=> b!1520146 m!1403469))

(declare-fun m!1403545 () Bool)

(assert (=> b!1520146 m!1403545))

(declare-fun m!1403547 () Bool)

(assert (=> b!1520144 m!1403547))

(assert (=> d!158785 m!1403471))

(declare-fun m!1403549 () Bool)

(assert (=> d!158785 m!1403549))

(assert (=> d!158785 m!1403491))

(assert (=> b!1520147 m!1403547))

(assert (=> b!1520142 m!1403547))

(assert (=> b!1520080 d!158785))

(declare-fun d!158787 () Bool)

(declare-fun lt!658915 () (_ BitVec 32))

(declare-fun lt!658914 () (_ BitVec 32))

(assert (=> d!158787 (= lt!658915 (bvmul (bvxor lt!658914 (bvlshr lt!658914 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158787 (= lt!658914 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48818 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48818 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158787 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1039858 (let ((h!36895 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48818 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48818 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136120 (bvmul (bvxor h!36895 (bvlshr h!36895 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136120 (bvlshr x!136120 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1039858 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1039858 #b00000000000000000000000000000000))))))

(assert (=> d!158787 (= (toIndex!0 (select (store (arr!48818 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (bvand (bvxor lt!658915 (bvlshr lt!658915 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1520080 d!158787))

(declare-fun d!158793 () Bool)

(declare-fun res!1039863 () Bool)

(declare-fun e!847980 () Bool)

(assert (=> d!158793 (=> res!1039863 e!847980)))

(assert (=> d!158793 (= res!1039863 (bvsge #b00000000000000000000000000000000 (size!49369 a!2804)))))

(assert (=> d!158793 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!847980)))

(declare-fun bm!68334 () Bool)

(declare-fun call!68337 () Bool)

(assert (=> bm!68334 (= call!68337 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1520170 () Bool)

(declare-fun e!847981 () Bool)

(assert (=> b!1520170 (= e!847981 call!68337)))

(declare-fun b!1520171 () Bool)

(declare-fun e!847982 () Bool)

(assert (=> b!1520171 (= e!847981 e!847982)))

(declare-fun lt!658931 () (_ BitVec 64))

(assert (=> b!1520171 (= lt!658931 (select (arr!48818 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!658932 () Unit!50844)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101174 (_ BitVec 64) (_ BitVec 32)) Unit!50844)

(assert (=> b!1520171 (= lt!658932 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!658931 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!101174 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1520171 (arrayContainsKey!0 a!2804 lt!658931 #b00000000000000000000000000000000)))

(declare-fun lt!658930 () Unit!50844)

(assert (=> b!1520171 (= lt!658930 lt!658932)))

(declare-fun res!1039864 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101174 (_ BitVec 32)) SeekEntryResult!13010)

(assert (=> b!1520171 (= res!1039864 (= (seekEntryOrOpen!0 (select (arr!48818 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13010 #b00000000000000000000000000000000)))))

(assert (=> b!1520171 (=> (not res!1039864) (not e!847982))))

(declare-fun b!1520172 () Bool)

(assert (=> b!1520172 (= e!847982 call!68337)))

(declare-fun b!1520173 () Bool)

(assert (=> b!1520173 (= e!847980 e!847981)))

(declare-fun c!139700 () Bool)

(assert (=> b!1520173 (= c!139700 (validKeyInArray!0 (select (arr!48818 a!2804) #b00000000000000000000000000000000)))))

(assert (= (and d!158793 (not res!1039863)) b!1520173))

(assert (= (and b!1520173 c!139700) b!1520171))

(assert (= (and b!1520173 (not c!139700)) b!1520170))

(assert (= (and b!1520171 res!1039864) b!1520172))

(assert (= (or b!1520172 b!1520170) bm!68334))

(declare-fun m!1403551 () Bool)

(assert (=> bm!68334 m!1403551))

(declare-fun m!1403553 () Bool)

(assert (=> b!1520171 m!1403553))

(declare-fun m!1403555 () Bool)

(assert (=> b!1520171 m!1403555))

(declare-fun m!1403557 () Bool)

(assert (=> b!1520171 m!1403557))

(assert (=> b!1520171 m!1403553))

(declare-fun m!1403559 () Bool)

(assert (=> b!1520171 m!1403559))

(assert (=> b!1520173 m!1403553))

(assert (=> b!1520173 m!1403553))

(declare-fun m!1403561 () Bool)

(assert (=> b!1520173 m!1403561))

(assert (=> b!1520079 d!158793))

(declare-fun b!1520190 () Bool)

(declare-fun e!847996 () Bool)

(declare-fun e!847997 () Bool)

(assert (=> b!1520190 (= e!847996 e!847997)))

(declare-fun res!1039873 () Bool)

(assert (=> b!1520190 (=> (not res!1039873) (not e!847997))))

(declare-fun e!847994 () Bool)

(assert (=> b!1520190 (= res!1039873 (not e!847994))))

(declare-fun res!1039871 () Bool)

(assert (=> b!1520190 (=> (not res!1039871) (not e!847994))))

(assert (=> b!1520190 (= res!1039871 (validKeyInArray!0 (select (arr!48818 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68337 () Bool)

(declare-fun call!68340 () Bool)

(declare-fun c!139706 () Bool)

(assert (=> bm!68337 (= call!68340 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139706 (Cons!35477 (select (arr!48818 a!2804) #b00000000000000000000000000000000) Nil!35478) Nil!35478)))))

(declare-fun d!158797 () Bool)

(declare-fun res!1039872 () Bool)

(assert (=> d!158797 (=> res!1039872 e!847996)))

(assert (=> d!158797 (= res!1039872 (bvsge #b00000000000000000000000000000000 (size!49369 a!2804)))))

(assert (=> d!158797 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35478) e!847996)))

(declare-fun b!1520191 () Bool)

(declare-fun e!847995 () Bool)

(assert (=> b!1520191 (= e!847995 call!68340)))

(declare-fun b!1520192 () Bool)

(declare-fun contains!9989 (List!35481 (_ BitVec 64)) Bool)

(assert (=> b!1520192 (= e!847994 (contains!9989 Nil!35478 (select (arr!48818 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1520193 () Bool)

(assert (=> b!1520193 (= e!847995 call!68340)))

(declare-fun b!1520194 () Bool)

(assert (=> b!1520194 (= e!847997 e!847995)))

(assert (=> b!1520194 (= c!139706 (validKeyInArray!0 (select (arr!48818 a!2804) #b00000000000000000000000000000000)))))

(assert (= (and d!158797 (not res!1039872)) b!1520190))

(assert (= (and b!1520190 res!1039871) b!1520192))

(assert (= (and b!1520190 res!1039873) b!1520194))

(assert (= (and b!1520194 c!139706) b!1520193))

(assert (= (and b!1520194 (not c!139706)) b!1520191))

(assert (= (or b!1520193 b!1520191) bm!68337))

(assert (=> b!1520190 m!1403553))

(assert (=> b!1520190 m!1403553))

(assert (=> b!1520190 m!1403561))

(assert (=> bm!68337 m!1403553))

(declare-fun m!1403569 () Bool)

(assert (=> bm!68337 m!1403569))

(assert (=> b!1520192 m!1403553))

(assert (=> b!1520192 m!1403553))

(declare-fun m!1403571 () Bool)

(assert (=> b!1520192 m!1403571))

(assert (=> b!1520194 m!1403553))

(assert (=> b!1520194 m!1403553))

(assert (=> b!1520194 m!1403561))

(assert (=> b!1520089 d!158797))

(declare-fun b!1520195 () Bool)

(declare-fun e!848000 () Bool)

(declare-fun e!848002 () Bool)

(assert (=> b!1520195 (= e!848000 e!848002)))

(declare-fun res!1039874 () Bool)

(declare-fun lt!658937 () SeekEntryResult!13010)

(assert (=> b!1520195 (= res!1039874 (and ((_ is Intermediate!13010) lt!658937) (not (undefined!13822 lt!658937)) (bvslt (x!136117 lt!658937) #b01111111111111111111111111111110) (bvsge (x!136117 lt!658937) #b00000000000000000000000000000000) (bvsge (x!136117 lt!658937) #b00000000000000000000000000000000)))))

(assert (=> b!1520195 (=> (not res!1039874) (not e!848002))))

(declare-fun b!1520196 () Bool)

(assert (=> b!1520196 (and (bvsge (index!54436 lt!658937) #b00000000000000000000000000000000) (bvslt (index!54436 lt!658937) (size!49369 a!2804)))))

(declare-fun e!847999 () Bool)

(assert (=> b!1520196 (= e!847999 (= (select (arr!48818 a!2804) (index!54436 lt!658937)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!158805 () Bool)

(assert (=> d!158805 e!848000))

(declare-fun c!139708 () Bool)

(assert (=> d!158805 (= c!139708 (and ((_ is Intermediate!13010) lt!658937) (undefined!13822 lt!658937)))))

(declare-fun e!847998 () SeekEntryResult!13010)

(assert (=> d!158805 (= lt!658937 e!847998)))

(declare-fun c!139709 () Bool)

(assert (=> d!158805 (= c!139709 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!658938 () (_ BitVec 64))

(assert (=> d!158805 (= lt!658938 (select (arr!48818 a!2804) (toIndex!0 (select (arr!48818 a!2804) j!70) mask!2512)))))

(assert (=> d!158805 (validMask!0 mask!2512)))

(assert (=> d!158805 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48818 a!2804) j!70) mask!2512) (select (arr!48818 a!2804) j!70) a!2804 mask!2512) lt!658937)))

(declare-fun b!1520197 () Bool)

(declare-fun e!848001 () SeekEntryResult!13010)

(assert (=> b!1520197 (= e!847998 e!848001)))

(declare-fun c!139707 () Bool)

(assert (=> b!1520197 (= c!139707 (or (= lt!658938 (select (arr!48818 a!2804) j!70)) (= (bvadd lt!658938 lt!658938) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1520198 () Bool)

(assert (=> b!1520198 (and (bvsge (index!54436 lt!658937) #b00000000000000000000000000000000) (bvslt (index!54436 lt!658937) (size!49369 a!2804)))))

(declare-fun res!1039875 () Bool)

(assert (=> b!1520198 (= res!1039875 (= (select (arr!48818 a!2804) (index!54436 lt!658937)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1520198 (=> res!1039875 e!847999)))

(declare-fun b!1520199 () Bool)

(assert (=> b!1520199 (= e!848001 (Intermediate!13010 false (toIndex!0 (select (arr!48818 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1520200 () Bool)

(assert (=> b!1520200 (= e!848001 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48818 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48818 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1520201 () Bool)

(assert (=> b!1520201 (and (bvsge (index!54436 lt!658937) #b00000000000000000000000000000000) (bvslt (index!54436 lt!658937) (size!49369 a!2804)))))

(declare-fun res!1039876 () Bool)

(assert (=> b!1520201 (= res!1039876 (= (select (arr!48818 a!2804) (index!54436 lt!658937)) (select (arr!48818 a!2804) j!70)))))

(assert (=> b!1520201 (=> res!1039876 e!847999)))

(assert (=> b!1520201 (= e!848002 e!847999)))

(declare-fun b!1520202 () Bool)

(assert (=> b!1520202 (= e!847998 (Intermediate!13010 true (toIndex!0 (select (arr!48818 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1520203 () Bool)

(assert (=> b!1520203 (= e!848000 (bvsge (x!136117 lt!658937) #b01111111111111111111111111111110))))

(assert (= (and d!158805 c!139709) b!1520202))

(assert (= (and d!158805 (not c!139709)) b!1520197))

(assert (= (and b!1520197 c!139707) b!1520199))

(assert (= (and b!1520197 (not c!139707)) b!1520200))

(assert (= (and d!158805 c!139708) b!1520203))

(assert (= (and d!158805 (not c!139708)) b!1520195))

(assert (= (and b!1520195 res!1039874) b!1520201))

(assert (= (and b!1520201 (not res!1039876)) b!1520198))

(assert (= (and b!1520198 (not res!1039875)) b!1520196))

(assert (=> b!1520200 m!1403497))

(declare-fun m!1403573 () Bool)

(assert (=> b!1520200 m!1403573))

(assert (=> b!1520200 m!1403573))

(assert (=> b!1520200 m!1403475))

(declare-fun m!1403575 () Bool)

(assert (=> b!1520200 m!1403575))

(declare-fun m!1403577 () Bool)

(assert (=> b!1520198 m!1403577))

(assert (=> d!158805 m!1403497))

(declare-fun m!1403579 () Bool)

(assert (=> d!158805 m!1403579))

(assert (=> d!158805 m!1403491))

(assert (=> b!1520201 m!1403577))

(assert (=> b!1520196 m!1403577))

(assert (=> b!1520083 d!158805))

(declare-fun d!158807 () Bool)

(declare-fun lt!658940 () (_ BitVec 32))

(declare-fun lt!658939 () (_ BitVec 32))

(assert (=> d!158807 (= lt!658940 (bvmul (bvxor lt!658939 (bvlshr lt!658939 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158807 (= lt!658939 ((_ extract 31 0) (bvand (bvxor (select (arr!48818 a!2804) j!70) (bvlshr (select (arr!48818 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158807 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1039858 (let ((h!36895 ((_ extract 31 0) (bvand (bvxor (select (arr!48818 a!2804) j!70) (bvlshr (select (arr!48818 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136120 (bvmul (bvxor h!36895 (bvlshr h!36895 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136120 (bvlshr x!136120 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1039858 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1039858 #b00000000000000000000000000000000))))))

(assert (=> d!158807 (= (toIndex!0 (select (arr!48818 a!2804) j!70) mask!2512) (bvand (bvxor lt!658940 (bvlshr lt!658940 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1520083 d!158807))

(declare-fun d!158809 () Bool)

(declare-fun lt!658973 () SeekEntryResult!13010)

(assert (=> d!158809 (and (or ((_ is MissingVacant!13010) lt!658973) (not ((_ is Found!13010) lt!658973)) (and (bvsge (index!54435 lt!658973) #b00000000000000000000000000000000) (bvslt (index!54435 lt!658973) (size!49369 a!2804)))) (not ((_ is MissingVacant!13010) lt!658973)) (or (not ((_ is Found!13010) lt!658973)) (= (select (arr!48818 a!2804) (index!54435 lt!658973)) (select (arr!48818 a!2804) j!70))))))

(declare-fun e!848028 () SeekEntryResult!13010)

(assert (=> d!158809 (= lt!658973 e!848028)))

(declare-fun c!139730 () Bool)

(declare-fun lt!658972 () SeekEntryResult!13010)

(assert (=> d!158809 (= c!139730 (and ((_ is Intermediate!13010) lt!658972) (undefined!13822 lt!658972)))))

(assert (=> d!158809 (= lt!658972 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48818 a!2804) j!70) mask!2512) (select (arr!48818 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!158809 (validMask!0 mask!2512)))

(assert (=> d!158809 (= (seekEntry!0 (select (arr!48818 a!2804) j!70) a!2804 mask!2512) lt!658973)))

(declare-fun b!1520246 () Bool)

(assert (=> b!1520246 (= e!848028 Undefined!13010)))

(declare-fun b!1520247 () Bool)

(declare-fun e!848027 () SeekEntryResult!13010)

(declare-fun lt!658971 () SeekEntryResult!13010)

(assert (=> b!1520247 (= e!848027 (ite ((_ is MissingVacant!13010) lt!658971) (MissingZero!13010 (index!54437 lt!658971)) lt!658971))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101174 (_ BitVec 32)) SeekEntryResult!13010)

(assert (=> b!1520247 (= lt!658971 (seekKeyOrZeroReturnVacant!0 (x!136117 lt!658972) (index!54436 lt!658972) (index!54436 lt!658972) (select (arr!48818 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1520248 () Bool)

(declare-fun e!848029 () SeekEntryResult!13010)

(assert (=> b!1520248 (= e!848028 e!848029)))

(declare-fun lt!658970 () (_ BitVec 64))

(assert (=> b!1520248 (= lt!658970 (select (arr!48818 a!2804) (index!54436 lt!658972)))))

(declare-fun c!139729 () Bool)

(assert (=> b!1520248 (= c!139729 (= lt!658970 (select (arr!48818 a!2804) j!70)))))

(declare-fun b!1520249 () Bool)

(declare-fun c!139728 () Bool)

(assert (=> b!1520249 (= c!139728 (= lt!658970 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1520249 (= e!848029 e!848027)))

(declare-fun b!1520250 () Bool)

(assert (=> b!1520250 (= e!848029 (Found!13010 (index!54436 lt!658972)))))

(declare-fun b!1520251 () Bool)

(assert (=> b!1520251 (= e!848027 (MissingZero!13010 (index!54436 lt!658972)))))

(assert (= (and d!158809 c!139730) b!1520246))

(assert (= (and d!158809 (not c!139730)) b!1520248))

(assert (= (and b!1520248 c!139729) b!1520250))

(assert (= (and b!1520248 (not c!139729)) b!1520249))

(assert (= (and b!1520249 c!139728) b!1520251))

(assert (= (and b!1520249 (not c!139728)) b!1520247))

(declare-fun m!1403599 () Bool)

(assert (=> d!158809 m!1403599))

(assert (=> d!158809 m!1403475))

(assert (=> d!158809 m!1403497))

(assert (=> d!158809 m!1403497))

(assert (=> d!158809 m!1403475))

(assert (=> d!158809 m!1403499))

(assert (=> d!158809 m!1403491))

(assert (=> b!1520247 m!1403475))

(declare-fun m!1403601 () Bool)

(assert (=> b!1520247 m!1403601))

(declare-fun m!1403603 () Bool)

(assert (=> b!1520248 m!1403603))

(assert (=> b!1520088 d!158809))

(declare-fun d!158815 () Bool)

(declare-fun res!1039885 () Bool)

(declare-fun e!848032 () Bool)

(assert (=> d!158815 (=> res!1039885 e!848032)))

(assert (=> d!158815 (= res!1039885 (bvsge j!70 (size!49369 a!2804)))))

(assert (=> d!158815 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!848032)))

(declare-fun bm!68341 () Bool)

(declare-fun call!68344 () Bool)

(assert (=> bm!68341 (= call!68344 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1520256 () Bool)

(declare-fun e!848033 () Bool)

(assert (=> b!1520256 (= e!848033 call!68344)))

(declare-fun b!1520257 () Bool)

(declare-fun e!848034 () Bool)

(assert (=> b!1520257 (= e!848033 e!848034)))

(declare-fun lt!658975 () (_ BitVec 64))

(assert (=> b!1520257 (= lt!658975 (select (arr!48818 a!2804) j!70))))

(declare-fun lt!658976 () Unit!50844)

(assert (=> b!1520257 (= lt!658976 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!658975 j!70))))

(assert (=> b!1520257 (arrayContainsKey!0 a!2804 lt!658975 #b00000000000000000000000000000000)))

(declare-fun lt!658974 () Unit!50844)

(assert (=> b!1520257 (= lt!658974 lt!658976)))

(declare-fun res!1039886 () Bool)

(assert (=> b!1520257 (= res!1039886 (= (seekEntryOrOpen!0 (select (arr!48818 a!2804) j!70) a!2804 mask!2512) (Found!13010 j!70)))))

(assert (=> b!1520257 (=> (not res!1039886) (not e!848034))))

(declare-fun b!1520258 () Bool)

(assert (=> b!1520258 (= e!848034 call!68344)))

(declare-fun b!1520259 () Bool)

(assert (=> b!1520259 (= e!848032 e!848033)))

(declare-fun c!139731 () Bool)

(assert (=> b!1520259 (= c!139731 (validKeyInArray!0 (select (arr!48818 a!2804) j!70)))))

(assert (= (and d!158815 (not res!1039885)) b!1520259))

(assert (= (and b!1520259 c!139731) b!1520257))

(assert (= (and b!1520259 (not c!139731)) b!1520256))

(assert (= (and b!1520257 res!1039886) b!1520258))

(assert (= (or b!1520258 b!1520256) bm!68341))

(declare-fun m!1403605 () Bool)

(assert (=> bm!68341 m!1403605))

(assert (=> b!1520257 m!1403475))

(declare-fun m!1403607 () Bool)

(assert (=> b!1520257 m!1403607))

(declare-fun m!1403609 () Bool)

(assert (=> b!1520257 m!1403609))

(assert (=> b!1520257 m!1403475))

(declare-fun m!1403611 () Bool)

(assert (=> b!1520257 m!1403611))

(assert (=> b!1520259 m!1403475))

(assert (=> b!1520259 m!1403475))

(assert (=> b!1520259 m!1403503))

(assert (=> b!1520087 d!158815))

(declare-fun d!158817 () Bool)

(assert (=> d!158817 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!658988 () Unit!50844)

(declare-fun choose!38 (array!101174 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50844)

(assert (=> d!158817 (= lt!658988 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!158817 (validMask!0 mask!2512)))

(assert (=> d!158817 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!658988)))

(declare-fun bs!43622 () Bool)

(assert (= bs!43622 d!158817))

(assert (=> bs!43622 m!1403483))

(declare-fun m!1403625 () Bool)

(assert (=> bs!43622 m!1403625))

(assert (=> bs!43622 m!1403491))

(assert (=> b!1520087 d!158817))

(declare-fun d!158823 () Bool)

(assert (=> d!158823 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!129470 d!158823))

(declare-fun d!158831 () Bool)

(assert (=> d!158831 (= (array_inv!37763 a!2804) (bvsge (size!49369 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!129470 d!158831))

(declare-fun b!1520299 () Bool)

(declare-fun e!848062 () Bool)

(declare-fun e!848064 () Bool)

(assert (=> b!1520299 (= e!848062 e!848064)))

(declare-fun res!1039903 () Bool)

(declare-fun lt!659005 () SeekEntryResult!13010)

(assert (=> b!1520299 (= res!1039903 (and ((_ is Intermediate!13010) lt!659005) (not (undefined!13822 lt!659005)) (bvslt (x!136117 lt!659005) #b01111111111111111111111111111110) (bvsge (x!136117 lt!659005) #b00000000000000000000000000000000) (bvsge (x!136117 lt!659005) x!534)))))

(assert (=> b!1520299 (=> (not res!1039903) (not e!848064))))

(declare-fun b!1520300 () Bool)

(assert (=> b!1520300 (and (bvsge (index!54436 lt!659005) #b00000000000000000000000000000000) (bvslt (index!54436 lt!659005) (size!49369 a!2804)))))

(declare-fun e!848061 () Bool)

(assert (=> b!1520300 (= e!848061 (= (select (arr!48818 a!2804) (index!54436 lt!659005)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!158833 () Bool)

(assert (=> d!158833 e!848062))

(declare-fun c!139746 () Bool)

(assert (=> d!158833 (= c!139746 (and ((_ is Intermediate!13010) lt!659005) (undefined!13822 lt!659005)))))

(declare-fun e!848060 () SeekEntryResult!13010)

(assert (=> d!158833 (= lt!659005 e!848060)))

(declare-fun c!139747 () Bool)

(assert (=> d!158833 (= c!139747 (bvsge x!534 #b01111111111111111111111111111110))))

(declare-fun lt!659006 () (_ BitVec 64))

(assert (=> d!158833 (= lt!659006 (select (arr!48818 a!2804) index!487))))

(assert (=> d!158833 (validMask!0 mask!2512)))

(assert (=> d!158833 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48818 a!2804) j!70) a!2804 mask!2512) lt!659005)))

(declare-fun b!1520301 () Bool)

(declare-fun e!848063 () SeekEntryResult!13010)

(assert (=> b!1520301 (= e!848060 e!848063)))

(declare-fun c!139745 () Bool)

(assert (=> b!1520301 (= c!139745 (or (= lt!659006 (select (arr!48818 a!2804) j!70)) (= (bvadd lt!659006 lt!659006) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1520302 () Bool)

(assert (=> b!1520302 (and (bvsge (index!54436 lt!659005) #b00000000000000000000000000000000) (bvslt (index!54436 lt!659005) (size!49369 a!2804)))))

(declare-fun res!1039904 () Bool)

(assert (=> b!1520302 (= res!1039904 (= (select (arr!48818 a!2804) (index!54436 lt!659005)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1520302 (=> res!1039904 e!848061)))

(declare-fun b!1520303 () Bool)

(assert (=> b!1520303 (= e!848063 (Intermediate!13010 false index!487 x!534))))

(declare-fun b!1520304 () Bool)

(assert (=> b!1520304 (= e!848063 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48818 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1520305 () Bool)

(assert (=> b!1520305 (and (bvsge (index!54436 lt!659005) #b00000000000000000000000000000000) (bvslt (index!54436 lt!659005) (size!49369 a!2804)))))

(declare-fun res!1039905 () Bool)

(assert (=> b!1520305 (= res!1039905 (= (select (arr!48818 a!2804) (index!54436 lt!659005)) (select (arr!48818 a!2804) j!70)))))

(assert (=> b!1520305 (=> res!1039905 e!848061)))

(assert (=> b!1520305 (= e!848064 e!848061)))

(declare-fun b!1520306 () Bool)

(assert (=> b!1520306 (= e!848060 (Intermediate!13010 true index!487 x!534))))

(declare-fun b!1520307 () Bool)

(assert (=> b!1520307 (= e!848062 (bvsge (x!136117 lt!659005) #b01111111111111111111111111111110))))

(assert (= (and d!158833 c!139747) b!1520306))

(assert (= (and d!158833 (not c!139747)) b!1520301))

(assert (= (and b!1520301 c!139745) b!1520303))

(assert (= (and b!1520301 (not c!139745)) b!1520304))

(assert (= (and d!158833 c!139746) b!1520307))

(assert (= (and d!158833 (not c!139746)) b!1520299))

(assert (= (and b!1520299 res!1039903) b!1520305))

(assert (= (and b!1520305 (not res!1039905)) b!1520302))

(assert (= (and b!1520302 (not res!1039904)) b!1520300))

(declare-fun m!1403645 () Bool)

(assert (=> b!1520304 m!1403645))

(assert (=> b!1520304 m!1403645))

(assert (=> b!1520304 m!1403475))

(declare-fun m!1403647 () Bool)

(assert (=> b!1520304 m!1403647))

(declare-fun m!1403649 () Bool)

(assert (=> b!1520302 m!1403649))

(assert (=> d!158833 m!1403481))

(assert (=> d!158833 m!1403491))

(assert (=> b!1520305 m!1403649))

(assert (=> b!1520300 m!1403649))

(assert (=> b!1520081 d!158833))

(check-sat (not d!158809) (not b!1520194) (not d!158805) (not b!1520192) (not d!158785) (not bm!68341) (not b!1520259) (not bm!68334) (not b!1520200) (not b!1520257) (not b!1520171) (not bm!68337) (not b!1520146) (not b!1520247) (not b!1520173) (not d!158817) (not d!158833) (not b!1520190) (not b!1520304))
(check-sat)
