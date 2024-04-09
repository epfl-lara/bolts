; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128306 () Bool)

(assert start!128306)

(declare-fun b!1505514 () Bool)

(declare-fun res!1026034 () Bool)

(declare-fun e!841477 () Bool)

(assert (=> b!1505514 (=> (not res!1026034) (not e!841477))))

(declare-datatypes ((array!100372 0))(
  ( (array!100373 (arr!48432 (Array (_ BitVec 32) (_ BitVec 64))) (size!48983 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100372)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1505514 (= res!1026034 (validKeyInArray!0 (select (arr!48432 a!2804) j!70)))))

(declare-fun b!1505515 () Bool)

(declare-fun res!1026035 () Bool)

(assert (=> b!1505515 (=> (not res!1026035) (not e!841477))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1505515 (= res!1026035 (and (= (size!48983 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!48983 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!48983 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1505516 () Bool)

(assert (=> b!1505516 (= e!841477 (and (bvsle #b00000000000000000000000000000000 (size!48983 a!2804)) (bvsge (size!48983 a!2804) #b01111111111111111111111111111111)))))

(declare-fun res!1026033 () Bool)

(assert (=> start!128306 (=> (not res!1026033) (not e!841477))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128306 (= res!1026033 (validMask!0 mask!2512))))

(assert (=> start!128306 e!841477))

(assert (=> start!128306 true))

(declare-fun array_inv!37377 (array!100372) Bool)

(assert (=> start!128306 (array_inv!37377 a!2804)))

(declare-fun b!1505517 () Bool)

(declare-fun res!1026036 () Bool)

(assert (=> b!1505517 (=> (not res!1026036) (not e!841477))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100372 (_ BitVec 32)) Bool)

(assert (=> b!1505517 (= res!1026036 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1505518 () Bool)

(declare-fun res!1026032 () Bool)

(assert (=> b!1505518 (=> (not res!1026032) (not e!841477))))

(assert (=> b!1505518 (= res!1026032 (validKeyInArray!0 (select (arr!48432 a!2804) i!961)))))

(assert (= (and start!128306 res!1026033) b!1505515))

(assert (= (and b!1505515 res!1026035) b!1505518))

(assert (= (and b!1505518 res!1026032) b!1505514))

(assert (= (and b!1505514 res!1026034) b!1505517))

(assert (= (and b!1505517 res!1026036) b!1505516))

(declare-fun m!1388665 () Bool)

(assert (=> b!1505514 m!1388665))

(assert (=> b!1505514 m!1388665))

(declare-fun m!1388667 () Bool)

(assert (=> b!1505514 m!1388667))

(declare-fun m!1388669 () Bool)

(assert (=> start!128306 m!1388669))

(declare-fun m!1388671 () Bool)

(assert (=> start!128306 m!1388671))

(declare-fun m!1388673 () Bool)

(assert (=> b!1505517 m!1388673))

(declare-fun m!1388675 () Bool)

(assert (=> b!1505518 m!1388675))

(assert (=> b!1505518 m!1388675))

(declare-fun m!1388677 () Bool)

(assert (=> b!1505518 m!1388677))

(push 1)

(assert (not b!1505514))

(assert (not start!128306))

(assert (not b!1505518))

(assert (not b!1505517))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!157995 () Bool)

(assert (=> d!157995 (= (validKeyInArray!0 (select (arr!48432 a!2804) j!70)) (and (not (= (select (arr!48432 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48432 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1505514 d!157995))

(declare-fun d!157997 () Bool)

(assert (=> d!157997 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!128306 d!157997))

(declare-fun d!158007 () Bool)

(assert (=> d!158007 (= (array_inv!37377 a!2804) (bvsge (size!48983 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!128306 d!158007))

(declare-fun d!158009 () Bool)

(assert (=> d!158009 (= (validKeyInArray!0 (select (arr!48432 a!2804) i!961)) (and (not (= (select (arr!48432 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48432 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1505518 d!158009))

(declare-fun b!1505551 () Bool)

(declare-fun e!841505 () Bool)

