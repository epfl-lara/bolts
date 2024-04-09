; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68974 () Bool)

(assert start!68974)

(declare-fun b!804204 () Bool)

(declare-fun e!445559 () Bool)

(declare-fun e!445560 () Bool)

(assert (=> b!804204 (= e!445559 e!445560)))

(declare-fun res!548894 () Bool)

(assert (=> b!804204 (=> (not res!548894) (not e!445560))))

(declare-datatypes ((SeekEntryResult!8532 0))(
  ( (MissingZero!8532 (index!36495 (_ BitVec 32))) (Found!8532 (index!36496 (_ BitVec 32))) (Intermediate!8532 (undefined!9344 Bool) (index!36497 (_ BitVec 32)) (x!67355 (_ BitVec 32))) (Undefined!8532) (MissingVacant!8532 (index!36498 (_ BitVec 32))) )
))
(declare-fun lt!360079 () SeekEntryResult!8532)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!804204 (= res!548894 (or (= lt!360079 (MissingZero!8532 i!1163)) (= lt!360079 (MissingVacant!8532 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-datatypes ((array!43715 0))(
  ( (array!43716 (arr!20934 (Array (_ BitVec 32) (_ BitVec 64))) (size!21355 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43715)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43715 (_ BitVec 32)) SeekEntryResult!8532)

(assert (=> b!804204 (= lt!360079 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!548899 () Bool)

(assert (=> start!68974 (=> (not res!548899) (not e!445559))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68974 (= res!548899 (validMask!0 mask!3266))))

(assert (=> start!68974 e!445559))

(assert (=> start!68974 true))

(declare-fun array_inv!16708 (array!43715) Bool)

(assert (=> start!68974 (array_inv!16708 a!3170)))

(declare-fun b!804205 () Bool)

(declare-fun res!548893 () Bool)

(assert (=> b!804205 (=> (not res!548893) (not e!445559))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804205 (= res!548893 (validKeyInArray!0 (select (arr!20934 a!3170) j!153)))))

(declare-fun b!804206 () Bool)

(declare-fun res!548895 () Bool)

(assert (=> b!804206 (=> (not res!548895) (not e!445560))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43715 (_ BitVec 32)) Bool)

(assert (=> b!804206 (= res!548895 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804207 () Bool)

(declare-fun res!548898 () Bool)

(assert (=> b!804207 (=> (not res!548898) (not e!445559))))

(declare-fun arrayContainsKey!0 (array!43715 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804207 (= res!548898 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804208 () Bool)

(declare-fun res!548896 () Bool)

(assert (=> b!804208 (=> (not res!548896) (not e!445559))))

(assert (=> b!804208 (= res!548896 (validKeyInArray!0 k!2044))))

(declare-fun b!804209 () Bool)

(declare-fun res!548897 () Bool)

(assert (=> b!804209 (=> (not res!548897) (not e!445559))))

(assert (=> b!804209 (= res!548897 (and (= (size!21355 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21355 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21355 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!804210 () Bool)

(assert (=> b!804210 (= e!445560 false)))

(declare-fun lt!360078 () Bool)

(declare-datatypes ((List!14950 0))(
  ( (Nil!14947) (Cons!14946 (h!16075 (_ BitVec 64)) (t!21273 List!14950)) )
))
(declare-fun arrayNoDuplicates!0 (array!43715 (_ BitVec 32) List!14950) Bool)

(assert (=> b!804210 (= lt!360078 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14947))))

(assert (= (and start!68974 res!548899) b!804209))

(assert (= (and b!804209 res!548897) b!804205))

(assert (= (and b!804205 res!548893) b!804208))

(assert (= (and b!804208 res!548896) b!804207))

(assert (= (and b!804207 res!548898) b!804204))

(assert (= (and b!804204 res!548894) b!804206))

(assert (= (and b!804206 res!548895) b!804210))

(declare-fun m!746185 () Bool)

(assert (=> b!804206 m!746185))

(declare-fun m!746187 () Bool)

(assert (=> b!804204 m!746187))

(declare-fun m!746189 () Bool)

(assert (=> b!804210 m!746189))

(declare-fun m!746191 () Bool)

(assert (=> b!804207 m!746191))

(declare-fun m!746193 () Bool)

(assert (=> b!804208 m!746193))

(declare-fun m!746195 () Bool)

(assert (=> start!68974 m!746195))

(declare-fun m!746197 () Bool)

(assert (=> start!68974 m!746197))

(declare-fun m!746199 () Bool)

(assert (=> b!804205 m!746199))

(assert (=> b!804205 m!746199))

(declare-fun m!746201 () Bool)

(assert (=> b!804205 m!746201))

(push 1)

