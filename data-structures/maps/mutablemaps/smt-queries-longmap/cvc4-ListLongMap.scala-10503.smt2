; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123758 () Bool)

(assert start!123758)

(declare-fun b!1433943 () Bool)

(declare-fun res!967515 () Bool)

(declare-fun e!809376 () Bool)

(assert (=> b!1433943 (=> (not res!967515) (not e!809376))))

(declare-datatypes ((SeekEntryResult!11368 0))(
  ( (MissingZero!11368 (index!47863 (_ BitVec 32))) (Found!11368 (index!47864 (_ BitVec 32))) (Intermediate!11368 (undefined!12180 Bool) (index!47865 (_ BitVec 32)) (x!129519 (_ BitVec 32))) (Undefined!11368) (MissingVacant!11368 (index!47866 (_ BitVec 32))) )
))
(declare-fun lt!631232 () SeekEntryResult!11368)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97534 0))(
  ( (array!97535 (arr!47067 (Array (_ BitVec 32) (_ BitVec 64))) (size!47618 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97534)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97534 (_ BitVec 32)) SeekEntryResult!11368)

(assert (=> b!1433943 (= res!967515 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47067 a!2831) j!81) a!2831 mask!2608) lt!631232))))

(declare-fun b!1433944 () Bool)

(declare-fun e!809381 () Bool)

(assert (=> b!1433944 (= e!809376 (not e!809381))))

(declare-fun res!967525 () Bool)

(assert (=> b!1433944 (=> res!967525 e!809381)))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1433944 (= res!967525 (or (= (select (arr!47067 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47067 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47067 a!2831) index!585) (select (arr!47067 a!2831) j!81)) (= (select (store (arr!47067 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!809378 () Bool)

(assert (=> b!1433944 e!809378))

(declare-fun res!967526 () Bool)

(assert (=> b!1433944 (=> (not res!967526) (not e!809378))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97534 (_ BitVec 32)) Bool)

(assert (=> b!1433944 (= res!967526 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48430 0))(
  ( (Unit!48431) )
))
(declare-fun lt!631230 () Unit!48430)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97534 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48430)

(assert (=> b!1433944 (= lt!631230 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1433945 () Bool)

(declare-fun res!967527 () Bool)

(declare-fun e!809380 () Bool)

(assert (=> b!1433945 (=> (not res!967527) (not e!809380))))

(declare-datatypes ((List!33757 0))(
  ( (Nil!33754) (Cons!33753 (h!35082 (_ BitVec 64)) (t!48458 List!33757)) )
))
(declare-fun arrayNoDuplicates!0 (array!97534 (_ BitVec 32) List!33757) Bool)

(assert (=> b!1433945 (= res!967527 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33754))))

(declare-fun b!1433946 () Bool)

(declare-fun res!967514 () Bool)

(assert (=> b!1433946 (=> (not res!967514) (not e!809376))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1433946 (= res!967514 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun res!967523 () Bool)

(assert (=> start!123758 (=> (not res!967523) (not e!809380))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123758 (= res!967523 (validMask!0 mask!2608))))

(assert (=> start!123758 e!809380))

(assert (=> start!123758 true))

(declare-fun array_inv!36012 (array!97534) Bool)

(assert (=> start!123758 (array_inv!36012 a!2831)))

(declare-fun b!1433947 () Bool)

(declare-fun e!809379 () Bool)

(assert (=> b!1433947 (= e!809379 e!809376)))

(declare-fun res!967521 () Bool)

(assert (=> b!1433947 (=> (not res!967521) (not e!809376))))

(declare-fun lt!631229 () array!97534)

(declare-fun lt!631233 () SeekEntryResult!11368)

(declare-fun lt!631231 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1433947 (= res!967521 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631231 mask!2608) lt!631231 lt!631229 mask!2608) lt!631233))))

(assert (=> b!1433947 (= lt!631233 (Intermediate!11368 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1433947 (= lt!631231 (select (store (arr!47067 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1433947 (= lt!631229 (array!97535 (store (arr!47067 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47618 a!2831)))))

(declare-fun b!1433948 () Bool)

(assert (=> b!1433948 (= e!809380 e!809379)))

(declare-fun res!967519 () Bool)

(assert (=> b!1433948 (=> (not res!967519) (not e!809379))))

(assert (=> b!1433948 (= res!967519 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47067 a!2831) j!81) mask!2608) (select (arr!47067 a!2831) j!81) a!2831 mask!2608) lt!631232))))

(assert (=> b!1433948 (= lt!631232 (Intermediate!11368 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1433949 () Bool)

(declare-fun res!967517 () Bool)

(assert (=> b!1433949 (=> (not res!967517) (not e!809380))))

(assert (=> b!1433949 (= res!967517 (and (= (size!47618 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47618 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47618 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1433950 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97534 (_ BitVec 32)) SeekEntryResult!11368)

(assert (=> b!1433950 (= e!809378 (= (seekEntryOrOpen!0 (select (arr!47067 a!2831) j!81) a!2831 mask!2608) (Found!11368 j!81)))))

(declare-fun b!1433951 () Bool)

(declare-fun res!967518 () Bool)

(assert (=> b!1433951 (=> (not res!967518) (not e!809380))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1433951 (= res!967518 (validKeyInArray!0 (select (arr!47067 a!2831) j!81)))))

(declare-fun b!1433952 () Bool)

(declare-fun res!967522 () Bool)

(assert (=> b!1433952 (=> (not res!967522) (not e!809380))))

(assert (=> b!1433952 (= res!967522 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47618 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47618 a!2831))))))

(declare-fun b!1433953 () Bool)

(declare-fun res!967524 () Bool)

(assert (=> b!1433953 (=> (not res!967524) (not e!809380))))

(assert (=> b!1433953 (= res!967524 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1433954 () Bool)

(declare-fun res!967516 () Bool)

(assert (=> b!1433954 (=> (not res!967516) (not e!809380))))

(assert (=> b!1433954 (= res!967516 (validKeyInArray!0 (select (arr!47067 a!2831) i!982)))))

(declare-fun b!1433955 () Bool)

(declare-fun res!967520 () Bool)

(assert (=> b!1433955 (=> (not res!967520) (not e!809376))))

(assert (=> b!1433955 (= res!967520 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631231 lt!631229 mask!2608) lt!631233))))

(declare-fun b!1433956 () Bool)

(assert (=> b!1433956 (= e!809381 true)))

(declare-fun lt!631234 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1433956 (= lt!631234 (nextIndex!0 index!585 x!605 mask!2608))))

(assert (= (and start!123758 res!967523) b!1433949))

(assert (= (and b!1433949 res!967517) b!1433954))

(assert (= (and b!1433954 res!967516) b!1433951))

(assert (= (and b!1433951 res!967518) b!1433953))

(assert (= (and b!1433953 res!967524) b!1433945))

(assert (= (and b!1433945 res!967527) b!1433952))

(assert (= (and b!1433952 res!967522) b!1433948))

(assert (= (and b!1433948 res!967519) b!1433947))

(assert (= (and b!1433947 res!967521) b!1433943))

(assert (= (and b!1433943 res!967515) b!1433955))

(assert (= (and b!1433955 res!967520) b!1433946))

(assert (= (and b!1433946 res!967514) b!1433944))

(assert (= (and b!1433944 res!967526) b!1433950))

(assert (= (and b!1433944 (not res!967525)) b!1433956))

(declare-fun m!1323609 () Bool)

(assert (=> b!1433944 m!1323609))

(declare-fun m!1323611 () Bool)

(assert (=> b!1433944 m!1323611))

(declare-fun m!1323613 () Bool)

(assert (=> b!1433944 m!1323613))

(declare-fun m!1323615 () Bool)

(assert (=> b!1433944 m!1323615))

(declare-fun m!1323617 () Bool)

(assert (=> b!1433944 m!1323617))

(declare-fun m!1323619 () Bool)

(assert (=> b!1433944 m!1323619))

(assert (=> b!1433951 m!1323617))

(assert (=> b!1433951 m!1323617))

(declare-fun m!1323621 () Bool)

(assert (=> b!1433951 m!1323621))

(declare-fun m!1323623 () Bool)

(assert (=> b!1433954 m!1323623))

(assert (=> b!1433954 m!1323623))

(declare-fun m!1323625 () Bool)

(assert (=> b!1433954 m!1323625))

(assert (=> b!1433948 m!1323617))

(assert (=> b!1433948 m!1323617))

(declare-fun m!1323627 () Bool)

(assert (=> b!1433948 m!1323627))

(assert (=> b!1433948 m!1323627))

(assert (=> b!1433948 m!1323617))

(declare-fun m!1323629 () Bool)

(assert (=> b!1433948 m!1323629))

(declare-fun m!1323631 () Bool)

(assert (=> b!1433956 m!1323631))

(assert (=> b!1433950 m!1323617))

(assert (=> b!1433950 m!1323617))

(declare-fun m!1323633 () Bool)

(assert (=> b!1433950 m!1323633))

(declare-fun m!1323635 () Bool)

(assert (=> start!123758 m!1323635))

(declare-fun m!1323637 () Bool)

(assert (=> start!123758 m!1323637))

(assert (=> b!1433943 m!1323617))

(assert (=> b!1433943 m!1323617))

(declare-fun m!1323639 () Bool)

(assert (=> b!1433943 m!1323639))

(declare-fun m!1323641 () Bool)

(assert (=> b!1433955 m!1323641))

(declare-fun m!1323643 () Bool)

(assert (=> b!1433953 m!1323643))

(declare-fun m!1323645 () Bool)

(assert (=> b!1433947 m!1323645))

(assert (=> b!1433947 m!1323645))

(declare-fun m!1323647 () Bool)

(assert (=> b!1433947 m!1323647))

(assert (=> b!1433947 m!1323609))

(declare-fun m!1323649 () Bool)

(assert (=> b!1433947 m!1323649))

(declare-fun m!1323651 () Bool)

(assert (=> b!1433945 m!1323651))

(push 1)

