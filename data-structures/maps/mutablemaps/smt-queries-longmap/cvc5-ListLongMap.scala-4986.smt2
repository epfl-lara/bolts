; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68446 () Bool)

(assert start!68446)

(declare-fun b!795120 () Bool)

(declare-fun res!539809 () Bool)

(declare-fun e!441379 () Bool)

(assert (=> b!795120 (=> (not res!539809) (not e!441379))))

(declare-datatypes ((array!43187 0))(
  ( (array!43188 (arr!20670 (Array (_ BitVec 32) (_ BitVec 64))) (size!21091 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43187)

(declare-datatypes ((List!14686 0))(
  ( (Nil!14683) (Cons!14682 (h!15811 (_ BitVec 64)) (t!21009 List!14686)) )
))
(declare-fun arrayNoDuplicates!0 (array!43187 (_ BitVec 32) List!14686) Bool)

(assert (=> b!795120 (= res!539809 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14683))))

(declare-fun b!795121 () Bool)

(declare-fun res!539811 () Bool)

(declare-fun e!441376 () Bool)

(assert (=> b!795121 (=> (not res!539811) (not e!441376))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795121 (= res!539811 (validKeyInArray!0 k!2044))))

(declare-fun b!795122 () Bool)

(declare-fun res!539810 () Bool)

(assert (=> b!795122 (=> (not res!539810) (not e!441376))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!795122 (= res!539810 (validKeyInArray!0 (select (arr!20670 a!3170) j!153)))))

(declare-fun b!795124 () Bool)

(declare-fun e!441378 () Bool)

(assert (=> b!795124 (= e!441378 false)))

(declare-datatypes ((SeekEntryResult!8268 0))(
  ( (MissingZero!8268 (index!35439 (_ BitVec 32))) (Found!8268 (index!35440 (_ BitVec 32))) (Intermediate!8268 (undefined!9080 Bool) (index!35441 (_ BitVec 32)) (x!66387 (_ BitVec 32))) (Undefined!8268) (MissingVacant!8268 (index!35442 (_ BitVec 32))) )
))
(declare-fun lt!354442 () SeekEntryResult!8268)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43187 (_ BitVec 32)) SeekEntryResult!8268)

(assert (=> b!795124 (= lt!354442 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20670 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!354443 () SeekEntryResult!8268)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43187 (_ BitVec 32)) SeekEntryResult!8268)

(assert (=> b!795124 (= lt!354443 (seekEntryOrOpen!0 (select (arr!20670 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!795125 () Bool)

(declare-fun res!539818 () Bool)

(assert (=> b!795125 (=> (not res!539818) (not e!441379))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43187 (_ BitVec 32)) Bool)

(assert (=> b!795125 (= res!539818 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!795126 () Bool)

(declare-fun res!539816 () Bool)

(assert (=> b!795126 (=> (not res!539816) (not e!441376))))

(declare-fun arrayContainsKey!0 (array!43187 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795126 (= res!539816 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!795127 () Bool)

(declare-fun res!539815 () Bool)

(assert (=> b!795127 (=> (not res!539815) (not e!441379))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!795127 (= res!539815 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21091 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20670 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21091 a!3170)) (= (select (arr!20670 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!795123 () Bool)

(assert (=> b!795123 (= e!441376 e!441379)))

(declare-fun res!539814 () Bool)

(assert (=> b!795123 (=> (not res!539814) (not e!441379))))

(declare-fun lt!354444 () SeekEntryResult!8268)

(assert (=> b!795123 (= res!539814 (or (= lt!354444 (MissingZero!8268 i!1163)) (= lt!354444 (MissingVacant!8268 i!1163))))))

(assert (=> b!795123 (= lt!354444 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!539812 () Bool)

(assert (=> start!68446 (=> (not res!539812) (not e!441376))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68446 (= res!539812 (validMask!0 mask!3266))))

(assert (=> start!68446 e!441376))

(assert (=> start!68446 true))

(declare-fun array_inv!16444 (array!43187) Bool)

(assert (=> start!68446 (array_inv!16444 a!3170)))

(declare-fun b!795128 () Bool)

(declare-fun res!539817 () Bool)

(assert (=> b!795128 (=> (not res!539817) (not e!441376))))

(assert (=> b!795128 (= res!539817 (and (= (size!21091 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21091 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21091 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!795129 () Bool)

(assert (=> b!795129 (= e!441379 e!441378)))

(declare-fun res!539813 () Bool)

(assert (=> b!795129 (=> (not res!539813) (not e!441378))))

(declare-fun lt!354441 () (_ BitVec 64))

(declare-fun lt!354445 () array!43187)

(assert (=> b!795129 (= res!539813 (= (seekEntryOrOpen!0 lt!354441 lt!354445 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354441 lt!354445 mask!3266)))))

(assert (=> b!795129 (= lt!354441 (select (store (arr!20670 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!795129 (= lt!354445 (array!43188 (store (arr!20670 a!3170) i!1163 k!2044) (size!21091 a!3170)))))

(assert (= (and start!68446 res!539812) b!795128))

(assert (= (and b!795128 res!539817) b!795122))

(assert (= (and b!795122 res!539810) b!795121))

(assert (= (and b!795121 res!539811) b!795126))

(assert (= (and b!795126 res!539816) b!795123))

(assert (= (and b!795123 res!539814) b!795125))

(assert (= (and b!795125 res!539818) b!795120))

(assert (= (and b!795120 res!539809) b!795127))

(assert (= (and b!795127 res!539815) b!795129))

(assert (= (and b!795129 res!539813) b!795124))

(declare-fun m!735829 () Bool)

(assert (=> b!795127 m!735829))

(declare-fun m!735831 () Bool)

(assert (=> b!795127 m!735831))

(declare-fun m!735833 () Bool)

(assert (=> b!795122 m!735833))

(assert (=> b!795122 m!735833))

(declare-fun m!735835 () Bool)

(assert (=> b!795122 m!735835))

(declare-fun m!735837 () Bool)

(assert (=> b!795121 m!735837))

(assert (=> b!795124 m!735833))

(assert (=> b!795124 m!735833))

(declare-fun m!735839 () Bool)

(assert (=> b!795124 m!735839))

(assert (=> b!795124 m!735833))

(declare-fun m!735841 () Bool)

(assert (=> b!795124 m!735841))

(declare-fun m!735843 () Bool)

(assert (=> b!795126 m!735843))

(declare-fun m!735845 () Bool)

(assert (=> start!68446 m!735845))

(declare-fun m!735847 () Bool)

(assert (=> start!68446 m!735847))

(declare-fun m!735849 () Bool)

(assert (=> b!795125 m!735849))

(declare-fun m!735851 () Bool)

(assert (=> b!795120 m!735851))

(declare-fun m!735853 () Bool)

(assert (=> b!795123 m!735853))

(declare-fun m!735855 () Bool)

(assert (=> b!795129 m!735855))

(declare-fun m!735857 () Bool)

(assert (=> b!795129 m!735857))

(declare-fun m!735859 () Bool)

(assert (=> b!795129 m!735859))

(declare-fun m!735861 () Bool)

(assert (=> b!795129 m!735861))

(push 1)

