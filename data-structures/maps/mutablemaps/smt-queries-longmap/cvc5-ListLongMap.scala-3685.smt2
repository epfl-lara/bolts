; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50744 () Bool)

(assert start!50744)

(declare-fun b!554598 () Bool)

(declare-fun res!347161 () Bool)

(declare-fun e!319744 () Bool)

(assert (=> b!554598 (=> (not res!347161) (not e!319744))))

(declare-datatypes ((array!34923 0))(
  ( (array!34924 (arr!16767 (Array (_ BitVec 32) (_ BitVec 64))) (size!17131 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34923)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34923 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554598 (= res!347161 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun b!554599 () Bool)

(declare-fun e!319742 () Bool)

(declare-datatypes ((SeekEntryResult!5223 0))(
  ( (MissingZero!5223 (index!23119 (_ BitVec 32))) (Found!5223 (index!23120 (_ BitVec 32))) (Intermediate!5223 (undefined!6035 Bool) (index!23121 (_ BitVec 32)) (x!52060 (_ BitVec 32))) (Undefined!5223) (MissingVacant!5223 (index!23122 (_ BitVec 32))) )
))
(declare-fun lt!251946 () SeekEntryResult!5223)

(assert (=> b!554599 (= e!319742 (not (or (undefined!6035 lt!251946) (not (is-Intermediate!5223 lt!251946)) (= (select (arr!16767 a!3118) (index!23121 lt!251946)) (select (arr!16767 a!3118) j!142)) (not (= (select (arr!16767 a!3118) (index!23121 lt!251946)) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsle #b00000000000000000000000000000000 (size!17131 a!3118)))))))

(declare-fun lt!251949 () SeekEntryResult!5223)

(assert (=> b!554599 (and (= lt!251949 (Found!5223 j!142)) (or (undefined!6035 lt!251946) (not (is-Intermediate!5223 lt!251946)) (= (select (arr!16767 a!3118) (index!23121 lt!251946)) (select (arr!16767 a!3118) j!142)) (not (= (select (arr!16767 a!3118) (index!23121 lt!251946)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!251949 (MissingZero!5223 (index!23121 lt!251946)))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34923 (_ BitVec 32)) SeekEntryResult!5223)

(assert (=> b!554599 (= lt!251949 (seekEntryOrOpen!0 (select (arr!16767 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34923 (_ BitVec 32)) Bool)

(assert (=> b!554599 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17220 0))(
  ( (Unit!17221) )
))
(declare-fun lt!251950 () Unit!17220)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34923 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17220)

(assert (=> b!554599 (= lt!251950 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554600 () Bool)

(declare-fun res!347164 () Bool)

(assert (=> b!554600 (=> (not res!347164) (not e!319744))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554600 (= res!347164 (validKeyInArray!0 (select (arr!16767 a!3118) j!142)))))

(declare-fun b!554601 () Bool)

(declare-fun res!347162 () Bool)

(declare-fun e!319741 () Bool)

(assert (=> b!554601 (=> (not res!347162) (not e!319741))))

(declare-datatypes ((List!10900 0))(
  ( (Nil!10897) (Cons!10896 (h!11881 (_ BitVec 64)) (t!17136 List!10900)) )
))
(declare-fun arrayNoDuplicates!0 (array!34923 (_ BitVec 32) List!10900) Bool)

(assert (=> b!554601 (= res!347162 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10897))))

(declare-fun b!554603 () Bool)

(assert (=> b!554603 (= e!319741 e!319742)))

(declare-fun res!347166 () Bool)

(assert (=> b!554603 (=> (not res!347166) (not e!319742))))

(declare-fun lt!251951 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34923 (_ BitVec 32)) SeekEntryResult!5223)

(assert (=> b!554603 (= res!347166 (= lt!251946 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251951 (select (store (arr!16767 a!3118) i!1132 k!1914) j!142) (array!34924 (store (arr!16767 a!3118) i!1132 k!1914) (size!17131 a!3118)) mask!3119)))))

(declare-fun lt!251947 () (_ BitVec 32))

(assert (=> b!554603 (= lt!251946 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251947 (select (arr!16767 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554603 (= lt!251951 (toIndex!0 (select (store (arr!16767 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!554603 (= lt!251947 (toIndex!0 (select (arr!16767 a!3118) j!142) mask!3119))))

(declare-fun b!554604 () Bool)

(declare-fun res!347160 () Bool)

(assert (=> b!554604 (=> (not res!347160) (not e!319744))))

(assert (=> b!554604 (= res!347160 (and (= (size!17131 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17131 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17131 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!347167 () Bool)

(assert (=> start!50744 (=> (not res!347167) (not e!319744))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50744 (= res!347167 (validMask!0 mask!3119))))

(assert (=> start!50744 e!319744))

(assert (=> start!50744 true))

(declare-fun array_inv!12541 (array!34923) Bool)

(assert (=> start!50744 (array_inv!12541 a!3118)))

(declare-fun b!554602 () Bool)

(assert (=> b!554602 (= e!319744 e!319741)))

(declare-fun res!347168 () Bool)

(assert (=> b!554602 (=> (not res!347168) (not e!319741))))

(declare-fun lt!251948 () SeekEntryResult!5223)

(assert (=> b!554602 (= res!347168 (or (= lt!251948 (MissingZero!5223 i!1132)) (= lt!251948 (MissingVacant!5223 i!1132))))))

(assert (=> b!554602 (= lt!251948 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!554605 () Bool)

(declare-fun res!347165 () Bool)

(assert (=> b!554605 (=> (not res!347165) (not e!319744))))

(assert (=> b!554605 (= res!347165 (validKeyInArray!0 k!1914))))

(declare-fun b!554606 () Bool)

(declare-fun res!347163 () Bool)

(assert (=> b!554606 (=> (not res!347163) (not e!319741))))

(assert (=> b!554606 (= res!347163 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!50744 res!347167) b!554604))

(assert (= (and b!554604 res!347160) b!554600))

(assert (= (and b!554600 res!347164) b!554605))

(assert (= (and b!554605 res!347165) b!554598))

(assert (= (and b!554598 res!347161) b!554602))

(assert (= (and b!554602 res!347168) b!554606))

(assert (= (and b!554606 res!347163) b!554601))

(assert (= (and b!554601 res!347162) b!554603))

(assert (= (and b!554603 res!347166) b!554599))

(declare-fun m!532057 () Bool)

(assert (=> start!50744 m!532057))

(declare-fun m!532059 () Bool)

(assert (=> start!50744 m!532059))

(declare-fun m!532061 () Bool)

(assert (=> b!554605 m!532061))

(declare-fun m!532063 () Bool)

(assert (=> b!554602 m!532063))

(declare-fun m!532065 () Bool)

(assert (=> b!554601 m!532065))

(declare-fun m!532067 () Bool)

(assert (=> b!554600 m!532067))

(assert (=> b!554600 m!532067))

(declare-fun m!532069 () Bool)

(assert (=> b!554600 m!532069))

(assert (=> b!554599 m!532067))

(declare-fun m!532071 () Bool)

(assert (=> b!554599 m!532071))

(declare-fun m!532073 () Bool)

(assert (=> b!554599 m!532073))

(declare-fun m!532075 () Bool)

(assert (=> b!554599 m!532075))

(assert (=> b!554599 m!532067))

(declare-fun m!532077 () Bool)

(assert (=> b!554599 m!532077))

(declare-fun m!532079 () Bool)

(assert (=> b!554606 m!532079))

(declare-fun m!532081 () Bool)

(assert (=> b!554598 m!532081))

(declare-fun m!532083 () Bool)

(assert (=> b!554603 m!532083))

(declare-fun m!532085 () Bool)

(assert (=> b!554603 m!532085))

(assert (=> b!554603 m!532067))

(declare-fun m!532087 () Bool)

(assert (=> b!554603 m!532087))

(assert (=> b!554603 m!532067))

(assert (=> b!554603 m!532067))

(declare-fun m!532089 () Bool)

(assert (=> b!554603 m!532089))

(assert (=> b!554603 m!532083))

(declare-fun m!532091 () Bool)

(assert (=> b!554603 m!532091))

(assert (=> b!554603 m!532083))

(declare-fun m!532093 () Bool)

(assert (=> b!554603 m!532093))

(push 1)

