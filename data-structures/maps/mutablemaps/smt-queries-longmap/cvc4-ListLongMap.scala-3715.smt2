; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51108 () Bool)

(assert start!51108)

(declare-fun b!558160 () Bool)

(declare-fun res!350174 () Bool)

(declare-fun e!321549 () Bool)

(assert (=> b!558160 (=> (not res!350174) (not e!321549))))

(declare-datatypes ((array!35116 0))(
  ( (array!35117 (arr!16859 (Array (_ BitVec 32) (_ BitVec 64))) (size!17223 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35116)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35116 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!558160 (= res!350174 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!558161 () Bool)

(declare-fun res!350179 () Bool)

(assert (=> b!558161 (=> (not res!350179) (not e!321549))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!558161 (= res!350179 (validKeyInArray!0 k!1914))))

(declare-fun b!558162 () Bool)

(declare-fun e!321550 () Bool)

(assert (=> b!558162 (= e!321550 (not true))))

(declare-fun e!321545 () Bool)

(assert (=> b!558162 e!321545))

(declare-fun res!350177 () Bool)

(assert (=> b!558162 (=> (not res!350177) (not e!321545))))

(declare-datatypes ((SeekEntryResult!5315 0))(
  ( (MissingZero!5315 (index!23487 (_ BitVec 32))) (Found!5315 (index!23488 (_ BitVec 32))) (Intermediate!5315 (undefined!6127 Bool) (index!23489 (_ BitVec 32)) (x!52410 (_ BitVec 32))) (Undefined!5315) (MissingVacant!5315 (index!23490 (_ BitVec 32))) )
))
(declare-fun lt!253696 () SeekEntryResult!5315)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!558162 (= res!350177 (= lt!253696 (Found!5315 j!142)))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35116 (_ BitVec 32)) SeekEntryResult!5315)

(assert (=> b!558162 (= lt!253696 (seekEntryOrOpen!0 (select (arr!16859 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35116 (_ BitVec 32)) Bool)

(assert (=> b!558162 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17404 0))(
  ( (Unit!17405) )
))
(declare-fun lt!253693 () Unit!17404)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35116 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17404)

(assert (=> b!558162 (= lt!253693 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!558163 () Bool)

(declare-fun res!350178 () Bool)

(assert (=> b!558163 (=> (not res!350178) (not e!321549))))

(assert (=> b!558163 (= res!350178 (validKeyInArray!0 (select (arr!16859 a!3118) j!142)))))

(declare-fun b!558164 () Bool)

(declare-fun res!350183 () Bool)

(declare-fun e!321547 () Bool)

(assert (=> b!558164 (=> (not res!350183) (not e!321547))))

(declare-datatypes ((List!10992 0))(
  ( (Nil!10989) (Cons!10988 (h!11982 (_ BitVec 64)) (t!17228 List!10992)) )
))
(declare-fun arrayNoDuplicates!0 (array!35116 (_ BitVec 32) List!10992) Bool)

(assert (=> b!558164 (= res!350183 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10989))))

(declare-fun res!350181 () Bool)

(assert (=> start!51108 (=> (not res!350181) (not e!321549))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51108 (= res!350181 (validMask!0 mask!3119))))

(assert (=> start!51108 e!321549))

(assert (=> start!51108 true))

(declare-fun array_inv!12633 (array!35116) Bool)

(assert (=> start!51108 (array_inv!12633 a!3118)))

(declare-fun e!321546 () Bool)

(declare-fun b!558165 () Bool)

(declare-fun lt!253695 () SeekEntryResult!5315)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35116 (_ BitVec 32)) SeekEntryResult!5315)

(assert (=> b!558165 (= e!321546 (= lt!253696 (seekKeyOrZeroReturnVacant!0 (x!52410 lt!253695) (index!23489 lt!253695) (index!23489 lt!253695) (select (arr!16859 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!558166 () Bool)

(assert (=> b!558166 (= e!321545 e!321546)))

(declare-fun res!350180 () Bool)

(assert (=> b!558166 (=> res!350180 e!321546)))

(assert (=> b!558166 (= res!350180 (or (undefined!6127 lt!253695) (not (is-Intermediate!5315 lt!253695)) (= (select (arr!16859 a!3118) (index!23489 lt!253695)) (select (arr!16859 a!3118) j!142)) (= (select (arr!16859 a!3118) (index!23489 lt!253695)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!558167 () Bool)

(assert (=> b!558167 (= e!321549 e!321547)))

(declare-fun res!350176 () Bool)

(assert (=> b!558167 (=> (not res!350176) (not e!321547))))

(declare-fun lt!253694 () SeekEntryResult!5315)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!558167 (= res!350176 (or (= lt!253694 (MissingZero!5315 i!1132)) (= lt!253694 (MissingVacant!5315 i!1132))))))

(assert (=> b!558167 (= lt!253694 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!558168 () Bool)

(declare-fun res!350173 () Bool)

(assert (=> b!558168 (=> (not res!350173) (not e!321549))))

(assert (=> b!558168 (= res!350173 (and (= (size!17223 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17223 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17223 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!558169 () Bool)

(assert (=> b!558169 (= e!321547 e!321550)))

(declare-fun res!350182 () Bool)

(assert (=> b!558169 (=> (not res!350182) (not e!321550))))

(declare-fun lt!253697 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35116 (_ BitVec 32)) SeekEntryResult!5315)

(assert (=> b!558169 (= res!350182 (= lt!253695 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253697 (select (store (arr!16859 a!3118) i!1132 k!1914) j!142) (array!35117 (store (arr!16859 a!3118) i!1132 k!1914) (size!17223 a!3118)) mask!3119)))))

(declare-fun lt!253692 () (_ BitVec 32))

(assert (=> b!558169 (= lt!253695 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253692 (select (arr!16859 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!558169 (= lt!253697 (toIndex!0 (select (store (arr!16859 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!558169 (= lt!253692 (toIndex!0 (select (arr!16859 a!3118) j!142) mask!3119))))

(declare-fun b!558170 () Bool)

(declare-fun res!350175 () Bool)

(assert (=> b!558170 (=> (not res!350175) (not e!321547))))

(assert (=> b!558170 (= res!350175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!51108 res!350181) b!558168))

(assert (= (and b!558168 res!350173) b!558163))

(assert (= (and b!558163 res!350178) b!558161))

(assert (= (and b!558161 res!350179) b!558160))

(assert (= (and b!558160 res!350174) b!558167))

(assert (= (and b!558167 res!350176) b!558170))

(assert (= (and b!558170 res!350175) b!558164))

(assert (= (and b!558164 res!350183) b!558169))

(assert (= (and b!558169 res!350182) b!558162))

(assert (= (and b!558162 res!350177) b!558166))

(assert (= (and b!558166 (not res!350180)) b!558165))

(declare-fun m!536157 () Bool)

(assert (=> b!558160 m!536157))

(declare-fun m!536159 () Bool)

(assert (=> b!558167 m!536159))

(declare-fun m!536161 () Bool)

(assert (=> b!558170 m!536161))

(declare-fun m!536163 () Bool)

(assert (=> b!558169 m!536163))

(declare-fun m!536165 () Bool)

(assert (=> b!558169 m!536165))

(assert (=> b!558169 m!536163))

(declare-fun m!536167 () Bool)

(assert (=> b!558169 m!536167))

(assert (=> b!558169 m!536163))

(declare-fun m!536169 () Bool)

(assert (=> b!558169 m!536169))

(declare-fun m!536171 () Bool)

(assert (=> b!558169 m!536171))

(assert (=> b!558169 m!536167))

(declare-fun m!536173 () Bool)

(assert (=> b!558169 m!536173))

(assert (=> b!558169 m!536167))

(declare-fun m!536175 () Bool)

(assert (=> b!558169 m!536175))

(declare-fun m!536177 () Bool)

(assert (=> b!558166 m!536177))

(assert (=> b!558166 m!536163))

(declare-fun m!536179 () Bool)

(assert (=> b!558164 m!536179))

(assert (=> b!558163 m!536163))

(assert (=> b!558163 m!536163))

(declare-fun m!536181 () Bool)

(assert (=> b!558163 m!536181))

(declare-fun m!536183 () Bool)

(assert (=> b!558161 m!536183))

(declare-fun m!536185 () Bool)

(assert (=> start!51108 m!536185))

(declare-fun m!536187 () Bool)

(assert (=> start!51108 m!536187))

(assert (=> b!558162 m!536163))

(assert (=> b!558162 m!536163))

(declare-fun m!536189 () Bool)

(assert (=> b!558162 m!536189))

(declare-fun m!536191 () Bool)

(assert (=> b!558162 m!536191))

(declare-fun m!536193 () Bool)

(assert (=> b!558162 m!536193))

(assert (=> b!558165 m!536163))

(assert (=> b!558165 m!536163))

(declare-fun m!536195 () Bool)

(assert (=> b!558165 m!536195))

(push 1)

