; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128876 () Bool)

(assert start!128876)

(declare-fun b!1509645 () Bool)

(declare-fun res!1029627 () Bool)

(declare-fun e!843191 () Bool)

(assert (=> b!1509645 (=> (not res!1029627) (not e!843191))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100645 0))(
  ( (array!100646 (arr!48555 (Array (_ BitVec 32) (_ BitVec 64))) (size!49106 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100645)

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12747 0))(
  ( (MissingZero!12747 (index!53382 (_ BitVec 32))) (Found!12747 (index!53383 (_ BitVec 32))) (Intermediate!12747 (undefined!13559 Bool) (index!53384 (_ BitVec 32)) (x!135142 (_ BitVec 32))) (Undefined!12747) (MissingVacant!12747 (index!53385 (_ BitVec 32))) )
))
(declare-fun lt!654927 () SeekEntryResult!12747)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100645 (_ BitVec 32)) SeekEntryResult!12747)

(assert (=> b!1509645 (= res!1029627 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48555 a!2804) j!70) a!2804 mask!2512) lt!654927))))

(declare-fun b!1509646 () Bool)

(assert (=> b!1509646 (= e!843191 (not true))))

(declare-fun e!843188 () Bool)

(assert (=> b!1509646 e!843188))

(declare-fun res!1029628 () Bool)

(assert (=> b!1509646 (=> (not res!1029628) (not e!843188))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100645 (_ BitVec 32)) Bool)

(assert (=> b!1509646 (= res!1029628 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50318 0))(
  ( (Unit!50319) )
))
(declare-fun lt!654926 () Unit!50318)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100645 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50318)

(assert (=> b!1509646 (= lt!654926 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1509647 () Bool)

(declare-fun res!1029629 () Bool)

(declare-fun e!843190 () Bool)

(assert (=> b!1509647 (=> (not res!1029629) (not e!843190))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1509647 (= res!1029629 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49106 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49106 a!2804))))))

(declare-fun b!1509648 () Bool)

(declare-fun res!1029630 () Bool)

(assert (=> b!1509648 (=> (not res!1029630) (not e!843190))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509648 (= res!1029630 (validKeyInArray!0 (select (arr!48555 a!2804) j!70)))))

(declare-fun b!1509649 () Bool)

(declare-fun res!1029621 () Bool)

(assert (=> b!1509649 (=> (not res!1029621) (not e!843191))))

(declare-fun lt!654928 () SeekEntryResult!12747)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509649 (= res!1029621 (= lt!654928 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48555 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48555 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100646 (store (arr!48555 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49106 a!2804)) mask!2512)))))

(declare-fun b!1509650 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100645 (_ BitVec 32)) SeekEntryResult!12747)

(assert (=> b!1509650 (= e!843188 (= (seekEntry!0 (select (arr!48555 a!2804) j!70) a!2804 mask!2512) (Found!12747 j!70)))))

(declare-fun res!1029622 () Bool)

(assert (=> start!128876 (=> (not res!1029622) (not e!843190))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128876 (= res!1029622 (validMask!0 mask!2512))))

(assert (=> start!128876 e!843190))

(assert (=> start!128876 true))

(declare-fun array_inv!37500 (array!100645) Bool)

(assert (=> start!128876 (array_inv!37500 a!2804)))

(declare-fun b!1509651 () Bool)

(assert (=> b!1509651 (= e!843190 e!843191)))

(declare-fun res!1029626 () Bool)

(assert (=> b!1509651 (=> (not res!1029626) (not e!843191))))

(assert (=> b!1509651 (= res!1029626 (= lt!654928 lt!654927))))

(assert (=> b!1509651 (= lt!654927 (Intermediate!12747 false resIndex!21 resX!21))))

(assert (=> b!1509651 (= lt!654928 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48555 a!2804) j!70) mask!2512) (select (arr!48555 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1509652 () Bool)

(declare-fun res!1029624 () Bool)

(assert (=> b!1509652 (=> (not res!1029624) (not e!843190))))

(declare-datatypes ((List!35218 0))(
  ( (Nil!35215) (Cons!35214 (h!36627 (_ BitVec 64)) (t!49919 List!35218)) )
))
(declare-fun arrayNoDuplicates!0 (array!100645 (_ BitVec 32) List!35218) Bool)

(assert (=> b!1509652 (= res!1029624 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35215))))

(declare-fun b!1509653 () Bool)

(declare-fun res!1029623 () Bool)

(assert (=> b!1509653 (=> (not res!1029623) (not e!843190))))

(assert (=> b!1509653 (= res!1029623 (validKeyInArray!0 (select (arr!48555 a!2804) i!961)))))

(declare-fun b!1509654 () Bool)

(declare-fun res!1029625 () Bool)

(assert (=> b!1509654 (=> (not res!1029625) (not e!843190))))

(assert (=> b!1509654 (= res!1029625 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1509655 () Bool)

(declare-fun res!1029620 () Bool)

(assert (=> b!1509655 (=> (not res!1029620) (not e!843190))))

(assert (=> b!1509655 (= res!1029620 (and (= (size!49106 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49106 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49106 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!128876 res!1029622) b!1509655))

(assert (= (and b!1509655 res!1029620) b!1509653))

(assert (= (and b!1509653 res!1029623) b!1509648))

(assert (= (and b!1509648 res!1029630) b!1509654))

(assert (= (and b!1509654 res!1029625) b!1509652))

(assert (= (and b!1509652 res!1029624) b!1509647))

(assert (= (and b!1509647 res!1029629) b!1509651))

(assert (= (and b!1509651 res!1029626) b!1509645))

(assert (= (and b!1509645 res!1029627) b!1509649))

(assert (= (and b!1509649 res!1029621) b!1509646))

(assert (= (and b!1509646 res!1029628) b!1509650))

(declare-fun m!1392207 () Bool)

(assert (=> b!1509648 m!1392207))

(assert (=> b!1509648 m!1392207))

(declare-fun m!1392209 () Bool)

(assert (=> b!1509648 m!1392209))

(declare-fun m!1392211 () Bool)

(assert (=> b!1509649 m!1392211))

(declare-fun m!1392213 () Bool)

(assert (=> b!1509649 m!1392213))

(assert (=> b!1509649 m!1392213))

(declare-fun m!1392215 () Bool)

(assert (=> b!1509649 m!1392215))

(assert (=> b!1509649 m!1392215))

(assert (=> b!1509649 m!1392213))

(declare-fun m!1392217 () Bool)

(assert (=> b!1509649 m!1392217))

(assert (=> b!1509650 m!1392207))

(assert (=> b!1509650 m!1392207))

(declare-fun m!1392219 () Bool)

(assert (=> b!1509650 m!1392219))

(declare-fun m!1392221 () Bool)

(assert (=> b!1509654 m!1392221))

(declare-fun m!1392223 () Bool)

(assert (=> b!1509653 m!1392223))

(assert (=> b!1509653 m!1392223))

(declare-fun m!1392225 () Bool)

(assert (=> b!1509653 m!1392225))

(declare-fun m!1392227 () Bool)

(assert (=> start!128876 m!1392227))

(declare-fun m!1392229 () Bool)

(assert (=> start!128876 m!1392229))

(declare-fun m!1392231 () Bool)

(assert (=> b!1509646 m!1392231))

(declare-fun m!1392233 () Bool)

(assert (=> b!1509646 m!1392233))

(assert (=> b!1509645 m!1392207))

(assert (=> b!1509645 m!1392207))

(declare-fun m!1392235 () Bool)

(assert (=> b!1509645 m!1392235))

(declare-fun m!1392237 () Bool)

(assert (=> b!1509652 m!1392237))

(assert (=> b!1509651 m!1392207))

(assert (=> b!1509651 m!1392207))

(declare-fun m!1392239 () Bool)

(assert (=> b!1509651 m!1392239))

(assert (=> b!1509651 m!1392239))

(assert (=> b!1509651 m!1392207))

(declare-fun m!1392241 () Bool)

(assert (=> b!1509651 m!1392241))

(push 1)

(assert (not b!1509646))

(assert (not b!1509654))

