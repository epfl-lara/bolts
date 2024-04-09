; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44998 () Bool)

(assert start!44998)

(declare-fun b!493271 () Bool)

(declare-fun e!289690 () Bool)

(assert (=> b!493271 (= e!289690 true)))

(declare-datatypes ((SeekEntryResult!3807 0))(
  ( (MissingZero!3807 (index!17407 (_ BitVec 32))) (Found!3807 (index!17408 (_ BitVec 32))) (Intermediate!3807 (undefined!4619 Bool) (index!17409 (_ BitVec 32)) (x!46520 (_ BitVec 32))) (Undefined!3807) (MissingVacant!3807 (index!17410 (_ BitVec 32))) )
))
(declare-fun lt!223150 () SeekEntryResult!3807)

(assert (=> b!493271 (= lt!223150 Undefined!3807)))

(declare-fun res!295999 () Bool)

(declare-fun e!289687 () Bool)

(assert (=> start!44998 (=> (not res!295999) (not e!289687))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44998 (= res!295999 (validMask!0 mask!3524))))

(assert (=> start!44998 e!289687))

(assert (=> start!44998 true))

(declare-datatypes ((array!31903 0))(
  ( (array!31904 (arr!15333 (Array (_ BitVec 32) (_ BitVec 64))) (size!15697 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31903)

(declare-fun array_inv!11107 (array!31903) Bool)

(assert (=> start!44998 (array_inv!11107 a!3235)))

(declare-fun b!493272 () Bool)

(declare-fun e!289689 () Bool)

(assert (=> b!493272 (= e!289687 e!289689)))

(declare-fun res!296000 () Bool)

(assert (=> b!493272 (=> (not res!296000) (not e!289689))))

(declare-fun lt!223151 () SeekEntryResult!3807)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!493272 (= res!296000 (or (= lt!223151 (MissingZero!3807 i!1204)) (= lt!223151 (MissingVacant!3807 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31903 (_ BitVec 32)) SeekEntryResult!3807)

(assert (=> b!493272 (= lt!223151 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!493273 () Bool)

(declare-fun res!295995 () Bool)

(assert (=> b!493273 (=> (not res!295995) (not e!289687))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493273 (= res!295995 (validKeyInArray!0 k!2280))))

(declare-fun b!493274 () Bool)

(declare-fun res!295998 () Bool)

(assert (=> b!493274 (=> (not res!295998) (not e!289687))))

(declare-fun arrayContainsKey!0 (array!31903 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493274 (= res!295998 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!493275 () Bool)

(declare-fun res!295991 () Bool)

(assert (=> b!493275 (=> res!295991 e!289690)))

(declare-fun lt!223149 () SeekEntryResult!3807)

(assert (=> b!493275 (= res!295991 (or (not (is-Intermediate!3807 lt!223149)) (not (undefined!4619 lt!223149))))))

(declare-fun b!493276 () Bool)

(declare-fun res!295994 () Bool)

(assert (=> b!493276 (=> (not res!295994) (not e!289689))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31903 (_ BitVec 32)) Bool)

(assert (=> b!493276 (= res!295994 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!493277 () Bool)

(declare-fun res!295996 () Bool)

(assert (=> b!493277 (=> (not res!295996) (not e!289689))))

(declare-datatypes ((List!9544 0))(
  ( (Nil!9541) (Cons!9540 (h!10408 (_ BitVec 64)) (t!15780 List!9544)) )
))
(declare-fun arrayNoDuplicates!0 (array!31903 (_ BitVec 32) List!9544) Bool)

(assert (=> b!493277 (= res!295996 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9541))))

(declare-fun b!493278 () Bool)

(declare-fun res!295992 () Bool)

(assert (=> b!493278 (=> (not res!295992) (not e!289687))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!493278 (= res!295992 (and (= (size!15697 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15697 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15697 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!493279 () Bool)

(assert (=> b!493279 (= e!289689 (not e!289690))))

(declare-fun res!295993 () Bool)

(assert (=> b!493279 (=> res!295993 e!289690)))

(declare-fun lt!223152 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31903 (_ BitVec 32)) SeekEntryResult!3807)

(assert (=> b!493279 (= res!295993 (= lt!223149 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223152 (select (store (arr!15333 a!3235) i!1204 k!2280) j!176) (array!31904 (store (arr!15333 a!3235) i!1204 k!2280) (size!15697 a!3235)) mask!3524)))))

(declare-fun lt!223154 () (_ BitVec 32))

(assert (=> b!493279 (= lt!223149 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223154 (select (arr!15333 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493279 (= lt!223152 (toIndex!0 (select (store (arr!15333 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!493279 (= lt!223154 (toIndex!0 (select (arr!15333 a!3235) j!176) mask!3524))))

(assert (=> b!493279 (= lt!223150 (Found!3807 j!176))))

(assert (=> b!493279 (= lt!223150 (seekEntryOrOpen!0 (select (arr!15333 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!493279 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14552 0))(
  ( (Unit!14553) )
))
(declare-fun lt!223153 () Unit!14552)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31903 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14552)

(assert (=> b!493279 (= lt!223153 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!493280 () Bool)

(declare-fun res!295997 () Bool)

(assert (=> b!493280 (=> (not res!295997) (not e!289687))))

(assert (=> b!493280 (= res!295997 (validKeyInArray!0 (select (arr!15333 a!3235) j!176)))))

(assert (= (and start!44998 res!295999) b!493278))

(assert (= (and b!493278 res!295992) b!493280))

(assert (= (and b!493280 res!295997) b!493273))

(assert (= (and b!493273 res!295995) b!493274))

(assert (= (and b!493274 res!295998) b!493272))

(assert (= (and b!493272 res!296000) b!493276))

(assert (= (and b!493276 res!295994) b!493277))

(assert (= (and b!493277 res!295996) b!493279))

(assert (= (and b!493279 (not res!295993)) b!493275))

(assert (= (and b!493275 (not res!295991)) b!493271))

(declare-fun m!474157 () Bool)

(assert (=> b!493279 m!474157))

(declare-fun m!474159 () Bool)

(assert (=> b!493279 m!474159))

(declare-fun m!474161 () Bool)

(assert (=> b!493279 m!474161))

(declare-fun m!474163 () Bool)

(assert (=> b!493279 m!474163))

(declare-fun m!474165 () Bool)

(assert (=> b!493279 m!474165))

(assert (=> b!493279 m!474163))

(declare-fun m!474167 () Bool)

(assert (=> b!493279 m!474167))

(assert (=> b!493279 m!474163))

(declare-fun m!474169 () Bool)

(assert (=> b!493279 m!474169))

(assert (=> b!493279 m!474163))

(declare-fun m!474171 () Bool)

(assert (=> b!493279 m!474171))

(assert (=> b!493279 m!474161))

(declare-fun m!474173 () Bool)

(assert (=> b!493279 m!474173))

(assert (=> b!493279 m!474161))

(declare-fun m!474175 () Bool)

(assert (=> b!493279 m!474175))

(declare-fun m!474177 () Bool)

(assert (=> b!493276 m!474177))

(declare-fun m!474179 () Bool)

(assert (=> b!493277 m!474179))

(declare-fun m!474181 () Bool)

(assert (=> start!44998 m!474181))

(declare-fun m!474183 () Bool)

(assert (=> start!44998 m!474183))

(declare-fun m!474185 () Bool)

(assert (=> b!493274 m!474185))

(assert (=> b!493280 m!474163))

(assert (=> b!493280 m!474163))

(declare-fun m!474187 () Bool)

(assert (=> b!493280 m!474187))

(declare-fun m!474189 () Bool)

(assert (=> b!493273 m!474189))

(declare-fun m!474191 () Bool)

(assert (=> b!493272 m!474191))

(push 1)

