; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129376 () Bool)

(assert start!129376)

(declare-fun b!1519215 () Bool)

(declare-fun res!1039202 () Bool)

(declare-fun e!847493 () Bool)

(assert (=> b!1519215 (=> (not res!1039202) (not e!847493))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101145 0))(
  ( (array!101146 (arr!48805 (Array (_ BitVec 32) (_ BitVec 64))) (size!49356 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101145)

(declare-datatypes ((SeekEntryResult!12997 0))(
  ( (MissingZero!12997 (index!54382 (_ BitVec 32))) (Found!12997 (index!54383 (_ BitVec 32))) (Intermediate!12997 (undefined!13809 Bool) (index!54384 (_ BitVec 32)) (x!136064 (_ BitVec 32))) (Undefined!12997) (MissingVacant!12997 (index!54385 (_ BitVec 32))) )
))
(declare-fun lt!658534 () SeekEntryResult!12997)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101145 (_ BitVec 32)) SeekEntryResult!12997)

(assert (=> b!1519215 (= res!1039202 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48805 a!2804) j!70) a!2804 mask!2512) lt!658534))))

(declare-fun b!1519216 () Bool)

(declare-fun e!847492 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101145 (_ BitVec 32)) SeekEntryResult!12997)

(assert (=> b!1519216 (= e!847492 (= (seekEntry!0 (select (arr!48805 a!2804) j!70) a!2804 mask!2512) (Found!12997 j!70)))))

(declare-fun b!1519217 () Bool)

(declare-fun res!1039203 () Bool)

(declare-fun e!847491 () Bool)

(assert (=> b!1519217 (=> (not res!1039203) (not e!847491))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1519217 (= res!1039203 (validKeyInArray!0 (select (arr!48805 a!2804) i!961)))))

(declare-fun b!1519218 () Bool)

(declare-fun e!847496 () Bool)

(declare-fun e!847494 () Bool)

(assert (=> b!1519218 (= e!847496 e!847494)))

(declare-fun res!1039190 () Bool)

(assert (=> b!1519218 (=> res!1039190 e!847494)))

(declare-fun lt!658540 () (_ BitVec 32))

(assert (=> b!1519218 (= res!1039190 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658540 #b00000000000000000000000000000000) (bvsge lt!658540 (size!49356 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1519218 (= lt!658540 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1519219 () Bool)

(assert (=> b!1519219 (= e!847494 true)))

(declare-fun lt!658539 () (_ BitVec 64))

(declare-fun lt!658538 () array!101145)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101145 (_ BitVec 32)) SeekEntryResult!12997)

(assert (=> b!1519219 (= (seekEntryOrOpen!0 (select (arr!48805 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!658539 lt!658538 mask!2512))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-datatypes ((Unit!50818 0))(
  ( (Unit!50819) )
))
(declare-fun lt!658536 () Unit!50818)

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101145 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50818)

(assert (=> b!1519219 (= lt!658536 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!658540 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1519220 () Bool)

(declare-fun res!1039195 () Bool)

(assert (=> b!1519220 (=> res!1039195 e!847494)))

(assert (=> b!1519220 (= res!1039195 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658540 (select (arr!48805 a!2804) j!70) a!2804 mask!2512) lt!658534)))))

(declare-fun b!1519221 () Bool)

(assert (=> b!1519221 (= e!847491 e!847493)))

(declare-fun res!1039200 () Bool)

(assert (=> b!1519221 (=> (not res!1039200) (not e!847493))))

(declare-fun lt!658535 () SeekEntryResult!12997)

(assert (=> b!1519221 (= res!1039200 (= lt!658535 lt!658534))))

(assert (=> b!1519221 (= lt!658534 (Intermediate!12997 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1519221 (= lt!658535 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48805 a!2804) j!70) mask!2512) (select (arr!48805 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1039201 () Bool)

(assert (=> start!129376 (=> (not res!1039201) (not e!847491))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129376 (= res!1039201 (validMask!0 mask!2512))))

(assert (=> start!129376 e!847491))

(assert (=> start!129376 true))

(declare-fun array_inv!37750 (array!101145) Bool)

(assert (=> start!129376 (array_inv!37750 a!2804)))

(declare-fun b!1519222 () Bool)

(declare-fun res!1039193 () Bool)

(assert (=> b!1519222 (=> (not res!1039193) (not e!847491))))

(assert (=> b!1519222 (= res!1039193 (validKeyInArray!0 (select (arr!48805 a!2804) j!70)))))

(declare-fun b!1519223 () Bool)

(declare-fun res!1039191 () Bool)

(assert (=> b!1519223 (=> (not res!1039191) (not e!847491))))

(assert (=> b!1519223 (= res!1039191 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49356 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49356 a!2804))))))

(declare-fun b!1519224 () Bool)

(declare-fun res!1039196 () Bool)

(assert (=> b!1519224 (=> (not res!1039196) (not e!847491))))

(declare-datatypes ((List!35468 0))(
  ( (Nil!35465) (Cons!35464 (h!36877 (_ BitVec 64)) (t!50169 List!35468)) )
))
(declare-fun arrayNoDuplicates!0 (array!101145 (_ BitVec 32) List!35468) Bool)

(assert (=> b!1519224 (= res!1039196 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35465))))

(declare-fun b!1519225 () Bool)

(declare-fun e!847495 () Bool)

(assert (=> b!1519225 (= e!847493 e!847495)))

(declare-fun res!1039192 () Bool)

(assert (=> b!1519225 (=> (not res!1039192) (not e!847495))))

(assert (=> b!1519225 (= res!1039192 (= lt!658535 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!658539 mask!2512) lt!658539 lt!658538 mask!2512)))))

(assert (=> b!1519225 (= lt!658539 (select (store (arr!48805 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1519225 (= lt!658538 (array!101146 (store (arr!48805 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49356 a!2804)))))

(declare-fun b!1519226 () Bool)

(declare-fun res!1039198 () Bool)

(assert (=> b!1519226 (=> (not res!1039198) (not e!847491))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101145 (_ BitVec 32)) Bool)

(assert (=> b!1519226 (= res!1039198 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1519227 () Bool)

(declare-fun res!1039197 () Bool)

(assert (=> b!1519227 (=> (not res!1039197) (not e!847491))))

(assert (=> b!1519227 (= res!1039197 (and (= (size!49356 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49356 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49356 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1519228 () Bool)

(assert (=> b!1519228 (= e!847495 (not e!847496))))

(declare-fun res!1039199 () Bool)

(assert (=> b!1519228 (=> res!1039199 e!847496)))

(assert (=> b!1519228 (= res!1039199 (or (not (= (select (arr!48805 a!2804) j!70) lt!658539)) (= x!534 resX!21)))))

(assert (=> b!1519228 e!847492))

(declare-fun res!1039194 () Bool)

(assert (=> b!1519228 (=> (not res!1039194) (not e!847492))))

(assert (=> b!1519228 (= res!1039194 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!658537 () Unit!50818)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101145 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50818)

(assert (=> b!1519228 (= lt!658537 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!129376 res!1039201) b!1519227))

(assert (= (and b!1519227 res!1039197) b!1519217))

(assert (= (and b!1519217 res!1039203) b!1519222))

(assert (= (and b!1519222 res!1039193) b!1519226))

(assert (= (and b!1519226 res!1039198) b!1519224))

(assert (= (and b!1519224 res!1039196) b!1519223))

(assert (= (and b!1519223 res!1039191) b!1519221))

(assert (= (and b!1519221 res!1039200) b!1519215))

(assert (= (and b!1519215 res!1039202) b!1519225))

(assert (= (and b!1519225 res!1039192) b!1519228))

(assert (= (and b!1519228 res!1039194) b!1519216))

(assert (= (and b!1519228 (not res!1039199)) b!1519218))

(assert (= (and b!1519218 (not res!1039190)) b!1519220))

(assert (= (and b!1519220 (not res!1039195)) b!1519219))

(declare-fun m!1402659 () Bool)

(assert (=> b!1519220 m!1402659))

(assert (=> b!1519220 m!1402659))

(declare-fun m!1402661 () Bool)

(assert (=> b!1519220 m!1402661))

(declare-fun m!1402663 () Bool)

(assert (=> b!1519224 m!1402663))

(declare-fun m!1402665 () Bool)

(assert (=> b!1519218 m!1402665))

(declare-fun m!1402667 () Bool)

(assert (=> b!1519225 m!1402667))

(assert (=> b!1519225 m!1402667))

(declare-fun m!1402669 () Bool)

(assert (=> b!1519225 m!1402669))

(declare-fun m!1402671 () Bool)

(assert (=> b!1519225 m!1402671))

(declare-fun m!1402673 () Bool)

(assert (=> b!1519225 m!1402673))

(declare-fun m!1402675 () Bool)

(assert (=> start!129376 m!1402675))

(declare-fun m!1402677 () Bool)

(assert (=> start!129376 m!1402677))

(declare-fun m!1402679 () Bool)

(assert (=> b!1519217 m!1402679))

(assert (=> b!1519217 m!1402679))

(declare-fun m!1402681 () Bool)

(assert (=> b!1519217 m!1402681))

(declare-fun m!1402683 () Bool)

(assert (=> b!1519226 m!1402683))

(assert (=> b!1519221 m!1402659))

(assert (=> b!1519221 m!1402659))

(declare-fun m!1402685 () Bool)

(assert (=> b!1519221 m!1402685))

(assert (=> b!1519221 m!1402685))

(assert (=> b!1519221 m!1402659))

(declare-fun m!1402687 () Bool)

(assert (=> b!1519221 m!1402687))

(assert (=> b!1519216 m!1402659))

(assert (=> b!1519216 m!1402659))

(declare-fun m!1402689 () Bool)

(assert (=> b!1519216 m!1402689))

(assert (=> b!1519222 m!1402659))

(assert (=> b!1519222 m!1402659))

(declare-fun m!1402691 () Bool)

(assert (=> b!1519222 m!1402691))

(assert (=> b!1519228 m!1402659))

(declare-fun m!1402693 () Bool)

(assert (=> b!1519228 m!1402693))

(declare-fun m!1402695 () Bool)

(assert (=> b!1519228 m!1402695))

(assert (=> b!1519215 m!1402659))

(assert (=> b!1519215 m!1402659))

(declare-fun m!1402697 () Bool)

(assert (=> b!1519215 m!1402697))

(assert (=> b!1519219 m!1402659))

(assert (=> b!1519219 m!1402659))

(declare-fun m!1402699 () Bool)

(assert (=> b!1519219 m!1402699))

(declare-fun m!1402701 () Bool)

(assert (=> b!1519219 m!1402701))

(declare-fun m!1402703 () Bool)

(assert (=> b!1519219 m!1402703))

(push 1)

