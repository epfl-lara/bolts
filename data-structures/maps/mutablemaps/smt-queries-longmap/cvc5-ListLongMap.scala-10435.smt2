; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122812 () Bool)

(assert start!122812)

(declare-fun b!1423081 () Bool)

(declare-fun res!958632 () Bool)

(declare-fun e!804442 () Bool)

(assert (=> b!1423081 (=> (not res!958632) (not e!804442))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97095 0))(
  ( (array!97096 (arr!46861 (Array (_ BitVec 32) (_ BitVec 64))) (size!47412 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97095)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11168 0))(
  ( (MissingZero!11168 (index!47063 (_ BitVec 32))) (Found!11168 (index!47064 (_ BitVec 32))) (Intermediate!11168 (undefined!11980 Bool) (index!47065 (_ BitVec 32)) (x!128709 (_ BitVec 32))) (Undefined!11168) (MissingVacant!11168 (index!47066 (_ BitVec 32))) )
))
(declare-fun lt!626938 () SeekEntryResult!11168)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97095 (_ BitVec 32)) SeekEntryResult!11168)

(assert (=> b!1423081 (= res!958632 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46861 a!2831) j!81) a!2831 mask!2608) lt!626938))))

(declare-fun b!1423082 () Bool)

(declare-fun res!958626 () Bool)

(declare-fun e!804446 () Bool)

(assert (=> b!1423082 (=> (not res!958626) (not e!804446))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97095 (_ BitVec 32)) Bool)

(assert (=> b!1423082 (= res!958626 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1423083 () Bool)

(declare-fun res!958625 () Bool)

(assert (=> b!1423083 (=> (not res!958625) (not e!804446))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1423083 (= res!958625 (and (= (size!47412 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47412 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47412 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1423084 () Bool)

(declare-fun e!804444 () Bool)

(assert (=> b!1423084 (= e!804444 true)))

(declare-fun lt!626936 () array!97095)

(declare-fun lt!626935 () (_ BitVec 64))

(declare-fun lt!626932 () (_ BitVec 32))

(declare-fun lt!626937 () SeekEntryResult!11168)

(assert (=> b!1423084 (= lt!626937 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626932 lt!626935 lt!626936 mask!2608))))

(declare-fun b!1423085 () Bool)

(declare-fun res!958634 () Bool)

(assert (=> b!1423085 (=> (not res!958634) (not e!804446))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1423085 (= res!958634 (validKeyInArray!0 (select (arr!46861 a!2831) j!81)))))

(declare-fun b!1423086 () Bool)

(declare-fun res!958635 () Bool)

(assert (=> b!1423086 (=> (not res!958635) (not e!804442))))

(declare-fun lt!626934 () SeekEntryResult!11168)

(assert (=> b!1423086 (= res!958635 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626935 lt!626936 mask!2608) lt!626934))))

(declare-fun b!1423087 () Bool)

(declare-fun e!804443 () Bool)

(assert (=> b!1423087 (= e!804443 e!804444)))

(declare-fun res!958628 () Bool)

(assert (=> b!1423087 (=> res!958628 e!804444)))

(assert (=> b!1423087 (= res!958628 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!626932 #b00000000000000000000000000000000) (bvsge lt!626932 (size!47412 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423087 (= lt!626932 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun e!804440 () Bool)

(declare-fun b!1423088 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97095 (_ BitVec 32)) SeekEntryResult!11168)

(assert (=> b!1423088 (= e!804440 (= (seekEntryOrOpen!0 (select (arr!46861 a!2831) j!81) a!2831 mask!2608) (Found!11168 j!81)))))

(declare-fun b!1423089 () Bool)

(assert (=> b!1423089 (= e!804442 (not e!804443))))

(declare-fun res!958629 () Bool)

(assert (=> b!1423089 (=> res!958629 e!804443)))

(assert (=> b!1423089 (= res!958629 (or (= (select (arr!46861 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46861 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46861 a!2831) index!585) (select (arr!46861 a!2831) j!81)) (= (select (store (arr!46861 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1423089 e!804440))

(declare-fun res!958624 () Bool)

(assert (=> b!1423089 (=> (not res!958624) (not e!804440))))

(assert (=> b!1423089 (= res!958624 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48120 0))(
  ( (Unit!48121) )
))
(declare-fun lt!626933 () Unit!48120)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97095 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48120)

(assert (=> b!1423089 (= lt!626933 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1423090 () Bool)

(declare-fun res!958637 () Bool)

(assert (=> b!1423090 (=> (not res!958637) (not e!804446))))

(assert (=> b!1423090 (= res!958637 (validKeyInArray!0 (select (arr!46861 a!2831) i!982)))))

(declare-fun res!958636 () Bool)

(assert (=> start!122812 (=> (not res!958636) (not e!804446))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122812 (= res!958636 (validMask!0 mask!2608))))

(assert (=> start!122812 e!804446))

(assert (=> start!122812 true))

(declare-fun array_inv!35806 (array!97095) Bool)

(assert (=> start!122812 (array_inv!35806 a!2831)))

(declare-fun b!1423091 () Bool)

(declare-fun e!804445 () Bool)

(assert (=> b!1423091 (= e!804446 e!804445)))

(declare-fun res!958630 () Bool)

(assert (=> b!1423091 (=> (not res!958630) (not e!804445))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423091 (= res!958630 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46861 a!2831) j!81) mask!2608) (select (arr!46861 a!2831) j!81) a!2831 mask!2608) lt!626938))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1423091 (= lt!626938 (Intermediate!11168 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1423092 () Bool)

(declare-fun res!958633 () Bool)

(assert (=> b!1423092 (=> (not res!958633) (not e!804446))))

(assert (=> b!1423092 (= res!958633 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47412 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47412 a!2831))))))

(declare-fun b!1423093 () Bool)

(declare-fun res!958631 () Bool)

(assert (=> b!1423093 (=> (not res!958631) (not e!804446))))

(declare-datatypes ((List!33551 0))(
  ( (Nil!33548) (Cons!33547 (h!34849 (_ BitVec 64)) (t!48252 List!33551)) )
))
(declare-fun arrayNoDuplicates!0 (array!97095 (_ BitVec 32) List!33551) Bool)

(assert (=> b!1423093 (= res!958631 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33548))))

(declare-fun b!1423094 () Bool)

(declare-fun res!958638 () Bool)

(assert (=> b!1423094 (=> (not res!958638) (not e!804442))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1423094 (= res!958638 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1423095 () Bool)

(declare-fun res!958623 () Bool)

(assert (=> b!1423095 (=> res!958623 e!804444)))

(assert (=> b!1423095 (= res!958623 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626932 (select (arr!46861 a!2831) j!81) a!2831 mask!2608) lt!626938)))))

(declare-fun b!1423096 () Bool)

(assert (=> b!1423096 (= e!804445 e!804442)))

(declare-fun res!958627 () Bool)

(assert (=> b!1423096 (=> (not res!958627) (not e!804442))))

(assert (=> b!1423096 (= res!958627 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626935 mask!2608) lt!626935 lt!626936 mask!2608) lt!626934))))

(assert (=> b!1423096 (= lt!626934 (Intermediate!11168 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1423096 (= lt!626935 (select (store (arr!46861 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1423096 (= lt!626936 (array!97096 (store (arr!46861 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47412 a!2831)))))

(assert (= (and start!122812 res!958636) b!1423083))

(assert (= (and b!1423083 res!958625) b!1423090))

(assert (= (and b!1423090 res!958637) b!1423085))

(assert (= (and b!1423085 res!958634) b!1423082))

(assert (= (and b!1423082 res!958626) b!1423093))

(assert (= (and b!1423093 res!958631) b!1423092))

(assert (= (and b!1423092 res!958633) b!1423091))

(assert (= (and b!1423091 res!958630) b!1423096))

(assert (= (and b!1423096 res!958627) b!1423081))

(assert (= (and b!1423081 res!958632) b!1423086))

(assert (= (and b!1423086 res!958635) b!1423094))

(assert (= (and b!1423094 res!958638) b!1423089))

(assert (= (and b!1423089 res!958624) b!1423088))

(assert (= (and b!1423089 (not res!958629)) b!1423087))

(assert (= (and b!1423087 (not res!958628)) b!1423095))

(assert (= (and b!1423095 (not res!958623)) b!1423084))

(declare-fun m!1313687 () Bool)

(assert (=> b!1423086 m!1313687))

(declare-fun m!1313689 () Bool)

(assert (=> b!1423093 m!1313689))

(declare-fun m!1313691 () Bool)

(assert (=> b!1423082 m!1313691))

(declare-fun m!1313693 () Bool)

(assert (=> b!1423091 m!1313693))

(assert (=> b!1423091 m!1313693))

(declare-fun m!1313695 () Bool)

(assert (=> b!1423091 m!1313695))

(assert (=> b!1423091 m!1313695))

(assert (=> b!1423091 m!1313693))

(declare-fun m!1313697 () Bool)

(assert (=> b!1423091 m!1313697))

(declare-fun m!1313699 () Bool)

(assert (=> b!1423087 m!1313699))

(declare-fun m!1313701 () Bool)

(assert (=> b!1423084 m!1313701))

(assert (=> b!1423085 m!1313693))

(assert (=> b!1423085 m!1313693))

(declare-fun m!1313703 () Bool)

(assert (=> b!1423085 m!1313703))

(declare-fun m!1313705 () Bool)

(assert (=> b!1423089 m!1313705))

(declare-fun m!1313707 () Bool)

(assert (=> b!1423089 m!1313707))

(declare-fun m!1313709 () Bool)

(assert (=> b!1423089 m!1313709))

(declare-fun m!1313711 () Bool)

(assert (=> b!1423089 m!1313711))

(assert (=> b!1423089 m!1313693))

(declare-fun m!1313713 () Bool)

(assert (=> b!1423089 m!1313713))

(declare-fun m!1313715 () Bool)

(assert (=> b!1423090 m!1313715))

(assert (=> b!1423090 m!1313715))

(declare-fun m!1313717 () Bool)

(assert (=> b!1423090 m!1313717))

(assert (=> b!1423088 m!1313693))

(assert (=> b!1423088 m!1313693))

(declare-fun m!1313719 () Bool)

(assert (=> b!1423088 m!1313719))

(assert (=> b!1423095 m!1313693))

(assert (=> b!1423095 m!1313693))

(declare-fun m!1313721 () Bool)

(assert (=> b!1423095 m!1313721))

(declare-fun m!1313723 () Bool)

(assert (=> b!1423096 m!1313723))

(assert (=> b!1423096 m!1313723))

(declare-fun m!1313725 () Bool)

(assert (=> b!1423096 m!1313725))

(assert (=> b!1423096 m!1313705))

(declare-fun m!1313727 () Bool)

(assert (=> b!1423096 m!1313727))

(assert (=> b!1423081 m!1313693))

(assert (=> b!1423081 m!1313693))

(declare-fun m!1313729 () Bool)

(assert (=> b!1423081 m!1313729))

(declare-fun m!1313731 () Bool)

(assert (=> start!122812 m!1313731))

(declare-fun m!1313733 () Bool)

(assert (=> start!122812 m!1313733))

(push 1)

