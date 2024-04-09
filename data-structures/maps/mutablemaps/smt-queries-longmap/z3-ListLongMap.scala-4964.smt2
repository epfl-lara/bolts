; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68316 () Bool)

(assert start!68316)

(declare-fun b!793232 () Bool)

(declare-fun res!537926 () Bool)

(declare-fun e!440682 () Bool)

(assert (=> b!793232 (=> (not res!537926) (not e!440682))))

(declare-datatypes ((array!43057 0))(
  ( (array!43058 (arr!20605 (Array (_ BitVec 32) (_ BitVec 64))) (size!21026 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43057)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43057 (_ BitVec 32)) Bool)

(assert (=> b!793232 (= res!537926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!793233 () Bool)

(declare-fun res!537922 () Bool)

(declare-fun e!440681 () Bool)

(assert (=> b!793233 (=> (not res!537922) (not e!440681))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!793233 (= res!537922 (and (= (size!21026 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21026 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21026 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793234 () Bool)

(assert (=> b!793234 (= e!440681 e!440682)))

(declare-fun res!537923 () Bool)

(assert (=> b!793234 (=> (not res!537923) (not e!440682))))

(declare-datatypes ((SeekEntryResult!8203 0))(
  ( (MissingZero!8203 (index!35179 (_ BitVec 32))) (Found!8203 (index!35180 (_ BitVec 32))) (Intermediate!8203 (undefined!9015 Bool) (index!35181 (_ BitVec 32)) (x!66146 (_ BitVec 32))) (Undefined!8203) (MissingVacant!8203 (index!35182 (_ BitVec 32))) )
))
(declare-fun lt!353644 () SeekEntryResult!8203)

(assert (=> b!793234 (= res!537923 (or (= lt!353644 (MissingZero!8203 i!1163)) (= lt!353644 (MissingVacant!8203 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43057 (_ BitVec 32)) SeekEntryResult!8203)

(assert (=> b!793234 (= lt!353644 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!793235 () Bool)

(declare-fun res!537928 () Bool)

(assert (=> b!793235 (=> (not res!537928) (not e!440681))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793235 (= res!537928 (validKeyInArray!0 k0!2044))))

(declare-fun b!793236 () Bool)

(declare-fun res!537927 () Bool)

(assert (=> b!793236 (=> (not res!537927) (not e!440682))))

(declare-datatypes ((List!14621 0))(
  ( (Nil!14618) (Cons!14617 (h!15746 (_ BitVec 64)) (t!20944 List!14621)) )
))
(declare-fun arrayNoDuplicates!0 (array!43057 (_ BitVec 32) List!14621) Bool)

(assert (=> b!793236 (= res!537927 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14618))))

(declare-fun b!793237 () Bool)

(declare-fun res!537921 () Bool)

(assert (=> b!793237 (=> (not res!537921) (not e!440681))))

(assert (=> b!793237 (= res!537921 (validKeyInArray!0 (select (arr!20605 a!3170) j!153)))))

(declare-fun b!793238 () Bool)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!793238 (= e!440682 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21026 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20605 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21026 a!3170)) (= (select (arr!20605 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23)) (bvsge mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvslt vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (not (= (select (store (arr!20605 a!3170) i!1163 k0!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!537924 () Bool)

(assert (=> start!68316 (=> (not res!537924) (not e!440681))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68316 (= res!537924 (validMask!0 mask!3266))))

(assert (=> start!68316 e!440681))

(assert (=> start!68316 true))

(declare-fun array_inv!16379 (array!43057) Bool)

(assert (=> start!68316 (array_inv!16379 a!3170)))

(declare-fun b!793239 () Bool)

(declare-fun res!537925 () Bool)

(assert (=> b!793239 (=> (not res!537925) (not e!440681))))

(declare-fun arrayContainsKey!0 (array!43057 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793239 (= res!537925 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68316 res!537924) b!793233))

(assert (= (and b!793233 res!537922) b!793237))

(assert (= (and b!793237 res!537921) b!793235))

(assert (= (and b!793235 res!537928) b!793239))

(assert (= (and b!793239 res!537925) b!793234))

(assert (= (and b!793234 res!537923) b!793232))

(assert (= (and b!793232 res!537926) b!793236))

(assert (= (and b!793236 res!537927) b!793238))

(declare-fun m!733791 () Bool)

(assert (=> b!793236 m!733791))

(declare-fun m!733793 () Bool)

(assert (=> b!793232 m!733793))

(declare-fun m!733795 () Bool)

(assert (=> b!793234 m!733795))

(declare-fun m!733797 () Bool)

(assert (=> b!793237 m!733797))

(assert (=> b!793237 m!733797))

(declare-fun m!733799 () Bool)

(assert (=> b!793237 m!733799))

(declare-fun m!733801 () Bool)

(assert (=> b!793239 m!733801))

(declare-fun m!733803 () Bool)

(assert (=> b!793238 m!733803))

(declare-fun m!733805 () Bool)

(assert (=> b!793238 m!733805))

(declare-fun m!733807 () Bool)

(assert (=> b!793238 m!733807))

(declare-fun m!733809 () Bool)

(assert (=> b!793238 m!733809))

(declare-fun m!733811 () Bool)

(assert (=> b!793235 m!733811))

(declare-fun m!733813 () Bool)

(assert (=> start!68316 m!733813))

(declare-fun m!733815 () Bool)

(assert (=> start!68316 m!733815))

(check-sat (not b!793234) (not b!793237) (not b!793235) (not b!793236) (not start!68316) (not b!793239) (not b!793232))
(check-sat)
