; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120512 () Bool)

(assert start!120512)

(declare-fun b!1402657 () Bool)

(declare-fun res!941279 () Bool)

(declare-fun e!794272 () Bool)

(assert (=> b!1402657 (=> (not res!941279) (not e!794272))))

(declare-datatypes ((array!95839 0))(
  ( (array!95840 (arr!46266 (Array (_ BitVec 32) (_ BitVec 64))) (size!46817 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95839)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402657 (= res!941279 (validKeyInArray!0 (select (arr!46266 a!2901) i!1037)))))

(declare-fun b!1402658 () Bool)

(declare-fun e!794275 () Bool)

(declare-fun e!794274 () Bool)

(assert (=> b!1402658 (= e!794275 e!794274)))

(declare-fun res!941278 () Bool)

(assert (=> b!1402658 (=> res!941278 e!794274)))

(declare-datatypes ((SeekEntryResult!10605 0))(
  ( (MissingZero!10605 (index!44796 (_ BitVec 32))) (Found!10605 (index!44797 (_ BitVec 32))) (Intermediate!10605 (undefined!11417 Bool) (index!44798 (_ BitVec 32)) (x!126419 (_ BitVec 32))) (Undefined!10605) (MissingVacant!10605 (index!44799 (_ BitVec 32))) )
))
(declare-fun lt!617970 () SeekEntryResult!10605)

(declare-fun lt!617963 () SeekEntryResult!10605)

(assert (=> b!1402658 (= res!941278 (or (= lt!617970 lt!617963) (not (is-Intermediate!10605 lt!617963))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!617964 () (_ BitVec 64))

(declare-fun lt!617969 () array!95839)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95839 (_ BitVec 32)) SeekEntryResult!10605)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402658 (= lt!617963 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617964 mask!2840) lt!617964 lt!617969 mask!2840))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1402658 (= lt!617964 (select (store (arr!46266 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1402658 (= lt!617969 (array!95840 (store (arr!46266 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46817 a!2901)))))

(declare-fun b!1402659 () Bool)

(declare-fun res!941283 () Bool)

(assert (=> b!1402659 (=> (not res!941283) (not e!794272))))

(declare-datatypes ((List!32965 0))(
  ( (Nil!32962) (Cons!32961 (h!34209 (_ BitVec 64)) (t!47666 List!32965)) )
))
(declare-fun arrayNoDuplicates!0 (array!95839 (_ BitVec 32) List!32965) Bool)

(assert (=> b!1402659 (= res!941283 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32962))))

(declare-fun b!1402660 () Bool)

(declare-fun res!941280 () Bool)

(assert (=> b!1402660 (=> (not res!941280) (not e!794272))))

(assert (=> b!1402660 (= res!941280 (validKeyInArray!0 (select (arr!46266 a!2901) j!112)))))

(declare-fun b!1402661 () Bool)

(declare-fun res!941281 () Bool)

(declare-fun e!794273 () Bool)

(assert (=> b!1402661 (=> res!941281 e!794273)))

(declare-fun lt!617962 () (_ BitVec 32))

(assert (=> b!1402661 (= res!941281 (not (= lt!617963 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617962 lt!617964 lt!617969 mask!2840))))))

(declare-fun res!941286 () Bool)

(assert (=> start!120512 (=> (not res!941286) (not e!794272))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120512 (= res!941286 (validMask!0 mask!2840))))

(assert (=> start!120512 e!794272))

(assert (=> start!120512 true))

(declare-fun array_inv!35211 (array!95839) Bool)

(assert (=> start!120512 (array_inv!35211 a!2901)))

(declare-fun b!1402662 () Bool)

(assert (=> b!1402662 (= e!794273 (bvsge mask!2840 #b00000000000000000000000000000000))))

(declare-fun lt!617971 () SeekEntryResult!10605)

(declare-fun lt!617965 () SeekEntryResult!10605)

(assert (=> b!1402662 (= lt!617971 lt!617965)))

(declare-datatypes ((Unit!47164 0))(
  ( (Unit!47165) )
))
(declare-fun lt!617968 () Unit!47164)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!95839 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47164)

(assert (=> b!1402662 (= lt!617968 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617962 (x!126419 lt!617970) (index!44798 lt!617970) (x!126419 lt!617963) (index!44798 lt!617963) mask!2840))))

(declare-fun b!1402663 () Bool)

(declare-fun res!941277 () Bool)

(assert (=> b!1402663 (=> (not res!941277) (not e!794272))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95839 (_ BitVec 32)) Bool)

(assert (=> b!1402663 (= res!941277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1402664 () Bool)

(declare-fun res!941282 () Bool)

(assert (=> b!1402664 (=> (not res!941282) (not e!794272))))

(assert (=> b!1402664 (= res!941282 (and (= (size!46817 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46817 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46817 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1402665 () Bool)

(assert (=> b!1402665 (= e!794272 (not e!794275))))

(declare-fun res!941285 () Bool)

(assert (=> b!1402665 (=> res!941285 e!794275)))

(assert (=> b!1402665 (= res!941285 (or (not (is-Intermediate!10605 lt!617970)) (undefined!11417 lt!617970)))))

(assert (=> b!1402665 (= lt!617971 (Found!10605 j!112))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95839 (_ BitVec 32)) SeekEntryResult!10605)

(assert (=> b!1402665 (= lt!617971 (seekEntryOrOpen!0 (select (arr!46266 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1402665 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!617966 () Unit!47164)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95839 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47164)

(assert (=> b!1402665 (= lt!617966 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1402665 (= lt!617970 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617962 (select (arr!46266 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1402665 (= lt!617962 (toIndex!0 (select (arr!46266 a!2901) j!112) mask!2840))))

(declare-fun b!1402666 () Bool)

(assert (=> b!1402666 (= e!794274 e!794273)))

(declare-fun res!941284 () Bool)

(assert (=> b!1402666 (=> res!941284 e!794273)))

(assert (=> b!1402666 (= res!941284 (or (bvslt (x!126419 lt!617970) #b00000000000000000000000000000000) (bvsgt (x!126419 lt!617970) #b01111111111111111111111111111110) (bvslt (x!126419 lt!617963) #b00000000000000000000000000000000) (bvsgt (x!126419 lt!617963) #b01111111111111111111111111111110) (bvslt lt!617962 #b00000000000000000000000000000000) (bvsge lt!617962 (size!46817 a!2901)) (bvslt (index!44798 lt!617970) #b00000000000000000000000000000000) (bvsge (index!44798 lt!617970) (size!46817 a!2901)) (bvslt (index!44798 lt!617963) #b00000000000000000000000000000000) (bvsge (index!44798 lt!617963) (size!46817 a!2901)) (not (= lt!617970 (Intermediate!10605 false (index!44798 lt!617970) (x!126419 lt!617970)))) (not (= lt!617963 (Intermediate!10605 false (index!44798 lt!617963) (x!126419 lt!617963))))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95839 (_ BitVec 32)) SeekEntryResult!10605)

(assert (=> b!1402666 (= lt!617965 (seekKeyOrZeroReturnVacant!0 (x!126419 lt!617963) (index!44798 lt!617963) (index!44798 lt!617963) (select (arr!46266 a!2901) j!112) lt!617969 mask!2840))))

(assert (=> b!1402666 (= lt!617965 (seekEntryOrOpen!0 lt!617964 lt!617969 mask!2840))))

(assert (=> b!1402666 (and (not (undefined!11417 lt!617963)) (= (index!44798 lt!617963) i!1037) (bvslt (x!126419 lt!617963) (x!126419 lt!617970)) (= (select (store (arr!46266 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44798 lt!617963)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!617967 () Unit!47164)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95839 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47164)

(assert (=> b!1402666 (= lt!617967 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617962 (x!126419 lt!617970) (index!44798 lt!617970) (x!126419 lt!617963) (index!44798 lt!617963) (undefined!11417 lt!617963) mask!2840))))

(assert (= (and start!120512 res!941286) b!1402664))

(assert (= (and b!1402664 res!941282) b!1402657))

(assert (= (and b!1402657 res!941279) b!1402660))

(assert (= (and b!1402660 res!941280) b!1402663))

(assert (= (and b!1402663 res!941277) b!1402659))

(assert (= (and b!1402659 res!941283) b!1402665))

(assert (= (and b!1402665 (not res!941285)) b!1402658))

(assert (= (and b!1402658 (not res!941278)) b!1402666))

(assert (= (and b!1402666 (not res!941284)) b!1402661))

(assert (= (and b!1402661 (not res!941281)) b!1402662))

(declare-fun m!1291039 () Bool)

(assert (=> b!1402660 m!1291039))

(assert (=> b!1402660 m!1291039))

(declare-fun m!1291041 () Bool)

(assert (=> b!1402660 m!1291041))

(declare-fun m!1291043 () Bool)

(assert (=> start!120512 m!1291043))

(declare-fun m!1291045 () Bool)

(assert (=> start!120512 m!1291045))

(declare-fun m!1291047 () Bool)

(assert (=> b!1402662 m!1291047))

(assert (=> b!1402665 m!1291039))

(declare-fun m!1291049 () Bool)

(assert (=> b!1402665 m!1291049))

(assert (=> b!1402665 m!1291039))

(assert (=> b!1402665 m!1291039))

(declare-fun m!1291051 () Bool)

(assert (=> b!1402665 m!1291051))

(declare-fun m!1291053 () Bool)

(assert (=> b!1402665 m!1291053))

(assert (=> b!1402665 m!1291039))

(declare-fun m!1291055 () Bool)

(assert (=> b!1402665 m!1291055))

(declare-fun m!1291057 () Bool)

(assert (=> b!1402665 m!1291057))

(declare-fun m!1291059 () Bool)

(assert (=> b!1402657 m!1291059))

(assert (=> b!1402657 m!1291059))

(declare-fun m!1291061 () Bool)

(assert (=> b!1402657 m!1291061))

(declare-fun m!1291063 () Bool)

(assert (=> b!1402658 m!1291063))

(assert (=> b!1402658 m!1291063))

(declare-fun m!1291065 () Bool)

(assert (=> b!1402658 m!1291065))

(declare-fun m!1291067 () Bool)

(assert (=> b!1402658 m!1291067))

(declare-fun m!1291069 () Bool)

(assert (=> b!1402658 m!1291069))

(declare-fun m!1291071 () Bool)

(assert (=> b!1402661 m!1291071))

(declare-fun m!1291073 () Bool)

(assert (=> b!1402663 m!1291073))

(declare-fun m!1291075 () Bool)

(assert (=> b!1402659 m!1291075))

(assert (=> b!1402666 m!1291039))

(declare-fun m!1291077 () Bool)

(assert (=> b!1402666 m!1291077))

(assert (=> b!1402666 m!1291039))

(declare-fun m!1291079 () Bool)

(assert (=> b!1402666 m!1291079))

(declare-fun m!1291081 () Bool)

(assert (=> b!1402666 m!1291081))

(declare-fun m!1291083 () Bool)

(assert (=> b!1402666 m!1291083))

(assert (=> b!1402666 m!1291067))

(push 1)

