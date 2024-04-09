; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44324 () Bool)

(assert start!44324)

(declare-fun res!290693 () Bool)

(declare-fun e!286639 () Bool)

(assert (=> start!44324 (=> (not res!290693) (not e!286639))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44324 (= res!290693 (validMask!0 mask!3524))))

(assert (=> start!44324 e!286639))

(assert (=> start!44324 true))

(declare-datatypes ((array!31535 0))(
  ( (array!31536 (arr!15158 (Array (_ BitVec 32) (_ BitVec 64))) (size!15522 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31535)

(declare-fun array_inv!10932 (array!31535) Bool)

(assert (=> start!44324 (array_inv!10932 a!3235)))

(declare-fun b!487149 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!286640 () Bool)

(declare-datatypes ((SeekEntryResult!3632 0))(
  ( (MissingZero!3632 (index!16707 (_ BitVec 32))) (Found!3632 (index!16708 (_ BitVec 32))) (Intermediate!3632 (undefined!4444 Bool) (index!16709 (_ BitVec 32)) (x!45855 (_ BitVec 32))) (Undefined!3632) (MissingVacant!3632 (index!16710 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31535 (_ BitVec 32)) SeekEntryResult!3632)

(assert (=> b!487149 (= e!286640 (= (seekEntryOrOpen!0 (select (arr!15158 a!3235) j!176) a!3235 mask!3524) (Found!3632 j!176)))))

(declare-fun b!487150 () Bool)

(declare-fun res!290685 () Bool)

(assert (=> b!487150 (=> (not res!290685) (not e!286639))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!487150 (= res!290685 (and (= (size!15522 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15522 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15522 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!487151 () Bool)

(declare-fun e!286642 () Bool)

(assert (=> b!487151 (= e!286639 e!286642)))

(declare-fun res!290689 () Bool)

(assert (=> b!487151 (=> (not res!290689) (not e!286642))))

(declare-fun lt!219962 () SeekEntryResult!3632)

(assert (=> b!487151 (= res!290689 (or (= lt!219962 (MissingZero!3632 i!1204)) (= lt!219962 (MissingVacant!3632 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!487151 (= lt!219962 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!487152 () Bool)

(declare-fun res!290688 () Bool)

(assert (=> b!487152 (=> (not res!290688) (not e!286642))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31535 (_ BitVec 32)) Bool)

(assert (=> b!487152 (= res!290688 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!487153 () Bool)

(declare-fun res!290687 () Bool)

(assert (=> b!487153 (=> (not res!290687) (not e!286639))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!487153 (= res!290687 (validKeyInArray!0 k!2280))))

(declare-fun b!487154 () Bool)

(declare-fun res!290692 () Bool)

(assert (=> b!487154 (=> (not res!290692) (not e!286639))))

(declare-fun arrayContainsKey!0 (array!31535 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!487154 (= res!290692 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!487155 () Bool)

(declare-fun res!290691 () Bool)

(assert (=> b!487155 (=> (not res!290691) (not e!286642))))

(declare-datatypes ((List!9369 0))(
  ( (Nil!9366) (Cons!9365 (h!10221 (_ BitVec 64)) (t!15605 List!9369)) )
))
(declare-fun arrayNoDuplicates!0 (array!31535 (_ BitVec 32) List!9369) Bool)

(assert (=> b!487155 (= res!290691 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9366))))

(declare-fun b!487156 () Bool)

(assert (=> b!487156 (= e!286642 (not (bvsge mask!3524 #b00000000000000000000000000000000)))))

(assert (=> b!487156 e!286640))

(declare-fun res!290686 () Bool)

(assert (=> b!487156 (=> (not res!290686) (not e!286640))))

(assert (=> b!487156 (= res!290686 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14202 0))(
  ( (Unit!14203) )
))
(declare-fun lt!219961 () Unit!14202)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31535 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14202)

(assert (=> b!487156 (= lt!219961 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!487157 () Bool)

(declare-fun res!290690 () Bool)

(assert (=> b!487157 (=> (not res!290690) (not e!286639))))

(assert (=> b!487157 (= res!290690 (validKeyInArray!0 (select (arr!15158 a!3235) j!176)))))

(assert (= (and start!44324 res!290693) b!487150))

(assert (= (and b!487150 res!290685) b!487157))

(assert (= (and b!487157 res!290690) b!487153))

(assert (= (and b!487153 res!290687) b!487154))

(assert (= (and b!487154 res!290692) b!487151))

(assert (= (and b!487151 res!290689) b!487152))

(assert (= (and b!487152 res!290688) b!487155))

(assert (= (and b!487155 res!290691) b!487156))

(assert (= (and b!487156 res!290686) b!487149))

(declare-fun m!467011 () Bool)

(assert (=> b!487156 m!467011))

(declare-fun m!467013 () Bool)

(assert (=> b!487156 m!467013))

(declare-fun m!467015 () Bool)

(assert (=> b!487151 m!467015))

(declare-fun m!467017 () Bool)

(assert (=> b!487157 m!467017))

(assert (=> b!487157 m!467017))

(declare-fun m!467019 () Bool)

(assert (=> b!487157 m!467019))

(declare-fun m!467021 () Bool)

(assert (=> b!487153 m!467021))

(declare-fun m!467023 () Bool)

(assert (=> start!44324 m!467023))

(declare-fun m!467025 () Bool)

(assert (=> start!44324 m!467025))

(declare-fun m!467027 () Bool)

(assert (=> b!487154 m!467027))

(declare-fun m!467029 () Bool)

(assert (=> b!487152 m!467029))

(declare-fun m!467031 () Bool)

(assert (=> b!487155 m!467031))

(assert (=> b!487149 m!467017))

(assert (=> b!487149 m!467017))

(declare-fun m!467033 () Bool)

(assert (=> b!487149 m!467033))

(push 1)

