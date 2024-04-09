; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130576 () Bool)

(assert start!130576)

(declare-fun b!1531956 () Bool)

(declare-fun e!853604 () Bool)

(declare-fun e!853609 () Bool)

(assert (=> b!1531956 (= e!853604 e!853609)))

(declare-fun res!1049243 () Bool)

(assert (=> b!1531956 (=> (not res!1049243) (not e!853609))))

(declare-datatypes ((array!101682 0))(
  ( (array!101683 (arr!49057 (Array (_ BitVec 32) (_ BitVec 64))) (size!49608 (_ BitVec 32))) )
))
(declare-fun lt!663452 () array!101682)

(declare-datatypes ((SeekEntryResult!13243 0))(
  ( (MissingZero!13243 (index!55366 (_ BitVec 32))) (Found!13243 (index!55367 (_ BitVec 32))) (Intermediate!13243 (undefined!14055 Bool) (index!55368 (_ BitVec 32)) (x!137072 (_ BitVec 32))) (Undefined!13243) (MissingVacant!13243 (index!55369 (_ BitVec 32))) )
))
(declare-fun lt!663450 () SeekEntryResult!13243)

(declare-fun lt!663454 () (_ BitVec 64))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101682 (_ BitVec 32)) SeekEntryResult!13243)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531956 (= res!1049243 (= lt!663450 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!663454 mask!2512) lt!663454 lt!663452 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun a!2804 () array!101682)

(assert (=> b!1531956 (= lt!663454 (select (store (arr!49057 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1531956 (= lt!663452 (array!101683 (store (arr!49057 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49608 a!2804)))))

(declare-fun b!1531957 () Bool)

(declare-fun e!853605 () Bool)

(declare-fun e!853607 () Bool)

(assert (=> b!1531957 (= e!853605 e!853607)))

(declare-fun res!1049239 () Bool)

(assert (=> b!1531957 (=> res!1049239 e!853607)))

(declare-fun lt!663448 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1531957 (= res!1049239 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!663448 #b00000000000000000000000000000000) (bvsge lt!663448 (size!49608 a!2804))))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531957 (= lt!663448 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1531958 () Bool)

(declare-fun res!1049246 () Bool)

(declare-fun e!853608 () Bool)

(assert (=> b!1531958 (=> (not res!1049246) (not e!853608))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1531958 (= res!1049246 (validKeyInArray!0 (select (arr!49057 a!2804) i!961)))))

(declare-fun b!1531959 () Bool)

(assert (=> b!1531959 (= e!853607 true)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101682 (_ BitVec 32)) SeekEntryResult!13243)

(assert (=> b!1531959 (= (seekEntryOrOpen!0 (select (arr!49057 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!663454 lt!663452 mask!2512))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-datatypes ((Unit!51226 0))(
  ( (Unit!51227) )
))
(declare-fun lt!663451 () Unit!51226)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101682 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51226)

(assert (=> b!1531959 (= lt!663451 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!663448 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1531960 () Bool)

(assert (=> b!1531960 (= e!853609 (not e!853605))))

(declare-fun res!1049241 () Bool)

(assert (=> b!1531960 (=> res!1049241 e!853605)))

(assert (=> b!1531960 (= res!1049241 (or (not (= (select (arr!49057 a!2804) j!70) lt!663454)) (= x!534 resX!21)))))

(declare-fun e!853606 () Bool)

(assert (=> b!1531960 e!853606))

(declare-fun res!1049235 () Bool)

(assert (=> b!1531960 (=> (not res!1049235) (not e!853606))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101682 (_ BitVec 32)) Bool)

(assert (=> b!1531960 (= res!1049235 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!663453 () Unit!51226)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101682 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51226)

(assert (=> b!1531960 (= lt!663453 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1531961 () Bool)

(declare-fun res!1049245 () Bool)

(assert (=> b!1531961 (=> (not res!1049245) (not e!853608))))

(declare-datatypes ((List!35720 0))(
  ( (Nil!35717) (Cons!35716 (h!37162 (_ BitVec 64)) (t!50421 List!35720)) )
))
(declare-fun arrayNoDuplicates!0 (array!101682 (_ BitVec 32) List!35720) Bool)

(assert (=> b!1531961 (= res!1049245 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35717))))

(declare-fun b!1531963 () Bool)

(assert (=> b!1531963 (= e!853608 e!853604)))

(declare-fun res!1049234 () Bool)

(assert (=> b!1531963 (=> (not res!1049234) (not e!853604))))

(declare-fun lt!663449 () SeekEntryResult!13243)

(assert (=> b!1531963 (= res!1049234 (= lt!663450 lt!663449))))

(assert (=> b!1531963 (= lt!663449 (Intermediate!13243 false resIndex!21 resX!21))))

(assert (=> b!1531963 (= lt!663450 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49057 a!2804) j!70) mask!2512) (select (arr!49057 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1531964 () Bool)

(declare-fun res!1049247 () Bool)

(assert (=> b!1531964 (=> res!1049247 e!853607)))

(assert (=> b!1531964 (= res!1049247 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!663448 (select (arr!49057 a!2804) j!70) a!2804 mask!2512) lt!663449)))))

(declare-fun b!1531965 () Bool)

(declare-fun res!1049238 () Bool)

(assert (=> b!1531965 (=> (not res!1049238) (not e!853604))))

(assert (=> b!1531965 (= res!1049238 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49057 a!2804) j!70) a!2804 mask!2512) lt!663449))))

(declare-fun b!1531966 () Bool)

(declare-fun res!1049237 () Bool)

(assert (=> b!1531966 (=> (not res!1049237) (not e!853608))))

(assert (=> b!1531966 (= res!1049237 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49608 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49608 a!2804))))))

(declare-fun b!1531967 () Bool)

(declare-fun res!1049242 () Bool)

(assert (=> b!1531967 (=> (not res!1049242) (not e!853608))))

(assert (=> b!1531967 (= res!1049242 (validKeyInArray!0 (select (arr!49057 a!2804) j!70)))))

(declare-fun res!1049236 () Bool)

(assert (=> start!130576 (=> (not res!1049236) (not e!853608))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130576 (= res!1049236 (validMask!0 mask!2512))))

(assert (=> start!130576 e!853608))

(assert (=> start!130576 true))

(declare-fun array_inv!38002 (array!101682) Bool)

(assert (=> start!130576 (array_inv!38002 a!2804)))

(declare-fun b!1531962 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101682 (_ BitVec 32)) SeekEntryResult!13243)

(assert (=> b!1531962 (= e!853606 (= (seekEntry!0 (select (arr!49057 a!2804) j!70) a!2804 mask!2512) (Found!13243 j!70)))))

(declare-fun b!1531968 () Bool)

(declare-fun res!1049240 () Bool)

(assert (=> b!1531968 (=> (not res!1049240) (not e!853608))))

(assert (=> b!1531968 (= res!1049240 (and (= (size!49608 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49608 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49608 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1531969 () Bool)

(declare-fun res!1049244 () Bool)

(assert (=> b!1531969 (=> (not res!1049244) (not e!853608))))

(assert (=> b!1531969 (= res!1049244 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!130576 res!1049236) b!1531968))

(assert (= (and b!1531968 res!1049240) b!1531958))

(assert (= (and b!1531958 res!1049246) b!1531967))

(assert (= (and b!1531967 res!1049242) b!1531969))

(assert (= (and b!1531969 res!1049244) b!1531961))

(assert (= (and b!1531961 res!1049245) b!1531966))

(assert (= (and b!1531966 res!1049237) b!1531963))

(assert (= (and b!1531963 res!1049234) b!1531965))

(assert (= (and b!1531965 res!1049238) b!1531956))

(assert (= (and b!1531956 res!1049243) b!1531960))

(assert (= (and b!1531960 res!1049235) b!1531962))

(assert (= (and b!1531960 (not res!1049241)) b!1531957))

(assert (= (and b!1531957 (not res!1049239)) b!1531964))

(assert (= (and b!1531964 (not res!1049247)) b!1531959))

(declare-fun m!1414695 () Bool)

(assert (=> b!1531957 m!1414695))

(declare-fun m!1414697 () Bool)

(assert (=> b!1531960 m!1414697))

(declare-fun m!1414699 () Bool)

(assert (=> b!1531960 m!1414699))

(declare-fun m!1414701 () Bool)

(assert (=> b!1531960 m!1414701))

(assert (=> b!1531967 m!1414697))

(assert (=> b!1531967 m!1414697))

(declare-fun m!1414703 () Bool)

(assert (=> b!1531967 m!1414703))

(assert (=> b!1531963 m!1414697))

(assert (=> b!1531963 m!1414697))

(declare-fun m!1414705 () Bool)

(assert (=> b!1531963 m!1414705))

(assert (=> b!1531963 m!1414705))

(assert (=> b!1531963 m!1414697))

(declare-fun m!1414707 () Bool)

(assert (=> b!1531963 m!1414707))

(assert (=> b!1531959 m!1414697))

(assert (=> b!1531959 m!1414697))

(declare-fun m!1414709 () Bool)

(assert (=> b!1531959 m!1414709))

(declare-fun m!1414711 () Bool)

(assert (=> b!1531959 m!1414711))

(declare-fun m!1414713 () Bool)

(assert (=> b!1531959 m!1414713))

(declare-fun m!1414715 () Bool)

(assert (=> b!1531958 m!1414715))

(assert (=> b!1531958 m!1414715))

(declare-fun m!1414717 () Bool)

(assert (=> b!1531958 m!1414717))

(assert (=> b!1531962 m!1414697))

(assert (=> b!1531962 m!1414697))

(declare-fun m!1414719 () Bool)

(assert (=> b!1531962 m!1414719))

(declare-fun m!1414721 () Bool)

(assert (=> start!130576 m!1414721))

(declare-fun m!1414723 () Bool)

(assert (=> start!130576 m!1414723))

(assert (=> b!1531965 m!1414697))

(assert (=> b!1531965 m!1414697))

(declare-fun m!1414725 () Bool)

(assert (=> b!1531965 m!1414725))

(assert (=> b!1531964 m!1414697))

(assert (=> b!1531964 m!1414697))

(declare-fun m!1414727 () Bool)

(assert (=> b!1531964 m!1414727))

(declare-fun m!1414729 () Bool)

(assert (=> b!1531969 m!1414729))

(declare-fun m!1414731 () Bool)

(assert (=> b!1531956 m!1414731))

(assert (=> b!1531956 m!1414731))

(declare-fun m!1414733 () Bool)

(assert (=> b!1531956 m!1414733))

(declare-fun m!1414735 () Bool)

(assert (=> b!1531956 m!1414735))

(declare-fun m!1414737 () Bool)

(assert (=> b!1531956 m!1414737))

(declare-fun m!1414739 () Bool)

(assert (=> b!1531961 m!1414739))

(push 1)

