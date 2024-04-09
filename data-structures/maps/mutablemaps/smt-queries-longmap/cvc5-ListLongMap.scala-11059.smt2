; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129232 () Bool)

(assert start!129232)

(declare-fun b!1516351 () Bool)

(declare-fun res!1036337 () Bool)

(declare-fun e!846139 () Bool)

(assert (=> b!1516351 (=> (not res!1036337) (not e!846139))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101001 0))(
  ( (array!101002 (arr!48733 (Array (_ BitVec 32) (_ BitVec 64))) (size!49284 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101001)

(assert (=> b!1516351 (= res!1036337 (and (= (size!49284 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49284 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49284 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1516352 () Bool)

(declare-fun e!846141 () Bool)

(declare-fun e!846138 () Bool)

(assert (=> b!1516352 (= e!846141 (not e!846138))))

(declare-fun res!1036331 () Bool)

(assert (=> b!1516352 (=> res!1036331 e!846138)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1516352 (= res!1036331 (or (not (= (select (arr!48733 a!2804) j!70) (select (store (arr!48733 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!846143 () Bool)

(assert (=> b!1516352 e!846143))

(declare-fun res!1036334 () Bool)

(assert (=> b!1516352 (=> (not res!1036334) (not e!846143))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101001 (_ BitVec 32)) Bool)

(assert (=> b!1516352 (= res!1036334 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50674 0))(
  ( (Unit!50675) )
))
(declare-fun lt!657344 () Unit!50674)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101001 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50674)

(assert (=> b!1516352 (= lt!657344 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1516353 () Bool)

(declare-fun res!1036327 () Bool)

(assert (=> b!1516353 (=> (not res!1036327) (not e!846139))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1516353 (= res!1036327 (validKeyInArray!0 (select (arr!48733 a!2804) j!70)))))

(declare-fun b!1516354 () Bool)

(declare-fun res!1036332 () Bool)

(assert (=> b!1516354 (=> (not res!1036332) (not e!846139))))

(declare-datatypes ((List!35396 0))(
  ( (Nil!35393) (Cons!35392 (h!36805 (_ BitVec 64)) (t!50097 List!35396)) )
))
(declare-fun arrayNoDuplicates!0 (array!101001 (_ BitVec 32) List!35396) Bool)

(assert (=> b!1516354 (= res!1036332 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35393))))

(declare-fun res!1036333 () Bool)

(assert (=> start!129232 (=> (not res!1036333) (not e!846139))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129232 (= res!1036333 (validMask!0 mask!2512))))

(assert (=> start!129232 e!846139))

(assert (=> start!129232 true))

(declare-fun array_inv!37678 (array!101001) Bool)

(assert (=> start!129232 (array_inv!37678 a!2804)))

(declare-fun b!1516355 () Bool)

(declare-fun res!1036335 () Bool)

(assert (=> b!1516355 (=> (not res!1036335) (not e!846139))))

(assert (=> b!1516355 (= res!1036335 (validKeyInArray!0 (select (arr!48733 a!2804) i!961)))))

(declare-fun b!1516356 () Bool)

(declare-fun res!1036336 () Bool)

(assert (=> b!1516356 (=> (not res!1036336) (not e!846141))))

(declare-datatypes ((SeekEntryResult!12925 0))(
  ( (MissingZero!12925 (index!54094 (_ BitVec 32))) (Found!12925 (index!54095 (_ BitVec 32))) (Intermediate!12925 (undefined!13737 Bool) (index!54096 (_ BitVec 32)) (x!135800 (_ BitVec 32))) (Undefined!12925) (MissingVacant!12925 (index!54097 (_ BitVec 32))) )
))
(declare-fun lt!657343 () SeekEntryResult!12925)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101001 (_ BitVec 32)) SeekEntryResult!12925)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516356 (= res!1036336 (= lt!657343 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48733 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48733 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101002 (store (arr!48733 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49284 a!2804)) mask!2512)))))

(declare-fun b!1516357 () Bool)

(declare-fun res!1036330 () Bool)

(assert (=> b!1516357 (=> (not res!1036330) (not e!846139))))

(assert (=> b!1516357 (= res!1036330 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1516358 () Bool)

(declare-fun e!846140 () Bool)

(assert (=> b!1516358 (= e!846138 e!846140)))

(declare-fun res!1036326 () Bool)

(assert (=> b!1516358 (=> res!1036326 e!846140)))

(declare-fun lt!657345 () (_ BitVec 32))

(assert (=> b!1516358 (= res!1036326 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657345 #b00000000000000000000000000000000) (bvsge lt!657345 (size!49284 a!2804))))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516358 (= lt!657345 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1516359 () Bool)

(assert (=> b!1516359 (= e!846140 true)))

(declare-fun lt!657342 () SeekEntryResult!12925)

(assert (=> b!1516359 (= lt!657342 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657345 (select (arr!48733 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516360 () Bool)

(declare-fun res!1036338 () Bool)

(assert (=> b!1516360 (=> (not res!1036338) (not e!846139))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1516360 (= res!1036338 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49284 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49284 a!2804))))))

(declare-fun b!1516361 () Bool)

(assert (=> b!1516361 (= e!846139 e!846141)))

(declare-fun res!1036328 () Bool)

(assert (=> b!1516361 (=> (not res!1036328) (not e!846141))))

(declare-fun lt!657346 () SeekEntryResult!12925)

(assert (=> b!1516361 (= res!1036328 (= lt!657343 lt!657346))))

(assert (=> b!1516361 (= lt!657346 (Intermediate!12925 false resIndex!21 resX!21))))

(assert (=> b!1516361 (= lt!657343 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48733 a!2804) j!70) mask!2512) (select (arr!48733 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516362 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101001 (_ BitVec 32)) SeekEntryResult!12925)

(assert (=> b!1516362 (= e!846143 (= (seekEntry!0 (select (arr!48733 a!2804) j!70) a!2804 mask!2512) (Found!12925 j!70)))))

(declare-fun b!1516363 () Bool)

(declare-fun res!1036329 () Bool)

(assert (=> b!1516363 (=> (not res!1036329) (not e!846141))))

(assert (=> b!1516363 (= res!1036329 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48733 a!2804) j!70) a!2804 mask!2512) lt!657346))))

(assert (= (and start!129232 res!1036333) b!1516351))

(assert (= (and b!1516351 res!1036337) b!1516355))

(assert (= (and b!1516355 res!1036335) b!1516353))

(assert (= (and b!1516353 res!1036327) b!1516357))

(assert (= (and b!1516357 res!1036330) b!1516354))

(assert (= (and b!1516354 res!1036332) b!1516360))

(assert (= (and b!1516360 res!1036338) b!1516361))

(assert (= (and b!1516361 res!1036328) b!1516363))

(assert (= (and b!1516363 res!1036329) b!1516356))

(assert (= (and b!1516356 res!1036336) b!1516352))

(assert (= (and b!1516352 res!1036334) b!1516362))

(assert (= (and b!1516352 (not res!1036331)) b!1516358))

(assert (= (and b!1516358 (not res!1036326)) b!1516359))

(declare-fun m!1399671 () Bool)

(assert (=> b!1516359 m!1399671))

(assert (=> b!1516359 m!1399671))

(declare-fun m!1399673 () Bool)

(assert (=> b!1516359 m!1399673))

(assert (=> b!1516361 m!1399671))

(assert (=> b!1516361 m!1399671))

(declare-fun m!1399675 () Bool)

(assert (=> b!1516361 m!1399675))

(assert (=> b!1516361 m!1399675))

(assert (=> b!1516361 m!1399671))

(declare-fun m!1399677 () Bool)

(assert (=> b!1516361 m!1399677))

(declare-fun m!1399679 () Bool)

(assert (=> b!1516354 m!1399679))

(declare-fun m!1399681 () Bool)

(assert (=> b!1516355 m!1399681))

(assert (=> b!1516355 m!1399681))

(declare-fun m!1399683 () Bool)

(assert (=> b!1516355 m!1399683))

(declare-fun m!1399685 () Bool)

(assert (=> b!1516356 m!1399685))

(declare-fun m!1399687 () Bool)

(assert (=> b!1516356 m!1399687))

(assert (=> b!1516356 m!1399687))

(declare-fun m!1399689 () Bool)

(assert (=> b!1516356 m!1399689))

(assert (=> b!1516356 m!1399689))

(assert (=> b!1516356 m!1399687))

(declare-fun m!1399691 () Bool)

(assert (=> b!1516356 m!1399691))

(declare-fun m!1399693 () Bool)

(assert (=> b!1516357 m!1399693))

(assert (=> b!1516363 m!1399671))

(assert (=> b!1516363 m!1399671))

(declare-fun m!1399695 () Bool)

(assert (=> b!1516363 m!1399695))

(assert (=> b!1516352 m!1399671))

(declare-fun m!1399697 () Bool)

(assert (=> b!1516352 m!1399697))

(assert (=> b!1516352 m!1399685))

(assert (=> b!1516352 m!1399687))

(declare-fun m!1399699 () Bool)

(assert (=> b!1516352 m!1399699))

(declare-fun m!1399701 () Bool)

(assert (=> start!129232 m!1399701))

(declare-fun m!1399703 () Bool)

(assert (=> start!129232 m!1399703))

(assert (=> b!1516353 m!1399671))

(assert (=> b!1516353 m!1399671))

(declare-fun m!1399705 () Bool)

(assert (=> b!1516353 m!1399705))

(assert (=> b!1516362 m!1399671))

(assert (=> b!1516362 m!1399671))

(declare-fun m!1399707 () Bool)

(assert (=> b!1516362 m!1399707))

(declare-fun m!1399709 () Bool)

(assert (=> b!1516358 m!1399709))

(push 1)

