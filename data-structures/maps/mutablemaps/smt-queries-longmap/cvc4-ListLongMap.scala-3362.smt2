; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46238 () Bool)

(assert start!46238)

(declare-fun res!312528 () Bool)

(declare-fun e!298945 () Bool)

(assert (=> start!46238 (=> (not res!312528) (not e!298945))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46238 (= res!312528 (validMask!0 mask!3524))))

(assert (=> start!46238 e!298945))

(assert (=> start!46238 true))

(declare-datatypes ((array!32852 0))(
  ( (array!32853 (arr!15800 (Array (_ BitVec 32) (_ BitVec 64))) (size!16164 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32852)

(declare-fun array_inv!11574 (array!32852) Bool)

(assert (=> start!46238 (array_inv!11574 a!3235)))

(declare-fun b!511715 () Bool)

(declare-fun res!312530 () Bool)

(declare-fun e!298947 () Bool)

(assert (=> b!511715 (=> (not res!312530) (not e!298947))))

(declare-datatypes ((List!10011 0))(
  ( (Nil!10008) (Cons!10007 (h!10887 (_ BitVec 64)) (t!16247 List!10011)) )
))
(declare-fun arrayNoDuplicates!0 (array!32852 (_ BitVec 32) List!10011) Bool)

(assert (=> b!511715 (= res!312530 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10008))))

(declare-fun b!511716 () Bool)

(declare-fun e!298948 () Bool)

(assert (=> b!511716 (= e!298948 true)))

(declare-datatypes ((SeekEntryResult!4274 0))(
  ( (MissingZero!4274 (index!19284 (_ BitVec 32))) (Found!4274 (index!19285 (_ BitVec 32))) (Intermediate!4274 (undefined!5086 Bool) (index!19286 (_ BitVec 32)) (x!48260 (_ BitVec 32))) (Undefined!4274) (MissingVacant!4274 (index!19287 (_ BitVec 32))) )
))
(declare-fun lt!234226 () SeekEntryResult!4274)

(assert (=> b!511716 (= lt!234226 Undefined!4274)))

(declare-fun b!511717 () Bool)

(assert (=> b!511717 (= e!298947 (not e!298948))))

(declare-fun res!312531 () Bool)

(assert (=> b!511717 (=> res!312531 e!298948)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!234230 () SeekEntryResult!4274)

(declare-fun lt!234228 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32852 (_ BitVec 32)) SeekEntryResult!4274)

(assert (=> b!511717 (= res!312531 (= lt!234230 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234228 (select (store (arr!15800 a!3235) i!1204 k!2280) j!176) (array!32853 (store (arr!15800 a!3235) i!1204 k!2280) (size!16164 a!3235)) mask!3524)))))

(declare-fun lt!234225 () (_ BitVec 32))

(assert (=> b!511717 (= lt!234230 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234225 (select (arr!15800 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!511717 (= lt!234228 (toIndex!0 (select (store (arr!15800 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!511717 (= lt!234225 (toIndex!0 (select (arr!15800 a!3235) j!176) mask!3524))))

(assert (=> b!511717 (= lt!234226 (Found!4274 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32852 (_ BitVec 32)) SeekEntryResult!4274)

(assert (=> b!511717 (= lt!234226 (seekEntryOrOpen!0 (select (arr!15800 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32852 (_ BitVec 32)) Bool)

(assert (=> b!511717 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15798 0))(
  ( (Unit!15799) )
))
(declare-fun lt!234229 () Unit!15798)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32852 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15798)

(assert (=> b!511717 (= lt!234229 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!511718 () Bool)

(declare-fun res!312536 () Bool)

(assert (=> b!511718 (=> (not res!312536) (not e!298947))))

(assert (=> b!511718 (= res!312536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!511719 () Bool)

(declare-fun res!312534 () Bool)

(assert (=> b!511719 (=> res!312534 e!298948)))

(assert (=> b!511719 (= res!312534 (or (not (is-Intermediate!4274 lt!234230)) (not (undefined!5086 lt!234230))))))

(declare-fun b!511720 () Bool)

(assert (=> b!511720 (= e!298945 e!298947)))

(declare-fun res!312527 () Bool)

(assert (=> b!511720 (=> (not res!312527) (not e!298947))))

(declare-fun lt!234227 () SeekEntryResult!4274)

(assert (=> b!511720 (= res!312527 (or (= lt!234227 (MissingZero!4274 i!1204)) (= lt!234227 (MissingVacant!4274 i!1204))))))

(assert (=> b!511720 (= lt!234227 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!511721 () Bool)

(declare-fun res!312533 () Bool)

(assert (=> b!511721 (=> (not res!312533) (not e!298945))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!511721 (= res!312533 (validKeyInArray!0 (select (arr!15800 a!3235) j!176)))))

(declare-fun b!511722 () Bool)

(declare-fun res!312529 () Bool)

(assert (=> b!511722 (=> (not res!312529) (not e!298945))))

(assert (=> b!511722 (= res!312529 (validKeyInArray!0 k!2280))))

(declare-fun b!511723 () Bool)

(declare-fun res!312535 () Bool)

(assert (=> b!511723 (=> (not res!312535) (not e!298945))))

(assert (=> b!511723 (= res!312535 (and (= (size!16164 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16164 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16164 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!511724 () Bool)

(declare-fun res!312532 () Bool)

(assert (=> b!511724 (=> (not res!312532) (not e!298945))))

(declare-fun arrayContainsKey!0 (array!32852 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!511724 (= res!312532 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!46238 res!312528) b!511723))

(assert (= (and b!511723 res!312535) b!511721))

(assert (= (and b!511721 res!312533) b!511722))

(assert (= (and b!511722 res!312529) b!511724))

(assert (= (and b!511724 res!312532) b!511720))

(assert (= (and b!511720 res!312527) b!511718))

(assert (= (and b!511718 res!312536) b!511715))

(assert (= (and b!511715 res!312530) b!511717))

(assert (= (and b!511717 (not res!312531)) b!511719))

(assert (= (and b!511719 (not res!312534)) b!511716))

(declare-fun m!493303 () Bool)

(assert (=> b!511724 m!493303))

(declare-fun m!493305 () Bool)

(assert (=> b!511718 m!493305))

(declare-fun m!493307 () Bool)

(assert (=> b!511715 m!493307))

(declare-fun m!493309 () Bool)

(assert (=> b!511721 m!493309))

(assert (=> b!511721 m!493309))

(declare-fun m!493311 () Bool)

(assert (=> b!511721 m!493311))

(declare-fun m!493313 () Bool)

(assert (=> b!511717 m!493313))

(declare-fun m!493315 () Bool)

(assert (=> b!511717 m!493315))

(declare-fun m!493317 () Bool)

(assert (=> b!511717 m!493317))

(assert (=> b!511717 m!493309))

(declare-fun m!493319 () Bool)

(assert (=> b!511717 m!493319))

(assert (=> b!511717 m!493309))

(assert (=> b!511717 m!493309))

(declare-fun m!493321 () Bool)

(assert (=> b!511717 m!493321))

(declare-fun m!493323 () Bool)

(assert (=> b!511717 m!493323))

(assert (=> b!511717 m!493309))

(declare-fun m!493325 () Bool)

(assert (=> b!511717 m!493325))

(assert (=> b!511717 m!493317))

(declare-fun m!493327 () Bool)

(assert (=> b!511717 m!493327))

(assert (=> b!511717 m!493317))

(declare-fun m!493329 () Bool)

(assert (=> b!511717 m!493329))

(declare-fun m!493331 () Bool)

(assert (=> b!511722 m!493331))

(declare-fun m!493333 () Bool)

(assert (=> b!511720 m!493333))

(declare-fun m!493335 () Bool)

(assert (=> start!46238 m!493335))

(declare-fun m!493337 () Bool)

(assert (=> start!46238 m!493337))

(push 1)

