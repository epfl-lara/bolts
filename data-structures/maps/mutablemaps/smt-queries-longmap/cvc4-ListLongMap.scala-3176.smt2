; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44696 () Bool)

(assert start!44696)

(declare-fun b!490158 () Bool)

(declare-fun res!293246 () Bool)

(declare-fun e!288160 () Bool)

(assert (=> b!490158 (=> (not res!293246) (not e!288160))))

(declare-datatypes ((array!31715 0))(
  ( (array!31716 (arr!15242 (Array (_ BitVec 32) (_ BitVec 64))) (size!15606 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31715)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31715 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490158 (= res!293246 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!490159 () Bool)

(declare-fun res!293249 () Bool)

(declare-fun e!288161 () Bool)

(assert (=> b!490159 (=> (not res!293249) (not e!288161))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31715 (_ BitVec 32)) Bool)

(assert (=> b!490159 (= res!293249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!490160 () Bool)

(declare-fun res!293248 () Bool)

(assert (=> b!490160 (=> (not res!293248) (not e!288160))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490160 (= res!293248 (validKeyInArray!0 k!2280))))

(declare-fun b!490161 () Bool)

(assert (=> b!490161 (= e!288161 (not true))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!221402 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3716 0))(
  ( (MissingZero!3716 (index!17043 (_ BitVec 32))) (Found!3716 (index!17044 (_ BitVec 32))) (Intermediate!3716 (undefined!4528 Bool) (index!17045 (_ BitVec 32)) (x!46169 (_ BitVec 32))) (Undefined!3716) (MissingVacant!3716 (index!17046 (_ BitVec 32))) )
))
(declare-fun lt!221401 () SeekEntryResult!3716)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31715 (_ BitVec 32)) SeekEntryResult!3716)

(assert (=> b!490161 (= lt!221401 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221402 (select (store (arr!15242 a!3235) i!1204 k!2280) j!176) (array!31716 (store (arr!15242 a!3235) i!1204 k!2280) (size!15606 a!3235)) mask!3524))))

(declare-fun lt!221400 () SeekEntryResult!3716)

(declare-fun lt!221398 () (_ BitVec 32))

(assert (=> b!490161 (= lt!221400 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221398 (select (arr!15242 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490161 (= lt!221402 (toIndex!0 (select (store (arr!15242 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!490161 (= lt!221398 (toIndex!0 (select (arr!15242 a!3235) j!176) mask!3524))))

(declare-fun e!288163 () Bool)

(assert (=> b!490161 e!288163))

(declare-fun res!293245 () Bool)

(assert (=> b!490161 (=> (not res!293245) (not e!288163))))

(assert (=> b!490161 (= res!293245 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14370 0))(
  ( (Unit!14371) )
))
(declare-fun lt!221399 () Unit!14370)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31715 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14370)

(assert (=> b!490161 (= lt!221399 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!490162 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31715 (_ BitVec 32)) SeekEntryResult!3716)

(assert (=> b!490162 (= e!288163 (= (seekEntryOrOpen!0 (select (arr!15242 a!3235) j!176) a!3235 mask!3524) (Found!3716 j!176)))))

(declare-fun b!490163 () Bool)

(declare-fun res!293251 () Bool)

(assert (=> b!490163 (=> (not res!293251) (not e!288160))))

(assert (=> b!490163 (= res!293251 (and (= (size!15606 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15606 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15606 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!490164 () Bool)

(declare-fun res!293250 () Bool)

(assert (=> b!490164 (=> (not res!293250) (not e!288161))))

(declare-datatypes ((List!9453 0))(
  ( (Nil!9450) (Cons!9449 (h!10311 (_ BitVec 64)) (t!15689 List!9453)) )
))
(declare-fun arrayNoDuplicates!0 (array!31715 (_ BitVec 32) List!9453) Bool)

(assert (=> b!490164 (= res!293250 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9450))))

(declare-fun b!490165 () Bool)

(declare-fun res!293247 () Bool)

(assert (=> b!490165 (=> (not res!293247) (not e!288160))))

(assert (=> b!490165 (= res!293247 (validKeyInArray!0 (select (arr!15242 a!3235) j!176)))))

(declare-fun res!293244 () Bool)

(assert (=> start!44696 (=> (not res!293244) (not e!288160))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44696 (= res!293244 (validMask!0 mask!3524))))

(assert (=> start!44696 e!288160))

(assert (=> start!44696 true))

(declare-fun array_inv!11016 (array!31715) Bool)

(assert (=> start!44696 (array_inv!11016 a!3235)))

(declare-fun b!490166 () Bool)

(assert (=> b!490166 (= e!288160 e!288161)))

(declare-fun res!293252 () Bool)

(assert (=> b!490166 (=> (not res!293252) (not e!288161))))

(declare-fun lt!221397 () SeekEntryResult!3716)

(assert (=> b!490166 (= res!293252 (or (= lt!221397 (MissingZero!3716 i!1204)) (= lt!221397 (MissingVacant!3716 i!1204))))))

(assert (=> b!490166 (= lt!221397 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!44696 res!293244) b!490163))

(assert (= (and b!490163 res!293251) b!490165))

(assert (= (and b!490165 res!293247) b!490160))

(assert (= (and b!490160 res!293248) b!490158))

(assert (= (and b!490158 res!293246) b!490166))

(assert (= (and b!490166 res!293252) b!490159))

(assert (= (and b!490159 res!293249) b!490164))

(assert (= (and b!490164 res!293250) b!490161))

(assert (= (and b!490161 res!293245) b!490162))

(declare-fun m!470275 () Bool)

(assert (=> b!490158 m!470275))

(declare-fun m!470277 () Bool)

(assert (=> b!490160 m!470277))

(declare-fun m!470279 () Bool)

(assert (=> b!490162 m!470279))

(assert (=> b!490162 m!470279))

(declare-fun m!470281 () Bool)

(assert (=> b!490162 m!470281))

(declare-fun m!470283 () Bool)

(assert (=> b!490166 m!470283))

(declare-fun m!470285 () Bool)

(assert (=> b!490161 m!470285))

(declare-fun m!470287 () Bool)

(assert (=> b!490161 m!470287))

(declare-fun m!470289 () Bool)

(assert (=> b!490161 m!470289))

(declare-fun m!470291 () Bool)

(assert (=> b!490161 m!470291))

(assert (=> b!490161 m!470285))

(assert (=> b!490161 m!470279))

(declare-fun m!470293 () Bool)

(assert (=> b!490161 m!470293))

(assert (=> b!490161 m!470279))

(declare-fun m!470295 () Bool)

(assert (=> b!490161 m!470295))

(assert (=> b!490161 m!470285))

(declare-fun m!470297 () Bool)

(assert (=> b!490161 m!470297))

(assert (=> b!490161 m!470279))

(declare-fun m!470299 () Bool)

(assert (=> b!490161 m!470299))

(declare-fun m!470301 () Bool)

(assert (=> b!490159 m!470301))

(declare-fun m!470303 () Bool)

(assert (=> b!490164 m!470303))

(declare-fun m!470305 () Bool)

(assert (=> start!44696 m!470305))

(declare-fun m!470307 () Bool)

(assert (=> start!44696 m!470307))

(assert (=> b!490165 m!470279))

(assert (=> b!490165 m!470279))

(declare-fun m!470309 () Bool)

(assert (=> b!490165 m!470309))

(push 1)

