; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129278 () Bool)

(assert start!129278)

(declare-fun b!1517248 () Bool)

(declare-fun res!1037235 () Bool)

(declare-fun e!846553 () Bool)

(assert (=> b!1517248 (=> (not res!1037235) (not e!846553))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101047 0))(
  ( (array!101048 (arr!48756 (Array (_ BitVec 32) (_ BitVec 64))) (size!49307 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101047)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1517248 (= res!1037235 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49307 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49307 a!2804))))))

(declare-fun b!1517249 () Bool)

(declare-fun res!1037225 () Bool)

(assert (=> b!1517249 (=> (not res!1037225) (not e!846553))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101047 (_ BitVec 32)) Bool)

(assert (=> b!1517249 (= res!1037225 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1517250 () Bool)

(declare-fun res!1037231 () Bool)

(assert (=> b!1517250 (=> (not res!1037231) (not e!846553))))

(declare-datatypes ((List!35419 0))(
  ( (Nil!35416) (Cons!35415 (h!36828 (_ BitVec 64)) (t!50120 List!35419)) )
))
(declare-fun arrayNoDuplicates!0 (array!101047 (_ BitVec 32) List!35419) Bool)

(assert (=> b!1517250 (= res!1037231 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35416))))

(declare-fun e!846554 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun b!1517251 () Bool)

(declare-datatypes ((SeekEntryResult!12948 0))(
  ( (MissingZero!12948 (index!54186 (_ BitVec 32))) (Found!12948 (index!54187 (_ BitVec 32))) (Intermediate!12948 (undefined!13760 Bool) (index!54188 (_ BitVec 32)) (x!135879 (_ BitVec 32))) (Undefined!12948) (MissingVacant!12948 (index!54189 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101047 (_ BitVec 32)) SeekEntryResult!12948)

(assert (=> b!1517251 (= e!846554 (= (seekEntry!0 (select (arr!48756 a!2804) j!70) a!2804 mask!2512) (Found!12948 j!70)))))

(declare-fun b!1517252 () Bool)

(declare-fun e!846556 () Bool)

(assert (=> b!1517252 (= e!846553 e!846556)))

(declare-fun res!1037227 () Bool)

(assert (=> b!1517252 (=> (not res!1037227) (not e!846556))))

(declare-fun lt!657690 () SeekEntryResult!12948)

(declare-fun lt!657691 () SeekEntryResult!12948)

(assert (=> b!1517252 (= res!1037227 (= lt!657690 lt!657691))))

(assert (=> b!1517252 (= lt!657691 (Intermediate!12948 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101047 (_ BitVec 32)) SeekEntryResult!12948)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517252 (= lt!657690 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48756 a!2804) j!70) mask!2512) (select (arr!48756 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517253 () Bool)

(declare-fun e!846552 () Bool)

(assert (=> b!1517253 (= e!846556 (not e!846552))))

(declare-fun res!1037233 () Bool)

(assert (=> b!1517253 (=> res!1037233 e!846552)))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1517253 (= res!1037233 (or (not (= (select (arr!48756 a!2804) j!70) (select (store (arr!48756 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1517253 e!846554))

(declare-fun res!1037228 () Bool)

(assert (=> b!1517253 (=> (not res!1037228) (not e!846554))))

(assert (=> b!1517253 (= res!1037228 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50720 0))(
  ( (Unit!50721) )
))
(declare-fun lt!657689 () Unit!50720)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101047 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50720)

(assert (=> b!1517253 (= lt!657689 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1517254 () Bool)

(declare-fun res!1037234 () Bool)

(assert (=> b!1517254 (=> (not res!1037234) (not e!846556))))

(assert (=> b!1517254 (= res!1037234 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48756 a!2804) j!70) a!2804 mask!2512) lt!657691))))

(declare-fun res!1037230 () Bool)

(assert (=> start!129278 (=> (not res!1037230) (not e!846553))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129278 (= res!1037230 (validMask!0 mask!2512))))

(assert (=> start!129278 e!846553))

(assert (=> start!129278 true))

(declare-fun array_inv!37701 (array!101047) Bool)

(assert (=> start!129278 (array_inv!37701 a!2804)))

(declare-fun b!1517255 () Bool)

(declare-fun e!846555 () Bool)

(assert (=> b!1517255 (= e!846552 e!846555)))

(declare-fun res!1037223 () Bool)

(assert (=> b!1517255 (=> res!1037223 e!846555)))

(declare-fun lt!657687 () (_ BitVec 32))

(assert (=> b!1517255 (= res!1037223 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657687 #b00000000000000000000000000000000) (bvsge lt!657687 (size!49307 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517255 (= lt!657687 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1517256 () Bool)

(assert (=> b!1517256 (= e!846555 true)))

(declare-fun lt!657688 () SeekEntryResult!12948)

(assert (=> b!1517256 (= lt!657688 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657687 (select (arr!48756 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517257 () Bool)

(declare-fun res!1037226 () Bool)

(assert (=> b!1517257 (=> (not res!1037226) (not e!846553))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1517257 (= res!1037226 (validKeyInArray!0 (select (arr!48756 a!2804) i!961)))))

(declare-fun b!1517258 () Bool)

(declare-fun res!1037229 () Bool)

(assert (=> b!1517258 (=> (not res!1037229) (not e!846553))))

(assert (=> b!1517258 (= res!1037229 (validKeyInArray!0 (select (arr!48756 a!2804) j!70)))))

(declare-fun b!1517259 () Bool)

(declare-fun res!1037232 () Bool)

(assert (=> b!1517259 (=> (not res!1037232) (not e!846556))))

(assert (=> b!1517259 (= res!1037232 (= lt!657690 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48756 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48756 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101048 (store (arr!48756 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49307 a!2804)) mask!2512)))))

(declare-fun b!1517260 () Bool)

(declare-fun res!1037224 () Bool)

(assert (=> b!1517260 (=> (not res!1037224) (not e!846553))))

(assert (=> b!1517260 (= res!1037224 (and (= (size!49307 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49307 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49307 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!129278 res!1037230) b!1517260))

(assert (= (and b!1517260 res!1037224) b!1517257))

(assert (= (and b!1517257 res!1037226) b!1517258))

(assert (= (and b!1517258 res!1037229) b!1517249))

(assert (= (and b!1517249 res!1037225) b!1517250))

(assert (= (and b!1517250 res!1037231) b!1517248))

(assert (= (and b!1517248 res!1037235) b!1517252))

(assert (= (and b!1517252 res!1037227) b!1517254))

(assert (= (and b!1517254 res!1037234) b!1517259))

(assert (= (and b!1517259 res!1037232) b!1517253))

(assert (= (and b!1517253 res!1037228) b!1517251))

(assert (= (and b!1517253 (not res!1037233)) b!1517255))

(assert (= (and b!1517255 (not res!1037223)) b!1517256))

(declare-fun m!1400591 () Bool)

(assert (=> b!1517255 m!1400591))

(declare-fun m!1400593 () Bool)

(assert (=> b!1517259 m!1400593))

(declare-fun m!1400595 () Bool)

(assert (=> b!1517259 m!1400595))

(assert (=> b!1517259 m!1400595))

(declare-fun m!1400597 () Bool)

(assert (=> b!1517259 m!1400597))

(assert (=> b!1517259 m!1400597))

(assert (=> b!1517259 m!1400595))

(declare-fun m!1400599 () Bool)

(assert (=> b!1517259 m!1400599))

(declare-fun m!1400601 () Bool)

(assert (=> start!129278 m!1400601))

(declare-fun m!1400603 () Bool)

(assert (=> start!129278 m!1400603))

(declare-fun m!1400605 () Bool)

(assert (=> b!1517257 m!1400605))

(assert (=> b!1517257 m!1400605))

(declare-fun m!1400607 () Bool)

(assert (=> b!1517257 m!1400607))

(declare-fun m!1400609 () Bool)

(assert (=> b!1517253 m!1400609))

(declare-fun m!1400611 () Bool)

(assert (=> b!1517253 m!1400611))

(assert (=> b!1517253 m!1400593))

(assert (=> b!1517253 m!1400595))

(declare-fun m!1400613 () Bool)

(assert (=> b!1517253 m!1400613))

(assert (=> b!1517258 m!1400609))

(assert (=> b!1517258 m!1400609))

(declare-fun m!1400615 () Bool)

(assert (=> b!1517258 m!1400615))

(declare-fun m!1400617 () Bool)

(assert (=> b!1517250 m!1400617))

(assert (=> b!1517252 m!1400609))

(assert (=> b!1517252 m!1400609))

(declare-fun m!1400619 () Bool)

(assert (=> b!1517252 m!1400619))

(assert (=> b!1517252 m!1400619))

(assert (=> b!1517252 m!1400609))

(declare-fun m!1400621 () Bool)

(assert (=> b!1517252 m!1400621))

(assert (=> b!1517254 m!1400609))

(assert (=> b!1517254 m!1400609))

(declare-fun m!1400623 () Bool)

(assert (=> b!1517254 m!1400623))

(declare-fun m!1400625 () Bool)

(assert (=> b!1517249 m!1400625))

(assert (=> b!1517251 m!1400609))

(assert (=> b!1517251 m!1400609))

(declare-fun m!1400627 () Bool)

(assert (=> b!1517251 m!1400627))

(assert (=> b!1517256 m!1400609))

(assert (=> b!1517256 m!1400609))

(declare-fun m!1400629 () Bool)

(assert (=> b!1517256 m!1400629))

(push 1)

(assert (not b!1517257))

(assert (not b!1517259))

(assert (not b!1517252))

