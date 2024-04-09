; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129362 () Bool)

(assert start!129362)

(declare-fun b!1518921 () Bool)

(declare-fun res!1038896 () Bool)

(declare-fun e!847346 () Bool)

(assert (=> b!1518921 (=> (not res!1038896) (not e!847346))))

(declare-datatypes ((array!101131 0))(
  ( (array!101132 (arr!48798 (Array (_ BitVec 32) (_ BitVec 64))) (size!49349 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101131)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101131 (_ BitVec 32)) Bool)

(assert (=> b!1518921 (= res!1038896 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1518922 () Bool)

(declare-fun res!1038907 () Bool)

(assert (=> b!1518922 (=> (not res!1038907) (not e!847346))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1518922 (= res!1038907 (and (= (size!49349 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49349 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49349 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1518923 () Bool)

(declare-fun res!1038906 () Bool)

(declare-fun e!847348 () Bool)

(assert (=> b!1518923 (=> res!1038906 e!847348)))

(declare-datatypes ((SeekEntryResult!12990 0))(
  ( (MissingZero!12990 (index!54354 (_ BitVec 32))) (Found!12990 (index!54355 (_ BitVec 32))) (Intermediate!12990 (undefined!13802 Bool) (index!54356 (_ BitVec 32)) (x!136033 (_ BitVec 32))) (Undefined!12990) (MissingVacant!12990 (index!54357 (_ BitVec 32))) )
))
(declare-fun lt!658387 () SeekEntryResult!12990)

(declare-fun lt!658393 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101131 (_ BitVec 32)) SeekEntryResult!12990)

(assert (=> b!1518923 (= res!1038906 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658393 (select (arr!48798 a!2804) j!70) a!2804 mask!2512) lt!658387)))))

(declare-fun b!1518924 () Bool)

(declare-fun res!1038909 () Bool)

(assert (=> b!1518924 (=> (not res!1038909) (not e!847346))))

(declare-datatypes ((List!35461 0))(
  ( (Nil!35458) (Cons!35457 (h!36870 (_ BitVec 64)) (t!50162 List!35461)) )
))
(declare-fun arrayNoDuplicates!0 (array!101131 (_ BitVec 32) List!35461) Bool)

(assert (=> b!1518924 (= res!1038909 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35458))))

(declare-fun b!1518925 () Bool)

(declare-fun res!1038900 () Bool)

(assert (=> b!1518925 (=> (not res!1038900) (not e!847346))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1518925 (= res!1038900 (validKeyInArray!0 (select (arr!48798 a!2804) i!961)))))

(declare-fun b!1518926 () Bool)

(declare-fun e!847344 () Bool)

(declare-fun e!847345 () Bool)

(assert (=> b!1518926 (= e!847344 e!847345)))

(declare-fun res!1038898 () Bool)

(assert (=> b!1518926 (=> (not res!1038898) (not e!847345))))

(declare-fun lt!658389 () (_ BitVec 64))

(declare-fun lt!658392 () SeekEntryResult!12990)

(declare-fun lt!658388 () array!101131)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518926 (= res!1038898 (= lt!658392 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!658389 mask!2512) lt!658389 lt!658388 mask!2512)))))

(assert (=> b!1518926 (= lt!658389 (select (store (arr!48798 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1518926 (= lt!658388 (array!101132 (store (arr!48798 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49349 a!2804)))))

(declare-fun b!1518927 () Bool)

(declare-fun e!847349 () Bool)

(assert (=> b!1518927 (= e!847345 (not e!847349))))

(declare-fun res!1038902 () Bool)

(assert (=> b!1518927 (=> res!1038902 e!847349)))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1518927 (= res!1038902 (or (not (= (select (arr!48798 a!2804) j!70) lt!658389)) (= x!534 resX!21)))))

(declare-fun e!847347 () Bool)

(assert (=> b!1518927 e!847347))

(declare-fun res!1038905 () Bool)

(assert (=> b!1518927 (=> (not res!1038905) (not e!847347))))

(assert (=> b!1518927 (= res!1038905 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50804 0))(
  ( (Unit!50805) )
))
(declare-fun lt!658390 () Unit!50804)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101131 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50804)

(assert (=> b!1518927 (= lt!658390 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1038899 () Bool)

(assert (=> start!129362 (=> (not res!1038899) (not e!847346))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129362 (= res!1038899 (validMask!0 mask!2512))))

(assert (=> start!129362 e!847346))

(assert (=> start!129362 true))

(declare-fun array_inv!37743 (array!101131) Bool)

(assert (=> start!129362 (array_inv!37743 a!2804)))

(declare-fun b!1518928 () Bool)

(declare-fun res!1038904 () Bool)

(assert (=> b!1518928 (=> (not res!1038904) (not e!847344))))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1518928 (= res!1038904 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48798 a!2804) j!70) a!2804 mask!2512) lt!658387))))

(declare-fun b!1518929 () Bool)

(assert (=> b!1518929 (= e!847346 e!847344)))

(declare-fun res!1038897 () Bool)

(assert (=> b!1518929 (=> (not res!1038897) (not e!847344))))

(assert (=> b!1518929 (= res!1038897 (= lt!658392 lt!658387))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1518929 (= lt!658387 (Intermediate!12990 false resIndex!21 resX!21))))

(assert (=> b!1518929 (= lt!658392 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48798 a!2804) j!70) mask!2512) (select (arr!48798 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1518930 () Bool)

(declare-fun res!1038903 () Bool)

(assert (=> b!1518930 (=> (not res!1038903) (not e!847346))))

(assert (=> b!1518930 (= res!1038903 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49349 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49349 a!2804))))))

(declare-fun b!1518931 () Bool)

(declare-fun res!1038901 () Bool)

(assert (=> b!1518931 (=> (not res!1038901) (not e!847346))))

(assert (=> b!1518931 (= res!1038901 (validKeyInArray!0 (select (arr!48798 a!2804) j!70)))))

(declare-fun b!1518932 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101131 (_ BitVec 32)) SeekEntryResult!12990)

(assert (=> b!1518932 (= e!847347 (= (seekEntry!0 (select (arr!48798 a!2804) j!70) a!2804 mask!2512) (Found!12990 j!70)))))

(declare-fun b!1518933 () Bool)

(assert (=> b!1518933 (= e!847349 e!847348)))

(declare-fun res!1038908 () Bool)

(assert (=> b!1518933 (=> res!1038908 e!847348)))

(assert (=> b!1518933 (= res!1038908 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658393 #b00000000000000000000000000000000) (bvsge lt!658393 (size!49349 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518933 (= lt!658393 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1518934 () Bool)

(assert (=> b!1518934 (= e!847348 true)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101131 (_ BitVec 32)) SeekEntryResult!12990)

(assert (=> b!1518934 (= (seekEntryOrOpen!0 (select (arr!48798 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!658389 lt!658388 mask!2512))))

(declare-fun lt!658391 () Unit!50804)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101131 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50804)

(assert (=> b!1518934 (= lt!658391 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!658393 resX!21 resIndex!21 mask!2512))))

(assert (= (and start!129362 res!1038899) b!1518922))

(assert (= (and b!1518922 res!1038907) b!1518925))

(assert (= (and b!1518925 res!1038900) b!1518931))

(assert (= (and b!1518931 res!1038901) b!1518921))

(assert (= (and b!1518921 res!1038896) b!1518924))

(assert (= (and b!1518924 res!1038909) b!1518930))

(assert (= (and b!1518930 res!1038903) b!1518929))

(assert (= (and b!1518929 res!1038897) b!1518928))

(assert (= (and b!1518928 res!1038904) b!1518926))

(assert (= (and b!1518926 res!1038898) b!1518927))

(assert (= (and b!1518927 res!1038905) b!1518932))

(assert (= (and b!1518927 (not res!1038902)) b!1518933))

(assert (= (and b!1518933 (not res!1038908)) b!1518923))

(assert (= (and b!1518923 (not res!1038906)) b!1518934))

(declare-fun m!1402337 () Bool)

(assert (=> b!1518923 m!1402337))

(assert (=> b!1518923 m!1402337))

(declare-fun m!1402339 () Bool)

(assert (=> b!1518923 m!1402339))

(declare-fun m!1402341 () Bool)

(assert (=> b!1518921 m!1402341))

(assert (=> b!1518932 m!1402337))

(assert (=> b!1518932 m!1402337))

(declare-fun m!1402343 () Bool)

(assert (=> b!1518932 m!1402343))

(assert (=> b!1518931 m!1402337))

(assert (=> b!1518931 m!1402337))

(declare-fun m!1402345 () Bool)

(assert (=> b!1518931 m!1402345))

(declare-fun m!1402347 () Bool)

(assert (=> b!1518925 m!1402347))

(assert (=> b!1518925 m!1402347))

(declare-fun m!1402349 () Bool)

(assert (=> b!1518925 m!1402349))

(assert (=> b!1518928 m!1402337))

(assert (=> b!1518928 m!1402337))

(declare-fun m!1402351 () Bool)

(assert (=> b!1518928 m!1402351))

(assert (=> b!1518927 m!1402337))

(declare-fun m!1402353 () Bool)

(assert (=> b!1518927 m!1402353))

(declare-fun m!1402355 () Bool)

(assert (=> b!1518927 m!1402355))

(declare-fun m!1402357 () Bool)

(assert (=> b!1518924 m!1402357))

(assert (=> b!1518934 m!1402337))

(assert (=> b!1518934 m!1402337))

(declare-fun m!1402359 () Bool)

(assert (=> b!1518934 m!1402359))

(declare-fun m!1402361 () Bool)

(assert (=> b!1518934 m!1402361))

(declare-fun m!1402363 () Bool)

(assert (=> b!1518934 m!1402363))

(declare-fun m!1402365 () Bool)

(assert (=> b!1518933 m!1402365))

(declare-fun m!1402367 () Bool)

(assert (=> start!129362 m!1402367))

(declare-fun m!1402369 () Bool)

(assert (=> start!129362 m!1402369))

(assert (=> b!1518929 m!1402337))

(assert (=> b!1518929 m!1402337))

(declare-fun m!1402371 () Bool)

(assert (=> b!1518929 m!1402371))

(assert (=> b!1518929 m!1402371))

(assert (=> b!1518929 m!1402337))

(declare-fun m!1402373 () Bool)

(assert (=> b!1518929 m!1402373))

(declare-fun m!1402375 () Bool)

(assert (=> b!1518926 m!1402375))

(assert (=> b!1518926 m!1402375))

(declare-fun m!1402377 () Bool)

(assert (=> b!1518926 m!1402377))

(declare-fun m!1402379 () Bool)

(assert (=> b!1518926 m!1402379))

(declare-fun m!1402381 () Bool)

(assert (=> b!1518926 m!1402381))

(push 1)

