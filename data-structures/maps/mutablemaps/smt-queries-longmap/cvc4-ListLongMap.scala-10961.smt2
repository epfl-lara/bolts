; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128414 () Bool)

(assert start!128414)

(declare-fun b!1505861 () Bool)

(declare-fun res!1026330 () Bool)

(declare-fun e!841681 () Bool)

(assert (=> b!1505861 (=> (not res!1026330) (not e!841681))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100399 0))(
  ( (array!100400 (arr!48441 (Array (_ BitVec 32) (_ BitVec 64))) (size!48992 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100399)

(assert (=> b!1505861 (= res!1026330 (and (= (size!48992 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!48992 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!48992 a!2804)) (not (= i!961 j!70))))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun b!1505862 () Bool)

(assert (=> b!1505862 (= e!841681 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!48992 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!48992 a!2804)) (bvslt mask!2512 #b00000000000000000000000000000000)))))

(declare-fun b!1505863 () Bool)

(declare-fun res!1026329 () Bool)

(assert (=> b!1505863 (=> (not res!1026329) (not e!841681))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100399 (_ BitVec 32)) Bool)

(assert (=> b!1505863 (= res!1026329 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1505864 () Bool)

(declare-fun res!1026328 () Bool)

(assert (=> b!1505864 (=> (not res!1026328) (not e!841681))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1505864 (= res!1026328 (validKeyInArray!0 (select (arr!48441 a!2804) j!70)))))

(declare-fun res!1026325 () Bool)

(assert (=> start!128414 (=> (not res!1026325) (not e!841681))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128414 (= res!1026325 (validMask!0 mask!2512))))

(assert (=> start!128414 e!841681))

(assert (=> start!128414 true))

(declare-fun array_inv!37386 (array!100399) Bool)

(assert (=> start!128414 (array_inv!37386 a!2804)))

(declare-fun b!1505865 () Bool)

(declare-fun res!1026327 () Bool)

(assert (=> b!1505865 (=> (not res!1026327) (not e!841681))))

(assert (=> b!1505865 (= res!1026327 (validKeyInArray!0 (select (arr!48441 a!2804) i!961)))))

(declare-fun b!1505866 () Bool)

(declare-fun res!1026326 () Bool)

(assert (=> b!1505866 (=> (not res!1026326) (not e!841681))))

(declare-datatypes ((List!35104 0))(
  ( (Nil!35101) (Cons!35100 (h!36498 (_ BitVec 64)) (t!49805 List!35104)) )
))
(declare-fun arrayNoDuplicates!0 (array!100399 (_ BitVec 32) List!35104) Bool)

(assert (=> b!1505866 (= res!1026326 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35101))))

(assert (= (and start!128414 res!1026325) b!1505861))

(assert (= (and b!1505861 res!1026330) b!1505865))

(assert (= (and b!1505865 res!1026327) b!1505864))

(assert (= (and b!1505864 res!1026328) b!1505863))

(assert (= (and b!1505863 res!1026329) b!1505866))

(assert (= (and b!1505866 res!1026326) b!1505862))

(declare-fun m!1388981 () Bool)

(assert (=> b!1505866 m!1388981))

(declare-fun m!1388983 () Bool)

(assert (=> b!1505865 m!1388983))

(assert (=> b!1505865 m!1388983))

(declare-fun m!1388985 () Bool)

(assert (=> b!1505865 m!1388985))

(declare-fun m!1388987 () Bool)

(assert (=> start!128414 m!1388987))

(declare-fun m!1388989 () Bool)

(assert (=> start!128414 m!1388989))

(declare-fun m!1388991 () Bool)

(assert (=> b!1505863 m!1388991))

(declare-fun m!1388993 () Bool)

(assert (=> b!1505864 m!1388993))

(assert (=> b!1505864 m!1388993))

(declare-fun m!1388995 () Bool)

(assert (=> b!1505864 m!1388995))

(push 1)

(assert (not b!1505866))

(assert (not b!1505865))

(assert (not b!1505864))

(assert (not start!128414))

(assert (not b!1505863))

(check-sat)

(pop 1)

(push 1)

(check-sat)

