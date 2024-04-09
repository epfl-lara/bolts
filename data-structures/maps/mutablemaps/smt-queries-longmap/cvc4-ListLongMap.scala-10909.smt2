; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127766 () Bool)

(assert start!127766)

(declare-fun b!1500730 () Bool)

(declare-fun res!1021878 () Bool)

(declare-fun e!839704 () Bool)

(assert (=> b!1500730 (=> (not res!1021878) (not e!839704))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100060 0))(
  ( (array!100061 (arr!48285 (Array (_ BitVec 32) (_ BitVec 64))) (size!48836 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100060)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1500730 (= res!1021878 (and (= (size!48836 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48836 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48836 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1500731 () Bool)

(declare-fun e!839705 () Bool)

(assert (=> b!1500731 (= e!839704 e!839705)))

(declare-fun res!1021882 () Bool)

(assert (=> b!1500731 (=> (not res!1021882) (not e!839705))))

(declare-fun lt!652966 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(assert (=> b!1500731 (= res!1021882 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652966 #b00000000000000000000000000000000) (bvslt lt!652966 (size!48836 a!2850))))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500731 (= lt!652966 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1500732 () Bool)

(declare-fun res!1021887 () Bool)

(assert (=> b!1500732 (=> (not res!1021887) (not e!839704))))

(declare-datatypes ((List!34957 0))(
  ( (Nil!34954) (Cons!34953 (h!36351 (_ BitVec 64)) (t!49658 List!34957)) )
))
(declare-fun arrayNoDuplicates!0 (array!100060 (_ BitVec 32) List!34957) Bool)

(assert (=> b!1500732 (= res!1021887 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34954))))

(declare-fun res!1021886 () Bool)

(assert (=> start!127766 (=> (not res!1021886) (not e!839704))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127766 (= res!1021886 (validMask!0 mask!2661))))

(assert (=> start!127766 e!839704))

(assert (=> start!127766 true))

(declare-fun array_inv!37230 (array!100060) Bool)

(assert (=> start!127766 (array_inv!37230 a!2850)))

(declare-fun b!1500733 () Bool)

(declare-fun res!1021880 () Bool)

(assert (=> b!1500733 (=> (not res!1021880) (not e!839704))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12514 0))(
  ( (MissingZero!12514 (index!52447 (_ BitVec 32))) (Found!12514 (index!52448 (_ BitVec 32))) (Intermediate!12514 (undefined!13326 Bool) (index!52449 (_ BitVec 32)) (x!134129 (_ BitVec 32))) (Undefined!12514) (MissingVacant!12514 (index!52450 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100060 (_ BitVec 32)) SeekEntryResult!12514)

(assert (=> b!1500733 (= res!1021880 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48285 a!2850) j!87) a!2850 mask!2661) (Found!12514 j!87)))))

(declare-fun b!1500734 () Bool)

(declare-fun res!1021885 () Bool)

(assert (=> b!1500734 (=> (not res!1021885) (not e!839704))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500734 (= res!1021885 (validKeyInArray!0 (select (arr!48285 a!2850) j!87)))))

(declare-fun b!1500735 () Bool)

(assert (=> b!1500735 (= e!839705 false)))

(declare-fun lt!652965 () SeekEntryResult!12514)

(assert (=> b!1500735 (= lt!652965 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652966 vacantBefore!10 (select (arr!48285 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1500736 () Bool)

(declare-fun res!1021881 () Bool)

(assert (=> b!1500736 (=> (not res!1021881) (not e!839704))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500736 (= res!1021881 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48836 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48836 a!2850)) (= (select (arr!48285 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48285 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48836 a!2850))))))

(declare-fun b!1500737 () Bool)

(declare-fun res!1021879 () Bool)

(assert (=> b!1500737 (=> (not res!1021879) (not e!839704))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100060 (_ BitVec 32)) Bool)

(assert (=> b!1500737 (= res!1021879 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1500738 () Bool)

(declare-fun res!1021884 () Bool)

(assert (=> b!1500738 (=> (not res!1021884) (not e!839704))))

(assert (=> b!1500738 (= res!1021884 (not (= (select (arr!48285 a!2850) index!625) (select (arr!48285 a!2850) j!87))))))

(declare-fun b!1500739 () Bool)

(declare-fun res!1021883 () Bool)

(assert (=> b!1500739 (=> (not res!1021883) (not e!839704))))

(assert (=> b!1500739 (= res!1021883 (validKeyInArray!0 (select (arr!48285 a!2850) i!996)))))

(assert (= (and start!127766 res!1021886) b!1500730))

(assert (= (and b!1500730 res!1021878) b!1500739))

(assert (= (and b!1500739 res!1021883) b!1500734))

(assert (= (and b!1500734 res!1021885) b!1500737))

(assert (= (and b!1500737 res!1021879) b!1500732))

(assert (= (and b!1500732 res!1021887) b!1500736))

(assert (= (and b!1500736 res!1021881) b!1500733))

(assert (= (and b!1500733 res!1021880) b!1500738))

(assert (= (and b!1500738 res!1021884) b!1500731))

(assert (= (and b!1500731 res!1021882) b!1500735))

(declare-fun m!1383981 () Bool)

(assert (=> b!1500738 m!1383981))

(declare-fun m!1383983 () Bool)

(assert (=> b!1500738 m!1383983))

(assert (=> b!1500735 m!1383983))

(assert (=> b!1500735 m!1383983))

(declare-fun m!1383985 () Bool)

(assert (=> b!1500735 m!1383985))

(assert (=> b!1500733 m!1383983))

(assert (=> b!1500733 m!1383983))

(declare-fun m!1383987 () Bool)

(assert (=> b!1500733 m!1383987))

(declare-fun m!1383989 () Bool)

(assert (=> b!1500737 m!1383989))

(declare-fun m!1383991 () Bool)

(assert (=> b!1500732 m!1383991))

(declare-fun m!1383993 () Bool)

(assert (=> b!1500731 m!1383993))

(declare-fun m!1383995 () Bool)

(assert (=> b!1500739 m!1383995))

(assert (=> b!1500739 m!1383995))

(declare-fun m!1383997 () Bool)

(assert (=> b!1500739 m!1383997))

(declare-fun m!1383999 () Bool)

(assert (=> b!1500736 m!1383999))

(declare-fun m!1384001 () Bool)

(assert (=> b!1500736 m!1384001))

(declare-fun m!1384003 () Bool)

(assert (=> b!1500736 m!1384003))

(assert (=> b!1500734 m!1383983))

(assert (=> b!1500734 m!1383983))

(declare-fun m!1384005 () Bool)

(assert (=> b!1500734 m!1384005))

(declare-fun m!1384007 () Bool)

(assert (=> start!127766 m!1384007))

(declare-fun m!1384009 () Bool)

(assert (=> start!127766 m!1384009))

(push 1)

(assert (not b!1500734))

(assert (not start!127766))

(assert (not b!1500735))

(assert (not b!1500739))

(assert (not b!1500732))

(assert (not b!1500733))

(assert (not b!1500737))

(assert (not b!1500731))

(check-sat)

