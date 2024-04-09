; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53050 () Bool)

(assert start!53050)

(declare-fun b!577226 () Bool)

(declare-fun res!365408 () Bool)

(declare-fun e!332010 () Bool)

(assert (=> b!577226 (=> (not res!365408) (not e!332010))))

(declare-datatypes ((array!36022 0))(
  ( (array!36023 (arr!17286 (Array (_ BitVec 32) (_ BitVec 64))) (size!17650 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36022)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36022 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577226 (= res!365408 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!577227 () Bool)

(declare-fun e!332009 () Bool)

(assert (=> b!577227 (= e!332010 e!332009)))

(declare-fun res!365412 () Bool)

(assert (=> b!577227 (=> (not res!365412) (not e!332009))))

(declare-datatypes ((SeekEntryResult!5733 0))(
  ( (MissingZero!5733 (index!25159 (_ BitVec 32))) (Found!5733 (index!25160 (_ BitVec 32))) (Intermediate!5733 (undefined!6545 Bool) (index!25161 (_ BitVec 32)) (x!54101 (_ BitVec 32))) (Undefined!5733) (MissingVacant!5733 (index!25162 (_ BitVec 32))) )
))
(declare-fun lt!263924 () SeekEntryResult!5733)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!577227 (= res!365412 (or (= lt!263924 (MissingZero!5733 i!1108)) (= lt!263924 (MissingVacant!5733 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36022 (_ BitVec 32)) SeekEntryResult!5733)

(assert (=> b!577227 (= lt!263924 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!577228 () Bool)

(declare-fun res!365411 () Bool)

(assert (=> b!577228 (=> (not res!365411) (not e!332010))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!577228 (= res!365411 (validKeyInArray!0 k!1786))))

(declare-fun b!577229 () Bool)

(declare-fun res!365414 () Bool)

(assert (=> b!577229 (=> (not res!365414) (not e!332010))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!577229 (= res!365414 (and (= (size!17650 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17650 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17650 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!577230 () Bool)

(declare-fun res!365409 () Bool)

(assert (=> b!577230 (=> (not res!365409) (not e!332010))))

(assert (=> b!577230 (= res!365409 (validKeyInArray!0 (select (arr!17286 a!2986) j!136)))))

(declare-fun b!577231 () Bool)

(declare-fun res!365410 () Bool)

(assert (=> b!577231 (=> (not res!365410) (not e!332009))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36022 (_ BitVec 32)) Bool)

(assert (=> b!577231 (= res!365410 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!577232 () Bool)

(assert (=> b!577232 (= e!332009 (bvsgt #b00000000000000000000000000000000 (size!17650 a!2986)))))

(declare-fun res!365413 () Bool)

(assert (=> start!53050 (=> (not res!365413) (not e!332010))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53050 (= res!365413 (validMask!0 mask!3053))))

(assert (=> start!53050 e!332010))

(assert (=> start!53050 true))

(declare-fun array_inv!13060 (array!36022) Bool)

(assert (=> start!53050 (array_inv!13060 a!2986)))

(assert (= (and start!53050 res!365413) b!577229))

(assert (= (and b!577229 res!365414) b!577230))

(assert (= (and b!577230 res!365409) b!577228))

(assert (= (and b!577228 res!365411) b!577226))

(assert (= (and b!577226 res!365408) b!577227))

(assert (= (and b!577227 res!365412) b!577231))

(assert (= (and b!577231 res!365410) b!577232))

(declare-fun m!556153 () Bool)

(assert (=> b!577230 m!556153))

(assert (=> b!577230 m!556153))

(declare-fun m!556155 () Bool)

(assert (=> b!577230 m!556155))

(declare-fun m!556157 () Bool)

(assert (=> b!577231 m!556157))

(declare-fun m!556159 () Bool)

(assert (=> start!53050 m!556159))

(declare-fun m!556161 () Bool)

(assert (=> start!53050 m!556161))

(declare-fun m!556163 () Bool)

(assert (=> b!577228 m!556163))

(declare-fun m!556165 () Bool)

(assert (=> b!577226 m!556165))

(declare-fun m!556167 () Bool)

(assert (=> b!577227 m!556167))

(push 1)

