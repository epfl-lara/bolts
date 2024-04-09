; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128216 () Bool)

(assert start!128216)

(declare-fun b!1504779 () Bool)

(declare-fun res!1025443 () Bool)

(declare-fun e!841145 () Bool)

(assert (=> b!1504779 (=> (not res!1025443) (not e!841145))))

(declare-fun lt!653779 () (_ BitVec 32))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100327 0))(
  ( (array!100328 (arr!48411 (Array (_ BitVec 32) (_ BitVec 64))) (size!48962 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100327)

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12628 0))(
  ( (MissingZero!12628 (index!52903 (_ BitVec 32))) (Found!12628 (index!52904 (_ BitVec 32))) (Intermediate!12628 (undefined!13440 Bool) (index!52905 (_ BitVec 32)) (x!134603 (_ BitVec 32))) (Undefined!12628) (MissingVacant!12628 (index!52906 (_ BitVec 32))) )
))
(declare-fun lt!653778 () SeekEntryResult!12628)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100327 (_ BitVec 32)) SeekEntryResult!12628)

(assert (=> b!1504779 (= res!1025443 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653779 vacantBefore!10 (select (arr!48411 a!2850) j!87) a!2850 mask!2661) lt!653778))))

(declare-fun b!1504780 () Bool)

(declare-fun e!841144 () Bool)

(assert (=> b!1504780 (= e!841144 e!841145)))

(declare-fun res!1025448 () Bool)

(assert (=> b!1504780 (=> (not res!1025448) (not e!841145))))

(assert (=> b!1504780 (= res!1025448 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653779 #b00000000000000000000000000000000) (bvslt lt!653779 (size!48962 a!2850))))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1504780 (= lt!653779 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1504781 () Bool)

(declare-fun res!1025451 () Bool)

(declare-fun e!841142 () Bool)

(assert (=> b!1504781 (=> (not res!1025451) (not e!841142))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100327 (_ BitVec 32)) Bool)

(assert (=> b!1504781 (= res!1025451 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1504782 () Bool)

(assert (=> b!1504782 (= e!841142 e!841144)))

(declare-fun res!1025442 () Bool)

(assert (=> b!1504782 (=> (not res!1025442) (not e!841144))))

(assert (=> b!1504782 (= res!1025442 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48411 a!2850) j!87) a!2850 mask!2661) lt!653778))))

(assert (=> b!1504782 (= lt!653778 (Found!12628 j!87))))

(declare-fun b!1504783 () Bool)

(declare-fun res!1025445 () Bool)

(assert (=> b!1504783 (=> (not res!1025445) (not e!841142))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1504783 (= res!1025445 (validKeyInArray!0 (select (arr!48411 a!2850) j!87)))))

(declare-fun res!1025446 () Bool)

(assert (=> start!128216 (=> (not res!1025446) (not e!841142))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128216 (= res!1025446 (validMask!0 mask!2661))))

(assert (=> start!128216 e!841142))

(assert (=> start!128216 true))

(declare-fun array_inv!37356 (array!100327) Bool)

(assert (=> start!128216 (array_inv!37356 a!2850)))

(declare-fun b!1504784 () Bool)

(declare-fun res!1025447 () Bool)

(assert (=> b!1504784 (=> (not res!1025447) (not e!841144))))

(assert (=> b!1504784 (= res!1025447 (not (= (select (arr!48411 a!2850) index!625) (select (arr!48411 a!2850) j!87))))))

(declare-fun b!1504785 () Bool)

(declare-fun res!1025449 () Bool)

(assert (=> b!1504785 (=> (not res!1025449) (not e!841142))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1504785 (= res!1025449 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48962 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48962 a!2850)) (= (select (arr!48411 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48411 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48962 a!2850))))))

(declare-fun b!1504786 () Bool)

(declare-fun res!1025450 () Bool)

(assert (=> b!1504786 (=> (not res!1025450) (not e!841142))))

(assert (=> b!1504786 (= res!1025450 (and (= (size!48962 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48962 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48962 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1504787 () Bool)

(declare-fun res!1025441 () Bool)

(assert (=> b!1504787 (=> (not res!1025441) (not e!841142))))

(declare-datatypes ((List!35083 0))(
  ( (Nil!35080) (Cons!35079 (h!36477 (_ BitVec 64)) (t!49784 List!35083)) )
))
(declare-fun arrayNoDuplicates!0 (array!100327 (_ BitVec 32) List!35083) Bool)

(assert (=> b!1504787 (= res!1025441 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35080))))

(declare-fun b!1504788 () Bool)

(assert (=> b!1504788 (= e!841145 (bvsge (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!647)) (bvsub #b01111111111111111111111111111110 x!647)))))

(declare-fun b!1504789 () Bool)

(declare-fun res!1025444 () Bool)

(assert (=> b!1504789 (=> (not res!1025444) (not e!841142))))

(assert (=> b!1504789 (= res!1025444 (validKeyInArray!0 (select (arr!48411 a!2850) i!996)))))

(assert (= (and start!128216 res!1025446) b!1504786))

(assert (= (and b!1504786 res!1025450) b!1504789))

(assert (= (and b!1504789 res!1025444) b!1504783))

(assert (= (and b!1504783 res!1025445) b!1504781))

(assert (= (and b!1504781 res!1025451) b!1504787))

(assert (= (and b!1504787 res!1025441) b!1504785))

(assert (= (and b!1504785 res!1025449) b!1504782))

(assert (= (and b!1504782 res!1025442) b!1504784))

(assert (= (and b!1504784 res!1025447) b!1504780))

(assert (= (and b!1504780 res!1025448) b!1504779))

(assert (= (and b!1504779 res!1025443) b!1504788))

(declare-fun m!1387929 () Bool)

(assert (=> b!1504789 m!1387929))

(assert (=> b!1504789 m!1387929))

(declare-fun m!1387931 () Bool)

(assert (=> b!1504789 m!1387931))

(declare-fun m!1387933 () Bool)

(assert (=> b!1504779 m!1387933))

(assert (=> b!1504779 m!1387933))

(declare-fun m!1387935 () Bool)

(assert (=> b!1504779 m!1387935))

(declare-fun m!1387937 () Bool)

(assert (=> b!1504781 m!1387937))

(declare-fun m!1387939 () Bool)

(assert (=> b!1504780 m!1387939))

(declare-fun m!1387941 () Bool)

(assert (=> start!128216 m!1387941))

(declare-fun m!1387943 () Bool)

(assert (=> start!128216 m!1387943))

(assert (=> b!1504782 m!1387933))

(assert (=> b!1504782 m!1387933))

(declare-fun m!1387945 () Bool)

(assert (=> b!1504782 m!1387945))

(declare-fun m!1387947 () Bool)

(assert (=> b!1504785 m!1387947))

(declare-fun m!1387949 () Bool)

(assert (=> b!1504785 m!1387949))

(declare-fun m!1387951 () Bool)

(assert (=> b!1504785 m!1387951))

(declare-fun m!1387953 () Bool)

(assert (=> b!1504784 m!1387953))

(assert (=> b!1504784 m!1387933))

(assert (=> b!1504783 m!1387933))

(assert (=> b!1504783 m!1387933))

(declare-fun m!1387955 () Bool)

(assert (=> b!1504783 m!1387955))

(declare-fun m!1387957 () Bool)

(assert (=> b!1504787 m!1387957))

(push 1)

(assert (not b!1504780))

(assert (not b!1504787))

(assert (not b!1504782))

(assert (not start!128216))

(assert (not b!1504779))

(assert (not b!1504789))

(assert (not b!1504781))

(assert (not b!1504783))

(check-sat)

(pop 1)

(push 1)

(check-sat)

