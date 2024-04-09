; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128750 () Bool)

(assert start!128750)

(declare-fun b!1508270 () Bool)

(declare-fun res!1028355 () Bool)

(declare-fun e!842670 () Bool)

(assert (=> b!1508270 (=> (not res!1028355) (not e!842670))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((array!100558 0))(
  ( (array!100559 (arr!48513 (Array (_ BitVec 32) (_ BitVec 64))) (size!49064 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100558)

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1508270 (= res!1028355 (and (= (size!49064 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49064 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49064 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1508271 () Bool)

(declare-fun res!1028358 () Bool)

(assert (=> b!1508271 (=> (not res!1028358) (not e!842670))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1508271 (= res!1028358 (validKeyInArray!0 (select (arr!48513 a!2804) j!70)))))

(declare-fun b!1508272 () Bool)

(declare-fun e!842672 () Bool)

(assert (=> b!1508272 (= e!842670 e!842672)))

(declare-fun res!1028352 () Bool)

(assert (=> b!1508272 (=> (not res!1028352) (not e!842672))))

(declare-datatypes ((SeekEntryResult!12705 0))(
  ( (MissingZero!12705 (index!53214 (_ BitVec 32))) (Found!12705 (index!53215 (_ BitVec 32))) (Intermediate!12705 (undefined!13517 Bool) (index!53216 (_ BitVec 32)) (x!134982 (_ BitVec 32))) (Undefined!12705) (MissingVacant!12705 (index!53217 (_ BitVec 32))) )
))
(declare-fun lt!654564 () SeekEntryResult!12705)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100558 (_ BitVec 32)) SeekEntryResult!12705)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1508272 (= res!1028352 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48513 a!2804) j!70) mask!2512) (select (arr!48513 a!2804) j!70) a!2804 mask!2512) lt!654564))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1508272 (= lt!654564 (Intermediate!12705 false resIndex!21 resX!21))))

(declare-fun b!1508273 () Bool)

(assert (=> b!1508273 (= e!842672 false)))

(declare-fun lt!654565 () (_ BitVec 32))

(assert (=> b!1508273 (= lt!654565 (toIndex!0 (select (store (arr!48513 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512))))

(declare-fun b!1508274 () Bool)

(declare-fun res!1028351 () Bool)

(assert (=> b!1508274 (=> (not res!1028351) (not e!842670))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100558 (_ BitVec 32)) Bool)

(assert (=> b!1508274 (= res!1028351 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1508275 () Bool)

(declare-fun res!1028354 () Bool)

(assert (=> b!1508275 (=> (not res!1028354) (not e!842670))))

(declare-datatypes ((List!35176 0))(
  ( (Nil!35173) (Cons!35172 (h!36582 (_ BitVec 64)) (t!49877 List!35176)) )
))
(declare-fun arrayNoDuplicates!0 (array!100558 (_ BitVec 32) List!35176) Bool)

(assert (=> b!1508275 (= res!1028354 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35173))))

(declare-fun res!1028350 () Bool)

(assert (=> start!128750 (=> (not res!1028350) (not e!842670))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128750 (= res!1028350 (validMask!0 mask!2512))))

(assert (=> start!128750 e!842670))

(assert (=> start!128750 true))

(declare-fun array_inv!37458 (array!100558) Bool)

(assert (=> start!128750 (array_inv!37458 a!2804)))

(declare-fun b!1508276 () Bool)

(declare-fun res!1028357 () Bool)

(assert (=> b!1508276 (=> (not res!1028357) (not e!842670))))

(assert (=> b!1508276 (= res!1028357 (validKeyInArray!0 (select (arr!48513 a!2804) i!961)))))

(declare-fun b!1508277 () Bool)

(declare-fun res!1028356 () Bool)

(assert (=> b!1508277 (=> (not res!1028356) (not e!842672))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1508277 (= res!1028356 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48513 a!2804) j!70) a!2804 mask!2512) lt!654564))))

(declare-fun b!1508278 () Bool)

(declare-fun res!1028353 () Bool)

(assert (=> b!1508278 (=> (not res!1028353) (not e!842670))))

(assert (=> b!1508278 (= res!1028353 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49064 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49064 a!2804))))))

(assert (= (and start!128750 res!1028350) b!1508270))

(assert (= (and b!1508270 res!1028355) b!1508276))

(assert (= (and b!1508276 res!1028357) b!1508271))

(assert (= (and b!1508271 res!1028358) b!1508274))

(assert (= (and b!1508274 res!1028351) b!1508275))

(assert (= (and b!1508275 res!1028354) b!1508278))

(assert (= (and b!1508278 res!1028353) b!1508272))

(assert (= (and b!1508272 res!1028352) b!1508277))

(assert (= (and b!1508277 res!1028356) b!1508273))

(declare-fun m!1390829 () Bool)

(assert (=> b!1508274 m!1390829))

(declare-fun m!1390831 () Bool)

(assert (=> b!1508272 m!1390831))

(assert (=> b!1508272 m!1390831))

(declare-fun m!1390833 () Bool)

(assert (=> b!1508272 m!1390833))

(assert (=> b!1508272 m!1390833))

(assert (=> b!1508272 m!1390831))

(declare-fun m!1390835 () Bool)

(assert (=> b!1508272 m!1390835))

(declare-fun m!1390837 () Bool)

(assert (=> b!1508275 m!1390837))

(assert (=> b!1508271 m!1390831))

(assert (=> b!1508271 m!1390831))

(declare-fun m!1390839 () Bool)

(assert (=> b!1508271 m!1390839))

(declare-fun m!1390841 () Bool)

(assert (=> start!128750 m!1390841))

(declare-fun m!1390843 () Bool)

(assert (=> start!128750 m!1390843))

(declare-fun m!1390845 () Bool)

(assert (=> b!1508273 m!1390845))

(declare-fun m!1390847 () Bool)

(assert (=> b!1508273 m!1390847))

(assert (=> b!1508273 m!1390847))

(declare-fun m!1390849 () Bool)

(assert (=> b!1508273 m!1390849))

(assert (=> b!1508277 m!1390831))

(assert (=> b!1508277 m!1390831))

(declare-fun m!1390851 () Bool)

(assert (=> b!1508277 m!1390851))

(declare-fun m!1390853 () Bool)

(assert (=> b!1508276 m!1390853))

(assert (=> b!1508276 m!1390853))

(declare-fun m!1390855 () Bool)

(assert (=> b!1508276 m!1390855))

(push 1)

(assert (not b!1508275))

(assert (not b!1508274))

(assert (not b!1508276))

(assert (not b!1508271))

(assert (not b!1508277))

(assert (not b!1508273))

(assert (not b!1508272))

