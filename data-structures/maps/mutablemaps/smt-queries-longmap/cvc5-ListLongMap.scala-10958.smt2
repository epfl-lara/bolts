; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128302 () Bool)

(assert start!128302)

(declare-fun b!1505484 () Bool)

(declare-fun res!1026002 () Bool)

(declare-fun e!841465 () Bool)

(assert (=> b!1505484 (=> (not res!1026002) (not e!841465))))

(declare-datatypes ((array!100368 0))(
  ( (array!100369 (arr!48430 (Array (_ BitVec 32) (_ BitVec 64))) (size!48981 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100368)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1505484 (= res!1026002 (validKeyInArray!0 (select (arr!48430 a!2804) j!70)))))

(declare-fun b!1505485 () Bool)

(declare-fun res!1026004 () Bool)

(assert (=> b!1505485 (=> (not res!1026004) (not e!841465))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1505485 (= res!1026004 (validKeyInArray!0 (select (arr!48430 a!2804) i!961)))))

(declare-fun b!1505486 () Bool)

(declare-fun res!1026005 () Bool)

(assert (=> b!1505486 (=> (not res!1026005) (not e!841465))))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1505486 (= res!1026005 (and (= (size!48981 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!48981 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!48981 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1505487 () Bool)

(declare-fun res!1026006 () Bool)

(assert (=> b!1505487 (=> (not res!1026006) (not e!841465))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100368 (_ BitVec 32)) Bool)

(assert (=> b!1505487 (= res!1026006 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1026003 () Bool)

(assert (=> start!128302 (=> (not res!1026003) (not e!841465))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128302 (= res!1026003 (validMask!0 mask!2512))))

(assert (=> start!128302 e!841465))

(assert (=> start!128302 true))

(declare-fun array_inv!37375 (array!100368) Bool)

(assert (=> start!128302 (array_inv!37375 a!2804)))

(declare-fun b!1505488 () Bool)

(assert (=> b!1505488 (= e!841465 (and (bvsle #b00000000000000000000000000000000 (size!48981 a!2804)) (bvsge (size!48981 a!2804) #b01111111111111111111111111111111)))))

(assert (= (and start!128302 res!1026003) b!1505486))

(assert (= (and b!1505486 res!1026005) b!1505485))

(assert (= (and b!1505485 res!1026004) b!1505484))

(assert (= (and b!1505484 res!1026002) b!1505487))

(assert (= (and b!1505487 res!1026006) b!1505488))

(declare-fun m!1388637 () Bool)

(assert (=> b!1505484 m!1388637))

(assert (=> b!1505484 m!1388637))

(declare-fun m!1388639 () Bool)

(assert (=> b!1505484 m!1388639))

(declare-fun m!1388641 () Bool)

(assert (=> b!1505485 m!1388641))

(assert (=> b!1505485 m!1388641))

(declare-fun m!1388643 () Bool)

(assert (=> b!1505485 m!1388643))

(declare-fun m!1388645 () Bool)

(assert (=> b!1505487 m!1388645))

(declare-fun m!1388647 () Bool)

(assert (=> start!128302 m!1388647))

(declare-fun m!1388649 () Bool)

(assert (=> start!128302 m!1388649))

(push 1)

(assert (not b!1505487))

(assert (not b!1505485))

(assert (not b!1505484))

(assert (not start!128302))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!68178 () Bool)

(declare-fun call!68181 () Bool)

(assert (=> bm!68178 (= call!68181 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1505539 () Bool)

(declare-fun e!841496 () Bool)

(assert (=> b!1505539 (= e!841496 call!68181)))

(declare-fun b!1505540 () Bool)

(declare-fun e!841494 () Bool)

(assert (=> b!1505540 (= e!841494 e!841496)))

(declare-fun lt!654003 () (_ BitVec 64))

(assert (=> b!1505540 (= lt!654003 (select (arr!48430 a!2804) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50246 0))(
  ( (Unit!50247) )
))
(declare-fun lt!654002 () Unit!50246)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100368 (_ BitVec 64) (_ BitVec 32)) Unit!50246)

(assert (=> b!1505540 (= lt!654002 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!654003 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100368 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1505540 (arrayContainsKey!0 a!2804 lt!654003 #b00000000000000000000000000000000)))

(declare-fun lt!654004 () Unit!50246)

(assert (=> b!1505540 (= lt!654004 lt!654002)))

(declare-fun res!1026047 () Bool)

(declare-datatypes ((SeekEntryResult!12642 0))(
  ( (MissingZero!12642 (index!52962 (_ BitVec 32))) (Found!12642 (index!52963 (_ BitVec 32))) (Intermediate!12642 (undefined!13454 Bool) (index!52964 (_ BitVec 32)) (x!134682 (_ BitVec 32))) (Undefined!12642) (MissingVacant!12642 (index!52965 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100368 (_ BitVec 32)) SeekEntryResult!12642)

(assert (=> b!1505540 (= res!1026047 (= (seekEntryOrOpen!0 (select (arr!48430 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!12642 #b00000000000000000000000000000000)))))

(assert (=> b!1505540 (=> (not res!1026047) (not e!841496))))

(declare-fun d!157993 () Bool)

(declare-fun res!1026048 () Bool)

(declare-fun e!841495 () Bool)

(assert (=> d!157993 (=> res!1026048 e!841495)))

(assert (=> d!157993 (= res!1026048 (bvsge #b00000000000000000000000000000000 (size!48981 a!2804)))))

(assert (=> d!157993 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!841495)))

