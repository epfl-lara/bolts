; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51468 () Bool)

(assert start!51468)

(declare-fun b!562263 () Bool)

(declare-fun res!353571 () Bool)

(declare-fun e!324040 () Bool)

(assert (=> b!562263 (=> (not res!353571) (not e!324040))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35287 0))(
  ( (array!35288 (arr!16940 (Array (_ BitVec 32) (_ BitVec 64))) (size!17304 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35287)

(assert (=> b!562263 (= res!353571 (and (= (size!17304 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17304 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17304 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!353568 () Bool)

(assert (=> start!51468 (=> (not res!353568) (not e!324040))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51468 (= res!353568 (validMask!0 mask!3119))))

(assert (=> start!51468 e!324040))

(assert (=> start!51468 true))

(declare-fun array_inv!12714 (array!35287) Bool)

(assert (=> start!51468 (array_inv!12714 a!3118)))

(declare-fun b!562264 () Bool)

(declare-fun e!324043 () Bool)

(declare-fun e!324039 () Bool)

(assert (=> b!562264 (= e!324043 (not e!324039))))

(declare-fun res!353572 () Bool)

(assert (=> b!562264 (=> res!353572 e!324039)))

(declare-datatypes ((SeekEntryResult!5396 0))(
  ( (MissingZero!5396 (index!23811 (_ BitVec 32))) (Found!5396 (index!23812 (_ BitVec 32))) (Intermediate!5396 (undefined!6208 Bool) (index!23813 (_ BitVec 32)) (x!52734 (_ BitVec 32))) (Undefined!5396) (MissingVacant!5396 (index!23814 (_ BitVec 32))) )
))
(declare-fun lt!256233 () SeekEntryResult!5396)

(assert (=> b!562264 (= res!353572 (or (undefined!6208 lt!256233) (not (is-Intermediate!5396 lt!256233))))))

(declare-fun lt!256227 () SeekEntryResult!5396)

(declare-fun lt!256223 () SeekEntryResult!5396)

(assert (=> b!562264 (= lt!256227 lt!256223)))

(assert (=> b!562264 (= lt!256223 (Found!5396 j!142))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35287 (_ BitVec 32)) SeekEntryResult!5396)

(assert (=> b!562264 (= lt!256227 (seekEntryOrOpen!0 (select (arr!16940 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35287 (_ BitVec 32)) Bool)

(assert (=> b!562264 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17566 0))(
  ( (Unit!17567) )
))
(declare-fun lt!256230 () Unit!17566)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35287 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17566)

(assert (=> b!562264 (= lt!256230 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!562265 () Bool)

(declare-fun e!324041 () Bool)

(assert (=> b!562265 (= e!324040 e!324041)))

(declare-fun res!353569 () Bool)

(assert (=> b!562265 (=> (not res!353569) (not e!324041))))

(declare-fun lt!256228 () SeekEntryResult!5396)

(assert (=> b!562265 (= res!353569 (or (= lt!256228 (MissingZero!5396 i!1132)) (= lt!256228 (MissingVacant!5396 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!562265 (= lt!256228 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!562266 () Bool)

(declare-fun res!353573 () Bool)

(assert (=> b!562266 (=> (not res!353573) (not e!324040))))

(declare-fun arrayContainsKey!0 (array!35287 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!562266 (= res!353573 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!562267 () Bool)

(declare-fun res!353567 () Bool)

(assert (=> b!562267 (=> (not res!353567) (not e!324041))))

(declare-datatypes ((List!11073 0))(
  ( (Nil!11070) (Cons!11069 (h!12072 (_ BitVec 64)) (t!17309 List!11073)) )
))
(declare-fun arrayNoDuplicates!0 (array!35287 (_ BitVec 32) List!11073) Bool)

(assert (=> b!562267 (= res!353567 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11070))))

(declare-fun b!562268 () Bool)

(declare-fun res!353565 () Bool)

(assert (=> b!562268 (=> (not res!353565) (not e!324041))))

(assert (=> b!562268 (= res!353565 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!562269 () Bool)

(declare-fun e!324037 () Bool)

(declare-fun e!324038 () Bool)

(assert (=> b!562269 (= e!324037 e!324038)))

(declare-fun res!353576 () Bool)

(assert (=> b!562269 (=> res!353576 e!324038)))

(declare-fun lt!256235 () (_ BitVec 64))

(declare-fun lt!256234 () SeekEntryResult!5396)

(assert (=> b!562269 (= res!353576 (or (bvslt (index!23813 lt!256233) #b00000000000000000000000000000000) (bvsge (index!23813 lt!256233) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52734 lt!256233) #b01111111111111111111111111111110) (bvslt (x!52734 lt!256233) #b00000000000000000000000000000000) (not (= lt!256235 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!16940 a!3118) i!1132 k!1914) (index!23813 lt!256233)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!256234 lt!256223))))))

(declare-fun lt!256231 () SeekEntryResult!5396)

(declare-fun lt!256226 () SeekEntryResult!5396)

(assert (=> b!562269 (= lt!256231 lt!256226)))

(declare-fun lt!256224 () (_ BitVec 64))

(declare-fun lt!256232 () array!35287)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35287 (_ BitVec 32)) SeekEntryResult!5396)

(assert (=> b!562269 (= lt!256226 (seekKeyOrZeroReturnVacant!0 (x!52734 lt!256233) (index!23813 lt!256233) (index!23813 lt!256233) lt!256224 lt!256232 mask!3119))))

(assert (=> b!562269 (= lt!256231 (seekEntryOrOpen!0 lt!256224 lt!256232 mask!3119))))

(assert (=> b!562269 (= lt!256227 lt!256234)))

(assert (=> b!562269 (= lt!256234 (seekKeyOrZeroReturnVacant!0 (x!52734 lt!256233) (index!23813 lt!256233) (index!23813 lt!256233) (select (arr!16940 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!562270 () Bool)

(assert (=> b!562270 (= e!324039 e!324037)))

(declare-fun res!353566 () Bool)

(assert (=> b!562270 (=> res!353566 e!324037)))

(assert (=> b!562270 (= res!353566 (or (= lt!256235 (select (arr!16940 a!3118) j!142)) (= lt!256235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!562270 (= lt!256235 (select (arr!16940 a!3118) (index!23813 lt!256233)))))

(declare-fun b!562271 () Bool)

(assert (=> b!562271 (= e!324038 true)))

(assert (=> b!562271 (= lt!256234 lt!256226)))

(declare-fun lt!256225 () Unit!17566)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35287 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17566)

(assert (=> b!562271 (= lt!256225 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k!1914 j!142 (x!52734 lt!256233) (index!23813 lt!256233) (index!23813 lt!256233) mask!3119))))

(declare-fun b!562272 () Bool)

(declare-fun res!353575 () Bool)

(assert (=> b!562272 (=> (not res!353575) (not e!324040))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!562272 (= res!353575 (validKeyInArray!0 k!1914))))

(declare-fun b!562273 () Bool)

(assert (=> b!562273 (= e!324041 e!324043)))

(declare-fun res!353574 () Bool)

(assert (=> b!562273 (=> (not res!353574) (not e!324043))))

(declare-fun lt!256222 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35287 (_ BitVec 32)) SeekEntryResult!5396)

(assert (=> b!562273 (= res!353574 (= lt!256233 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256222 lt!256224 lt!256232 mask!3119)))))

(declare-fun lt!256229 () (_ BitVec 32))

(assert (=> b!562273 (= lt!256233 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256229 (select (arr!16940 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!562273 (= lt!256222 (toIndex!0 lt!256224 mask!3119))))

(assert (=> b!562273 (= lt!256224 (select (store (arr!16940 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!562273 (= lt!256229 (toIndex!0 (select (arr!16940 a!3118) j!142) mask!3119))))

(assert (=> b!562273 (= lt!256232 (array!35288 (store (arr!16940 a!3118) i!1132 k!1914) (size!17304 a!3118)))))

(declare-fun b!562274 () Bool)

(declare-fun res!353570 () Bool)

(assert (=> b!562274 (=> (not res!353570) (not e!324040))))

(assert (=> b!562274 (= res!353570 (validKeyInArray!0 (select (arr!16940 a!3118) j!142)))))

(assert (= (and start!51468 res!353568) b!562263))

(assert (= (and b!562263 res!353571) b!562274))

(assert (= (and b!562274 res!353570) b!562272))

(assert (= (and b!562272 res!353575) b!562266))

(assert (= (and b!562266 res!353573) b!562265))

(assert (= (and b!562265 res!353569) b!562268))

(assert (= (and b!562268 res!353565) b!562267))

(assert (= (and b!562267 res!353567) b!562273))

(assert (= (and b!562273 res!353574) b!562264))

(assert (= (and b!562264 (not res!353572)) b!562270))

(assert (= (and b!562270 (not res!353566)) b!562269))

(assert (= (and b!562269 (not res!353576)) b!562271))

(declare-fun m!540343 () Bool)

(assert (=> b!562267 m!540343))

(declare-fun m!540345 () Bool)

(assert (=> b!562274 m!540345))

(assert (=> b!562274 m!540345))

(declare-fun m!540347 () Bool)

(assert (=> b!562274 m!540347))

(declare-fun m!540349 () Bool)

(assert (=> b!562271 m!540349))

(declare-fun m!540351 () Bool)

(assert (=> b!562266 m!540351))

(assert (=> b!562273 m!540345))

(declare-fun m!540353 () Bool)

(assert (=> b!562273 m!540353))

(declare-fun m!540355 () Bool)

(assert (=> b!562273 m!540355))

(assert (=> b!562273 m!540345))

(assert (=> b!562273 m!540345))

(declare-fun m!540357 () Bool)

(assert (=> b!562273 m!540357))

(declare-fun m!540359 () Bool)

(assert (=> b!562273 m!540359))

(declare-fun m!540361 () Bool)

(assert (=> b!562273 m!540361))

(declare-fun m!540363 () Bool)

(assert (=> b!562273 m!540363))

(declare-fun m!540365 () Bool)

(assert (=> b!562265 m!540365))

(declare-fun m!540367 () Bool)

(assert (=> b!562268 m!540367))

(assert (=> b!562270 m!540345))

(declare-fun m!540369 () Bool)

(assert (=> b!562270 m!540369))

(assert (=> b!562264 m!540345))

(assert (=> b!562264 m!540345))

(declare-fun m!540371 () Bool)

(assert (=> b!562264 m!540371))

(declare-fun m!540373 () Bool)

(assert (=> b!562264 m!540373))

(declare-fun m!540375 () Bool)

(assert (=> b!562264 m!540375))

(assert (=> b!562269 m!540345))

(assert (=> b!562269 m!540345))

(declare-fun m!540377 () Bool)

(assert (=> b!562269 m!540377))

(declare-fun m!540379 () Bool)

(assert (=> b!562269 m!540379))

(declare-fun m!540381 () Bool)

(assert (=> b!562269 m!540381))

(assert (=> b!562269 m!540359))

(declare-fun m!540383 () Bool)

(assert (=> b!562269 m!540383))

(declare-fun m!540385 () Bool)

(assert (=> b!562272 m!540385))

(declare-fun m!540387 () Bool)

(assert (=> start!51468 m!540387))

(declare-fun m!540389 () Bool)

(assert (=> start!51468 m!540389))

(push 1)

