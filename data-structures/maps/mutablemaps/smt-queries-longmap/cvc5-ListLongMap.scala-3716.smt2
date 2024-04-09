; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51110 () Bool)

(assert start!51110)

(declare-fun res!350215 () Bool)

(declare-fun e!321566 () Bool)

(assert (=> start!51110 (=> (not res!350215) (not e!321566))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51110 (= res!350215 (validMask!0 mask!3119))))

(assert (=> start!51110 e!321566))

(assert (=> start!51110 true))

(declare-datatypes ((array!35118 0))(
  ( (array!35119 (arr!16860 (Array (_ BitVec 32) (_ BitVec 64))) (size!17224 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35118)

(declare-fun array_inv!12634 (array!35118) Bool)

(assert (=> start!51110 (array_inv!12634 a!3118)))

(declare-fun b!558193 () Bool)

(declare-fun e!321567 () Bool)

(assert (=> b!558193 (= e!321566 e!321567)))

(declare-fun res!350211 () Bool)

(assert (=> b!558193 (=> (not res!350211) (not e!321567))))

(declare-datatypes ((SeekEntryResult!5316 0))(
  ( (MissingZero!5316 (index!23491 (_ BitVec 32))) (Found!5316 (index!23492 (_ BitVec 32))) (Intermediate!5316 (undefined!6128 Bool) (index!23493 (_ BitVec 32)) (x!52419 (_ BitVec 32))) (Undefined!5316) (MissingVacant!5316 (index!23494 (_ BitVec 32))) )
))
(declare-fun lt!253713 () SeekEntryResult!5316)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!558193 (= res!350211 (or (= lt!253713 (MissingZero!5316 i!1132)) (= lt!253713 (MissingVacant!5316 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35118 (_ BitVec 32)) SeekEntryResult!5316)

(assert (=> b!558193 (= lt!253713 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!558194 () Bool)

(declare-fun res!350209 () Bool)

(assert (=> b!558194 (=> (not res!350209) (not e!321566))))

(declare-fun arrayContainsKey!0 (array!35118 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!558194 (= res!350209 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!558195 () Bool)

(declare-fun e!321563 () Bool)

(assert (=> b!558195 (= e!321567 e!321563)))

(declare-fun res!350216 () Bool)

(assert (=> b!558195 (=> (not res!350216) (not e!321563))))

(declare-fun lt!253710 () SeekEntryResult!5316)

(declare-fun lt!253715 () (_ BitVec 32))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35118 (_ BitVec 32)) SeekEntryResult!5316)

(assert (=> b!558195 (= res!350216 (= lt!253710 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253715 (select (store (arr!16860 a!3118) i!1132 k!1914) j!142) (array!35119 (store (arr!16860 a!3118) i!1132 k!1914) (size!17224 a!3118)) mask!3119)))))

(declare-fun lt!253712 () (_ BitVec 32))

(assert (=> b!558195 (= lt!253710 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253712 (select (arr!16860 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!558195 (= lt!253715 (toIndex!0 (select (store (arr!16860 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!558195 (= lt!253712 (toIndex!0 (select (arr!16860 a!3118) j!142) mask!3119))))

(declare-fun b!558196 () Bool)

(declare-fun res!350207 () Bool)

(assert (=> b!558196 (=> (not res!350207) (not e!321567))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35118 (_ BitVec 32)) Bool)

(assert (=> b!558196 (= res!350207 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!558197 () Bool)

(declare-fun e!321564 () Bool)

(declare-fun e!321565 () Bool)

(assert (=> b!558197 (= e!321564 e!321565)))

(declare-fun res!350214 () Bool)

(assert (=> b!558197 (=> res!350214 e!321565)))

(assert (=> b!558197 (= res!350214 (or (undefined!6128 lt!253710) (not (is-Intermediate!5316 lt!253710)) (= (select (arr!16860 a!3118) (index!23493 lt!253710)) (select (arr!16860 a!3118) j!142)) (= (select (arr!16860 a!3118) (index!23493 lt!253710)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!558198 () Bool)

(declare-fun res!350208 () Bool)

(assert (=> b!558198 (=> (not res!350208) (not e!321566))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!558198 (= res!350208 (validKeyInArray!0 k!1914))))

(declare-fun b!558199 () Bool)

(declare-fun res!350206 () Bool)

(assert (=> b!558199 (=> (not res!350206) (not e!321566))))

(assert (=> b!558199 (= res!350206 (validKeyInArray!0 (select (arr!16860 a!3118) j!142)))))

(declare-fun b!558200 () Bool)

(declare-fun res!350210 () Bool)

(assert (=> b!558200 (=> (not res!350210) (not e!321566))))

(assert (=> b!558200 (= res!350210 (and (= (size!17224 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17224 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17224 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!558201 () Bool)

(declare-fun lt!253711 () SeekEntryResult!5316)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35118 (_ BitVec 32)) SeekEntryResult!5316)

(assert (=> b!558201 (= e!321565 (= lt!253711 (seekKeyOrZeroReturnVacant!0 (x!52419 lt!253710) (index!23493 lt!253710) (index!23493 lt!253710) (select (arr!16860 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!558202 () Bool)

(assert (=> b!558202 (= e!321563 (not (or (undefined!6128 lt!253710) (not (is-Intermediate!5316 lt!253710)) (= (select (arr!16860 a!3118) (index!23493 lt!253710)) (select (arr!16860 a!3118) j!142)) (= (select (arr!16860 a!3118) (index!23493 lt!253710)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(assert (=> b!558202 e!321564))

(declare-fun res!350213 () Bool)

(assert (=> b!558202 (=> (not res!350213) (not e!321564))))

(assert (=> b!558202 (= res!350213 (= lt!253711 (Found!5316 j!142)))))

(assert (=> b!558202 (= lt!253711 (seekEntryOrOpen!0 (select (arr!16860 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!558202 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17406 0))(
  ( (Unit!17407) )
))
(declare-fun lt!253714 () Unit!17406)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35118 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17406)

(assert (=> b!558202 (= lt!253714 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!558203 () Bool)

(declare-fun res!350212 () Bool)

(assert (=> b!558203 (=> (not res!350212) (not e!321567))))

(declare-datatypes ((List!10993 0))(
  ( (Nil!10990) (Cons!10989 (h!11983 (_ BitVec 64)) (t!17229 List!10993)) )
))
(declare-fun arrayNoDuplicates!0 (array!35118 (_ BitVec 32) List!10993) Bool)

(assert (=> b!558203 (= res!350212 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10990))))

(assert (= (and start!51110 res!350215) b!558200))

(assert (= (and b!558200 res!350210) b!558199))

(assert (= (and b!558199 res!350206) b!558198))

(assert (= (and b!558198 res!350208) b!558194))

(assert (= (and b!558194 res!350209) b!558193))

(assert (= (and b!558193 res!350211) b!558196))

(assert (= (and b!558196 res!350207) b!558203))

(assert (= (and b!558203 res!350212) b!558195))

(assert (= (and b!558195 res!350216) b!558202))

(assert (= (and b!558202 res!350213) b!558197))

(assert (= (and b!558197 (not res!350214)) b!558201))

(declare-fun m!536197 () Bool)

(assert (=> start!51110 m!536197))

(declare-fun m!536199 () Bool)

(assert (=> start!51110 m!536199))

(declare-fun m!536201 () Bool)

(assert (=> b!558197 m!536201))

(declare-fun m!536203 () Bool)

(assert (=> b!558197 m!536203))

(declare-fun m!536205 () Bool)

(assert (=> b!558193 m!536205))

(declare-fun m!536207 () Bool)

(assert (=> b!558194 m!536207))

(assert (=> b!558201 m!536203))

(assert (=> b!558201 m!536203))

(declare-fun m!536209 () Bool)

(assert (=> b!558201 m!536209))

(declare-fun m!536211 () Bool)

(assert (=> b!558198 m!536211))

(declare-fun m!536213 () Bool)

(assert (=> b!558196 m!536213))

(assert (=> b!558199 m!536203))

(assert (=> b!558199 m!536203))

(declare-fun m!536215 () Bool)

(assert (=> b!558199 m!536215))

(assert (=> b!558195 m!536203))

(declare-fun m!536217 () Bool)

(assert (=> b!558195 m!536217))

(declare-fun m!536219 () Bool)

(assert (=> b!558195 m!536219))

(declare-fun m!536221 () Bool)

(assert (=> b!558195 m!536221))

(assert (=> b!558195 m!536219))

(declare-fun m!536223 () Bool)

(assert (=> b!558195 m!536223))

(assert (=> b!558195 m!536203))

(declare-fun m!536225 () Bool)

(assert (=> b!558195 m!536225))

(assert (=> b!558195 m!536219))

(assert (=> b!558195 m!536203))

(declare-fun m!536227 () Bool)

(assert (=> b!558195 m!536227))

(assert (=> b!558202 m!536203))

(declare-fun m!536229 () Bool)

(assert (=> b!558202 m!536229))

(assert (=> b!558202 m!536203))

(declare-fun m!536231 () Bool)

(assert (=> b!558202 m!536231))

(declare-fun m!536233 () Bool)

(assert (=> b!558202 m!536233))

(assert (=> b!558202 m!536201))

(declare-fun m!536235 () Bool)

(assert (=> b!558203 m!536235))

(push 1)

