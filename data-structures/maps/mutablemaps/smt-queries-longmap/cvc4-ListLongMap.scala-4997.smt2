; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68516 () Bool)

(assert start!68516)

(declare-fun b!796214 () Bool)

(declare-fun e!441840 () Bool)

(declare-fun e!441844 () Bool)

(assert (=> b!796214 (= e!441840 e!441844)))

(declare-fun res!540907 () Bool)

(assert (=> b!796214 (=> (not res!540907) (not e!441844))))

(declare-datatypes ((SeekEntryResult!8303 0))(
  ( (MissingZero!8303 (index!35579 (_ BitVec 32))) (Found!8303 (index!35580 (_ BitVec 32))) (Intermediate!8303 (undefined!9115 Bool) (index!35581 (_ BitVec 32)) (x!66510 (_ BitVec 32))) (Undefined!8303) (MissingVacant!8303 (index!35582 (_ BitVec 32))) )
))
(declare-fun lt!355042 () SeekEntryResult!8303)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!796214 (= res!540907 (or (= lt!355042 (MissingZero!8303 i!1163)) (= lt!355042 (MissingVacant!8303 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-datatypes ((array!43257 0))(
  ( (array!43258 (arr!20705 (Array (_ BitVec 32) (_ BitVec 64))) (size!21126 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43257)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43257 (_ BitVec 32)) SeekEntryResult!8303)

(assert (=> b!796214 (= lt!355042 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!796215 () Bool)

(declare-fun res!540910 () Bool)

(assert (=> b!796215 (=> (not res!540910) (not e!441840))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!796215 (= res!540910 (validKeyInArray!0 (select (arr!20705 a!3170) j!153)))))

(declare-fun b!796216 () Bool)

(declare-fun res!540913 () Bool)

(assert (=> b!796216 (=> (not res!540913) (not e!441844))))

(declare-datatypes ((List!14721 0))(
  ( (Nil!14718) (Cons!14717 (h!15846 (_ BitVec 64)) (t!21044 List!14721)) )
))
(declare-fun arrayNoDuplicates!0 (array!43257 (_ BitVec 32) List!14721) Bool)

(assert (=> b!796216 (= res!540913 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14718))))

(declare-fun b!796217 () Bool)

(declare-fun res!540911 () Bool)

(assert (=> b!796217 (=> (not res!540911) (not e!441844))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43257 (_ BitVec 32)) Bool)

(assert (=> b!796217 (= res!540911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!796218 () Bool)

(declare-fun res!540904 () Bool)

(assert (=> b!796218 (=> (not res!540904) (not e!441844))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!796218 (= res!540904 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21126 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20705 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21126 a!3170)) (= (select (arr!20705 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!796219 () Bool)

(declare-fun res!540909 () Bool)

(assert (=> b!796219 (=> (not res!540909) (not e!441840))))

(assert (=> b!796219 (= res!540909 (and (= (size!21126 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21126 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21126 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!540906 () Bool)

(assert (=> start!68516 (=> (not res!540906) (not e!441840))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68516 (= res!540906 (validMask!0 mask!3266))))

(assert (=> start!68516 e!441840))

(assert (=> start!68516 true))

(declare-fun array_inv!16479 (array!43257) Bool)

(assert (=> start!68516 (array_inv!16479 a!3170)))

(declare-fun b!796220 () Bool)

(declare-fun res!540912 () Bool)

(assert (=> b!796220 (=> (not res!540912) (not e!441840))))

(assert (=> b!796220 (= res!540912 (validKeyInArray!0 k!2044))))

(declare-fun b!796221 () Bool)

(declare-fun e!441841 () Bool)

(assert (=> b!796221 (= e!441841 (not (or (bvslt mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(declare-fun lt!355040 () SeekEntryResult!8303)

(assert (=> b!796221 (= lt!355040 (Found!8303 index!1236))))

(declare-fun b!796222 () Bool)

(declare-fun e!441843 () Bool)

(assert (=> b!796222 (= e!441843 e!441841)))

(declare-fun res!540905 () Bool)

(assert (=> b!796222 (=> (not res!540905) (not e!441841))))

(declare-fun lt!355039 () SeekEntryResult!8303)

(declare-fun lt!355041 () SeekEntryResult!8303)

(assert (=> b!796222 (= res!540905 (and (= lt!355039 lt!355041) (= lt!355041 (Found!8303 j!153)) (= (select (arr!20705 a!3170) index!1236) (select (arr!20705 a!3170) j!153))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43257 (_ BitVec 32)) SeekEntryResult!8303)

(assert (=> b!796222 (= lt!355041 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20705 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!796222 (= lt!355039 (seekEntryOrOpen!0 (select (arr!20705 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!796223 () Bool)

(declare-fun res!540903 () Bool)

(assert (=> b!796223 (=> (not res!540903) (not e!441840))))

(declare-fun arrayContainsKey!0 (array!43257 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!796223 (= res!540903 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!796224 () Bool)

(assert (=> b!796224 (= e!441844 e!441843)))

(declare-fun res!540908 () Bool)

(assert (=> b!796224 (=> (not res!540908) (not e!441843))))

(declare-fun lt!355036 () SeekEntryResult!8303)

(assert (=> b!796224 (= res!540908 (= lt!355036 lt!355040))))

(declare-fun lt!355037 () (_ BitVec 64))

(declare-fun lt!355038 () array!43257)

(assert (=> b!796224 (= lt!355040 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355037 lt!355038 mask!3266))))

(assert (=> b!796224 (= lt!355036 (seekEntryOrOpen!0 lt!355037 lt!355038 mask!3266))))

(assert (=> b!796224 (= lt!355037 (select (store (arr!20705 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!796224 (= lt!355038 (array!43258 (store (arr!20705 a!3170) i!1163 k!2044) (size!21126 a!3170)))))

(assert (= (and start!68516 res!540906) b!796219))

(assert (= (and b!796219 res!540909) b!796215))

(assert (= (and b!796215 res!540910) b!796220))

(assert (= (and b!796220 res!540912) b!796223))

(assert (= (and b!796223 res!540903) b!796214))

(assert (= (and b!796214 res!540907) b!796217))

(assert (= (and b!796217 res!540911) b!796216))

(assert (= (and b!796216 res!540913) b!796218))

(assert (= (and b!796218 res!540904) b!796224))

(assert (= (and b!796224 res!540908) b!796222))

(assert (= (and b!796222 res!540905) b!796221))

(declare-fun m!737089 () Bool)

(assert (=> b!796214 m!737089))

(declare-fun m!737091 () Bool)

(assert (=> b!796224 m!737091))

(declare-fun m!737093 () Bool)

(assert (=> b!796224 m!737093))

(declare-fun m!737095 () Bool)

(assert (=> b!796224 m!737095))

(declare-fun m!737097 () Bool)

(assert (=> b!796224 m!737097))

(declare-fun m!737099 () Bool)

(assert (=> b!796218 m!737099))

(declare-fun m!737101 () Bool)

(assert (=> b!796218 m!737101))

(declare-fun m!737103 () Bool)

(assert (=> b!796215 m!737103))

(assert (=> b!796215 m!737103))

(declare-fun m!737105 () Bool)

(assert (=> b!796215 m!737105))

(declare-fun m!737107 () Bool)

(assert (=> b!796217 m!737107))

(declare-fun m!737109 () Bool)

(assert (=> b!796220 m!737109))

(declare-fun m!737111 () Bool)

(assert (=> start!68516 m!737111))

(declare-fun m!737113 () Bool)

(assert (=> start!68516 m!737113))

(declare-fun m!737115 () Bool)

(assert (=> b!796216 m!737115))

(declare-fun m!737117 () Bool)

(assert (=> b!796222 m!737117))

(assert (=> b!796222 m!737103))

(assert (=> b!796222 m!737103))

(declare-fun m!737119 () Bool)

(assert (=> b!796222 m!737119))

(assert (=> b!796222 m!737103))

(declare-fun m!737121 () Bool)

(assert (=> b!796222 m!737121))

(declare-fun m!737123 () Bool)

(assert (=> b!796223 m!737123))

(push 1)

(assert (not b!796214))

(assert (not start!68516))

(assert (not b!796224))

(assert (not b!796223))

(assert (not b!796215))

(assert (not b!796222))

(assert (not b!796217))

(assert (not b!796220))

(assert (not b!796216))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

