; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129364 () Bool)

(assert start!129364)

(declare-fun b!1518963 () Bool)

(declare-fun e!847366 () Bool)

(declare-fun e!847365 () Bool)

(assert (=> b!1518963 (= e!847366 e!847365)))

(declare-fun res!1038949 () Bool)

(assert (=> b!1518963 (=> (not res!1038949) (not e!847365))))

(declare-fun lt!658410 () (_ BitVec 64))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12991 0))(
  ( (MissingZero!12991 (index!54358 (_ BitVec 32))) (Found!12991 (index!54359 (_ BitVec 32))) (Intermediate!12991 (undefined!13803 Bool) (index!54360 (_ BitVec 32)) (x!136042 (_ BitVec 32))) (Undefined!12991) (MissingVacant!12991 (index!54361 (_ BitVec 32))) )
))
(declare-fun lt!658412 () SeekEntryResult!12991)

(declare-datatypes ((array!101133 0))(
  ( (array!101134 (arr!48799 (Array (_ BitVec 32) (_ BitVec 64))) (size!49350 (_ BitVec 32))) )
))
(declare-fun lt!658409 () array!101133)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101133 (_ BitVec 32)) SeekEntryResult!12991)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518963 (= res!1038949 (= lt!658412 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!658410 mask!2512) lt!658410 lt!658409 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun a!2804 () array!101133)

(assert (=> b!1518963 (= lt!658410 (select (store (arr!48799 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1518963 (= lt!658409 (array!101134 (store (arr!48799 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49350 a!2804)))))

(declare-fun b!1518964 () Bool)

(declare-fun res!1038943 () Bool)

(declare-fun e!847369 () Bool)

(assert (=> b!1518964 (=> res!1038943 e!847369)))

(declare-fun lt!658414 () SeekEntryResult!12991)

(declare-fun lt!658413 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1518964 (= res!1038943 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658413 (select (arr!48799 a!2804) j!70) a!2804 mask!2512) lt!658414)))))

(declare-fun b!1518965 () Bool)

(declare-fun res!1038951 () Bool)

(declare-fun e!847367 () Bool)

(assert (=> b!1518965 (=> (not res!1038951) (not e!847367))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101133 (_ BitVec 32)) Bool)

(assert (=> b!1518965 (= res!1038951 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1518966 () Bool)

(declare-fun res!1038946 () Bool)

(assert (=> b!1518966 (=> (not res!1038946) (not e!847367))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1518966 (= res!1038946 (validKeyInArray!0 (select (arr!48799 a!2804) j!70)))))

(declare-fun b!1518967 () Bool)

(declare-fun res!1038945 () Bool)

(assert (=> b!1518967 (=> (not res!1038945) (not e!847366))))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1518967 (= res!1038945 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48799 a!2804) j!70) a!2804 mask!2512) lt!658414))))

(declare-fun b!1518968 () Bool)

(declare-fun e!847364 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101133 (_ BitVec 32)) SeekEntryResult!12991)

(assert (=> b!1518968 (= e!847364 (= (seekEntry!0 (select (arr!48799 a!2804) j!70) a!2804 mask!2512) (Found!12991 j!70)))))

(declare-fun res!1038939 () Bool)

(assert (=> start!129364 (=> (not res!1038939) (not e!847367))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129364 (= res!1038939 (validMask!0 mask!2512))))

(assert (=> start!129364 e!847367))

(assert (=> start!129364 true))

(declare-fun array_inv!37744 (array!101133) Bool)

(assert (=> start!129364 (array_inv!37744 a!2804)))

(declare-fun b!1518969 () Bool)

(declare-fun res!1038941 () Bool)

(assert (=> b!1518969 (=> (not res!1038941) (not e!847367))))

(assert (=> b!1518969 (= res!1038941 (validKeyInArray!0 (select (arr!48799 a!2804) i!961)))))

(declare-fun b!1518970 () Bool)

(declare-fun e!847370 () Bool)

(assert (=> b!1518970 (= e!847365 (not e!847370))))

(declare-fun res!1038947 () Bool)

(assert (=> b!1518970 (=> res!1038947 e!847370)))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1518970 (= res!1038947 (or (not (= (select (arr!48799 a!2804) j!70) lt!658410)) (= x!534 resX!21)))))

(assert (=> b!1518970 e!847364))

(declare-fun res!1038938 () Bool)

(assert (=> b!1518970 (=> (not res!1038938) (not e!847364))))

(assert (=> b!1518970 (= res!1038938 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50806 0))(
  ( (Unit!50807) )
))
(declare-fun lt!658411 () Unit!50806)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101133 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50806)

(assert (=> b!1518970 (= lt!658411 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1518971 () Bool)

(assert (=> b!1518971 (= e!847369 true)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101133 (_ BitVec 32)) SeekEntryResult!12991)

(assert (=> b!1518971 (= (seekEntryOrOpen!0 (select (arr!48799 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!658410 lt!658409 mask!2512))))

(declare-fun lt!658408 () Unit!50806)

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101133 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50806)

(assert (=> b!1518971 (= lt!658408 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!658413 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1518972 () Bool)

(declare-fun res!1038942 () Bool)

(assert (=> b!1518972 (=> (not res!1038942) (not e!847367))))

(assert (=> b!1518972 (= res!1038942 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49350 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49350 a!2804))))))

(declare-fun b!1518973 () Bool)

(declare-fun res!1038948 () Bool)

(assert (=> b!1518973 (=> (not res!1038948) (not e!847367))))

(declare-datatypes ((List!35462 0))(
  ( (Nil!35459) (Cons!35458 (h!36871 (_ BitVec 64)) (t!50163 List!35462)) )
))
(declare-fun arrayNoDuplicates!0 (array!101133 (_ BitVec 32) List!35462) Bool)

(assert (=> b!1518973 (= res!1038948 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35459))))

(declare-fun b!1518974 () Bool)

(declare-fun res!1038940 () Bool)

(assert (=> b!1518974 (=> (not res!1038940) (not e!847367))))

(assert (=> b!1518974 (= res!1038940 (and (= (size!49350 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49350 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49350 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1518975 () Bool)

(assert (=> b!1518975 (= e!847370 e!847369)))

(declare-fun res!1038950 () Bool)

(assert (=> b!1518975 (=> res!1038950 e!847369)))

(assert (=> b!1518975 (= res!1038950 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658413 #b00000000000000000000000000000000) (bvsge lt!658413 (size!49350 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518975 (= lt!658413 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1518976 () Bool)

(assert (=> b!1518976 (= e!847367 e!847366)))

(declare-fun res!1038944 () Bool)

(assert (=> b!1518976 (=> (not res!1038944) (not e!847366))))

(assert (=> b!1518976 (= res!1038944 (= lt!658412 lt!658414))))

(assert (=> b!1518976 (= lt!658414 (Intermediate!12991 false resIndex!21 resX!21))))

(assert (=> b!1518976 (= lt!658412 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48799 a!2804) j!70) mask!2512) (select (arr!48799 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!129364 res!1038939) b!1518974))

(assert (= (and b!1518974 res!1038940) b!1518969))

(assert (= (and b!1518969 res!1038941) b!1518966))

(assert (= (and b!1518966 res!1038946) b!1518965))

(assert (= (and b!1518965 res!1038951) b!1518973))

(assert (= (and b!1518973 res!1038948) b!1518972))

(assert (= (and b!1518972 res!1038942) b!1518976))

(assert (= (and b!1518976 res!1038944) b!1518967))

(assert (= (and b!1518967 res!1038945) b!1518963))

(assert (= (and b!1518963 res!1038949) b!1518970))

(assert (= (and b!1518970 res!1038938) b!1518968))

(assert (= (and b!1518970 (not res!1038947)) b!1518975))

(assert (= (and b!1518975 (not res!1038950)) b!1518964))

(assert (= (and b!1518964 (not res!1038943)) b!1518971))

(declare-fun m!1402383 () Bool)

(assert (=> b!1518973 m!1402383))

(declare-fun m!1402385 () Bool)

(assert (=> b!1518969 m!1402385))

(assert (=> b!1518969 m!1402385))

(declare-fun m!1402387 () Bool)

(assert (=> b!1518969 m!1402387))

(declare-fun m!1402389 () Bool)

(assert (=> b!1518967 m!1402389))

(assert (=> b!1518967 m!1402389))

(declare-fun m!1402391 () Bool)

(assert (=> b!1518967 m!1402391))

(assert (=> b!1518964 m!1402389))

(assert (=> b!1518964 m!1402389))

(declare-fun m!1402393 () Bool)

(assert (=> b!1518964 m!1402393))

(assert (=> b!1518970 m!1402389))

(declare-fun m!1402395 () Bool)

(assert (=> b!1518970 m!1402395))

(declare-fun m!1402397 () Bool)

(assert (=> b!1518970 m!1402397))

(declare-fun m!1402399 () Bool)

(assert (=> b!1518963 m!1402399))

(assert (=> b!1518963 m!1402399))

(declare-fun m!1402401 () Bool)

(assert (=> b!1518963 m!1402401))

(declare-fun m!1402403 () Bool)

(assert (=> b!1518963 m!1402403))

(declare-fun m!1402405 () Bool)

(assert (=> b!1518963 m!1402405))

(declare-fun m!1402407 () Bool)

(assert (=> b!1518965 m!1402407))

(assert (=> b!1518968 m!1402389))

(assert (=> b!1518968 m!1402389))

(declare-fun m!1402409 () Bool)

(assert (=> b!1518968 m!1402409))

(declare-fun m!1402411 () Bool)

(assert (=> b!1518975 m!1402411))

(declare-fun m!1402413 () Bool)

(assert (=> start!129364 m!1402413))

(declare-fun m!1402415 () Bool)

(assert (=> start!129364 m!1402415))

(assert (=> b!1518966 m!1402389))

(assert (=> b!1518966 m!1402389))

(declare-fun m!1402417 () Bool)

(assert (=> b!1518966 m!1402417))

(assert (=> b!1518971 m!1402389))

(assert (=> b!1518971 m!1402389))

(declare-fun m!1402419 () Bool)

(assert (=> b!1518971 m!1402419))

(declare-fun m!1402421 () Bool)

(assert (=> b!1518971 m!1402421))

(declare-fun m!1402423 () Bool)

(assert (=> b!1518971 m!1402423))

(assert (=> b!1518976 m!1402389))

(assert (=> b!1518976 m!1402389))

(declare-fun m!1402425 () Bool)

(assert (=> b!1518976 m!1402425))

(assert (=> b!1518976 m!1402425))

(assert (=> b!1518976 m!1402389))

(declare-fun m!1402427 () Bool)

(assert (=> b!1518976 m!1402427))

(push 1)

