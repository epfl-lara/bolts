; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68972 () Bool)

(assert start!68972)

(declare-fun b!804183 () Bool)

(declare-fun res!548873 () Bool)

(declare-fun e!445550 () Bool)

(assert (=> b!804183 (=> (not res!548873) (not e!445550))))

(declare-datatypes ((array!43713 0))(
  ( (array!43714 (arr!20933 (Array (_ BitVec 32) (_ BitVec 64))) (size!21354 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43713)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43713 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804183 (= res!548873 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804184 () Bool)

(declare-fun res!548872 () Bool)

(assert (=> b!804184 (=> (not res!548872) (not e!445550))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804184 (= res!548872 (validKeyInArray!0 k!2044))))

(declare-fun b!804185 () Bool)

(declare-fun e!445552 () Bool)

(assert (=> b!804185 (= e!445552 false)))

(declare-fun lt!360073 () Bool)

(declare-datatypes ((List!14949 0))(
  ( (Nil!14946) (Cons!14945 (h!16074 (_ BitVec 64)) (t!21272 List!14949)) )
))
(declare-fun arrayNoDuplicates!0 (array!43713 (_ BitVec 32) List!14949) Bool)

(assert (=> b!804185 (= lt!360073 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14946))))

(declare-fun b!804186 () Bool)

(declare-fun res!548876 () Bool)

(assert (=> b!804186 (=> (not res!548876) (not e!445550))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!804186 (= res!548876 (and (= (size!21354 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21354 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21354 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!804187 () Bool)

(assert (=> b!804187 (= e!445550 e!445552)))

(declare-fun res!548878 () Bool)

(assert (=> b!804187 (=> (not res!548878) (not e!445552))))

(declare-datatypes ((SeekEntryResult!8531 0))(
  ( (MissingZero!8531 (index!36491 (_ BitVec 32))) (Found!8531 (index!36492 (_ BitVec 32))) (Intermediate!8531 (undefined!9343 Bool) (index!36493 (_ BitVec 32)) (x!67346 (_ BitVec 32))) (Undefined!8531) (MissingVacant!8531 (index!36494 (_ BitVec 32))) )
))
(declare-fun lt!360072 () SeekEntryResult!8531)

(assert (=> b!804187 (= res!548878 (or (= lt!360072 (MissingZero!8531 i!1163)) (= lt!360072 (MissingVacant!8531 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43713 (_ BitVec 32)) SeekEntryResult!8531)

(assert (=> b!804187 (= lt!360072 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!548877 () Bool)

(assert (=> start!68972 (=> (not res!548877) (not e!445550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68972 (= res!548877 (validMask!0 mask!3266))))

(assert (=> start!68972 e!445550))

(assert (=> start!68972 true))

(declare-fun array_inv!16707 (array!43713) Bool)

(assert (=> start!68972 (array_inv!16707 a!3170)))

(declare-fun b!804188 () Bool)

(declare-fun res!548874 () Bool)

(assert (=> b!804188 (=> (not res!548874) (not e!445552))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43713 (_ BitVec 32)) Bool)

(assert (=> b!804188 (= res!548874 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804189 () Bool)

(declare-fun res!548875 () Bool)

(assert (=> b!804189 (=> (not res!548875) (not e!445550))))

(assert (=> b!804189 (= res!548875 (validKeyInArray!0 (select (arr!20933 a!3170) j!153)))))

(assert (= (and start!68972 res!548877) b!804186))

(assert (= (and b!804186 res!548876) b!804189))

(assert (= (and b!804189 res!548875) b!804184))

(assert (= (and b!804184 res!548872) b!804183))

(assert (= (and b!804183 res!548873) b!804187))

(assert (= (and b!804187 res!548878) b!804188))

(assert (= (and b!804188 res!548874) b!804185))

(declare-fun m!746167 () Bool)

(assert (=> start!68972 m!746167))

(declare-fun m!746169 () Bool)

(assert (=> start!68972 m!746169))

(declare-fun m!746171 () Bool)

(assert (=> b!804185 m!746171))

(declare-fun m!746173 () Bool)

(assert (=> b!804188 m!746173))

(declare-fun m!746175 () Bool)

(assert (=> b!804189 m!746175))

(assert (=> b!804189 m!746175))

(declare-fun m!746177 () Bool)

(assert (=> b!804189 m!746177))

(declare-fun m!746179 () Bool)

(assert (=> b!804187 m!746179))

(declare-fun m!746181 () Bool)

(assert (=> b!804184 m!746181))

(declare-fun m!746183 () Bool)

(assert (=> b!804183 m!746183))

(push 1)

(assert (not start!68972))

(assert (not b!804185))

(assert (not b!804189))

(assert (not b!804183))

