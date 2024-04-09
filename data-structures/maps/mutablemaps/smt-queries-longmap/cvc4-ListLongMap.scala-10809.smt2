; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126548 () Bool)

(assert start!126548)

(declare-fun b!1483643 () Bool)

(declare-fun res!1008604 () Bool)

(declare-fun e!831922 () Bool)

(assert (=> b!1483643 (=> (not res!1008604) (not e!831922))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99427 0))(
  ( (array!99428 (arr!47985 (Array (_ BitVec 32) (_ BitVec 64))) (size!48536 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99427)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1483643 (= res!1008604 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48536 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48536 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48536 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1483644 () Bool)

(declare-fun e!831920 () Bool)

(declare-fun e!831924 () Bool)

(assert (=> b!1483644 (= e!831920 (not e!831924))))

(declare-fun res!1008603 () Bool)

(assert (=> b!1483644 (=> res!1008603 e!831924)))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1483644 (= res!1008603 (or (and (= (select (arr!47985 a!2862) index!646) (select (store (arr!47985 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47985 a!2862) index!646) (select (arr!47985 a!2862) j!93))) (= (select (arr!47985 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!831927 () Bool)

(assert (=> b!1483644 e!831927))

(declare-fun res!1008612 () Bool)

(assert (=> b!1483644 (=> (not res!1008612) (not e!831927))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99427 (_ BitVec 32)) Bool)

(assert (=> b!1483644 (= res!1008612 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49784 0))(
  ( (Unit!49785) )
))
(declare-fun lt!647463 () Unit!49784)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99427 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49784)

(assert (=> b!1483644 (= lt!647463 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1483645 () Bool)

(declare-fun res!1008615 () Bool)

(assert (=> b!1483645 (=> (not res!1008615) (not e!831922))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1483645 (= res!1008615 (validKeyInArray!0 (select (arr!47985 a!2862) i!1006)))))

(declare-fun b!1483646 () Bool)

(declare-fun res!1008607 () Bool)

(assert (=> b!1483646 (=> (not res!1008607) (not e!831920))))

(declare-fun e!831929 () Bool)

(assert (=> b!1483646 (= res!1008607 e!831929)))

(declare-fun c!137048 () Bool)

(assert (=> b!1483646 (= c!137048 (bvsle x!665 intermediateAfterX!19))))

(declare-fun lt!647464 () array!99427)

(declare-fun lt!647461 () (_ BitVec 64))

(declare-fun b!1483647 () Bool)

(declare-fun e!831921 () Bool)

(declare-datatypes ((SeekEntryResult!12248 0))(
  ( (MissingZero!12248 (index!51383 (_ BitVec 32))) (Found!12248 (index!51384 (_ BitVec 32))) (Intermediate!12248 (undefined!13060 Bool) (index!51385 (_ BitVec 32)) (x!132967 (_ BitVec 32))) (Undefined!12248) (MissingVacant!12248 (index!51386 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99427 (_ BitVec 32)) SeekEntryResult!12248)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99427 (_ BitVec 32)) SeekEntryResult!12248)

(assert (=> b!1483647 (= e!831921 (= (seekEntryOrOpen!0 lt!647461 lt!647464 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647461 lt!647464 mask!2687)))))

(declare-fun b!1483648 () Bool)

(declare-fun e!831923 () Bool)

(declare-fun e!831926 () Bool)

(assert (=> b!1483648 (= e!831923 e!831926)))

(declare-fun res!1008610 () Bool)

(assert (=> b!1483648 (=> (not res!1008610) (not e!831926))))

(declare-fun lt!647462 () SeekEntryResult!12248)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99427 (_ BitVec 32)) SeekEntryResult!12248)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483648 (= res!1008610 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47985 a!2862) j!93) mask!2687) (select (arr!47985 a!2862) j!93) a!2862 mask!2687) lt!647462))))

(assert (=> b!1483648 (= lt!647462 (Intermediate!12248 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1483649 () Bool)

(declare-fun res!1008614 () Bool)

(assert (=> b!1483649 (=> (not res!1008614) (not e!831922))))

(assert (=> b!1483649 (= res!1008614 (validKeyInArray!0 (select (arr!47985 a!2862) j!93)))))

(declare-fun b!1483650 () Bool)

(declare-fun res!1008598 () Bool)

(assert (=> b!1483650 (=> (not res!1008598) (not e!831922))))

(declare-datatypes ((List!34666 0))(
  ( (Nil!34663) (Cons!34662 (h!36036 (_ BitVec 64)) (t!49367 List!34666)) )
))
(declare-fun arrayNoDuplicates!0 (array!99427 (_ BitVec 32) List!34666) Bool)

(assert (=> b!1483650 (= res!1008598 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34663))))

(declare-fun b!1483651 () Bool)

(declare-fun res!1008600 () Bool)

(assert (=> b!1483651 (=> (not res!1008600) (not e!831922))))

(assert (=> b!1483651 (= res!1008600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun lt!647467 () SeekEntryResult!12248)

(declare-fun b!1483652 () Bool)

(assert (=> b!1483652 (= e!831929 (= lt!647467 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647461 lt!647464 mask!2687)))))

(declare-fun b!1483653 () Bool)

(declare-fun res!1008605 () Bool)

(assert (=> b!1483653 (=> (not res!1008605) (not e!831927))))

(assert (=> b!1483653 (= res!1008605 (= (seekEntryOrOpen!0 (select (arr!47985 a!2862) j!93) a!2862 mask!2687) (Found!12248 j!93)))))

(declare-fun b!1483654 () Bool)

(declare-fun e!831925 () Bool)

(assert (=> b!1483654 (= e!831925 e!831921)))

(declare-fun res!1008602 () Bool)

(assert (=> b!1483654 (=> (not res!1008602) (not e!831921))))

(declare-fun lt!647466 () (_ BitVec 64))

(assert (=> b!1483654 (= res!1008602 (and (= index!646 intermediateAfterIndex!19) (= lt!647466 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1483655 () Bool)

(assert (=> b!1483655 (= e!831922 e!831923)))

(declare-fun res!1008609 () Bool)

(assert (=> b!1483655 (=> (not res!1008609) (not e!831923))))

(assert (=> b!1483655 (= res!1008609 (= (select (store (arr!47985 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1483655 (= lt!647464 (array!99428 (store (arr!47985 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48536 a!2862)))))

(declare-fun b!1483656 () Bool)

(assert (=> b!1483656 (= e!831927 e!831925)))

(declare-fun res!1008597 () Bool)

(assert (=> b!1483656 (=> res!1008597 e!831925)))

(assert (=> b!1483656 (= res!1008597 (or (and (= (select (arr!47985 a!2862) index!646) lt!647466) (= (select (arr!47985 a!2862) index!646) (select (arr!47985 a!2862) j!93))) (= (select (arr!47985 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1483656 (= lt!647466 (select (store (arr!47985 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1483657 () Bool)

(assert (=> b!1483657 (= e!831924 true)))

(declare-fun lt!647465 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483657 (= lt!647465 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun res!1008606 () Bool)

(assert (=> start!126548 (=> (not res!1008606) (not e!831922))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126548 (= res!1008606 (validMask!0 mask!2687))))

(assert (=> start!126548 e!831922))

(assert (=> start!126548 true))

(declare-fun array_inv!36930 (array!99427) Bool)

(assert (=> start!126548 (array_inv!36930 a!2862)))

(declare-fun b!1483658 () Bool)

(declare-fun res!1008601 () Bool)

(assert (=> b!1483658 (=> (not res!1008601) (not e!831920))))

(assert (=> b!1483658 (= res!1008601 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1483659 () Bool)

(declare-fun res!1008608 () Bool)

(assert (=> b!1483659 (=> (not res!1008608) (not e!831926))))

(assert (=> b!1483659 (= res!1008608 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47985 a!2862) j!93) a!2862 mask!2687) lt!647462))))

(declare-fun b!1483660 () Bool)

(declare-fun res!1008613 () Bool)

(assert (=> b!1483660 (=> (not res!1008613) (not e!831927))))

(assert (=> b!1483660 (= res!1008613 (or (= (select (arr!47985 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47985 a!2862) intermediateBeforeIndex!19) (select (arr!47985 a!2862) j!93))))))

(declare-fun b!1483661 () Bool)

(assert (=> b!1483661 (= e!831929 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647461 lt!647464 mask!2687) (seekEntryOrOpen!0 lt!647461 lt!647464 mask!2687)))))

(declare-fun b!1483662 () Bool)

(assert (=> b!1483662 (= e!831926 e!831920)))

(declare-fun res!1008599 () Bool)

(assert (=> b!1483662 (=> (not res!1008599) (not e!831920))))

(assert (=> b!1483662 (= res!1008599 (= lt!647467 (Intermediate!12248 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1483662 (= lt!647467 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647461 mask!2687) lt!647461 lt!647464 mask!2687))))

(assert (=> b!1483662 (= lt!647461 (select (store (arr!47985 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1483663 () Bool)

(declare-fun res!1008611 () Bool)

(assert (=> b!1483663 (=> (not res!1008611) (not e!831922))))

(assert (=> b!1483663 (= res!1008611 (and (= (size!48536 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48536 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48536 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!126548 res!1008606) b!1483663))

(assert (= (and b!1483663 res!1008611) b!1483645))

(assert (= (and b!1483645 res!1008615) b!1483649))

(assert (= (and b!1483649 res!1008614) b!1483651))

(assert (= (and b!1483651 res!1008600) b!1483650))

(assert (= (and b!1483650 res!1008598) b!1483643))

(assert (= (and b!1483643 res!1008604) b!1483655))

(assert (= (and b!1483655 res!1008609) b!1483648))

(assert (= (and b!1483648 res!1008610) b!1483659))

(assert (= (and b!1483659 res!1008608) b!1483662))

(assert (= (and b!1483662 res!1008599) b!1483646))

(assert (= (and b!1483646 c!137048) b!1483652))

(assert (= (and b!1483646 (not c!137048)) b!1483661))

(assert (= (and b!1483646 res!1008607) b!1483658))

(assert (= (and b!1483658 res!1008601) b!1483644))

(assert (= (and b!1483644 res!1008612) b!1483653))

(assert (= (and b!1483653 res!1008605) b!1483660))

(assert (= (and b!1483660 res!1008613) b!1483656))

(assert (= (and b!1483656 (not res!1008597)) b!1483654))

(assert (= (and b!1483654 res!1008602) b!1483647))

(assert (= (and b!1483644 (not res!1008603)) b!1483657))

(declare-fun m!1369133 () Bool)

(assert (=> b!1483651 m!1369133))

(declare-fun m!1369135 () Bool)

(assert (=> b!1483656 m!1369135))

(declare-fun m!1369137 () Bool)

(assert (=> b!1483656 m!1369137))

(declare-fun m!1369139 () Bool)

(assert (=> b!1483656 m!1369139))

(declare-fun m!1369141 () Bool)

(assert (=> b!1483656 m!1369141))

(declare-fun m!1369143 () Bool)

(assert (=> b!1483647 m!1369143))

(declare-fun m!1369145 () Bool)

(assert (=> b!1483647 m!1369145))

(assert (=> b!1483659 m!1369137))

(assert (=> b!1483659 m!1369137))

(declare-fun m!1369147 () Bool)

(assert (=> b!1483659 m!1369147))

(assert (=> b!1483653 m!1369137))

(assert (=> b!1483653 m!1369137))

(declare-fun m!1369149 () Bool)

(assert (=> b!1483653 m!1369149))

(assert (=> b!1483661 m!1369145))

(assert (=> b!1483661 m!1369143))

(declare-fun m!1369151 () Bool)

(assert (=> b!1483650 m!1369151))

(declare-fun m!1369153 () Bool)

(assert (=> b!1483645 m!1369153))

(assert (=> b!1483645 m!1369153))

(declare-fun m!1369155 () Bool)

(assert (=> b!1483645 m!1369155))

(declare-fun m!1369157 () Bool)

(assert (=> b!1483644 m!1369157))

(assert (=> b!1483644 m!1369139))

(assert (=> b!1483644 m!1369141))

(assert (=> b!1483644 m!1369135))

(declare-fun m!1369159 () Bool)

(assert (=> b!1483644 m!1369159))

(assert (=> b!1483644 m!1369137))

(assert (=> b!1483648 m!1369137))

(assert (=> b!1483648 m!1369137))

(declare-fun m!1369161 () Bool)

(assert (=> b!1483648 m!1369161))

(assert (=> b!1483648 m!1369161))

(assert (=> b!1483648 m!1369137))

(declare-fun m!1369163 () Bool)

(assert (=> b!1483648 m!1369163))

(declare-fun m!1369165 () Bool)

(assert (=> b!1483652 m!1369165))

(declare-fun m!1369167 () Bool)

(assert (=> start!126548 m!1369167))

(declare-fun m!1369169 () Bool)

(assert (=> start!126548 m!1369169))

(declare-fun m!1369171 () Bool)

(assert (=> b!1483662 m!1369171))

(assert (=> b!1483662 m!1369171))

(declare-fun m!1369173 () Bool)

(assert (=> b!1483662 m!1369173))

(assert (=> b!1483662 m!1369139))

(declare-fun m!1369175 () Bool)

(assert (=> b!1483662 m!1369175))

(assert (=> b!1483649 m!1369137))

(assert (=> b!1483649 m!1369137))

(declare-fun m!1369177 () Bool)

(assert (=> b!1483649 m!1369177))

(declare-fun m!1369179 () Bool)

(assert (=> b!1483660 m!1369179))

(assert (=> b!1483660 m!1369137))

(declare-fun m!1369181 () Bool)

(assert (=> b!1483657 m!1369181))

(assert (=> b!1483655 m!1369139))

(declare-fun m!1369183 () Bool)

(assert (=> b!1483655 m!1369183))

(push 1)

