; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130994 () Bool)

(assert start!130994)

(declare-fun b!1536171 () Bool)

(declare-fun res!1053397 () Bool)

(declare-fun e!855071 () Bool)

(assert (=> b!1536171 (=> (not res!1053397) (not e!855071))))

(declare-datatypes ((array!102019 0))(
  ( (array!102020 (arr!49221 (Array (_ BitVec 32) (_ BitVec 64))) (size!49772 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102019)

(declare-datatypes ((List!35875 0))(
  ( (Nil!35872) (Cons!35871 (h!37317 (_ BitVec 64)) (t!50576 List!35875)) )
))
(declare-fun arrayNoDuplicates!0 (array!102019 (_ BitVec 32) List!35875) Bool)

(assert (=> b!1536171 (= res!1053397 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35872))))

(declare-fun b!1536172 () Bool)

(declare-fun e!855070 () Bool)

(declare-fun e!855069 () Bool)

(assert (=> b!1536172 (= e!855070 e!855069)))

(declare-fun res!1053402 () Bool)

(assert (=> b!1536172 (=> (not res!1053402) (not e!855069))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun lt!664218 () (_ BitVec 32))

(assert (=> b!1536172 (= res!1053402 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664218 #b00000000000000000000000000000000) (bvslt lt!664218 (size!49772 a!2792))))))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1536172 (= lt!664218 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1536173 () Bool)

(assert (=> b!1536173 (= e!855071 e!855070)))

(declare-fun res!1053396 () Bool)

(assert (=> b!1536173 (=> (not res!1053396) (not e!855070))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13376 0))(
  ( (MissingZero!13376 (index!55898 (_ BitVec 32))) (Found!13376 (index!55899 (_ BitVec 32))) (Intermediate!13376 (undefined!14188 Bool) (index!55900 (_ BitVec 32)) (x!137637 (_ BitVec 32))) (Undefined!13376) (MissingVacant!13376 (index!55901 (_ BitVec 32))) )
))
(declare-fun lt!664217 () SeekEntryResult!13376)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102019 (_ BitVec 32)) SeekEntryResult!13376)

(assert (=> b!1536173 (= res!1053396 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49221 a!2792) j!64) a!2792 mask!2480) lt!664217))))

(assert (=> b!1536173 (= lt!664217 (Found!13376 j!64))))

(declare-fun b!1536174 () Bool)

(declare-fun e!855068 () Bool)

(assert (=> b!1536174 (= e!855068 (not (or (bvslt mask!2480 #b00000000000000000000000000000000) (bvslt index!463 (bvadd #b00000000000000000000000000000001 mask!2480)))))))

(declare-fun lt!664219 () SeekEntryResult!13376)

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1536174 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664218 vacantIndex!5 (select (store (arr!49221 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102020 (store (arr!49221 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49772 a!2792)) mask!2480) lt!664219)))

(declare-datatypes ((Unit!51276 0))(
  ( (Unit!51277) )
))
(declare-fun lt!664216 () Unit!51276)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102019 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51276)

(assert (=> b!1536174 (= lt!664216 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664218 vacantIndex!5 mask!2480))))

(declare-fun res!1053401 () Bool)

(assert (=> start!130994 (=> (not res!1053401) (not e!855071))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130994 (= res!1053401 (validMask!0 mask!2480))))

(assert (=> start!130994 e!855071))

(assert (=> start!130994 true))

(declare-fun array_inv!38166 (array!102019) Bool)

(assert (=> start!130994 (array_inv!38166 a!2792)))

(declare-fun b!1536175 () Bool)

(declare-fun res!1053404 () Bool)

(assert (=> b!1536175 (=> (not res!1053404) (not e!855070))))

(assert (=> b!1536175 (= res!1053404 (not (= (select (arr!49221 a!2792) index!463) (select (arr!49221 a!2792) j!64))))))

(declare-fun b!1536176 () Bool)

(declare-fun res!1053405 () Bool)

(assert (=> b!1536176 (=> (not res!1053405) (not e!855071))))

(assert (=> b!1536176 (= res!1053405 (and (= (size!49772 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49772 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49772 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1536177 () Bool)

(declare-fun res!1053395 () Bool)

(assert (=> b!1536177 (=> (not res!1053395) (not e!855071))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102019 (_ BitVec 32)) Bool)

(assert (=> b!1536177 (= res!1053395 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1536178 () Bool)

(declare-fun res!1053400 () Bool)

(assert (=> b!1536178 (=> (not res!1053400) (not e!855071))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1536178 (= res!1053400 (validKeyInArray!0 (select (arr!49221 a!2792) i!951)))))

(declare-fun b!1536179 () Bool)

(declare-fun res!1053403 () Bool)

(assert (=> b!1536179 (=> (not res!1053403) (not e!855071))))

(assert (=> b!1536179 (= res!1053403 (validKeyInArray!0 (select (arr!49221 a!2792) j!64)))))

(declare-fun b!1536180 () Bool)

(assert (=> b!1536180 (= e!855069 e!855068)))

(declare-fun res!1053399 () Bool)

(assert (=> b!1536180 (=> (not res!1053399) (not e!855068))))

(assert (=> b!1536180 (= res!1053399 (= lt!664219 lt!664217))))

(assert (=> b!1536180 (= lt!664219 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664218 vacantIndex!5 (select (arr!49221 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1536181 () Bool)

(declare-fun res!1053398 () Bool)

(assert (=> b!1536181 (=> (not res!1053398) (not e!855071))))

(assert (=> b!1536181 (= res!1053398 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49772 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49772 a!2792)) (= (select (arr!49221 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!130994 res!1053401) b!1536176))

(assert (= (and b!1536176 res!1053405) b!1536178))

(assert (= (and b!1536178 res!1053400) b!1536179))

(assert (= (and b!1536179 res!1053403) b!1536177))

(assert (= (and b!1536177 res!1053395) b!1536171))

(assert (= (and b!1536171 res!1053397) b!1536181))

(assert (= (and b!1536181 res!1053398) b!1536173))

(assert (= (and b!1536173 res!1053396) b!1536175))

(assert (= (and b!1536175 res!1053404) b!1536172))

(assert (= (and b!1536172 res!1053402) b!1536180))

(assert (= (and b!1536180 res!1053399) b!1536174))

(declare-fun m!1418681 () Bool)

(assert (=> b!1536177 m!1418681))

(declare-fun m!1418683 () Bool)

(assert (=> b!1536173 m!1418683))

(assert (=> b!1536173 m!1418683))

(declare-fun m!1418685 () Bool)

(assert (=> b!1536173 m!1418685))

(assert (=> b!1536179 m!1418683))

(assert (=> b!1536179 m!1418683))

(declare-fun m!1418687 () Bool)

(assert (=> b!1536179 m!1418687))

(declare-fun m!1418689 () Bool)

(assert (=> b!1536172 m!1418689))

(assert (=> b!1536180 m!1418683))

(assert (=> b!1536180 m!1418683))

(declare-fun m!1418691 () Bool)

(assert (=> b!1536180 m!1418691))

(declare-fun m!1418693 () Bool)

(assert (=> b!1536178 m!1418693))

(assert (=> b!1536178 m!1418693))

(declare-fun m!1418695 () Bool)

(assert (=> b!1536178 m!1418695))

(declare-fun m!1418697 () Bool)

(assert (=> b!1536174 m!1418697))

(declare-fun m!1418699 () Bool)

(assert (=> b!1536174 m!1418699))

(assert (=> b!1536174 m!1418699))

(declare-fun m!1418701 () Bool)

(assert (=> b!1536174 m!1418701))

(declare-fun m!1418703 () Bool)

(assert (=> b!1536174 m!1418703))

(declare-fun m!1418705 () Bool)

(assert (=> b!1536171 m!1418705))

(declare-fun m!1418707 () Bool)

(assert (=> b!1536175 m!1418707))

(assert (=> b!1536175 m!1418683))

(declare-fun m!1418709 () Bool)

(assert (=> b!1536181 m!1418709))

(declare-fun m!1418711 () Bool)

(assert (=> start!130994 m!1418711))

(declare-fun m!1418713 () Bool)

(assert (=> start!130994 m!1418713))

(push 1)

(assert (not b!1536171))

(assert (not b!1536177))

(assert (not b!1536172))

(assert (not b!1536179))

(assert (not start!130994))

(assert (not b!1536174))

(assert (not b!1536180))

(assert (not b!1536178))

(assert (not b!1536173))

(check-sat)

(pop 1)

(push 1)

(check-sat)

