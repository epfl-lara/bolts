; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44288 () Bool)

(assert start!44288)

(declare-fun b!486719 () Bool)

(declare-fun e!286470 () Bool)

(declare-fun e!286471 () Bool)

(assert (=> b!486719 (= e!286470 e!286471)))

(declare-fun res!290257 () Bool)

(assert (=> b!486719 (=> (not res!290257) (not e!286471))))

(declare-datatypes ((SeekEntryResult!3614 0))(
  ( (MissingZero!3614 (index!16635 (_ BitVec 32))) (Found!3614 (index!16636 (_ BitVec 32))) (Intermediate!3614 (undefined!4426 Bool) (index!16637 (_ BitVec 32)) (x!45789 (_ BitVec 32))) (Undefined!3614) (MissingVacant!3614 (index!16638 (_ BitVec 32))) )
))
(declare-fun lt!219854 () SeekEntryResult!3614)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!486719 (= res!290257 (or (= lt!219854 (MissingZero!3614 i!1204)) (= lt!219854 (MissingVacant!3614 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31499 0))(
  ( (array!31500 (arr!15140 (Array (_ BitVec 32) (_ BitVec 64))) (size!15504 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31499)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31499 (_ BitVec 32)) SeekEntryResult!3614)

(assert (=> b!486719 (= lt!219854 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!486720 () Bool)

(declare-fun res!290256 () Bool)

(assert (=> b!486720 (=> (not res!290256) (not e!286470))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!486720 (= res!290256 (validKeyInArray!0 k!2280))))

(declare-fun b!486721 () Bool)

(declare-fun res!290259 () Bool)

(assert (=> b!486721 (=> (not res!290259) (not e!286470))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!486721 (= res!290259 (validKeyInArray!0 (select (arr!15140 a!3235) j!176)))))

(declare-fun b!486723 () Bool)

(declare-fun res!290255 () Bool)

(assert (=> b!486723 (=> (not res!290255) (not e!286470))))

(assert (=> b!486723 (= res!290255 (and (= (size!15504 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15504 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15504 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!486724 () Bool)

(declare-fun res!290258 () Bool)

(assert (=> b!486724 (=> (not res!290258) (not e!286470))))

(declare-fun arrayContainsKey!0 (array!31499 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!486724 (= res!290258 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!486725 () Bool)

(declare-fun res!290261 () Bool)

(assert (=> b!486725 (=> (not res!290261) (not e!286471))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31499 (_ BitVec 32)) Bool)

(assert (=> b!486725 (= res!290261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!486722 () Bool)

(assert (=> b!486722 (= e!286471 false)))

(declare-fun lt!219853 () Bool)

(declare-datatypes ((List!9351 0))(
  ( (Nil!9348) (Cons!9347 (h!10203 (_ BitVec 64)) (t!15587 List!9351)) )
))
(declare-fun arrayNoDuplicates!0 (array!31499 (_ BitVec 32) List!9351) Bool)

(assert (=> b!486722 (= lt!219853 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9348))))

(declare-fun res!290260 () Bool)

(assert (=> start!44288 (=> (not res!290260) (not e!286470))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44288 (= res!290260 (validMask!0 mask!3524))))

(assert (=> start!44288 e!286470))

(assert (=> start!44288 true))

(declare-fun array_inv!10914 (array!31499) Bool)

(assert (=> start!44288 (array_inv!10914 a!3235)))

(assert (= (and start!44288 res!290260) b!486723))

(assert (= (and b!486723 res!290255) b!486721))

(assert (= (and b!486721 res!290259) b!486720))

(assert (= (and b!486720 res!290256) b!486724))

(assert (= (and b!486724 res!290258) b!486719))

(assert (= (and b!486719 res!290257) b!486725))

(assert (= (and b!486725 res!290261) b!486722))

(declare-fun m!466627 () Bool)

(assert (=> b!486719 m!466627))

(declare-fun m!466629 () Bool)

(assert (=> b!486720 m!466629))

(declare-fun m!466631 () Bool)

(assert (=> b!486725 m!466631))

(declare-fun m!466633 () Bool)

(assert (=> b!486722 m!466633))

(declare-fun m!466635 () Bool)

(assert (=> b!486724 m!466635))

(declare-fun m!466637 () Bool)

(assert (=> start!44288 m!466637))

(declare-fun m!466639 () Bool)

(assert (=> start!44288 m!466639))

(declare-fun m!466641 () Bool)

(assert (=> b!486721 m!466641))

(assert (=> b!486721 m!466641))

(declare-fun m!466643 () Bool)

(assert (=> b!486721 m!466643))

(push 1)

(assert (not b!486725))

(assert (not b!486720))

(assert (not b!486722))

(assert (not b!486724))

(assert (not b!486721))

(assert (not b!486719))

(assert (not start!44288))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

