; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51602 () Bool)

(assert start!51602)

(declare-fun b!564271 () Bool)

(declare-fun res!355579 () Bool)

(declare-fun e!325022 () Bool)

(assert (=> b!564271 (=> (not res!355579) (not e!325022))))

(declare-datatypes ((array!35421 0))(
  ( (array!35422 (arr!17007 (Array (_ BitVec 32) (_ BitVec 64))) (size!17371 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35421)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35421 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564271 (= res!355579 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!564272 () Bool)

(declare-fun res!355573 () Bool)

(assert (=> b!564272 (=> (not res!355573) (not e!325022))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!564272 (= res!355573 (and (= (size!17371 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17371 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17371 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!564273 () Bool)

(declare-fun res!355576 () Bool)

(assert (=> b!564273 (=> (not res!355576) (not e!325022))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564273 (= res!355576 (validKeyInArray!0 k!1914))))

(declare-fun b!564274 () Bool)

(declare-fun e!325024 () Bool)

(assert (=> b!564274 (= e!325024 false)))

(declare-fun lt!257501 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!564274 (= lt!257501 (toIndex!0 (select (store (arr!17007 a!3118) i!1132 k!1914) j!142) mask!3119))))

(declare-fun res!355575 () Bool)

(assert (=> start!51602 (=> (not res!355575) (not e!325022))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51602 (= res!355575 (validMask!0 mask!3119))))

(assert (=> start!51602 e!325022))

(assert (=> start!51602 true))

(declare-fun array_inv!12781 (array!35421) Bool)

(assert (=> start!51602 (array_inv!12781 a!3118)))

(declare-fun b!564275 () Bool)

(declare-fun res!355578 () Bool)

(assert (=> b!564275 (=> (not res!355578) (not e!325022))))

(assert (=> b!564275 (= res!355578 (validKeyInArray!0 (select (arr!17007 a!3118) j!142)))))

(declare-fun b!564276 () Bool)

(declare-fun res!355580 () Bool)

(assert (=> b!564276 (=> (not res!355580) (not e!325024))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35421 (_ BitVec 32)) Bool)

(assert (=> b!564276 (= res!355580 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!564277 () Bool)

(assert (=> b!564277 (= e!325022 e!325024)))

(declare-fun res!355574 () Bool)

(assert (=> b!564277 (=> (not res!355574) (not e!325024))))

(declare-datatypes ((SeekEntryResult!5463 0))(
  ( (MissingZero!5463 (index!24079 (_ BitVec 32))) (Found!5463 (index!24080 (_ BitVec 32))) (Intermediate!5463 (undefined!6275 Bool) (index!24081 (_ BitVec 32)) (x!52985 (_ BitVec 32))) (Undefined!5463) (MissingVacant!5463 (index!24082 (_ BitVec 32))) )
))
(declare-fun lt!257500 () SeekEntryResult!5463)

(assert (=> b!564277 (= res!355574 (or (= lt!257500 (MissingZero!5463 i!1132)) (= lt!257500 (MissingVacant!5463 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35421 (_ BitVec 32)) SeekEntryResult!5463)

(assert (=> b!564277 (= lt!257500 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!564278 () Bool)

(declare-fun res!355577 () Bool)

(assert (=> b!564278 (=> (not res!355577) (not e!325024))))

(declare-datatypes ((List!11140 0))(
  ( (Nil!11137) (Cons!11136 (h!12139 (_ BitVec 64)) (t!17376 List!11140)) )
))
(declare-fun arrayNoDuplicates!0 (array!35421 (_ BitVec 32) List!11140) Bool)

(assert (=> b!564278 (= res!355577 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11137))))

(assert (= (and start!51602 res!355575) b!564272))

(assert (= (and b!564272 res!355573) b!564275))

(assert (= (and b!564275 res!355578) b!564273))

(assert (= (and b!564273 res!355576) b!564271))

(assert (= (and b!564271 res!355579) b!564277))

(assert (= (and b!564277 res!355574) b!564276))

(assert (= (and b!564276 res!355580) b!564278))

(assert (= (and b!564278 res!355577) b!564274))

(declare-fun m!542731 () Bool)

(assert (=> b!564277 m!542731))

(declare-fun m!542733 () Bool)

(assert (=> b!564273 m!542733))

(declare-fun m!542735 () Bool)

(assert (=> b!564271 m!542735))

(declare-fun m!542737 () Bool)

(assert (=> b!564278 m!542737))

(declare-fun m!542739 () Bool)

(assert (=> b!564276 m!542739))

(declare-fun m!542741 () Bool)

(assert (=> b!564274 m!542741))

(declare-fun m!542743 () Bool)

(assert (=> b!564274 m!542743))

(assert (=> b!564274 m!542743))

(declare-fun m!542745 () Bool)

(assert (=> b!564274 m!542745))

(declare-fun m!542747 () Bool)

(assert (=> b!564275 m!542747))

(assert (=> b!564275 m!542747))

(declare-fun m!542749 () Bool)

(assert (=> b!564275 m!542749))

(declare-fun m!542751 () Bool)

(assert (=> start!51602 m!542751))

(declare-fun m!542753 () Bool)

(assert (=> start!51602 m!542753))

(push 1)

