; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69044 () Bool)

(assert start!69044)

(declare-fun b!805134 () Bool)

(declare-fun e!445927 () Bool)

(declare-fun e!445929 () Bool)

(assert (=> b!805134 (= e!445927 e!445929)))

(declare-fun res!549830 () Bool)

(assert (=> b!805134 (=> (not res!549830) (not e!445929))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!360505 () (_ BitVec 64))

(declare-datatypes ((array!43785 0))(
  ( (array!43786 (arr!20969 (Array (_ BitVec 32) (_ BitVec 64))) (size!21390 (_ BitVec 32))) )
))
(declare-fun lt!360502 () array!43785)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8567 0))(
  ( (MissingZero!8567 (index!36635 (_ BitVec 32))) (Found!8567 (index!36636 (_ BitVec 32))) (Intermediate!8567 (undefined!9379 Bool) (index!36637 (_ BitVec 32)) (x!67478 (_ BitVec 32))) (Undefined!8567) (MissingVacant!8567 (index!36638 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43785 (_ BitVec 32)) SeekEntryResult!8567)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43785 (_ BitVec 32)) SeekEntryResult!8567)

(assert (=> b!805134 (= res!549830 (= (seekEntryOrOpen!0 lt!360505 lt!360502 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360505 lt!360502 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun a!3170 () array!43785)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!805134 (= lt!360505 (select (store (arr!20969 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!805134 (= lt!360502 (array!43786 (store (arr!20969 a!3170) i!1163 k!2044) (size!21390 a!3170)))))

(declare-fun b!805135 () Bool)

(declare-fun res!549832 () Bool)

(declare-fun e!445930 () Bool)

(assert (=> b!805135 (=> (not res!549832) (not e!445930))))

(declare-fun arrayContainsKey!0 (array!43785 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!805135 (= res!549832 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!805136 () Bool)

(declare-fun res!549823 () Bool)

(assert (=> b!805136 (=> (not res!549823) (not e!445927))))

(declare-datatypes ((List!14985 0))(
  ( (Nil!14982) (Cons!14981 (h!16110 (_ BitVec 64)) (t!21308 List!14985)) )
))
(declare-fun arrayNoDuplicates!0 (array!43785 (_ BitVec 32) List!14985) Bool)

(assert (=> b!805136 (= res!549823 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14982))))

(declare-fun b!805137 () Bool)

(declare-fun res!549829 () Bool)

(assert (=> b!805137 (=> (not res!549829) (not e!445930))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!805137 (= res!549829 (validKeyInArray!0 (select (arr!20969 a!3170) j!153)))))

(declare-fun b!805138 () Bool)

(declare-fun res!549826 () Bool)

(assert (=> b!805138 (=> (not res!549826) (not e!445930))))

(assert (=> b!805138 (= res!549826 (validKeyInArray!0 k!2044))))

(declare-fun b!805139 () Bool)

(declare-fun res!549824 () Bool)

(assert (=> b!805139 (=> (not res!549824) (not e!445927))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!805139 (= res!549824 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21390 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20969 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21390 a!3170)) (= (select (arr!20969 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!805140 () Bool)

(declare-fun res!549825 () Bool)

(assert (=> b!805140 (=> (not res!549825) (not e!445930))))

(assert (=> b!805140 (= res!549825 (and (= (size!21390 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21390 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21390 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!805141 () Bool)

(assert (=> b!805141 (= e!445929 false)))

(declare-fun lt!360501 () SeekEntryResult!8567)

(assert (=> b!805141 (= lt!360501 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20969 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!360504 () SeekEntryResult!8567)

(assert (=> b!805141 (= lt!360504 (seekEntryOrOpen!0 (select (arr!20969 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!805142 () Bool)

(assert (=> b!805142 (= e!445930 e!445927)))

(declare-fun res!549828 () Bool)

(assert (=> b!805142 (=> (not res!549828) (not e!445927))))

(declare-fun lt!360503 () SeekEntryResult!8567)

(assert (=> b!805142 (= res!549828 (or (= lt!360503 (MissingZero!8567 i!1163)) (= lt!360503 (MissingVacant!8567 i!1163))))))

(assert (=> b!805142 (= lt!360503 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!805143 () Bool)

(declare-fun res!549831 () Bool)

(assert (=> b!805143 (=> (not res!549831) (not e!445927))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43785 (_ BitVec 32)) Bool)

(assert (=> b!805143 (= res!549831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!549827 () Bool)

(assert (=> start!69044 (=> (not res!549827) (not e!445930))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69044 (= res!549827 (validMask!0 mask!3266))))

(assert (=> start!69044 e!445930))

(assert (=> start!69044 true))

(declare-fun array_inv!16743 (array!43785) Bool)

(assert (=> start!69044 (array_inv!16743 a!3170)))

(assert (= (and start!69044 res!549827) b!805140))

(assert (= (and b!805140 res!549825) b!805137))

(assert (= (and b!805137 res!549829) b!805138))

(assert (= (and b!805138 res!549826) b!805135))

(assert (= (and b!805135 res!549832) b!805142))

(assert (= (and b!805142 res!549828) b!805143))

(assert (= (and b!805143 res!549831) b!805136))

(assert (= (and b!805136 res!549823) b!805139))

(assert (= (and b!805139 res!549824) b!805134))

(assert (= (and b!805134 res!549830) b!805141))

(declare-fun m!747159 () Bool)

(assert (=> b!805136 m!747159))

(declare-fun m!747161 () Bool)

(assert (=> b!805142 m!747161))

(declare-fun m!747163 () Bool)

(assert (=> b!805143 m!747163))

(declare-fun m!747165 () Bool)

(assert (=> start!69044 m!747165))

(declare-fun m!747167 () Bool)

(assert (=> start!69044 m!747167))

(declare-fun m!747169 () Bool)

(assert (=> b!805135 m!747169))

(declare-fun m!747171 () Bool)

(assert (=> b!805138 m!747171))

(declare-fun m!747173 () Bool)

(assert (=> b!805134 m!747173))

(declare-fun m!747175 () Bool)

(assert (=> b!805134 m!747175))

(declare-fun m!747177 () Bool)

(assert (=> b!805134 m!747177))

(declare-fun m!747179 () Bool)

(assert (=> b!805134 m!747179))

(declare-fun m!747181 () Bool)

(assert (=> b!805141 m!747181))

(assert (=> b!805141 m!747181))

(declare-fun m!747183 () Bool)

(assert (=> b!805141 m!747183))

(assert (=> b!805141 m!747181))

(declare-fun m!747185 () Bool)

(assert (=> b!805141 m!747185))

(assert (=> b!805137 m!747181))

(assert (=> b!805137 m!747181))

(declare-fun m!747187 () Bool)

(assert (=> b!805137 m!747187))

(declare-fun m!747189 () Bool)

(assert (=> b!805139 m!747189))

(declare-fun m!747191 () Bool)

(assert (=> b!805139 m!747191))

(push 1)

(assert (not b!805141))

(assert (not b!805138))

