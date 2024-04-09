; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126614 () Bool)

(assert start!126614)

(declare-fun b!1485722 () Bool)

(declare-fun res!1010496 () Bool)

(declare-fun e!832913 () Bool)

(assert (=> b!1485722 (=> (not res!1010496) (not e!832913))))

(declare-datatypes ((array!99493 0))(
  ( (array!99494 (arr!48018 (Array (_ BitVec 32) (_ BitVec 64))) (size!48569 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99493)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12281 0))(
  ( (MissingZero!12281 (index!51515 (_ BitVec 32))) (Found!12281 (index!51516 (_ BitVec 32))) (Intermediate!12281 (undefined!13093 Bool) (index!51517 (_ BitVec 32)) (x!133088 (_ BitVec 32))) (Undefined!12281) (MissingVacant!12281 (index!51518 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99493 (_ BitVec 32)) SeekEntryResult!12281)

(assert (=> b!1485722 (= res!1010496 (= (seekEntryOrOpen!0 (select (arr!48018 a!2862) j!93) a!2862 mask!2687) (Found!12281 j!93)))))

(declare-fun b!1485724 () Bool)

(declare-fun res!1010491 () Bool)

(declare-fun e!832918 () Bool)

(assert (=> b!1485724 (=> (not res!1010491) (not e!832918))))

(declare-fun e!832917 () Bool)

(assert (=> b!1485724 (= res!1010491 e!832917)))

(declare-fun c!137147 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1485724 (= c!137147 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1485725 () Bool)

(declare-fun e!832912 () Bool)

(assert (=> b!1485725 (= e!832913 e!832912)))

(declare-fun res!1010493 () Bool)

(assert (=> b!1485725 (=> res!1010493 e!832912)))

(declare-fun lt!648155 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1485725 (= res!1010493 (or (and (= (select (arr!48018 a!2862) index!646) lt!648155) (= (select (arr!48018 a!2862) index!646) (select (arr!48018 a!2862) j!93))) (= (select (arr!48018 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1485725 (= lt!648155 (select (store (arr!48018 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1485726 () Bool)

(declare-fun res!1010487 () Bool)

(declare-fun e!832919 () Bool)

(assert (=> b!1485726 (=> (not res!1010487) (not e!832919))))

(declare-datatypes ((List!34699 0))(
  ( (Nil!34696) (Cons!34695 (h!36069 (_ BitVec 64)) (t!49400 List!34699)) )
))
(declare-fun arrayNoDuplicates!0 (array!99493 (_ BitVec 32) List!34699) Bool)

(assert (=> b!1485726 (= res!1010487 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34696))))

(declare-fun b!1485727 () Bool)

(declare-fun lt!648160 () (_ BitVec 32))

(declare-fun e!832915 () Bool)

(assert (=> b!1485727 (= e!832915 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (and (bvsge lt!648160 #b00000000000000000000000000000000) (bvslt lt!648160 (size!48569 a!2862)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1485727 (= lt!648160 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1485728 () Bool)

(declare-fun res!1010494 () Bool)

(assert (=> b!1485728 (=> (not res!1010494) (not e!832919))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1485728 (= res!1010494 (validKeyInArray!0 (select (arr!48018 a!2862) i!1006)))))

(declare-fun b!1485729 () Bool)

(declare-fun e!832911 () Bool)

(assert (=> b!1485729 (= e!832911 e!832918)))

(declare-fun res!1010483 () Bool)

(assert (=> b!1485729 (=> (not res!1010483) (not e!832918))))

(declare-fun lt!648159 () SeekEntryResult!12281)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1485729 (= res!1010483 (= lt!648159 (Intermediate!12281 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!648154 () (_ BitVec 64))

(declare-fun lt!648158 () array!99493)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99493 (_ BitVec 32)) SeekEntryResult!12281)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1485729 (= lt!648159 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648154 mask!2687) lt!648154 lt!648158 mask!2687))))

(assert (=> b!1485729 (= lt!648154 (select (store (arr!48018 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1485730 () Bool)

(declare-fun e!832914 () Bool)

(assert (=> b!1485730 (= e!832919 e!832914)))

(declare-fun res!1010488 () Bool)

(assert (=> b!1485730 (=> (not res!1010488) (not e!832914))))

(assert (=> b!1485730 (= res!1010488 (= (select (store (arr!48018 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1485730 (= lt!648158 (array!99494 (store (arr!48018 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48569 a!2862)))))

(declare-fun b!1485731 () Bool)

(declare-fun e!832916 () Bool)

(assert (=> b!1485731 (= e!832912 e!832916)))

(declare-fun res!1010482 () Bool)

(assert (=> b!1485731 (=> (not res!1010482) (not e!832916))))

(assert (=> b!1485731 (= res!1010482 (and (= index!646 intermediateAfterIndex!19) (= lt!648155 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1485732 () Bool)

(declare-fun res!1010480 () Bool)

(assert (=> b!1485732 (=> (not res!1010480) (not e!832919))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99493 (_ BitVec 32)) Bool)

(assert (=> b!1485732 (= res!1010480 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1485733 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99493 (_ BitVec 32)) SeekEntryResult!12281)

(assert (=> b!1485733 (= e!832917 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648154 lt!648158 mask!2687) (seekEntryOrOpen!0 lt!648154 lt!648158 mask!2687)))))

(declare-fun b!1485734 () Bool)

(declare-fun res!1010484 () Bool)

(assert (=> b!1485734 (=> (not res!1010484) (not e!832911))))

(declare-fun lt!648156 () SeekEntryResult!12281)

(assert (=> b!1485734 (= res!1010484 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48018 a!2862) j!93) a!2862 mask!2687) lt!648156))))

(declare-fun b!1485735 () Bool)

(declare-fun res!1010481 () Bool)

(assert (=> b!1485735 (=> (not res!1010481) (not e!832919))))

(assert (=> b!1485735 (= res!1010481 (validKeyInArray!0 (select (arr!48018 a!2862) j!93)))))

(declare-fun b!1485736 () Bool)

(assert (=> b!1485736 (= e!832916 (= (seekEntryOrOpen!0 lt!648154 lt!648158 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648154 lt!648158 mask!2687)))))

(declare-fun b!1485737 () Bool)

(assert (=> b!1485737 (= e!832914 e!832911)))

(declare-fun res!1010489 () Bool)

(assert (=> b!1485737 (=> (not res!1010489) (not e!832911))))

(assert (=> b!1485737 (= res!1010489 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48018 a!2862) j!93) mask!2687) (select (arr!48018 a!2862) j!93) a!2862 mask!2687) lt!648156))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1485737 (= lt!648156 (Intermediate!12281 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1485723 () Bool)

(declare-fun res!1010495 () Bool)

(assert (=> b!1485723 (=> (not res!1010495) (not e!832919))))

(assert (=> b!1485723 (= res!1010495 (and (= (size!48569 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48569 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48569 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!1010486 () Bool)

(assert (=> start!126614 (=> (not res!1010486) (not e!832919))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126614 (= res!1010486 (validMask!0 mask!2687))))

(assert (=> start!126614 e!832919))

(assert (=> start!126614 true))

(declare-fun array_inv!36963 (array!99493) Bool)

(assert (=> start!126614 (array_inv!36963 a!2862)))

(declare-fun b!1485738 () Bool)

(assert (=> b!1485738 (= e!832917 (= lt!648159 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648154 lt!648158 mask!2687)))))

(declare-fun b!1485739 () Bool)

(declare-fun res!1010490 () Bool)

(assert (=> b!1485739 (=> (not res!1010490) (not e!832918))))

(assert (=> b!1485739 (= res!1010490 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1485740 () Bool)

(declare-fun res!1010492 () Bool)

(assert (=> b!1485740 (=> (not res!1010492) (not e!832919))))

(assert (=> b!1485740 (= res!1010492 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48569 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48569 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48569 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1485741 () Bool)

(declare-fun res!1010478 () Bool)

(assert (=> b!1485741 (=> (not res!1010478) (not e!832913))))

(assert (=> b!1485741 (= res!1010478 (or (= (select (arr!48018 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48018 a!2862) intermediateBeforeIndex!19) (select (arr!48018 a!2862) j!93))))))

(declare-fun b!1485742 () Bool)

(assert (=> b!1485742 (= e!832918 (not e!832915))))

(declare-fun res!1010479 () Bool)

(assert (=> b!1485742 (=> res!1010479 e!832915)))

(assert (=> b!1485742 (= res!1010479 (or (and (= (select (arr!48018 a!2862) index!646) (select (store (arr!48018 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48018 a!2862) index!646) (select (arr!48018 a!2862) j!93))) (= (select (arr!48018 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1485742 e!832913))

(declare-fun res!1010485 () Bool)

(assert (=> b!1485742 (=> (not res!1010485) (not e!832913))))

(assert (=> b!1485742 (= res!1010485 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49850 0))(
  ( (Unit!49851) )
))
(declare-fun lt!648157 () Unit!49850)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99493 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49850)

(assert (=> b!1485742 (= lt!648157 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!126614 res!1010486) b!1485723))

(assert (= (and b!1485723 res!1010495) b!1485728))

(assert (= (and b!1485728 res!1010494) b!1485735))

(assert (= (and b!1485735 res!1010481) b!1485732))

(assert (= (and b!1485732 res!1010480) b!1485726))

(assert (= (and b!1485726 res!1010487) b!1485740))

(assert (= (and b!1485740 res!1010492) b!1485730))

(assert (= (and b!1485730 res!1010488) b!1485737))

(assert (= (and b!1485737 res!1010489) b!1485734))

(assert (= (and b!1485734 res!1010484) b!1485729))

(assert (= (and b!1485729 res!1010483) b!1485724))

(assert (= (and b!1485724 c!137147) b!1485738))

(assert (= (and b!1485724 (not c!137147)) b!1485733))

(assert (= (and b!1485724 res!1010491) b!1485739))

(assert (= (and b!1485739 res!1010490) b!1485742))

(assert (= (and b!1485742 res!1010485) b!1485722))

(assert (= (and b!1485722 res!1010496) b!1485741))

(assert (= (and b!1485741 res!1010478) b!1485725))

(assert (= (and b!1485725 (not res!1010493)) b!1485731))

(assert (= (and b!1485731 res!1010482) b!1485736))

(assert (= (and b!1485742 (not res!1010479)) b!1485727))

(declare-fun m!1370849 () Bool)

(assert (=> start!126614 m!1370849))

(declare-fun m!1370851 () Bool)

(assert (=> start!126614 m!1370851))

(declare-fun m!1370853 () Bool)

(assert (=> b!1485734 m!1370853))

(assert (=> b!1485734 m!1370853))

(declare-fun m!1370855 () Bool)

(assert (=> b!1485734 m!1370855))

(declare-fun m!1370857 () Bool)

(assert (=> b!1485733 m!1370857))

(declare-fun m!1370859 () Bool)

(assert (=> b!1485733 m!1370859))

(assert (=> b!1485736 m!1370859))

(assert (=> b!1485736 m!1370857))

(declare-fun m!1370861 () Bool)

(assert (=> b!1485728 m!1370861))

(assert (=> b!1485728 m!1370861))

(declare-fun m!1370863 () Bool)

(assert (=> b!1485728 m!1370863))

(declare-fun m!1370865 () Bool)

(assert (=> b!1485741 m!1370865))

(assert (=> b!1485741 m!1370853))

(declare-fun m!1370867 () Bool)

(assert (=> b!1485742 m!1370867))

(declare-fun m!1370869 () Bool)

(assert (=> b!1485742 m!1370869))

(declare-fun m!1370871 () Bool)

(assert (=> b!1485742 m!1370871))

(declare-fun m!1370873 () Bool)

(assert (=> b!1485742 m!1370873))

(declare-fun m!1370875 () Bool)

(assert (=> b!1485742 m!1370875))

(assert (=> b!1485742 m!1370853))

(declare-fun m!1370877 () Bool)

(assert (=> b!1485738 m!1370877))

(declare-fun m!1370879 () Bool)

(assert (=> b!1485729 m!1370879))

(assert (=> b!1485729 m!1370879))

(declare-fun m!1370881 () Bool)

(assert (=> b!1485729 m!1370881))

(assert (=> b!1485729 m!1370869))

(declare-fun m!1370883 () Bool)

(assert (=> b!1485729 m!1370883))

(declare-fun m!1370885 () Bool)

(assert (=> b!1485727 m!1370885))

(assert (=> b!1485730 m!1370869))

(declare-fun m!1370887 () Bool)

(assert (=> b!1485730 m!1370887))

(declare-fun m!1370889 () Bool)

(assert (=> b!1485732 m!1370889))

(assert (=> b!1485735 m!1370853))

(assert (=> b!1485735 m!1370853))

(declare-fun m!1370891 () Bool)

(assert (=> b!1485735 m!1370891))

(assert (=> b!1485737 m!1370853))

(assert (=> b!1485737 m!1370853))

(declare-fun m!1370893 () Bool)

(assert (=> b!1485737 m!1370893))

(assert (=> b!1485737 m!1370893))

(assert (=> b!1485737 m!1370853))

(declare-fun m!1370895 () Bool)

(assert (=> b!1485737 m!1370895))

(assert (=> b!1485722 m!1370853))

(assert (=> b!1485722 m!1370853))

(declare-fun m!1370897 () Bool)

(assert (=> b!1485722 m!1370897))

(declare-fun m!1370899 () Bool)

(assert (=> b!1485726 m!1370899))

(assert (=> b!1485725 m!1370873))

(assert (=> b!1485725 m!1370853))

(assert (=> b!1485725 m!1370869))

(assert (=> b!1485725 m!1370871))

(push 1)

(assert (not b!1485737))

(assert (not b!1485742))

(assert (not b!1485735))

(assert (not b!1485729))

(assert (not b!1485732))

(assert (not start!126614))

(assert (not b!1485738))

(assert (not b!1485734))

(assert (not b!1485736))

(assert (not b!1485728))

(assert (not b!1485727))

(assert (not b!1485726))

(assert (not b!1485722))

(assert (not b!1485733))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1485930 () Bool)

(declare-fun lt!648245 () SeekEntryResult!12281)

(assert (=> b!1485930 (and (bvsge (index!51517 lt!648245) #b00000000000000000000000000000000) (bvslt (index!51517 lt!648245) (size!48569 lt!648158)))))

(declare-fun e!833026 () Bool)

(assert (=> b!1485930 (= e!833026 (= (select (arr!48018 lt!648158) (index!51517 lt!648245)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1485932 () Bool)

(assert (=> b!1485932 (and (bvsge (index!51517 lt!648245) #b00000000000000000000000000000000) (bvslt (index!51517 lt!648245) (size!48569 lt!648158)))))

(declare-fun res!1010539 () Bool)

(assert (=> b!1485932 (= res!1010539 (= (select (arr!48018 lt!648158) (index!51517 lt!648245)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1485932 (=> res!1010539 e!833026)))

(declare-fun b!1485933 () Bool)

(declare-fun e!833029 () SeekEntryResult!12281)

(declare-fun e!833028 () SeekEntryResult!12281)

(assert (=> b!1485933 (= e!833029 e!833028)))

(declare-fun c!137223 () Bool)

(declare-fun lt!648246 () (_ BitVec 64))

(assert (=> b!1485933 (= c!137223 (or (= lt!648246 lt!648154) (= (bvadd lt!648246 lt!648246) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1485934 () Bool)

(assert (=> b!1485934 (= e!833028 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!648154 lt!648158 mask!2687))))

(declare-fun b!1485935 () Bool)

(declare-fun e!833027 () Bool)

(declare-fun e!833025 () Bool)

(assert (=> b!1485935 (= e!833027 e!833025)))

(declare-fun res!1010541 () Bool)

(assert (=> b!1485935 (= res!1010541 (and (is-Intermediate!12281 lt!648245) (not (undefined!13093 lt!648245)) (bvslt (x!133088 lt!648245) #b01111111111111111111111111111110) (bvsge (x!133088 lt!648245) #b00000000000000000000000000000000) (bvsge (x!133088 lt!648245) x!665)))))

(assert (=> b!1485935 (=> (not res!1010541) (not e!833025))))

(declare-fun b!1485936 () Bool)

(assert (=> b!1485936 (= e!833028 (Intermediate!12281 false index!646 x!665))))

(declare-fun b!1485937 () Bool)

(assert (=> b!1485937 (and (bvsge (index!51517 lt!648245) #b00000000000000000000000000000000) (bvslt (index!51517 lt!648245) (size!48569 lt!648158)))))

(declare-fun res!1010540 () Bool)

(assert (=> b!1485937 (= res!1010540 (= (select (arr!48018 lt!648158) (index!51517 lt!648245)) lt!648154))))

(assert (=> b!1485937 (=> res!1010540 e!833026)))

(assert (=> b!1485937 (= e!833025 e!833026)))

(declare-fun b!1485938 () Bool)

(assert (=> b!1485938 (= e!833027 (bvsge (x!133088 lt!648245) #b01111111111111111111111111111110))))

(declare-fun d!156383 () Bool)

(assert (=> d!156383 e!833027))

(declare-fun c!137221 () Bool)

(assert (=> d!156383 (= c!137221 (and (is-Intermediate!12281 lt!648245) (undefined!13093 lt!648245)))))

(assert (=> d!156383 (= lt!648245 e!833029)))

(declare-fun c!137222 () Bool)

(assert (=> d!156383 (= c!137222 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!156383 (= lt!648246 (select (arr!48018 lt!648158) index!646))))

(assert (=> d!156383 (validMask!0 mask!2687)))

(assert (=> d!156383 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648154 lt!648158 mask!2687) lt!648245)))

(declare-fun b!1485931 () Bool)

(assert (=> b!1485931 (= e!833029 (Intermediate!12281 true index!646 x!665))))

(assert (= (and d!156383 c!137222) b!1485931))

(assert (= (and d!156383 (not c!137222)) b!1485933))

(assert (= (and b!1485933 c!137223) b!1485936))

(assert (= (and b!1485933 (not c!137223)) b!1485934))

(assert (= (and d!156383 c!137221) b!1485938))

(assert (= (and d!156383 (not c!137221)) b!1485935))

(assert (= (and b!1485935 res!1010541) b!1485937))

(assert (= (and b!1485937 (not res!1010540)) b!1485932))

(assert (= (and b!1485932 (not res!1010539)) b!1485930))

(declare-fun m!1370991 () Bool)

(assert (=> b!1485930 m!1370991))

(assert (=> b!1485934 m!1370885))

(assert (=> b!1485934 m!1370885))

(declare-fun m!1370993 () Bool)

(assert (=> b!1485934 m!1370993))

(declare-fun m!1370995 () Bool)

(assert (=> d!156383 m!1370995))

(assert (=> d!156383 m!1370849))

(assert (=> b!1485937 m!1370991))

(assert (=> b!1485932 m!1370991))

(assert (=> b!1485738 d!156383))

(declare-fun d!156401 () Bool)

(declare-fun lt!648262 () (_ BitVec 32))

(assert (=> d!156401 (and (bvsge lt!648262 #b00000000000000000000000000000000) (bvslt lt!648262 (bvadd mask!2687 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!156401 (= lt!648262 (choose!52 index!646 x!665 mask!2687))))

(assert (=> d!156401 (validMask!0 mask!2687)))

(assert (=> d!156401 (= (nextIndex!0 index!646 x!665 mask!2687) lt!648262)))

(declare-fun bs!42756 () Bool)

(assert (= bs!42756 d!156401))

(declare-fun m!1371005 () Bool)

(assert (=> bs!42756 m!1371005))

(assert (=> bs!42756 m!1370849))

(assert (=> b!1485727 d!156401))

(declare-fun d!156411 () Bool)

(assert (=> d!156411 (= (validKeyInArray!0 (select (arr!48018 a!2862) i!1006)) (and (not (= (select (arr!48018 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48018 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1485728 d!156411))

(declare-fun b!1485988 () Bool)

(declare-fun e!833063 () Bool)

(declare-fun call!67885 () Bool)

(assert (=> b!1485988 (= e!833063 call!67885)))

(declare-fun b!1485989 () Bool)

(declare-fun e!833065 () Bool)

(assert (=> b!1485989 (= e!833065 e!833063)))

(declare-fun c!137238 () Bool)

(assert (=> b!1485989 (= c!137238 (validKeyInArray!0 (select (arr!48018 a!2862) #b00000000000000000000000000000000)))))

(declare-fun bm!67882 () Bool)

(assert (=> bm!67882 (= call!67885 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!137238 (Cons!34695 (select (arr!48018 a!2862) #b00000000000000000000000000000000) Nil!34696) Nil!34696)))))

(declare-fun b!1485990 () Bool)

(declare-fun e!833064 () Bool)

(assert (=> b!1485990 (= e!833064 e!833065)))

(declare-fun res!1010565 () Bool)

(assert (=> b!1485990 (=> (not res!1010565) (not e!833065))))

(declare-fun e!833066 () Bool)

(assert (=> b!1485990 (= res!1010565 (not e!833066))))

(declare-fun res!1010566 () Bool)

(assert (=> b!1485990 (=> (not res!1010566) (not e!833066))))

(assert (=> b!1485990 (= res!1010566 (validKeyInArray!0 (select (arr!48018 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!156419 () Bool)

(declare-fun res!1010564 () Bool)

(assert (=> d!156419 (=> res!1010564 e!833064)))

(assert (=> d!156419 (= res!1010564 (bvsge #b00000000000000000000000000000000 (size!48569 a!2862)))))

(assert (=> d!156419 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34696) e!833064)))

(declare-fun b!1485991 () Bool)

(assert (=> b!1485991 (= e!833063 call!67885)))

(declare-fun b!1485992 () Bool)

(declare-fun contains!9930 (List!34699 (_ BitVec 64)) Bool)

(assert (=> b!1485992 (= e!833066 (contains!9930 Nil!34696 (select (arr!48018 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!156419 (not res!1010564)) b!1485990))

(assert (= (and b!1485990 res!1010566) b!1485992))

(assert (= (and b!1485990 res!1010565) b!1485989))

(assert (= (and b!1485989 c!137238) b!1485991))

(assert (= (and b!1485989 (not c!137238)) b!1485988))

(assert (= (or b!1485991 b!1485988) bm!67882))

(declare-fun m!1371025 () Bool)

(assert (=> b!1485989 m!1371025))

(assert (=> b!1485989 m!1371025))

(declare-fun m!1371029 () Bool)

(assert (=> b!1485989 m!1371029))

(assert (=> bm!67882 m!1371025))

(declare-fun m!1371031 () Bool)

(assert (=> bm!67882 m!1371031))

(assert (=> b!1485990 m!1371025))

(assert (=> b!1485990 m!1371025))

(assert (=> b!1485990 m!1371029))

(assert (=> b!1485992 m!1371025))

(assert (=> b!1485992 m!1371025))

(declare-fun m!1371035 () Bool)

(assert (=> b!1485992 m!1371035))

(assert (=> b!1485726 d!156419))

(declare-fun b!1486002 () Bool)

(declare-fun lt!648271 () SeekEntryResult!12281)

(assert (=> b!1486002 (and (bvsge (index!51517 lt!648271) #b00000000000000000000000000000000) (bvslt (index!51517 lt!648271) (size!48569 a!2862)))))

(declare-fun e!833075 () Bool)

(assert (=> b!1486002 (= e!833075 (= (select (arr!48018 a!2862) (index!51517 lt!648271)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1486004 () Bool)

(assert (=> b!1486004 (and (bvsge (index!51517 lt!648271) #b00000000000000000000000000000000) (bvslt (index!51517 lt!648271) (size!48569 a!2862)))))

(declare-fun res!1010570 () Bool)

(assert (=> b!1486004 (= res!1010570 (= (select (arr!48018 a!2862) (index!51517 lt!648271)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1486004 (=> res!1010570 e!833075)))

(declare-fun b!1486005 () Bool)

(declare-fun e!833078 () SeekEntryResult!12281)

(declare-fun e!833077 () SeekEntryResult!12281)

(assert (=> b!1486005 (= e!833078 e!833077)))

(declare-fun lt!648272 () (_ BitVec 64))

(declare-fun c!137244 () Bool)

(assert (=> b!1486005 (= c!137244 (or (= lt!648272 (select (arr!48018 a!2862) j!93)) (= (bvadd lt!648272 lt!648272) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1486006 () Bool)

(assert (=> b!1486006 (= e!833077 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48018 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!48018 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1486007 () Bool)

(declare-fun e!833076 () Bool)

(declare-fun e!833072 () Bool)

(assert (=> b!1486007 (= e!833076 e!833072)))

(declare-fun res!1010574 () Bool)

(assert (=> b!1486007 (= res!1010574 (and (is-Intermediate!12281 lt!648271) (not (undefined!13093 lt!648271)) (bvslt (x!133088 lt!648271) #b01111111111111111111111111111110) (bvsge (x!133088 lt!648271) #b00000000000000000000000000000000) (bvsge (x!133088 lt!648271) #b00000000000000000000000000000000)))))

(assert (=> b!1486007 (=> (not res!1010574) (not e!833072))))

(declare-fun b!1486008 () Bool)

(assert (=> b!1486008 (= e!833077 (Intermediate!12281 false (toIndex!0 (select (arr!48018 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1486009 () Bool)

(assert (=> b!1486009 (and (bvsge (index!51517 lt!648271) #b00000000000000000000000000000000) (bvslt (index!51517 lt!648271) (size!48569 a!2862)))))

(declare-fun res!1010573 () Bool)

(assert (=> b!1486009 (= res!1010573 (= (select (arr!48018 a!2862) (index!51517 lt!648271)) (select (arr!48018 a!2862) j!93)))))

(assert (=> b!1486009 (=> res!1010573 e!833075)))

(assert (=> b!1486009 (= e!833072 e!833075)))

(declare-fun b!1486010 () Bool)

(assert (=> b!1486010 (= e!833076 (bvsge (x!133088 lt!648271) #b01111111111111111111111111111110))))

(declare-fun d!156425 () Bool)

(assert (=> d!156425 e!833076))

(declare-fun c!137242 () Bool)

(assert (=> d!156425 (= c!137242 (and (is-Intermediate!12281 lt!648271) (undefined!13093 lt!648271)))))

(assert (=> d!156425 (= lt!648271 e!833078)))

(declare-fun c!137243 () Bool)

(assert (=> d!156425 (= c!137243 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!156425 (= lt!648272 (select (arr!48018 a!2862) (toIndex!0 (select (arr!48018 a!2862) j!93) mask!2687)))))

(assert (=> d!156425 (validMask!0 mask!2687)))

(assert (=> d!156425 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48018 a!2862) j!93) mask!2687) (select (arr!48018 a!2862) j!93) a!2862 mask!2687) lt!648271)))

(declare-fun b!1486003 () Bool)

(assert (=> b!1486003 (= e!833078 (Intermediate!12281 true (toIndex!0 (select (arr!48018 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(assert (= (and d!156425 c!137243) b!1486003))

(assert (= (and d!156425 (not c!137243)) b!1486005))

(assert (= (and b!1486005 c!137244) b!1486008))

(assert (= (and b!1486005 (not c!137244)) b!1486006))

(assert (= (and d!156425 c!137242) b!1486010))

(assert (= (and d!156425 (not c!137242)) b!1486007))

(assert (= (and b!1486007 res!1010574) b!1486009))

(assert (= (and b!1486009 (not res!1010573)) b!1486004))

(assert (= (and b!1486004 (not res!1010570)) b!1486002))

(declare-fun m!1371041 () Bool)

(assert (=> b!1486002 m!1371041))

(assert (=> b!1486006 m!1370893))

(declare-fun m!1371043 () Bool)

(assert (=> b!1486006 m!1371043))

(assert (=> b!1486006 m!1371043))

(assert (=> b!1486006 m!1370853))

(declare-fun m!1371045 () Bool)

(assert (=> b!1486006 m!1371045))

(assert (=> d!156425 m!1370893))

(declare-fun m!1371047 () Bool)

(assert (=> d!156425 m!1371047))

(assert (=> d!156425 m!1370849))

(assert (=> b!1486009 m!1371041))

(assert (=> b!1486004 m!1371041))

(assert (=> b!1485737 d!156425))

(declare-fun d!156429 () Bool)

(declare-fun lt!648287 () (_ BitVec 32))

(declare-fun lt!648286 () (_ BitVec 32))

(assert (=> d!156429 (= lt!648287 (bvmul (bvxor lt!648286 (bvlshr lt!648286 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156429 (= lt!648286 ((_ extract 31 0) (bvand (bvxor (select (arr!48018 a!2862) j!93) (bvlshr (select (arr!48018 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156429 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1010582 (let ((h!36072 ((_ extract 31 0) (bvand (bvxor (select (arr!48018 a!2862) j!93) (bvlshr (select (arr!48018 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133099 (bvmul (bvxor h!36072 (bvlshr h!36072 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133099 (bvlshr x!133099 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1010582 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1010582 #b00000000000000000000000000000000))))))

(assert (=> d!156429 (= (toIndex!0 (select (arr!48018 a!2862) j!93) mask!2687) (bvand (bvxor lt!648287 (bvlshr lt!648287 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1485737 d!156429))

(declare-fun d!156439 () Bool)

(assert (=> d!156439 (= (validKeyInArray!0 (select (arr!48018 a!2862) j!93)) (and (not (= (select (arr!48018 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48018 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1485735 d!156439))

(declare-fun b!1486060 () Bool)

(declare-fun e!833109 () SeekEntryResult!12281)

(declare-fun lt!648297 () SeekEntryResult!12281)

(assert (=> b!1486060 (= e!833109 (MissingZero!12281 (index!51517 lt!648297)))))

(declare-fun b!1486061 () Bool)

(declare-fun e!833108 () SeekEntryResult!12281)

(declare-fun e!833110 () SeekEntryResult!12281)

(assert (=> b!1486061 (= e!833108 e!833110)))

(declare-fun lt!648298 () (_ BitVec 64))

(assert (=> b!1486061 (= lt!648298 (select (arr!48018 lt!648158) (index!51517 lt!648297)))))

(declare-fun c!137263 () Bool)

(assert (=> b!1486061 (= c!137263 (= lt!648298 lt!648154))))

(declare-fun b!1486062 () Bool)

(assert (=> b!1486062 (= e!833109 (seekKeyOrZeroReturnVacant!0 (x!133088 lt!648297) (index!51517 lt!648297) (index!51517 lt!648297) lt!648154 lt!648158 mask!2687))))

(declare-fun b!1486063 () Bool)

(assert (=> b!1486063 (= e!833108 Undefined!12281)))

(declare-fun b!1486064 () Bool)

(assert (=> b!1486064 (= e!833110 (Found!12281 (index!51517 lt!648297)))))

(declare-fun d!156441 () Bool)

(declare-fun lt!648296 () SeekEntryResult!12281)

(assert (=> d!156441 (and (or (is-Undefined!12281 lt!648296) (not (is-Found!12281 lt!648296)) (and (bvsge (index!51516 lt!648296) #b00000000000000000000000000000000) (bvslt (index!51516 lt!648296) (size!48569 lt!648158)))) (or (is-Undefined!12281 lt!648296) (is-Found!12281 lt!648296) (not (is-MissingZero!12281 lt!648296)) (and (bvsge (index!51515 lt!648296) #b00000000000000000000000000000000) (bvslt (index!51515 lt!648296) (size!48569 lt!648158)))) (or (is-Undefined!12281 lt!648296) (is-Found!12281 lt!648296) (is-MissingZero!12281 lt!648296) (not (is-MissingVacant!12281 lt!648296)) (and (bvsge (index!51518 lt!648296) #b00000000000000000000000000000000) (bvslt (index!51518 lt!648296) (size!48569 lt!648158)))) (or (is-Undefined!12281 lt!648296) (ite (is-Found!12281 lt!648296) (= (select (arr!48018 lt!648158) (index!51516 lt!648296)) lt!648154) (ite (is-MissingZero!12281 lt!648296) (= (select (arr!48018 lt!648158) (index!51515 lt!648296)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12281 lt!648296) (= (select (arr!48018 lt!648158) (index!51518 lt!648296)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!156441 (= lt!648296 e!833108)))

(declare-fun c!137262 () Bool)

(assert (=> d!156441 (= c!137262 (and (is-Intermediate!12281 lt!648297) (undefined!13093 lt!648297)))))

(assert (=> d!156441 (= lt!648297 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648154 mask!2687) lt!648154 lt!648158 mask!2687))))

(assert (=> d!156441 (validMask!0 mask!2687)))

(assert (=> d!156441 (= (seekEntryOrOpen!0 lt!648154 lt!648158 mask!2687) lt!648296)))

(declare-fun b!1486065 () Bool)

(declare-fun c!137261 () Bool)

(assert (=> b!1486065 (= c!137261 (= lt!648298 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1486065 (= e!833110 e!833109)))

(assert (= (and d!156441 c!137262) b!1486063))

(assert (= (and d!156441 (not c!137262)) b!1486061))

(assert (= (and b!1486061 c!137263) b!1486064))

(assert (= (and b!1486061 (not c!137263)) b!1486065))

(assert (= (and b!1486065 c!137261) b!1486060))

(assert (= (and b!1486065 (not c!137261)) b!1486062))

(declare-fun m!1371081 () Bool)

(assert (=> b!1486061 m!1371081))

(declare-fun m!1371083 () Bool)

(assert (=> b!1486062 m!1371083))

(assert (=> d!156441 m!1370879))

(assert (=> d!156441 m!1370881))

(declare-fun m!1371085 () Bool)

(assert (=> d!156441 m!1371085))

(declare-fun m!1371087 () Bool)

(assert (=> d!156441 m!1371087))

(declare-fun m!1371089 () Bool)

(assert (=> d!156441 m!1371089))

(assert (=> d!156441 m!1370849))

(assert (=> d!156441 m!1370879))

(assert (=> b!1485736 d!156441))

(declare-fun e!833119 () SeekEntryResult!12281)

(declare-fun b!1486078 () Bool)

(assert (=> b!1486078 (= e!833119 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!648154 lt!648158 mask!2687))))

(declare-fun lt!648304 () SeekEntryResult!12281)

(declare-fun d!156443 () Bool)

(assert (=> d!156443 (and (or (is-Undefined!12281 lt!648304) (not (is-Found!12281 lt!648304)) (and (bvsge (index!51516 lt!648304) #b00000000000000000000000000000000) (bvslt (index!51516 lt!648304) (size!48569 lt!648158)))) (or (is-Undefined!12281 lt!648304) (is-Found!12281 lt!648304) (not (is-MissingVacant!12281 lt!648304)) (not (= (index!51518 lt!648304) intermediateAfterIndex!19)) (and (bvsge (index!51518 lt!648304) #b00000000000000000000000000000000) (bvslt (index!51518 lt!648304) (size!48569 lt!648158)))) (or (is-Undefined!12281 lt!648304) (ite (is-Found!12281 lt!648304) (= (select (arr!48018 lt!648158) (index!51516 lt!648304)) lt!648154) (and (is-MissingVacant!12281 lt!648304) (= (index!51518 lt!648304) intermediateAfterIndex!19) (= (select (arr!48018 lt!648158) (index!51518 lt!648304)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!833118 () SeekEntryResult!12281)

(assert (=> d!156443 (= lt!648304 e!833118)))

(declare-fun c!137270 () Bool)

(assert (=> d!156443 (= c!137270 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!648303 () (_ BitVec 64))

(assert (=> d!156443 (= lt!648303 (select (arr!48018 lt!648158) index!646))))

(assert (=> d!156443 (validMask!0 mask!2687)))

(assert (=> d!156443 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648154 lt!648158 mask!2687) lt!648304)))

(declare-fun b!1486079 () Bool)

(assert (=> b!1486079 (= e!833119 (MissingVacant!12281 intermediateAfterIndex!19))))

(declare-fun b!1486080 () Bool)

(assert (=> b!1486080 (= e!833118 Undefined!12281)))

(declare-fun b!1486081 () Bool)

(declare-fun c!137272 () Bool)

(assert (=> b!1486081 (= c!137272 (= lt!648303 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!833117 () SeekEntryResult!12281)

(assert (=> b!1486081 (= e!833117 e!833119)))

(declare-fun b!1486082 () Bool)

(assert (=> b!1486082 (= e!833118 e!833117)))

(declare-fun c!137271 () Bool)

(assert (=> b!1486082 (= c!137271 (= lt!648303 lt!648154))))

(declare-fun b!1486083 () Bool)

(assert (=> b!1486083 (= e!833117 (Found!12281 index!646))))

(assert (= (and d!156443 c!137270) b!1486080))

(assert (= (and d!156443 (not c!137270)) b!1486082))

(assert (= (and b!1486082 c!137271) b!1486083))

(assert (= (and b!1486082 (not c!137271)) b!1486081))

(assert (= (and b!1486081 c!137272) b!1486079))

(assert (= (and b!1486081 (not c!137272)) b!1486078))

(assert (=> b!1486078 m!1370885))

(assert (=> b!1486078 m!1370885))

(declare-fun m!1371091 () Bool)

(assert (=> b!1486078 m!1371091))

(declare-fun m!1371093 () Bool)

(assert (=> d!156443 m!1371093))

(declare-fun m!1371095 () Bool)

(assert (=> d!156443 m!1371095))

(assert (=> d!156443 m!1370995))

(assert (=> d!156443 m!1370849))

(assert (=> b!1485736 d!156443))

(declare-fun d!156445 () Bool)

(assert (=> d!156445 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!126614 d!156445))

(declare-fun d!156447 () Bool)

(assert (=> d!156447 (= (array_inv!36963 a!2862) (bvsge (size!48569 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!126614 d!156447))

(declare-fun b!1486084 () Bool)

(declare-fun lt!648305 () SeekEntryResult!12281)

(assert (=> b!1486084 (and (bvsge (index!51517 lt!648305) #b00000000000000000000000000000000) (bvslt (index!51517 lt!648305) (size!48569 a!2862)))))

(declare-fun e!833121 () Bool)

(assert (=> b!1486084 (= e!833121 (= (select (arr!48018 a!2862) (index!51517 lt!648305)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1486086 () Bool)

(assert (=> b!1486086 (and (bvsge (index!51517 lt!648305) #b00000000000000000000000000000000) (bvslt (index!51517 lt!648305) (size!48569 a!2862)))))

(declare-fun res!1010591 () Bool)

(assert (=> b!1486086 (= res!1010591 (= (select (arr!48018 a!2862) (index!51517 lt!648305)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1486086 (=> res!1010591 e!833121)))

(declare-fun b!1486087 () Bool)

(declare-fun e!833124 () SeekEntryResult!12281)

(declare-fun e!833123 () SeekEntryResult!12281)

(assert (=> b!1486087 (= e!833124 e!833123)))

(declare-fun c!137275 () Bool)

(declare-fun lt!648306 () (_ BitVec 64))

(assert (=> b!1486087 (= c!137275 (or (= lt!648306 (select (arr!48018 a!2862) j!93)) (= (bvadd lt!648306 lt!648306) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1486088 () Bool)

(assert (=> b!1486088 (= e!833123 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!48018 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1486089 () Bool)

(declare-fun e!833122 () Bool)

(declare-fun e!833120 () Bool)

