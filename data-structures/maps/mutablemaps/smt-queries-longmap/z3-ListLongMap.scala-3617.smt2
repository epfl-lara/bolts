; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49792 () Bool)

(assert start!49792)

(declare-fun res!340676 () Bool)

(declare-fun e!315976 () Bool)

(assert (=> start!49792 (=> (not res!340676) (not e!315976))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49792 (= res!340676 (validMask!0 mask!3119))))

(assert (=> start!49792 e!315976))

(assert (=> start!49792 true))

(declare-datatypes ((array!34484 0))(
  ( (array!34485 (arr!16564 (Array (_ BitVec 32) (_ BitVec 64))) (size!16928 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34484)

(declare-fun array_inv!12338 (array!34484) Bool)

(assert (=> start!49792 (array_inv!12338 a!3118)))

(declare-fun b!546812 () Bool)

(declare-fun res!340680 () Bool)

(assert (=> b!546812 (=> (not res!340680) (not e!315976))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546812 (= res!340680 (validKeyInArray!0 k0!1914))))

(declare-fun b!546813 () Bool)

(declare-fun res!340681 () Bool)

(assert (=> b!546813 (=> (not res!340681) (not e!315976))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!546813 (= res!340681 (validKeyInArray!0 (select (arr!16564 a!3118) j!142)))))

(declare-fun b!546814 () Bool)

(declare-fun res!340677 () Bool)

(declare-fun e!315975 () Bool)

(assert (=> b!546814 (=> (not res!340677) (not e!315975))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34484 (_ BitVec 32)) Bool)

(assert (=> b!546814 (= res!340677 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!546815 () Bool)

(declare-fun res!340679 () Bool)

(assert (=> b!546815 (=> (not res!340679) (not e!315976))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!546815 (= res!340679 (and (= (size!16928 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16928 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16928 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!546816 () Bool)

(assert (=> b!546816 (= e!315976 e!315975)))

(declare-fun res!340682 () Bool)

(assert (=> b!546816 (=> (not res!340682) (not e!315975))))

(declare-datatypes ((SeekEntryResult!5020 0))(
  ( (MissingZero!5020 (index!22307 (_ BitVec 32))) (Found!5020 (index!22308 (_ BitVec 32))) (Intermediate!5020 (undefined!5832 Bool) (index!22309 (_ BitVec 32)) (x!51283 (_ BitVec 32))) (Undefined!5020) (MissingVacant!5020 (index!22310 (_ BitVec 32))) )
))
(declare-fun lt!249368 () SeekEntryResult!5020)

(assert (=> b!546816 (= res!340682 (or (= lt!249368 (MissingZero!5020 i!1132)) (= lt!249368 (MissingVacant!5020 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34484 (_ BitVec 32)) SeekEntryResult!5020)

(assert (=> b!546816 (= lt!249368 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!546817 () Bool)

(assert (=> b!546817 (= e!315975 (bvsgt #b00000000000000000000000000000000 (size!16928 a!3118)))))

(declare-fun b!546818 () Bool)

(declare-fun res!340678 () Bool)

(assert (=> b!546818 (=> (not res!340678) (not e!315976))))

(declare-fun arrayContainsKey!0 (array!34484 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546818 (= res!340678 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!49792 res!340676) b!546815))

(assert (= (and b!546815 res!340679) b!546813))

(assert (= (and b!546813 res!340681) b!546812))

(assert (= (and b!546812 res!340680) b!546818))

(assert (= (and b!546818 res!340678) b!546816))

(assert (= (and b!546816 res!340682) b!546814))

(assert (= (and b!546814 res!340677) b!546817))

(declare-fun m!524219 () Bool)

(assert (=> b!546814 m!524219))

(declare-fun m!524221 () Bool)

(assert (=> start!49792 m!524221))

(declare-fun m!524223 () Bool)

(assert (=> start!49792 m!524223))

(declare-fun m!524225 () Bool)

(assert (=> b!546812 m!524225))

(declare-fun m!524227 () Bool)

(assert (=> b!546816 m!524227))

(declare-fun m!524229 () Bool)

(assert (=> b!546818 m!524229))

(declare-fun m!524231 () Bool)

(assert (=> b!546813 m!524231))

(assert (=> b!546813 m!524231))

(declare-fun m!524233 () Bool)

(assert (=> b!546813 m!524233))

(check-sat (not start!49792) (not b!546813) (not b!546816) (not b!546814) (not b!546812) (not b!546818))
(check-sat)
