; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44458 () Bool)

(assert start!44458)

(declare-fun b!487947 () Bool)

(declare-fun res!291264 () Bool)

(declare-fun e!287084 () Bool)

(assert (=> b!487947 (=> (not res!291264) (not e!287084))))

(declare-datatypes ((array!31573 0))(
  ( (array!31574 (arr!15174 (Array (_ BitVec 32) (_ BitVec 64))) (size!15538 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31573)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31573 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!487947 (= res!291264 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!487948 () Bool)

(declare-fun e!287086 () Bool)

(assert (=> b!487948 (= e!287084 e!287086)))

(declare-fun res!291265 () Bool)

(assert (=> b!487948 (=> (not res!291265) (not e!287086))))

(declare-datatypes ((SeekEntryResult!3648 0))(
  ( (MissingZero!3648 (index!16771 (_ BitVec 32))) (Found!3648 (index!16772 (_ BitVec 32))) (Intermediate!3648 (undefined!4460 Bool) (index!16773 (_ BitVec 32)) (x!45922 (_ BitVec 32))) (Undefined!3648) (MissingVacant!3648 (index!16774 (_ BitVec 32))) )
))
(declare-fun lt!220275 () SeekEntryResult!3648)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!487948 (= res!291265 (or (= lt!220275 (MissingZero!3648 i!1204)) (= lt!220275 (MissingVacant!3648 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31573 (_ BitVec 32)) SeekEntryResult!3648)

(assert (=> b!487948 (= lt!220275 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!487949 () Bool)

(declare-fun res!291261 () Bool)

(assert (=> b!487949 (=> (not res!291261) (not e!287084))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!487949 (= res!291261 (validKeyInArray!0 k!2280))))

(declare-fun e!287085 () Bool)

(declare-fun b!487950 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!487950 (= e!287085 (= (seekEntryOrOpen!0 (select (arr!15174 a!3235) j!176) a!3235 mask!3524) (Found!3648 j!176)))))

(declare-fun b!487951 () Bool)

(assert (=> b!487951 (= e!287086 (not true))))

(declare-fun lt!220276 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!487951 (= lt!220276 (toIndex!0 (select (arr!15174 a!3235) j!176) mask!3524))))

(assert (=> b!487951 e!287085))

(declare-fun res!291263 () Bool)

(assert (=> b!487951 (=> (not res!291263) (not e!287085))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31573 (_ BitVec 32)) Bool)

(assert (=> b!487951 (= res!291263 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14234 0))(
  ( (Unit!14235) )
))
(declare-fun lt!220277 () Unit!14234)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31573 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14234)

(assert (=> b!487951 (= lt!220277 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!487952 () Bool)

(declare-fun res!291262 () Bool)

(assert (=> b!487952 (=> (not res!291262) (not e!287086))))

(assert (=> b!487952 (= res!291262 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!487953 () Bool)

(declare-fun res!291266 () Bool)

(assert (=> b!487953 (=> (not res!291266) (not e!287084))))

(assert (=> b!487953 (= res!291266 (and (= (size!15538 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15538 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15538 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!291258 () Bool)

(assert (=> start!44458 (=> (not res!291258) (not e!287084))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44458 (= res!291258 (validMask!0 mask!3524))))

(assert (=> start!44458 e!287084))

(assert (=> start!44458 true))

(declare-fun array_inv!10948 (array!31573) Bool)

(assert (=> start!44458 (array_inv!10948 a!3235)))

(declare-fun b!487954 () Bool)

(declare-fun res!291259 () Bool)

(assert (=> b!487954 (=> (not res!291259) (not e!287086))))

(declare-datatypes ((List!9385 0))(
  ( (Nil!9382) (Cons!9381 (h!10240 (_ BitVec 64)) (t!15621 List!9385)) )
))
(declare-fun arrayNoDuplicates!0 (array!31573 (_ BitVec 32) List!9385) Bool)

(assert (=> b!487954 (= res!291259 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9382))))

(declare-fun b!487955 () Bool)

(declare-fun res!291260 () Bool)

(assert (=> b!487955 (=> (not res!291260) (not e!287084))))

(assert (=> b!487955 (= res!291260 (validKeyInArray!0 (select (arr!15174 a!3235) j!176)))))

(assert (= (and start!44458 res!291258) b!487953))

(assert (= (and b!487953 res!291266) b!487955))

(assert (= (and b!487955 res!291260) b!487949))

(assert (= (and b!487949 res!291261) b!487947))

(assert (= (and b!487947 res!291264) b!487948))

(assert (= (and b!487948 res!291265) b!487952))

(assert (= (and b!487952 res!291262) b!487954))

(assert (= (and b!487954 res!291259) b!487951))

(assert (= (and b!487951 res!291263) b!487950))

(declare-fun m!467737 () Bool)

(assert (=> start!44458 m!467737))

(declare-fun m!467739 () Bool)

(assert (=> start!44458 m!467739))

(declare-fun m!467741 () Bool)

(assert (=> b!487954 m!467741))

(declare-fun m!467743 () Bool)

(assert (=> b!487952 m!467743))

(declare-fun m!467745 () Bool)

(assert (=> b!487949 m!467745))

(declare-fun m!467747 () Bool)

(assert (=> b!487951 m!467747))

(assert (=> b!487951 m!467747))

(declare-fun m!467749 () Bool)

(assert (=> b!487951 m!467749))

(declare-fun m!467751 () Bool)

(assert (=> b!487951 m!467751))

(declare-fun m!467753 () Bool)

(assert (=> b!487951 m!467753))

(declare-fun m!467755 () Bool)

(assert (=> b!487947 m!467755))

(assert (=> b!487955 m!467747))

(assert (=> b!487955 m!467747))

(declare-fun m!467757 () Bool)

(assert (=> b!487955 m!467757))

(assert (=> b!487950 m!467747))

(assert (=> b!487950 m!467747))

(declare-fun m!467759 () Bool)

(assert (=> b!487950 m!467759))

(declare-fun m!467761 () Bool)

(assert (=> b!487948 m!467761))

(push 1)

