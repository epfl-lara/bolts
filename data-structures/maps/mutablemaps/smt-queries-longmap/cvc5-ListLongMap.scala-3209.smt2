; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45010 () Bool)

(assert start!45010)

(declare-fun b!493451 () Bool)

(declare-fun res!296171 () Bool)

(declare-fun e!289762 () Bool)

(assert (=> b!493451 (=> (not res!296171) (not e!289762))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31915 0))(
  ( (array!31916 (arr!15339 (Array (_ BitVec 32) (_ BitVec 64))) (size!15703 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31915)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!493451 (= res!296171 (and (= (size!15703 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15703 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15703 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!493452 () Bool)

(declare-fun e!289760 () Bool)

(declare-fun e!289761 () Bool)

(assert (=> b!493452 (= e!289760 (not e!289761))))

(declare-fun res!296173 () Bool)

(assert (=> b!493452 (=> res!296173 e!289761)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3813 0))(
  ( (MissingZero!3813 (index!17431 (_ BitVec 32))) (Found!3813 (index!17432 (_ BitVec 32))) (Intermediate!3813 (undefined!4625 Bool) (index!17433 (_ BitVec 32)) (x!46542 (_ BitVec 32))) (Undefined!3813) (MissingVacant!3813 (index!17434 (_ BitVec 32))) )
))
(declare-fun lt!223262 () SeekEntryResult!3813)

(declare-fun lt!223257 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31915 (_ BitVec 32)) SeekEntryResult!3813)

(assert (=> b!493452 (= res!296173 (= lt!223262 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223257 (select (store (arr!15339 a!3235) i!1204 k!2280) j!176) (array!31916 (store (arr!15339 a!3235) i!1204 k!2280) (size!15703 a!3235)) mask!3524)))))

(declare-fun lt!223261 () (_ BitVec 32))

(assert (=> b!493452 (= lt!223262 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223261 (select (arr!15339 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493452 (= lt!223257 (toIndex!0 (select (store (arr!15339 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!493452 (= lt!223261 (toIndex!0 (select (arr!15339 a!3235) j!176) mask!3524))))

(declare-fun lt!223260 () SeekEntryResult!3813)

(assert (=> b!493452 (= lt!223260 (Found!3813 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31915 (_ BitVec 32)) SeekEntryResult!3813)

(assert (=> b!493452 (= lt!223260 (seekEntryOrOpen!0 (select (arr!15339 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31915 (_ BitVec 32)) Bool)

(assert (=> b!493452 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14564 0))(
  ( (Unit!14565) )
))
(declare-fun lt!223258 () Unit!14564)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31915 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14564)

(assert (=> b!493452 (= lt!223258 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!493453 () Bool)

(declare-fun res!296177 () Bool)

(assert (=> b!493453 (=> (not res!296177) (not e!289760))))

(assert (=> b!493453 (= res!296177 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!493454 () Bool)

(assert (=> b!493454 (= e!289762 e!289760)))

(declare-fun res!296175 () Bool)

(assert (=> b!493454 (=> (not res!296175) (not e!289760))))

(declare-fun lt!223259 () SeekEntryResult!3813)

(assert (=> b!493454 (= res!296175 (or (= lt!223259 (MissingZero!3813 i!1204)) (= lt!223259 (MissingVacant!3813 i!1204))))))

(assert (=> b!493454 (= lt!223259 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!296180 () Bool)

(assert (=> start!45010 (=> (not res!296180) (not e!289762))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45010 (= res!296180 (validMask!0 mask!3524))))

(assert (=> start!45010 e!289762))

(assert (=> start!45010 true))

(declare-fun array_inv!11113 (array!31915) Bool)

(assert (=> start!45010 (array_inv!11113 a!3235)))

(declare-fun b!493455 () Bool)

(declare-fun res!296178 () Bool)

(assert (=> b!493455 (=> (not res!296178) (not e!289762))))

(declare-fun arrayContainsKey!0 (array!31915 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493455 (= res!296178 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!493456 () Bool)

(declare-fun res!296172 () Bool)

(assert (=> b!493456 (=> res!296172 e!289761)))

(assert (=> b!493456 (= res!296172 (or (not (is-Intermediate!3813 lt!223262)) (not (undefined!4625 lt!223262))))))

(declare-fun b!493457 () Bool)

(assert (=> b!493457 (= e!289761 true)))

(assert (=> b!493457 (= lt!223260 Undefined!3813)))

(declare-fun b!493458 () Bool)

(declare-fun res!296174 () Bool)

(assert (=> b!493458 (=> (not res!296174) (not e!289760))))

(declare-datatypes ((List!9550 0))(
  ( (Nil!9547) (Cons!9546 (h!10414 (_ BitVec 64)) (t!15786 List!9550)) )
))
(declare-fun arrayNoDuplicates!0 (array!31915 (_ BitVec 32) List!9550) Bool)

(assert (=> b!493458 (= res!296174 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9547))))

(declare-fun b!493459 () Bool)

(declare-fun res!296179 () Bool)

(assert (=> b!493459 (=> (not res!296179) (not e!289762))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493459 (= res!296179 (validKeyInArray!0 (select (arr!15339 a!3235) j!176)))))

(declare-fun b!493460 () Bool)

(declare-fun res!296176 () Bool)

(assert (=> b!493460 (=> (not res!296176) (not e!289762))))

(assert (=> b!493460 (= res!296176 (validKeyInArray!0 k!2280))))

(assert (= (and start!45010 res!296180) b!493451))

(assert (= (and b!493451 res!296171) b!493459))

(assert (= (and b!493459 res!296179) b!493460))

(assert (= (and b!493460 res!296176) b!493455))

(assert (= (and b!493455 res!296178) b!493454))

(assert (= (and b!493454 res!296175) b!493453))

(assert (= (and b!493453 res!296177) b!493458))

(assert (= (and b!493458 res!296174) b!493452))

(assert (= (and b!493452 (not res!296173)) b!493456))

(assert (= (and b!493456 (not res!296172)) b!493457))

(declare-fun m!474373 () Bool)

(assert (=> b!493453 m!474373))

(declare-fun m!474375 () Bool)

(assert (=> b!493459 m!474375))

(assert (=> b!493459 m!474375))

(declare-fun m!474377 () Bool)

(assert (=> b!493459 m!474377))

(declare-fun m!474379 () Bool)

(assert (=> start!45010 m!474379))

(declare-fun m!474381 () Bool)

(assert (=> start!45010 m!474381))

(declare-fun m!474383 () Bool)

(assert (=> b!493460 m!474383))

(declare-fun m!474385 () Bool)

(assert (=> b!493454 m!474385))

(assert (=> b!493452 m!474375))

(declare-fun m!474387 () Bool)

(assert (=> b!493452 m!474387))

(declare-fun m!474389 () Bool)

(assert (=> b!493452 m!474389))

(declare-fun m!474391 () Bool)

(assert (=> b!493452 m!474391))

(declare-fun m!474393 () Bool)

(assert (=> b!493452 m!474393))

(assert (=> b!493452 m!474393))

(declare-fun m!474395 () Bool)

(assert (=> b!493452 m!474395))

(assert (=> b!493452 m!474375))

(declare-fun m!474397 () Bool)

(assert (=> b!493452 m!474397))

(assert (=> b!493452 m!474375))

(declare-fun m!474399 () Bool)

(assert (=> b!493452 m!474399))

(assert (=> b!493452 m!474375))

(declare-fun m!474401 () Bool)

(assert (=> b!493452 m!474401))

(assert (=> b!493452 m!474393))

(declare-fun m!474403 () Bool)

(assert (=> b!493452 m!474403))

(declare-fun m!474405 () Bool)

(assert (=> b!493458 m!474405))

(declare-fun m!474407 () Bool)

(assert (=> b!493455 m!474407))

(push 1)

