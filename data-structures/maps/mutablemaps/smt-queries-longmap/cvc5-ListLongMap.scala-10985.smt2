; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128746 () Bool)

(assert start!128746)

(declare-fun b!1508216 () Bool)

(declare-fun res!1028296 () Bool)

(declare-fun e!842653 () Bool)

(assert (=> b!1508216 (=> (not res!1028296) (not e!842653))))

(declare-datatypes ((SeekEntryResult!12703 0))(
  ( (MissingZero!12703 (index!53206 (_ BitVec 32))) (Found!12703 (index!53207 (_ BitVec 32))) (Intermediate!12703 (undefined!13515 Bool) (index!53208 (_ BitVec 32)) (x!134980 (_ BitVec 32))) (Undefined!12703) (MissingVacant!12703 (index!53209 (_ BitVec 32))) )
))
(declare-fun lt!654552 () SeekEntryResult!12703)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100554 0))(
  ( (array!100555 (arr!48511 (Array (_ BitVec 32) (_ BitVec 64))) (size!49062 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100554)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100554 (_ BitVec 32)) SeekEntryResult!12703)

(assert (=> b!1508216 (= res!1028296 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48511 a!2804) j!70) a!2804 mask!2512) lt!654552))))

(declare-fun b!1508217 () Bool)

(declare-fun res!1028304 () Bool)

(declare-fun e!842652 () Bool)

(assert (=> b!1508217 (=> (not res!1028304) (not e!842652))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1508217 (= res!1028304 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49062 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49062 a!2804))))))

(declare-fun b!1508218 () Bool)

(declare-fun res!1028300 () Bool)

(assert (=> b!1508218 (=> (not res!1028300) (not e!842652))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1508218 (= res!1028300 (validKeyInArray!0 (select (arr!48511 a!2804) j!70)))))

(declare-fun b!1508219 () Bool)

(assert (=> b!1508219 (= e!842652 e!842653)))

(declare-fun res!1028297 () Bool)

(assert (=> b!1508219 (=> (not res!1028297) (not e!842653))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1508219 (= res!1028297 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48511 a!2804) j!70) mask!2512) (select (arr!48511 a!2804) j!70) a!2804 mask!2512) lt!654552))))

(assert (=> b!1508219 (= lt!654552 (Intermediate!12703 false resIndex!21 resX!21))))

(declare-fun b!1508220 () Bool)

(declare-fun res!1028303 () Bool)

(assert (=> b!1508220 (=> (not res!1028303) (not e!842652))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1508220 (= res!1028303 (and (= (size!49062 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49062 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49062 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1508221 () Bool)

(declare-fun res!1028298 () Bool)

(assert (=> b!1508221 (=> (not res!1028298) (not e!842652))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100554 (_ BitVec 32)) Bool)

(assert (=> b!1508221 (= res!1028298 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1508222 () Bool)

(assert (=> b!1508222 (= e!842653 false)))

(declare-fun lt!654553 () (_ BitVec 32))

(assert (=> b!1508222 (= lt!654553 (toIndex!0 (select (store (arr!48511 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512))))

(declare-fun res!1028301 () Bool)

(assert (=> start!128746 (=> (not res!1028301) (not e!842652))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128746 (= res!1028301 (validMask!0 mask!2512))))

(assert (=> start!128746 e!842652))

(assert (=> start!128746 true))

(declare-fun array_inv!37456 (array!100554) Bool)

(assert (=> start!128746 (array_inv!37456 a!2804)))

(declare-fun b!1508223 () Bool)

(declare-fun res!1028302 () Bool)

(assert (=> b!1508223 (=> (not res!1028302) (not e!842652))))

(declare-datatypes ((List!35174 0))(
  ( (Nil!35171) (Cons!35170 (h!36580 (_ BitVec 64)) (t!49875 List!35174)) )
))
(declare-fun arrayNoDuplicates!0 (array!100554 (_ BitVec 32) List!35174) Bool)

(assert (=> b!1508223 (= res!1028302 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35171))))

(declare-fun b!1508224 () Bool)

(declare-fun res!1028299 () Bool)

(assert (=> b!1508224 (=> (not res!1028299) (not e!842652))))

(assert (=> b!1508224 (= res!1028299 (validKeyInArray!0 (select (arr!48511 a!2804) i!961)))))

(assert (= (and start!128746 res!1028301) b!1508220))

(assert (= (and b!1508220 res!1028303) b!1508224))

(assert (= (and b!1508224 res!1028299) b!1508218))

(assert (= (and b!1508218 res!1028300) b!1508221))

(assert (= (and b!1508221 res!1028298) b!1508223))

(assert (= (and b!1508223 res!1028302) b!1508217))

(assert (= (and b!1508217 res!1028304) b!1508219))

(assert (= (and b!1508219 res!1028297) b!1508216))

(assert (= (and b!1508216 res!1028296) b!1508222))

(declare-fun m!1390773 () Bool)

(assert (=> b!1508221 m!1390773))

(declare-fun m!1390775 () Bool)

(assert (=> b!1508216 m!1390775))

(assert (=> b!1508216 m!1390775))

(declare-fun m!1390777 () Bool)

(assert (=> b!1508216 m!1390777))

(declare-fun m!1390779 () Bool)

(assert (=> start!128746 m!1390779))

(declare-fun m!1390781 () Bool)

(assert (=> start!128746 m!1390781))

(declare-fun m!1390783 () Bool)

(assert (=> b!1508222 m!1390783))

(declare-fun m!1390785 () Bool)

(assert (=> b!1508222 m!1390785))

(assert (=> b!1508222 m!1390785))

(declare-fun m!1390787 () Bool)

(assert (=> b!1508222 m!1390787))

(declare-fun m!1390789 () Bool)

(assert (=> b!1508224 m!1390789))

(assert (=> b!1508224 m!1390789))

(declare-fun m!1390791 () Bool)

(assert (=> b!1508224 m!1390791))

(assert (=> b!1508218 m!1390775))

(assert (=> b!1508218 m!1390775))

(declare-fun m!1390793 () Bool)

(assert (=> b!1508218 m!1390793))

(assert (=> b!1508219 m!1390775))

(assert (=> b!1508219 m!1390775))

(declare-fun m!1390795 () Bool)

(assert (=> b!1508219 m!1390795))

(assert (=> b!1508219 m!1390795))

(assert (=> b!1508219 m!1390775))

(declare-fun m!1390797 () Bool)

(assert (=> b!1508219 m!1390797))

(declare-fun m!1390799 () Bool)

(assert (=> b!1508223 m!1390799))

(push 1)

