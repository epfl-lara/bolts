; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118432 () Bool)

(assert start!118432)

(declare-fun b!1384766 () Bool)

(declare-datatypes ((Unit!46158 0))(
  ( (Unit!46159) )
))
(declare-fun e!784685 () Unit!46158)

(declare-fun lt!609028 () Unit!46158)

(assert (=> b!1384766 (= e!784685 lt!609028)))

(declare-fun lt!609027 () Unit!46158)

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94653 0))(
  ( (array!94654 (arr!45700 (Array (_ BitVec 32) (_ BitVec 64))) (size!46251 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94653)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94653 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46158)

(assert (=> b!1384766 (= lt!609027 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10114 0))(
  ( (MissingZero!10114 (index!42826 (_ BitVec 32))) (Found!10114 (index!42827 (_ BitVec 32))) (Intermediate!10114 (undefined!10926 Bool) (index!42828 (_ BitVec 32)) (x!124334 (_ BitVec 32))) (Undefined!10114) (MissingVacant!10114 (index!42829 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94653 (_ BitVec 32)) SeekEntryResult!10114)

(assert (=> b!1384766 (= (seekEntryOrOpen!0 (select (arr!45700 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45700 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94654 (store (arr!45700 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46251 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94653 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46158)

(assert (=> b!1384766 (= lt!609028 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94653 (_ BitVec 32)) Bool)

(assert (=> b!1384766 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1384767 () Bool)

(declare-fun e!784684 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384767 (= e!784684 (validKeyInArray!0 (select (arr!45700 a!2938) startIndex!16)))))

(declare-fun b!1384768 () Bool)

(declare-fun e!784682 () Bool)

(assert (=> b!1384768 (= e!784682 false)))

(declare-fun lt!609026 () Unit!46158)

(assert (=> b!1384768 (= lt!609026 e!784685)))

(declare-fun c!128711 () Bool)

(assert (=> b!1384768 (= c!128711 e!784684)))

(declare-fun res!926229 () Bool)

(assert (=> b!1384768 (=> (not res!926229) (not e!784684))))

(assert (=> b!1384768 (= res!926229 (not (= startIndex!16 i!1065)))))

(declare-fun b!1384769 () Bool)

(declare-fun res!926235 () Bool)

(assert (=> b!1384769 (=> (not res!926235) (not e!784682))))

(declare-datatypes ((List!32408 0))(
  ( (Nil!32405) (Cons!32404 (h!33613 (_ BitVec 64)) (t!47109 List!32408)) )
))
(declare-fun arrayNoDuplicates!0 (array!94653 (_ BitVec 32) List!32408) Bool)

(assert (=> b!1384769 (= res!926235 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32405))))

(declare-fun b!1384770 () Bool)

(declare-fun res!926230 () Bool)

(assert (=> b!1384770 (=> (not res!926230) (not e!784682))))

(assert (=> b!1384770 (= res!926230 (and (not (= (select (arr!45700 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45700 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!926231 () Bool)

(assert (=> start!118432 (=> (not res!926231) (not e!784682))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118432 (= res!926231 (validMask!0 mask!2987))))

(assert (=> start!118432 e!784682))

(assert (=> start!118432 true))

(declare-fun array_inv!34645 (array!94653) Bool)

(assert (=> start!118432 (array_inv!34645 a!2938)))

(declare-fun b!1384771 () Bool)

(declare-fun res!926233 () Bool)

(assert (=> b!1384771 (=> (not res!926233) (not e!784682))))

(assert (=> b!1384771 (= res!926233 (and (= (size!46251 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46251 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46251 a!2938))))))

(declare-fun b!1384772 () Bool)

(declare-fun Unit!46160 () Unit!46158)

(assert (=> b!1384772 (= e!784685 Unit!46160)))

(declare-fun b!1384773 () Bool)

(declare-fun res!926234 () Bool)

(assert (=> b!1384773 (=> (not res!926234) (not e!784682))))

(assert (=> b!1384773 (= res!926234 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384774 () Bool)

(declare-fun res!926232 () Bool)

(assert (=> b!1384774 (=> (not res!926232) (not e!784682))))

(assert (=> b!1384774 (= res!926232 (validKeyInArray!0 (select (arr!45700 a!2938) i!1065)))))

(assert (= (and start!118432 res!926231) b!1384771))

(assert (= (and b!1384771 res!926233) b!1384774))

(assert (= (and b!1384774 res!926232) b!1384769))

(assert (= (and b!1384769 res!926235) b!1384773))

(assert (= (and b!1384773 res!926234) b!1384770))

(assert (= (and b!1384770 res!926230) b!1384768))

(assert (= (and b!1384768 res!926229) b!1384767))

(assert (= (and b!1384768 c!128711) b!1384766))

(assert (= (and b!1384768 (not c!128711)) b!1384772))

(declare-fun m!1270121 () Bool)

(assert (=> b!1384770 m!1270121))

(declare-fun m!1270123 () Bool)

(assert (=> b!1384766 m!1270123))

(declare-fun m!1270125 () Bool)

(assert (=> b!1384766 m!1270125))

(assert (=> b!1384766 m!1270125))

(declare-fun m!1270127 () Bool)

(assert (=> b!1384766 m!1270127))

(declare-fun m!1270129 () Bool)

(assert (=> b!1384766 m!1270129))

(declare-fun m!1270131 () Bool)

(assert (=> b!1384766 m!1270131))

(declare-fun m!1270133 () Bool)

(assert (=> b!1384766 m!1270133))

(declare-fun m!1270135 () Bool)

(assert (=> b!1384766 m!1270135))

(assert (=> b!1384766 m!1270133))

(declare-fun m!1270137 () Bool)

(assert (=> b!1384766 m!1270137))

(declare-fun m!1270139 () Bool)

(assert (=> start!118432 m!1270139))

(declare-fun m!1270141 () Bool)

(assert (=> start!118432 m!1270141))

(declare-fun m!1270143 () Bool)

(assert (=> b!1384773 m!1270143))

(assert (=> b!1384767 m!1270133))

(assert (=> b!1384767 m!1270133))

(declare-fun m!1270145 () Bool)

(assert (=> b!1384767 m!1270145))

(declare-fun m!1270147 () Bool)

(assert (=> b!1384769 m!1270147))

(assert (=> b!1384774 m!1270121))

(assert (=> b!1384774 m!1270121))

(declare-fun m!1270149 () Bool)

(assert (=> b!1384774 m!1270149))

(push 1)

(assert (not b!1384773))

(assert (not b!1384767))

(assert (not b!1384774))

(assert (not start!118432))

(assert (not b!1384766))

(assert (not b!1384769))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

