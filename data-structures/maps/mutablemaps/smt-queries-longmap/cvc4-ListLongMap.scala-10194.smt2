; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120134 () Bool)

(assert start!120134)

(declare-fun b!1398143 () Bool)

(declare-fun e!791551 () Bool)

(assert (=> b!1398143 (= e!791551 true)))

(declare-datatypes ((array!95581 0))(
  ( (array!95582 (arr!46140 (Array (_ BitVec 32) (_ BitVec 64))) (size!46691 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95581)

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10479 0))(
  ( (MissingZero!10479 (index!44286 (_ BitVec 32))) (Found!10479 (index!44287 (_ BitVec 32))) (Intermediate!10479 (undefined!11291 Bool) (index!44288 (_ BitVec 32)) (x!125936 (_ BitVec 32))) (Undefined!10479) (MissingVacant!10479 (index!44289 (_ BitVec 32))) )
))
(declare-fun lt!614733 () SeekEntryResult!10479)

(declare-fun lt!614730 () SeekEntryResult!10479)

(assert (=> b!1398143 (and (not (undefined!11291 lt!614730)) (= (index!44288 lt!614730) i!1037) (bvslt (x!125936 lt!614730) (x!125936 lt!614733)) (= (select (store (arr!46140 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44288 lt!614730)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((Unit!46912 0))(
  ( (Unit!46913) )
))
(declare-fun lt!614732 () Unit!46912)

(declare-fun lt!614729 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95581 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46912)

(assert (=> b!1398143 (= lt!614732 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!614729 (x!125936 lt!614733) (index!44288 lt!614733) (x!125936 lt!614730) (index!44288 lt!614730) (undefined!11291 lt!614730) mask!2840))))

(declare-fun b!1398144 () Bool)

(declare-fun res!937167 () Bool)

(declare-fun e!791553 () Bool)

(assert (=> b!1398144 (=> (not res!937167) (not e!791553))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1398144 (= res!937167 (validKeyInArray!0 (select (arr!46140 a!2901) j!112)))))

(declare-fun b!1398145 () Bool)

(declare-fun res!937170 () Bool)

(assert (=> b!1398145 (=> (not res!937170) (not e!791553))))

(declare-datatypes ((List!32839 0))(
  ( (Nil!32836) (Cons!32835 (h!34077 (_ BitVec 64)) (t!47540 List!32839)) )
))
(declare-fun arrayNoDuplicates!0 (array!95581 (_ BitVec 32) List!32839) Bool)

(assert (=> b!1398145 (= res!937170 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32836))))

(declare-fun b!1398146 () Bool)

(declare-fun res!937171 () Bool)

(assert (=> b!1398146 (=> (not res!937171) (not e!791553))))

(assert (=> b!1398146 (= res!937171 (and (= (size!46691 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46691 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46691 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1398147 () Bool)

(declare-fun e!791552 () Bool)

(assert (=> b!1398147 (= e!791553 (not e!791552))))

(declare-fun res!937169 () Bool)

(assert (=> b!1398147 (=> res!937169 e!791552)))

(assert (=> b!1398147 (= res!937169 (or (not (is-Intermediate!10479 lt!614733)) (undefined!11291 lt!614733)))))

(declare-fun e!791555 () Bool)

(assert (=> b!1398147 e!791555))

(declare-fun res!937165 () Bool)

(assert (=> b!1398147 (=> (not res!937165) (not e!791555))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95581 (_ BitVec 32)) Bool)

(assert (=> b!1398147 (= res!937165 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!614734 () Unit!46912)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95581 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46912)

(assert (=> b!1398147 (= lt!614734 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95581 (_ BitVec 32)) SeekEntryResult!10479)

(assert (=> b!1398147 (= lt!614733 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614729 (select (arr!46140 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1398147 (= lt!614729 (toIndex!0 (select (arr!46140 a!2901) j!112) mask!2840))))

(declare-fun b!1398148 () Bool)

(declare-fun res!937172 () Bool)

(assert (=> b!1398148 (=> (not res!937172) (not e!791553))))

(assert (=> b!1398148 (= res!937172 (validKeyInArray!0 (select (arr!46140 a!2901) i!1037)))))

(declare-fun b!1398149 () Bool)

(assert (=> b!1398149 (= e!791552 e!791551)))

(declare-fun res!937166 () Bool)

(assert (=> b!1398149 (=> res!937166 e!791551)))

(assert (=> b!1398149 (= res!937166 (or (= lt!614733 lt!614730) (not (is-Intermediate!10479 lt!614730))))))

(declare-fun lt!614731 () (_ BitVec 64))

(assert (=> b!1398149 (= lt!614730 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614731 mask!2840) lt!614731 (array!95582 (store (arr!46140 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46691 a!2901)) mask!2840))))

(assert (=> b!1398149 (= lt!614731 (select (store (arr!46140 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun res!937168 () Bool)

(assert (=> start!120134 (=> (not res!937168) (not e!791553))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120134 (= res!937168 (validMask!0 mask!2840))))

(assert (=> start!120134 e!791553))

(assert (=> start!120134 true))

(declare-fun array_inv!35085 (array!95581) Bool)

(assert (=> start!120134 (array_inv!35085 a!2901)))

(declare-fun b!1398150 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95581 (_ BitVec 32)) SeekEntryResult!10479)

(assert (=> b!1398150 (= e!791555 (= (seekEntryOrOpen!0 (select (arr!46140 a!2901) j!112) a!2901 mask!2840) (Found!10479 j!112)))))

(declare-fun b!1398151 () Bool)

(declare-fun res!937173 () Bool)

(assert (=> b!1398151 (=> (not res!937173) (not e!791553))))

(assert (=> b!1398151 (= res!937173 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120134 res!937168) b!1398146))

(assert (= (and b!1398146 res!937171) b!1398148))

(assert (= (and b!1398148 res!937172) b!1398144))

(assert (= (and b!1398144 res!937167) b!1398151))

(assert (= (and b!1398151 res!937173) b!1398145))

(assert (= (and b!1398145 res!937170) b!1398147))

(assert (= (and b!1398147 res!937165) b!1398150))

(assert (= (and b!1398147 (not res!937169)) b!1398149))

(assert (= (and b!1398149 (not res!937166)) b!1398143))

(declare-fun m!1285251 () Bool)

(assert (=> b!1398148 m!1285251))

(assert (=> b!1398148 m!1285251))

(declare-fun m!1285253 () Bool)

(assert (=> b!1398148 m!1285253))

(declare-fun m!1285255 () Bool)

(assert (=> b!1398149 m!1285255))

(declare-fun m!1285257 () Bool)

(assert (=> b!1398149 m!1285257))

(assert (=> b!1398149 m!1285255))

(declare-fun m!1285259 () Bool)

(assert (=> b!1398149 m!1285259))

(declare-fun m!1285261 () Bool)

(assert (=> b!1398149 m!1285261))

(declare-fun m!1285263 () Bool)

(assert (=> start!120134 m!1285263))

(declare-fun m!1285265 () Bool)

(assert (=> start!120134 m!1285265))

(declare-fun m!1285267 () Bool)

(assert (=> b!1398150 m!1285267))

(assert (=> b!1398150 m!1285267))

(declare-fun m!1285269 () Bool)

(assert (=> b!1398150 m!1285269))

(declare-fun m!1285271 () Bool)

(assert (=> b!1398145 m!1285271))

(declare-fun m!1285273 () Bool)

(assert (=> b!1398151 m!1285273))

(assert (=> b!1398144 m!1285267))

(assert (=> b!1398144 m!1285267))

(declare-fun m!1285275 () Bool)

(assert (=> b!1398144 m!1285275))

(assert (=> b!1398143 m!1285257))

(declare-fun m!1285277 () Bool)

(assert (=> b!1398143 m!1285277))

(declare-fun m!1285279 () Bool)

(assert (=> b!1398143 m!1285279))

(assert (=> b!1398147 m!1285267))

(declare-fun m!1285281 () Bool)

(assert (=> b!1398147 m!1285281))

(assert (=> b!1398147 m!1285267))

(assert (=> b!1398147 m!1285267))

(declare-fun m!1285283 () Bool)

(assert (=> b!1398147 m!1285283))

(declare-fun m!1285285 () Bool)

(assert (=> b!1398147 m!1285285))

(declare-fun m!1285287 () Bool)

(assert (=> b!1398147 m!1285287))

(push 1)

