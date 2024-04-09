; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52886 () Bool)

(assert start!52886)

(declare-fun b!576077 () Bool)

(declare-fun res!364469 () Bool)

(declare-fun e!331465 () Bool)

(assert (=> b!576077 (=> (not res!364469) (not e!331465))))

(declare-datatypes ((array!35928 0))(
  ( (array!35929 (arr!17241 (Array (_ BitVec 32) (_ BitVec 64))) (size!17605 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35928)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35928 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!576077 (= res!364469 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!576078 () Bool)

(declare-fun res!364460 () Bool)

(declare-fun e!331466 () Bool)

(assert (=> b!576078 (=> (not res!364460) (not e!331466))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35928 (_ BitVec 32)) Bool)

(assert (=> b!576078 (= res!364460 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!576079 () Bool)

(declare-fun res!364463 () Bool)

(assert (=> b!576079 (=> (not res!364463) (not e!331465))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576079 (= res!364463 (validKeyInArray!0 k!1914))))

(declare-fun b!576080 () Bool)

(assert (=> b!576080 (= e!331465 e!331466)))

(declare-fun res!364462 () Bool)

(assert (=> b!576080 (=> (not res!364462) (not e!331466))))

(declare-datatypes ((SeekEntryResult!5697 0))(
  ( (MissingZero!5697 (index!25015 (_ BitVec 32))) (Found!5697 (index!25016 (_ BitVec 32))) (Intermediate!5697 (undefined!6509 Bool) (index!25017 (_ BitVec 32)) (x!53939 (_ BitVec 32))) (Undefined!5697) (MissingVacant!5697 (index!25018 (_ BitVec 32))) )
))
(declare-fun lt!263591 () SeekEntryResult!5697)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!576080 (= res!364462 (or (= lt!263591 (MissingZero!5697 i!1132)) (= lt!263591 (MissingVacant!5697 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35928 (_ BitVec 32)) SeekEntryResult!5697)

(assert (=> b!576080 (= lt!263591 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!576081 () Bool)

(assert (=> b!576081 (= e!331466 (not true))))

(declare-fun e!331468 () Bool)

(assert (=> b!576081 e!331468))

(declare-fun res!364464 () Bool)

(assert (=> b!576081 (=> (not res!364464) (not e!331468))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!576081 (= res!364464 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!18096 0))(
  ( (Unit!18097) )
))
(declare-fun lt!263590 () Unit!18096)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35928 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18096)

(assert (=> b!576081 (= lt!263590 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!364466 () Bool)

(assert (=> start!52886 (=> (not res!364466) (not e!331465))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52886 (= res!364466 (validMask!0 mask!3119))))

(assert (=> start!52886 e!331465))

(assert (=> start!52886 true))

(declare-fun array_inv!13015 (array!35928) Bool)

(assert (=> start!52886 (array_inv!13015 a!3118)))

(declare-fun b!576082 () Bool)

(declare-fun res!364468 () Bool)

(assert (=> b!576082 (=> (not res!364468) (not e!331465))))

(assert (=> b!576082 (= res!364468 (validKeyInArray!0 (select (arr!17241 a!3118) j!142)))))

(declare-fun b!576083 () Bool)

(declare-fun res!364467 () Bool)

(assert (=> b!576083 (=> (not res!364467) (not e!331465))))

(assert (=> b!576083 (= res!364467 (and (= (size!17605 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17605 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17605 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!576084 () Bool)

(declare-fun res!364465 () Bool)

(assert (=> b!576084 (=> (not res!364465) (not e!331466))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35928 (_ BitVec 32)) SeekEntryResult!5697)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!576084 (= res!364465 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17241 a!3118) j!142) mask!3119) (select (arr!17241 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17241 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17241 a!3118) i!1132 k!1914) j!142) (array!35929 (store (arr!17241 a!3118) i!1132 k!1914) (size!17605 a!3118)) mask!3119)))))

(declare-fun b!576085 () Bool)

(assert (=> b!576085 (= e!331468 (= (seekEntryOrOpen!0 (select (arr!17241 a!3118) j!142) a!3118 mask!3119) (Found!5697 j!142)))))

(declare-fun b!576086 () Bool)

(declare-fun res!364461 () Bool)

(assert (=> b!576086 (=> (not res!364461) (not e!331466))))

(declare-datatypes ((List!11374 0))(
  ( (Nil!11371) (Cons!11370 (h!12412 (_ BitVec 64)) (t!17610 List!11374)) )
))
(declare-fun arrayNoDuplicates!0 (array!35928 (_ BitVec 32) List!11374) Bool)

(assert (=> b!576086 (= res!364461 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11371))))

(assert (= (and start!52886 res!364466) b!576083))

(assert (= (and b!576083 res!364467) b!576082))

(assert (= (and b!576082 res!364468) b!576079))

(assert (= (and b!576079 res!364463) b!576077))

(assert (= (and b!576077 res!364469) b!576080))

(assert (= (and b!576080 res!364462) b!576078))

(assert (= (and b!576078 res!364460) b!576086))

(assert (= (and b!576086 res!364461) b!576084))

(assert (= (and b!576084 res!364465) b!576081))

(assert (= (and b!576081 res!364464) b!576085))

(declare-fun m!555043 () Bool)

(assert (=> b!576080 m!555043))

(declare-fun m!555045 () Bool)

(assert (=> b!576079 m!555045))

(declare-fun m!555047 () Bool)

(assert (=> b!576077 m!555047))

(declare-fun m!555049 () Bool)

(assert (=> b!576081 m!555049))

(declare-fun m!555051 () Bool)

(assert (=> b!576081 m!555051))

(declare-fun m!555053 () Bool)

(assert (=> b!576078 m!555053))

(declare-fun m!555055 () Bool)

(assert (=> start!52886 m!555055))

(declare-fun m!555057 () Bool)

(assert (=> start!52886 m!555057))

(declare-fun m!555059 () Bool)

(assert (=> b!576086 m!555059))

(declare-fun m!555061 () Bool)

(assert (=> b!576084 m!555061))

(declare-fun m!555063 () Bool)

(assert (=> b!576084 m!555063))

(assert (=> b!576084 m!555061))

(declare-fun m!555065 () Bool)

(assert (=> b!576084 m!555065))

(declare-fun m!555067 () Bool)

(assert (=> b!576084 m!555067))

(assert (=> b!576084 m!555065))

(declare-fun m!555069 () Bool)

(assert (=> b!576084 m!555069))

(assert (=> b!576084 m!555063))

(assert (=> b!576084 m!555061))

(declare-fun m!555071 () Bool)

(assert (=> b!576084 m!555071))

(declare-fun m!555073 () Bool)

(assert (=> b!576084 m!555073))

(assert (=> b!576084 m!555065))

(assert (=> b!576084 m!555067))

(assert (=> b!576082 m!555061))

(assert (=> b!576082 m!555061))

(declare-fun m!555075 () Bool)

(assert (=> b!576082 m!555075))

(assert (=> b!576085 m!555061))

(assert (=> b!576085 m!555061))

(declare-fun m!555077 () Bool)

(assert (=> b!576085 m!555077))

(push 1)

