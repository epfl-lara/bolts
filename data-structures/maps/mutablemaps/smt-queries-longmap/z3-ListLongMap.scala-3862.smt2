; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53202 () Bool)

(assert start!53202)

(declare-fun b!577919 () Bool)

(declare-fun res!365887 () Bool)

(declare-fun e!332412 () Bool)

(assert (=> b!577919 (=> (not res!365887) (not e!332412))))

(declare-datatypes ((array!36057 0))(
  ( (array!36058 (arr!17299 (Array (_ BitVec 32) (_ BitVec 64))) (size!17663 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36057)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36057 (_ BitVec 32)) Bool)

(assert (=> b!577919 (= res!365887 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!577920 () Bool)

(declare-fun e!332411 () Bool)

(assert (=> b!577920 (= e!332411 e!332412)))

(declare-fun res!365891 () Bool)

(assert (=> b!577920 (=> (not res!365891) (not e!332412))))

(declare-datatypes ((SeekEntryResult!5746 0))(
  ( (MissingZero!5746 (index!25211 (_ BitVec 32))) (Found!5746 (index!25212 (_ BitVec 32))) (Intermediate!5746 (undefined!6558 Bool) (index!25213 (_ BitVec 32)) (x!54146 (_ BitVec 32))) (Undefined!5746) (MissingVacant!5746 (index!25214 (_ BitVec 32))) )
))
(declare-fun lt!264142 () SeekEntryResult!5746)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!577920 (= res!365891 (or (= lt!264142 (MissingZero!5746 i!1108)) (= lt!264142 (MissingVacant!5746 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36057 (_ BitVec 32)) SeekEntryResult!5746)

(assert (=> b!577920 (= lt!264142 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!577921 () Bool)

(declare-fun res!365889 () Bool)

(assert (=> b!577921 (=> (not res!365889) (not e!332411))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!577921 (= res!365889 (and (= (size!17663 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17663 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17663 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!577922 () Bool)

(assert (=> b!577922 (= e!332412 false)))

(declare-fun lt!264143 () Bool)

(declare-datatypes ((List!11393 0))(
  ( (Nil!11390) (Cons!11389 (h!12434 (_ BitVec 64)) (t!17629 List!11393)) )
))
(declare-fun arrayNoDuplicates!0 (array!36057 (_ BitVec 32) List!11393) Bool)

(assert (=> b!577922 (= lt!264143 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11390))))

(declare-fun b!577923 () Bool)

(declare-fun res!365888 () Bool)

(assert (=> b!577923 (=> (not res!365888) (not e!332411))))

(declare-fun arrayContainsKey!0 (array!36057 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577923 (= res!365888 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!577924 () Bool)

(declare-fun res!365885 () Bool)

(assert (=> b!577924 (=> (not res!365885) (not e!332411))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!577924 (= res!365885 (validKeyInArray!0 k0!1786))))

(declare-fun res!365886 () Bool)

(assert (=> start!53202 (=> (not res!365886) (not e!332411))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53202 (= res!365886 (validMask!0 mask!3053))))

(assert (=> start!53202 e!332411))

(assert (=> start!53202 true))

(declare-fun array_inv!13073 (array!36057) Bool)

(assert (=> start!53202 (array_inv!13073 a!2986)))

(declare-fun b!577925 () Bool)

(declare-fun res!365890 () Bool)

(assert (=> b!577925 (=> (not res!365890) (not e!332411))))

(assert (=> b!577925 (= res!365890 (validKeyInArray!0 (select (arr!17299 a!2986) j!136)))))

(assert (= (and start!53202 res!365886) b!577921))

(assert (= (and b!577921 res!365889) b!577925))

(assert (= (and b!577925 res!365890) b!577924))

(assert (= (and b!577924 res!365885) b!577923))

(assert (= (and b!577923 res!365888) b!577920))

(assert (= (and b!577920 res!365891) b!577919))

(assert (= (and b!577919 res!365887) b!577922))

(declare-fun m!556693 () Bool)

(assert (=> b!577925 m!556693))

(assert (=> b!577925 m!556693))

(declare-fun m!556695 () Bool)

(assert (=> b!577925 m!556695))

(declare-fun m!556697 () Bool)

(assert (=> b!577923 m!556697))

(declare-fun m!556699 () Bool)

(assert (=> b!577922 m!556699))

(declare-fun m!556701 () Bool)

(assert (=> start!53202 m!556701))

(declare-fun m!556703 () Bool)

(assert (=> start!53202 m!556703))

(declare-fun m!556705 () Bool)

(assert (=> b!577924 m!556705))

(declare-fun m!556707 () Bool)

(assert (=> b!577919 m!556707))

(declare-fun m!556709 () Bool)

(assert (=> b!577920 m!556709))

(check-sat (not start!53202) (not b!577923) (not b!577922) (not b!577924) (not b!577925) (not b!577919) (not b!577920))
(check-sat)
