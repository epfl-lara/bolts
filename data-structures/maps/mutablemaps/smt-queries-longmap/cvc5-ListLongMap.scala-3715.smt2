; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51104 () Bool)

(assert start!51104)

(declare-fun res!350111 () Bool)

(declare-fun e!321513 () Bool)

(assert (=> start!51104 (=> (not res!350111) (not e!321513))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51104 (= res!350111 (validMask!0 mask!3119))))

(assert (=> start!51104 e!321513))

(assert (=> start!51104 true))

(declare-datatypes ((array!35112 0))(
  ( (array!35113 (arr!16857 (Array (_ BitVec 32) (_ BitVec 64))) (size!17221 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35112)

(declare-fun array_inv!12631 (array!35112) Bool)

(assert (=> start!51104 (array_inv!12631 a!3118)))

(declare-fun b!558094 () Bool)

(declare-fun res!350116 () Bool)

(assert (=> b!558094 (=> (not res!350116) (not e!321513))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!558094 (= res!350116 (validKeyInArray!0 k!1914))))

(declare-fun b!558095 () Bool)

(declare-fun res!350117 () Bool)

(declare-fun e!321511 () Bool)

(assert (=> b!558095 (=> (not res!350117) (not e!321511))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35112 (_ BitVec 32)) Bool)

(assert (=> b!558095 (= res!350117 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-datatypes ((SeekEntryResult!5313 0))(
  ( (MissingZero!5313 (index!23479 (_ BitVec 32))) (Found!5313 (index!23480 (_ BitVec 32))) (Intermediate!5313 (undefined!6125 Bool) (index!23481 (_ BitVec 32)) (x!52408 (_ BitVec 32))) (Undefined!5313) (MissingVacant!5313 (index!23482 (_ BitVec 32))) )
))
(declare-fun lt!253660 () SeekEntryResult!5313)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun b!558096 () Bool)

(declare-fun lt!253661 () SeekEntryResult!5313)

(declare-fun e!321512 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35112 (_ BitVec 32)) SeekEntryResult!5313)

(assert (=> b!558096 (= e!321512 (= lt!253661 (seekKeyOrZeroReturnVacant!0 (x!52408 lt!253660) (index!23481 lt!253660) (index!23481 lt!253660) (select (arr!16857 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!558097 () Bool)

(declare-fun res!350113 () Bool)

(assert (=> b!558097 (=> (not res!350113) (not e!321511))))

(declare-datatypes ((List!10990 0))(
  ( (Nil!10987) (Cons!10986 (h!11980 (_ BitVec 64)) (t!17226 List!10990)) )
))
(declare-fun arrayNoDuplicates!0 (array!35112 (_ BitVec 32) List!10990) Bool)

(assert (=> b!558097 (= res!350113 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10987))))

(declare-fun b!558098 () Bool)

(declare-fun res!350114 () Bool)

(assert (=> b!558098 (=> (not res!350114) (not e!321513))))

(declare-fun arrayContainsKey!0 (array!35112 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!558098 (= res!350114 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!558099 () Bool)

(declare-fun e!321509 () Bool)

(assert (=> b!558099 (= e!321511 e!321509)))

(declare-fun res!350108 () Bool)

(assert (=> b!558099 (=> (not res!350108) (not e!321509))))

(declare-fun lt!253657 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35112 (_ BitVec 32)) SeekEntryResult!5313)

(assert (=> b!558099 (= res!350108 (= lt!253660 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253657 (select (store (arr!16857 a!3118) i!1132 k!1914) j!142) (array!35113 (store (arr!16857 a!3118) i!1132 k!1914) (size!17221 a!3118)) mask!3119)))))

(declare-fun lt!253659 () (_ BitVec 32))

(assert (=> b!558099 (= lt!253660 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253659 (select (arr!16857 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!558099 (= lt!253657 (toIndex!0 (select (store (arr!16857 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!558099 (= lt!253659 (toIndex!0 (select (arr!16857 a!3118) j!142) mask!3119))))

(declare-fun b!558100 () Bool)

(assert (=> b!558100 (= e!321513 e!321511)))

(declare-fun res!350109 () Bool)

(assert (=> b!558100 (=> (not res!350109) (not e!321511))))

(declare-fun lt!253656 () SeekEntryResult!5313)

(assert (=> b!558100 (= res!350109 (or (= lt!253656 (MissingZero!5313 i!1132)) (= lt!253656 (MissingVacant!5313 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35112 (_ BitVec 32)) SeekEntryResult!5313)

(assert (=> b!558100 (= lt!253656 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!558101 () Bool)

(declare-fun e!321510 () Bool)

(assert (=> b!558101 (= e!321510 e!321512)))

(declare-fun res!350115 () Bool)

(assert (=> b!558101 (=> res!350115 e!321512)))

(assert (=> b!558101 (= res!350115 (or (undefined!6125 lt!253660) (not (is-Intermediate!5313 lt!253660)) (= (select (arr!16857 a!3118) (index!23481 lt!253660)) (select (arr!16857 a!3118) j!142)) (= (select (arr!16857 a!3118) (index!23481 lt!253660)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!558102 () Bool)

(assert (=> b!558102 (= e!321509 (not true))))

(assert (=> b!558102 e!321510))

(declare-fun res!350110 () Bool)

(assert (=> b!558102 (=> (not res!350110) (not e!321510))))

(assert (=> b!558102 (= res!350110 (= lt!253661 (Found!5313 j!142)))))

(assert (=> b!558102 (= lt!253661 (seekEntryOrOpen!0 (select (arr!16857 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!558102 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17400 0))(
  ( (Unit!17401) )
))
(declare-fun lt!253658 () Unit!17400)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35112 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17400)

(assert (=> b!558102 (= lt!253658 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!558103 () Bool)

(declare-fun res!350112 () Bool)

(assert (=> b!558103 (=> (not res!350112) (not e!321513))))

(assert (=> b!558103 (= res!350112 (and (= (size!17221 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17221 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17221 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!558104 () Bool)

(declare-fun res!350107 () Bool)

(assert (=> b!558104 (=> (not res!350107) (not e!321513))))

(assert (=> b!558104 (= res!350107 (validKeyInArray!0 (select (arr!16857 a!3118) j!142)))))

(assert (= (and start!51104 res!350111) b!558103))

(assert (= (and b!558103 res!350112) b!558104))

(assert (= (and b!558104 res!350107) b!558094))

(assert (= (and b!558094 res!350116) b!558098))

(assert (= (and b!558098 res!350114) b!558100))

(assert (= (and b!558100 res!350109) b!558095))

(assert (= (and b!558095 res!350117) b!558097))

(assert (= (and b!558097 res!350113) b!558099))

(assert (= (and b!558099 res!350108) b!558102))

(assert (= (and b!558102 res!350110) b!558101))

(assert (= (and b!558101 (not res!350115)) b!558096))

(declare-fun m!536077 () Bool)

(assert (=> b!558098 m!536077))

(declare-fun m!536079 () Bool)

(assert (=> b!558096 m!536079))

(assert (=> b!558096 m!536079))

(declare-fun m!536081 () Bool)

(assert (=> b!558096 m!536081))

(declare-fun m!536083 () Bool)

(assert (=> b!558094 m!536083))

(declare-fun m!536085 () Bool)

(assert (=> b!558095 m!536085))

(declare-fun m!536087 () Bool)

(assert (=> b!558100 m!536087))

(assert (=> b!558099 m!536079))

(declare-fun m!536089 () Bool)

(assert (=> b!558099 m!536089))

(assert (=> b!558099 m!536079))

(declare-fun m!536091 () Bool)

(assert (=> b!558099 m!536091))

(declare-fun m!536093 () Bool)

(assert (=> b!558099 m!536093))

(assert (=> b!558099 m!536091))

(declare-fun m!536095 () Bool)

(assert (=> b!558099 m!536095))

(assert (=> b!558099 m!536079))

(declare-fun m!536097 () Bool)

(assert (=> b!558099 m!536097))

(assert (=> b!558099 m!536091))

(declare-fun m!536099 () Bool)

(assert (=> b!558099 m!536099))

(assert (=> b!558104 m!536079))

(assert (=> b!558104 m!536079))

(declare-fun m!536101 () Bool)

(assert (=> b!558104 m!536101))

(assert (=> b!558102 m!536079))

(assert (=> b!558102 m!536079))

(declare-fun m!536103 () Bool)

(assert (=> b!558102 m!536103))

(declare-fun m!536105 () Bool)

(assert (=> b!558102 m!536105))

(declare-fun m!536107 () Bool)

(assert (=> b!558102 m!536107))

(declare-fun m!536109 () Bool)

(assert (=> b!558097 m!536109))

(declare-fun m!536111 () Bool)

(assert (=> b!558101 m!536111))

(assert (=> b!558101 m!536079))

(declare-fun m!536113 () Bool)

(assert (=> start!51104 m!536113))

(declare-fun m!536115 () Bool)

(assert (=> start!51104 m!536115))

(push 1)

