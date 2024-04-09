; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128760 () Bool)

(assert start!128760)

(declare-fun b!1508405 () Bool)

(declare-fun e!842715 () Bool)

(assert (=> b!1508405 (= e!842715 false)))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100568 0))(
  ( (array!100569 (arr!48518 (Array (_ BitVec 32) (_ BitVec 64))) (size!49069 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100568)

(declare-fun lt!654595 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1508405 (= lt!654595 (toIndex!0 (select (store (arr!48518 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512))))

(declare-fun b!1508406 () Bool)

(declare-fun res!1028486 () Bool)

(declare-fun e!842717 () Bool)

(assert (=> b!1508406 (=> (not res!1028486) (not e!842717))))

(assert (=> b!1508406 (= res!1028486 (and (= (size!49069 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49069 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49069 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1508407 () Bool)

(declare-fun res!1028487 () Bool)

(assert (=> b!1508407 (=> (not res!1028487) (not e!842717))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1508407 (= res!1028487 (validKeyInArray!0 (select (arr!48518 a!2804) j!70)))))

(declare-fun b!1508408 () Bool)

(declare-fun res!1028490 () Bool)

(assert (=> b!1508408 (=> (not res!1028490) (not e!842715))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12710 0))(
  ( (MissingZero!12710 (index!53234 (_ BitVec 32))) (Found!12710 (index!53235 (_ BitVec 32))) (Intermediate!12710 (undefined!13522 Bool) (index!53236 (_ BitVec 32)) (x!135003 (_ BitVec 32))) (Undefined!12710) (MissingVacant!12710 (index!53237 (_ BitVec 32))) )
))
(declare-fun lt!654594 () SeekEntryResult!12710)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100568 (_ BitVec 32)) SeekEntryResult!12710)

(assert (=> b!1508408 (= res!1028490 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48518 a!2804) j!70) a!2804 mask!2512) lt!654594))))

(declare-fun b!1508409 () Bool)

(assert (=> b!1508409 (= e!842717 e!842715)))

(declare-fun res!1028489 () Bool)

(assert (=> b!1508409 (=> (not res!1028489) (not e!842715))))

(assert (=> b!1508409 (= res!1028489 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48518 a!2804) j!70) mask!2512) (select (arr!48518 a!2804) j!70) a!2804 mask!2512) lt!654594))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1508409 (= lt!654594 (Intermediate!12710 false resIndex!21 resX!21))))

(declare-fun res!1028493 () Bool)

(assert (=> start!128760 (=> (not res!1028493) (not e!842717))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128760 (= res!1028493 (validMask!0 mask!2512))))

(assert (=> start!128760 e!842717))

(assert (=> start!128760 true))

(declare-fun array_inv!37463 (array!100568) Bool)

(assert (=> start!128760 (array_inv!37463 a!2804)))

(declare-fun b!1508410 () Bool)

(declare-fun res!1028488 () Bool)

(assert (=> b!1508410 (=> (not res!1028488) (not e!842717))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100568 (_ BitVec 32)) Bool)

(assert (=> b!1508410 (= res!1028488 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1508411 () Bool)

(declare-fun res!1028485 () Bool)

(assert (=> b!1508411 (=> (not res!1028485) (not e!842717))))

(assert (=> b!1508411 (= res!1028485 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49069 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49069 a!2804))))))

(declare-fun b!1508412 () Bool)

(declare-fun res!1028492 () Bool)

(assert (=> b!1508412 (=> (not res!1028492) (not e!842717))))

(assert (=> b!1508412 (= res!1028492 (validKeyInArray!0 (select (arr!48518 a!2804) i!961)))))

(declare-fun b!1508413 () Bool)

(declare-fun res!1028491 () Bool)

(assert (=> b!1508413 (=> (not res!1028491) (not e!842717))))

(declare-datatypes ((List!35181 0))(
  ( (Nil!35178) (Cons!35177 (h!36587 (_ BitVec 64)) (t!49882 List!35181)) )
))
(declare-fun arrayNoDuplicates!0 (array!100568 (_ BitVec 32) List!35181) Bool)

(assert (=> b!1508413 (= res!1028491 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35178))))

(assert (= (and start!128760 res!1028493) b!1508406))

(assert (= (and b!1508406 res!1028486) b!1508412))

(assert (= (and b!1508412 res!1028492) b!1508407))

(assert (= (and b!1508407 res!1028487) b!1508410))

(assert (= (and b!1508410 res!1028488) b!1508413))

(assert (= (and b!1508413 res!1028491) b!1508411))

(assert (= (and b!1508411 res!1028485) b!1508409))

(assert (= (and b!1508409 res!1028489) b!1508408))

(assert (= (and b!1508408 res!1028490) b!1508405))

(declare-fun m!1390969 () Bool)

(assert (=> b!1508413 m!1390969))

(declare-fun m!1390971 () Bool)

(assert (=> b!1508412 m!1390971))

(assert (=> b!1508412 m!1390971))

(declare-fun m!1390973 () Bool)

(assert (=> b!1508412 m!1390973))

(declare-fun m!1390975 () Bool)

(assert (=> start!128760 m!1390975))

(declare-fun m!1390977 () Bool)

(assert (=> start!128760 m!1390977))

(declare-fun m!1390979 () Bool)

(assert (=> b!1508407 m!1390979))

(assert (=> b!1508407 m!1390979))

(declare-fun m!1390981 () Bool)

(assert (=> b!1508407 m!1390981))

(assert (=> b!1508409 m!1390979))

(assert (=> b!1508409 m!1390979))

(declare-fun m!1390983 () Bool)

(assert (=> b!1508409 m!1390983))

(assert (=> b!1508409 m!1390983))

(assert (=> b!1508409 m!1390979))

(declare-fun m!1390985 () Bool)

(assert (=> b!1508409 m!1390985))

(assert (=> b!1508408 m!1390979))

(assert (=> b!1508408 m!1390979))

(declare-fun m!1390987 () Bool)

(assert (=> b!1508408 m!1390987))

(declare-fun m!1390989 () Bool)

(assert (=> b!1508410 m!1390989))

(declare-fun m!1390991 () Bool)

(assert (=> b!1508405 m!1390991))

(declare-fun m!1390993 () Bool)

(assert (=> b!1508405 m!1390993))

(assert (=> b!1508405 m!1390993))

(declare-fun m!1390995 () Bool)

(assert (=> b!1508405 m!1390995))

(check-sat (not b!1508413) (not b!1508412) (not b!1508405) (not b!1508408) (not b!1508410) (not b!1508407) (not start!128760) (not b!1508409))
(check-sat)
