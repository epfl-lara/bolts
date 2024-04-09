; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128890 () Bool)

(assert start!128890)

(declare-fun b!1509876 () Bool)

(declare-fun res!1029860 () Bool)

(declare-fun e!843273 () Bool)

(assert (=> b!1509876 (=> (not res!1029860) (not e!843273))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12754 0))(
  ( (MissingZero!12754 (index!53410 (_ BitVec 32))) (Found!12754 (index!53411 (_ BitVec 32))) (Intermediate!12754 (undefined!13566 Bool) (index!53412 (_ BitVec 32)) (x!135173 (_ BitVec 32))) (Undefined!12754) (MissingVacant!12754 (index!53413 (_ BitVec 32))) )
))
(declare-fun lt!654990 () SeekEntryResult!12754)

(declare-datatypes ((array!100659 0))(
  ( (array!100660 (arr!48562 (Array (_ BitVec 32) (_ BitVec 64))) (size!49113 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100659)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100659 (_ BitVec 32)) SeekEntryResult!12754)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509876 (= res!1029860 (= lt!654990 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48562 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48562 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100660 (store (arr!48562 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49113 a!2804)) mask!2512)))))

(declare-fun b!1509877 () Bool)

(declare-fun res!1029852 () Bool)

(declare-fun e!843275 () Bool)

(assert (=> b!1509877 (=> (not res!1029852) (not e!843275))))

(assert (=> b!1509877 (= res!1029852 (and (= (size!49113 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49113 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49113 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1509878 () Bool)

(assert (=> b!1509878 (= e!843273 (not true))))

(declare-fun e!843274 () Bool)

(assert (=> b!1509878 e!843274))

(declare-fun res!1029857 () Bool)

(assert (=> b!1509878 (=> (not res!1029857) (not e!843274))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100659 (_ BitVec 32)) Bool)

(assert (=> b!1509878 (= res!1029857 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50332 0))(
  ( (Unit!50333) )
))
(declare-fun lt!654991 () Unit!50332)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100659 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50332)

(assert (=> b!1509878 (= lt!654991 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1509879 () Bool)

(declare-fun res!1029859 () Bool)

(assert (=> b!1509879 (=> (not res!1029859) (not e!843275))))

(declare-datatypes ((List!35225 0))(
  ( (Nil!35222) (Cons!35221 (h!36634 (_ BitVec 64)) (t!49926 List!35225)) )
))
(declare-fun arrayNoDuplicates!0 (array!100659 (_ BitVec 32) List!35225) Bool)

(assert (=> b!1509879 (= res!1029859 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35222))))

(declare-fun b!1509880 () Bool)

(declare-fun res!1029853 () Bool)

(assert (=> b!1509880 (=> (not res!1029853) (not e!843273))))

(declare-fun lt!654989 () SeekEntryResult!12754)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1509880 (= res!1029853 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48562 a!2804) j!70) a!2804 mask!2512) lt!654989))))

(declare-fun b!1509881 () Bool)

(declare-fun res!1029854 () Bool)

(assert (=> b!1509881 (=> (not res!1029854) (not e!843275))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1509881 (= res!1029854 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49113 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49113 a!2804))))))

(declare-fun b!1509882 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100659 (_ BitVec 32)) SeekEntryResult!12754)

(assert (=> b!1509882 (= e!843274 (= (seekEntry!0 (select (arr!48562 a!2804) j!70) a!2804 mask!2512) (Found!12754 j!70)))))

(declare-fun res!1029856 () Bool)

(assert (=> start!128890 (=> (not res!1029856) (not e!843275))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128890 (= res!1029856 (validMask!0 mask!2512))))

(assert (=> start!128890 e!843275))

(assert (=> start!128890 true))

(declare-fun array_inv!37507 (array!100659) Bool)

(assert (=> start!128890 (array_inv!37507 a!2804)))

(declare-fun b!1509883 () Bool)

(assert (=> b!1509883 (= e!843275 e!843273)))

(declare-fun res!1029858 () Bool)

(assert (=> b!1509883 (=> (not res!1029858) (not e!843273))))

(assert (=> b!1509883 (= res!1029858 (= lt!654990 lt!654989))))

(assert (=> b!1509883 (= lt!654989 (Intermediate!12754 false resIndex!21 resX!21))))

(assert (=> b!1509883 (= lt!654990 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48562 a!2804) j!70) mask!2512) (select (arr!48562 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1509884 () Bool)

(declare-fun res!1029861 () Bool)

(assert (=> b!1509884 (=> (not res!1029861) (not e!843275))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509884 (= res!1029861 (validKeyInArray!0 (select (arr!48562 a!2804) j!70)))))

(declare-fun b!1509885 () Bool)

(declare-fun res!1029851 () Bool)

(assert (=> b!1509885 (=> (not res!1029851) (not e!843275))))

(assert (=> b!1509885 (= res!1029851 (validKeyInArray!0 (select (arr!48562 a!2804) i!961)))))

(declare-fun b!1509886 () Bool)

(declare-fun res!1029855 () Bool)

(assert (=> b!1509886 (=> (not res!1029855) (not e!843275))))

(assert (=> b!1509886 (= res!1029855 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!128890 res!1029856) b!1509877))

(assert (= (and b!1509877 res!1029852) b!1509885))

(assert (= (and b!1509885 res!1029851) b!1509884))

(assert (= (and b!1509884 res!1029861) b!1509886))

(assert (= (and b!1509886 res!1029855) b!1509879))

(assert (= (and b!1509879 res!1029859) b!1509881))

(assert (= (and b!1509881 res!1029854) b!1509883))

(assert (= (and b!1509883 res!1029858) b!1509880))

(assert (= (and b!1509880 res!1029853) b!1509876))

(assert (= (and b!1509876 res!1029860) b!1509878))

(assert (= (and b!1509878 res!1029857) b!1509882))

(declare-fun m!1392465 () Bool)

(assert (=> b!1509878 m!1392465))

(declare-fun m!1392467 () Bool)

(assert (=> b!1509878 m!1392467))

(declare-fun m!1392469 () Bool)

(assert (=> b!1509882 m!1392469))

(assert (=> b!1509882 m!1392469))

(declare-fun m!1392471 () Bool)

(assert (=> b!1509882 m!1392471))

(declare-fun m!1392473 () Bool)

(assert (=> b!1509876 m!1392473))

(declare-fun m!1392475 () Bool)

(assert (=> b!1509876 m!1392475))

(assert (=> b!1509876 m!1392475))

(declare-fun m!1392477 () Bool)

(assert (=> b!1509876 m!1392477))

(assert (=> b!1509876 m!1392477))

(assert (=> b!1509876 m!1392475))

(declare-fun m!1392479 () Bool)

(assert (=> b!1509876 m!1392479))

(declare-fun m!1392481 () Bool)

(assert (=> start!128890 m!1392481))

(declare-fun m!1392483 () Bool)

(assert (=> start!128890 m!1392483))

(assert (=> b!1509884 m!1392469))

(assert (=> b!1509884 m!1392469))

(declare-fun m!1392485 () Bool)

(assert (=> b!1509884 m!1392485))

(declare-fun m!1392487 () Bool)

(assert (=> b!1509886 m!1392487))

(assert (=> b!1509880 m!1392469))

(assert (=> b!1509880 m!1392469))

(declare-fun m!1392489 () Bool)

(assert (=> b!1509880 m!1392489))

(declare-fun m!1392491 () Bool)

(assert (=> b!1509879 m!1392491))

(assert (=> b!1509883 m!1392469))

(assert (=> b!1509883 m!1392469))

(declare-fun m!1392493 () Bool)

(assert (=> b!1509883 m!1392493))

(assert (=> b!1509883 m!1392493))

(assert (=> b!1509883 m!1392469))

(declare-fun m!1392495 () Bool)

(assert (=> b!1509883 m!1392495))

(declare-fun m!1392497 () Bool)

(assert (=> b!1509885 m!1392497))

(assert (=> b!1509885 m!1392497))

(declare-fun m!1392499 () Bool)

(assert (=> b!1509885 m!1392499))

(push 1)

