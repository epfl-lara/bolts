; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126784 () Bool)

(assert start!126784)

(declare-fun b!1487720 () Bool)

(declare-fun e!833966 () Bool)

(declare-fun e!833956 () Bool)

(assert (=> b!1487720 (= e!833966 e!833956)))

(declare-fun res!1011805 () Bool)

(assert (=> b!1487720 (=> res!1011805 e!833956)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!648900 () (_ BitVec 32))

(declare-datatypes ((array!99537 0))(
  ( (array!99538 (arr!48037 (Array (_ BitVec 32) (_ BitVec 64))) (size!48588 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99537)

(assert (=> b!1487720 (= res!1011805 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!648900 #b00000000000000000000000000000000) (bvsge lt!648900 (size!48588 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1487720 (= lt!648900 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1487721 () Bool)

(declare-fun res!1011810 () Bool)

(declare-fun e!833960 () Bool)

(assert (=> b!1487721 (=> (not res!1011810) (not e!833960))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1487721 (= res!1011810 (and (= (size!48588 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48588 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48588 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1487722 () Bool)

(declare-fun e!833965 () Bool)

(declare-fun e!833962 () Bool)

(assert (=> b!1487722 (= e!833965 e!833962)))

(declare-fun res!1011802 () Bool)

(assert (=> b!1487722 (=> (not res!1011802) (not e!833962))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12300 0))(
  ( (MissingZero!12300 (index!51591 (_ BitVec 32))) (Found!12300 (index!51592 (_ BitVec 32))) (Intermediate!12300 (undefined!13112 Bool) (index!51593 (_ BitVec 32)) (x!133187 (_ BitVec 32))) (Undefined!12300) (MissingVacant!12300 (index!51594 (_ BitVec 32))) )
))
(declare-fun lt!648898 () SeekEntryResult!12300)

(assert (=> b!1487722 (= res!1011802 (= lt!648898 (Intermediate!12300 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!648902 () array!99537)

(declare-fun lt!648903 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99537 (_ BitVec 32)) SeekEntryResult!12300)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1487722 (= lt!648898 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648903 mask!2687) lt!648903 lt!648902 mask!2687))))

(assert (=> b!1487722 (= lt!648903 (select (store (arr!48037 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1487723 () Bool)

(declare-fun res!1011804 () Bool)

(assert (=> b!1487723 (=> (not res!1011804) (not e!833960))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99537 (_ BitVec 32)) Bool)

(assert (=> b!1487723 (= res!1011804 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1487724 () Bool)

(declare-fun res!1011812 () Bool)

(assert (=> b!1487724 (=> (not res!1011812) (not e!833960))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1487724 (= res!1011812 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48588 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48588 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48588 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1487725 () Bool)

(declare-fun res!1011798 () Bool)

(declare-fun e!833959 () Bool)

(assert (=> b!1487725 (=> (not res!1011798) (not e!833959))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99537 (_ BitVec 32)) SeekEntryResult!12300)

(assert (=> b!1487725 (= res!1011798 (= (seekEntryOrOpen!0 (select (arr!48037 a!2862) j!93) a!2862 mask!2687) (Found!12300 j!93)))))

(declare-fun b!1487726 () Bool)

(declare-fun res!1011801 () Bool)

(assert (=> b!1487726 (=> (not res!1011801) (not e!833962))))

(declare-fun e!833958 () Bool)

(assert (=> b!1487726 (= res!1011801 e!833958)))

(declare-fun c!137489 () Bool)

(assert (=> b!1487726 (= c!137489 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1487727 () Bool)

(declare-fun e!833963 () Bool)

(assert (=> b!1487727 (= e!833963 e!833965)))

(declare-fun res!1011808 () Bool)

(assert (=> b!1487727 (=> (not res!1011808) (not e!833965))))

(declare-fun lt!648901 () SeekEntryResult!12300)

(assert (=> b!1487727 (= res!1011808 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48037 a!2862) j!93) mask!2687) (select (arr!48037 a!2862) j!93) a!2862 mask!2687) lt!648901))))

(assert (=> b!1487727 (= lt!648901 (Intermediate!12300 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1487728 () Bool)

(declare-fun res!1011809 () Bool)

(assert (=> b!1487728 (=> (not res!1011809) (not e!833960))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1487728 (= res!1011809 (validKeyInArray!0 (select (arr!48037 a!2862) j!93)))))

(declare-fun b!1487729 () Bool)

(declare-fun res!1011799 () Bool)

(assert (=> b!1487729 (=> (not res!1011799) (not e!833960))))

(assert (=> b!1487729 (= res!1011799 (validKeyInArray!0 (select (arr!48037 a!2862) i!1006)))))

(declare-fun b!1487719 () Bool)

(declare-fun res!1011814 () Bool)

(assert (=> b!1487719 (=> (not res!1011814) (not e!833965))))

(assert (=> b!1487719 (= res!1011814 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48037 a!2862) j!93) a!2862 mask!2687) lt!648901))))

(declare-fun res!1011800 () Bool)

(assert (=> start!126784 (=> (not res!1011800) (not e!833960))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126784 (= res!1011800 (validMask!0 mask!2687))))

(assert (=> start!126784 e!833960))

(assert (=> start!126784 true))

(declare-fun array_inv!36982 (array!99537) Bool)

(assert (=> start!126784 (array_inv!36982 a!2862)))

(declare-fun b!1487730 () Bool)

(declare-fun e!833957 () Bool)

(declare-fun e!833964 () Bool)

(assert (=> b!1487730 (= e!833957 e!833964)))

(declare-fun res!1011797 () Bool)

(assert (=> b!1487730 (=> (not res!1011797) (not e!833964))))

(declare-fun lt!648897 () (_ BitVec 64))

(assert (=> b!1487730 (= res!1011797 (and (= index!646 intermediateAfterIndex!19) (= lt!648897 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1487731 () Bool)

(assert (=> b!1487731 (= e!833962 (not e!833966))))

(declare-fun res!1011806 () Bool)

(assert (=> b!1487731 (=> res!1011806 e!833966)))

(assert (=> b!1487731 (= res!1011806 (or (and (= (select (arr!48037 a!2862) index!646) (select (store (arr!48037 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48037 a!2862) index!646) (select (arr!48037 a!2862) j!93))) (= (select (arr!48037 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1487731 e!833959))

(declare-fun res!1011807 () Bool)

(assert (=> b!1487731 (=> (not res!1011807) (not e!833959))))

(assert (=> b!1487731 (= res!1011807 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49888 0))(
  ( (Unit!49889) )
))
(declare-fun lt!648899 () Unit!49888)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99537 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49888)

(assert (=> b!1487731 (= lt!648899 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1487732 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99537 (_ BitVec 32)) SeekEntryResult!12300)

(assert (=> b!1487732 (= e!833958 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648903 lt!648902 mask!2687) (seekEntryOrOpen!0 lt!648903 lt!648902 mask!2687)))))

(declare-fun b!1487733 () Bool)

(assert (=> b!1487733 (= e!833958 (= lt!648898 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648903 lt!648902 mask!2687)))))

(declare-fun b!1487734 () Bool)

(assert (=> b!1487734 (= e!833960 e!833963)))

(declare-fun res!1011815 () Bool)

(assert (=> b!1487734 (=> (not res!1011815) (not e!833963))))

(assert (=> b!1487734 (= res!1011815 (= (select (store (arr!48037 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1487734 (= lt!648902 (array!99538 (store (arr!48037 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48588 a!2862)))))

(declare-fun b!1487735 () Bool)

(assert (=> b!1487735 (= e!833959 e!833957)))

(declare-fun res!1011811 () Bool)

(assert (=> b!1487735 (=> res!1011811 e!833957)))

(assert (=> b!1487735 (= res!1011811 (or (and (= (select (arr!48037 a!2862) index!646) lt!648897) (= (select (arr!48037 a!2862) index!646) (select (arr!48037 a!2862) j!93))) (= (select (arr!48037 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1487735 (= lt!648897 (select (store (arr!48037 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1487736 () Bool)

(declare-fun res!1011803 () Bool)

(assert (=> b!1487736 (=> (not res!1011803) (not e!833959))))

(assert (=> b!1487736 (= res!1011803 (or (= (select (arr!48037 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48037 a!2862) intermediateBeforeIndex!19) (select (arr!48037 a!2862) j!93))))))

(declare-fun b!1487737 () Bool)

(assert (=> b!1487737 (= e!833964 (= (seekEntryOrOpen!0 lt!648903 lt!648902 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648903 lt!648902 mask!2687)))))

(declare-fun b!1487738 () Bool)

(assert (=> b!1487738 (= e!833956 true)))

(declare-fun lt!648904 () SeekEntryResult!12300)

(assert (=> b!1487738 (= lt!648904 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!648900 (select (arr!48037 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1487739 () Bool)

(declare-fun res!1011813 () Bool)

(assert (=> b!1487739 (=> (not res!1011813) (not e!833960))))

(declare-datatypes ((List!34718 0))(
  ( (Nil!34715) (Cons!34714 (h!36094 (_ BitVec 64)) (t!49419 List!34718)) )
))
(declare-fun arrayNoDuplicates!0 (array!99537 (_ BitVec 32) List!34718) Bool)

(assert (=> b!1487739 (= res!1011813 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34715))))

(declare-fun b!1487740 () Bool)

(declare-fun res!1011816 () Bool)

(assert (=> b!1487740 (=> (not res!1011816) (not e!833962))))

(assert (=> b!1487740 (= res!1011816 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!126784 res!1011800) b!1487721))

(assert (= (and b!1487721 res!1011810) b!1487729))

(assert (= (and b!1487729 res!1011799) b!1487728))

(assert (= (and b!1487728 res!1011809) b!1487723))

(assert (= (and b!1487723 res!1011804) b!1487739))

(assert (= (and b!1487739 res!1011813) b!1487724))

(assert (= (and b!1487724 res!1011812) b!1487734))

(assert (= (and b!1487734 res!1011815) b!1487727))

(assert (= (and b!1487727 res!1011808) b!1487719))

(assert (= (and b!1487719 res!1011814) b!1487722))

(assert (= (and b!1487722 res!1011802) b!1487726))

(assert (= (and b!1487726 c!137489) b!1487733))

(assert (= (and b!1487726 (not c!137489)) b!1487732))

(assert (= (and b!1487726 res!1011801) b!1487740))

(assert (= (and b!1487740 res!1011816) b!1487731))

(assert (= (and b!1487731 res!1011807) b!1487725))

(assert (= (and b!1487725 res!1011798) b!1487736))

(assert (= (and b!1487736 res!1011803) b!1487735))

(assert (= (and b!1487735 (not res!1011811)) b!1487730))

(assert (= (and b!1487730 res!1011797) b!1487737))

(assert (= (and b!1487731 (not res!1011806)) b!1487720))

(assert (= (and b!1487720 (not res!1011805)) b!1487738))

(declare-fun m!1372335 () Bool)

(assert (=> b!1487731 m!1372335))

(declare-fun m!1372337 () Bool)

(assert (=> b!1487731 m!1372337))

(declare-fun m!1372339 () Bool)

(assert (=> b!1487731 m!1372339))

(declare-fun m!1372341 () Bool)

(assert (=> b!1487731 m!1372341))

(declare-fun m!1372343 () Bool)

(assert (=> b!1487731 m!1372343))

(declare-fun m!1372345 () Bool)

(assert (=> b!1487731 m!1372345))

(declare-fun m!1372347 () Bool)

(assert (=> b!1487723 m!1372347))

(assert (=> b!1487735 m!1372341))

(assert (=> b!1487735 m!1372345))

(assert (=> b!1487735 m!1372337))

(assert (=> b!1487735 m!1372339))

(assert (=> b!1487725 m!1372345))

(assert (=> b!1487725 m!1372345))

(declare-fun m!1372349 () Bool)

(assert (=> b!1487725 m!1372349))

(assert (=> b!1487738 m!1372345))

(assert (=> b!1487738 m!1372345))

(declare-fun m!1372351 () Bool)

(assert (=> b!1487738 m!1372351))

(declare-fun m!1372353 () Bool)

(assert (=> b!1487732 m!1372353))

(declare-fun m!1372355 () Bool)

(assert (=> b!1487732 m!1372355))

(assert (=> b!1487727 m!1372345))

(assert (=> b!1487727 m!1372345))

(declare-fun m!1372357 () Bool)

(assert (=> b!1487727 m!1372357))

(assert (=> b!1487727 m!1372357))

(assert (=> b!1487727 m!1372345))

(declare-fun m!1372359 () Bool)

(assert (=> b!1487727 m!1372359))

(declare-fun m!1372361 () Bool)

(assert (=> b!1487722 m!1372361))

(assert (=> b!1487722 m!1372361))

(declare-fun m!1372363 () Bool)

(assert (=> b!1487722 m!1372363))

(assert (=> b!1487722 m!1372337))

(declare-fun m!1372365 () Bool)

(assert (=> b!1487722 m!1372365))

(declare-fun m!1372367 () Bool)

(assert (=> b!1487739 m!1372367))

(assert (=> b!1487728 m!1372345))

(assert (=> b!1487728 m!1372345))

(declare-fun m!1372369 () Bool)

(assert (=> b!1487728 m!1372369))

(declare-fun m!1372371 () Bool)

(assert (=> start!126784 m!1372371))

(declare-fun m!1372373 () Bool)

(assert (=> start!126784 m!1372373))

(declare-fun m!1372375 () Bool)

(assert (=> b!1487729 m!1372375))

(assert (=> b!1487729 m!1372375))

(declare-fun m!1372377 () Bool)

(assert (=> b!1487729 m!1372377))

(assert (=> b!1487737 m!1372355))

(assert (=> b!1487737 m!1372353))

(assert (=> b!1487719 m!1372345))

(assert (=> b!1487719 m!1372345))

(declare-fun m!1372379 () Bool)

(assert (=> b!1487719 m!1372379))

(declare-fun m!1372381 () Bool)

(assert (=> b!1487733 m!1372381))

(assert (=> b!1487734 m!1372337))

(declare-fun m!1372383 () Bool)

(assert (=> b!1487734 m!1372383))

(declare-fun m!1372385 () Bool)

(assert (=> b!1487736 m!1372385))

(assert (=> b!1487736 m!1372345))

(declare-fun m!1372387 () Bool)

(assert (=> b!1487720 m!1372387))

(push 1)

