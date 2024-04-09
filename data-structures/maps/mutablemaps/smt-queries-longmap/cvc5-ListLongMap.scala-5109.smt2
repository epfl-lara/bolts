; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69280 () Bool)

(assert start!69280)

(declare-fun b!807965 () Bool)

(declare-fun res!552265 () Bool)

(declare-fun e!447304 () Bool)

(assert (=> b!807965 (=> (not res!552265) (not e!447304))))

(declare-datatypes ((array!43931 0))(
  ( (array!43932 (arr!21039 (Array (_ BitVec 32) (_ BitVec 64))) (size!21460 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43931)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!807965 (= res!552265 (validKeyInArray!0 (select (arr!21039 a!3170) j!153)))))

(declare-fun b!807966 () Bool)

(declare-fun e!447301 () Bool)

(assert (=> b!807966 (= e!447304 e!447301)))

(declare-fun res!552267 () Bool)

(assert (=> b!807966 (=> (not res!552267) (not e!447301))))

(declare-datatypes ((SeekEntryResult!8637 0))(
  ( (MissingZero!8637 (index!36915 (_ BitVec 32))) (Found!8637 (index!36916 (_ BitVec 32))) (Intermediate!8637 (undefined!9449 Bool) (index!36917 (_ BitVec 32)) (x!67746 (_ BitVec 32))) (Undefined!8637) (MissingVacant!8637 (index!36918 (_ BitVec 32))) )
))
(declare-fun lt!362054 () SeekEntryResult!8637)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!807966 (= res!552267 (or (= lt!362054 (MissingZero!8637 i!1163)) (= lt!362054 (MissingVacant!8637 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43931 (_ BitVec 32)) SeekEntryResult!8637)

(assert (=> b!807966 (= lt!362054 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!807967 () Bool)

(declare-fun res!552260 () Bool)

(assert (=> b!807967 (=> (not res!552260) (not e!447301))))

(declare-datatypes ((List!15055 0))(
  ( (Nil!15052) (Cons!15051 (h!16180 (_ BitVec 64)) (t!21378 List!15055)) )
))
(declare-fun arrayNoDuplicates!0 (array!43931 (_ BitVec 32) List!15055) Bool)

(assert (=> b!807967 (= res!552260 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15052))))

(declare-fun b!807968 () Bool)

(declare-fun e!447302 () Bool)

(assert (=> b!807968 (= e!447301 e!447302)))

(declare-fun res!552263 () Bool)

(assert (=> b!807968 (=> (not res!552263) (not e!447302))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!362055 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!362052 () array!43931)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43931 (_ BitVec 32)) SeekEntryResult!8637)

(assert (=> b!807968 (= res!552263 (= (seekEntryOrOpen!0 lt!362055 lt!362052 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362055 lt!362052 mask!3266)))))

(assert (=> b!807968 (= lt!362055 (select (store (arr!21039 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!807968 (= lt!362052 (array!43932 (store (arr!21039 a!3170) i!1163 k!2044) (size!21460 a!3170)))))

(declare-fun b!807969 () Bool)

(declare-fun res!552262 () Bool)

(assert (=> b!807969 (=> (not res!552262) (not e!447304))))

(assert (=> b!807969 (= res!552262 (validKeyInArray!0 k!2044))))

(declare-fun b!807971 () Bool)

(declare-fun res!552261 () Bool)

(assert (=> b!807971 (=> (not res!552261) (not e!447301))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!807971 (= res!552261 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21460 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21039 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21460 a!3170)) (= (select (arr!21039 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!807972 () Bool)

(declare-fun res!552264 () Bool)

(assert (=> b!807972 (=> (not res!552264) (not e!447304))))

(assert (=> b!807972 (= res!552264 (and (= (size!21460 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21460 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21460 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!807973 () Bool)

(declare-fun e!447300 () Bool)

(assert (=> b!807973 (= e!447302 e!447300)))

(declare-fun res!552258 () Bool)

(assert (=> b!807973 (=> (not res!552258) (not e!447300))))

(declare-fun lt!362051 () SeekEntryResult!8637)

(declare-fun lt!362053 () SeekEntryResult!8637)

(assert (=> b!807973 (= res!552258 (and (= lt!362051 lt!362053) (= lt!362053 (Found!8637 j!153)) (not (= (select (arr!21039 a!3170) index!1236) (select (arr!21039 a!3170) j!153)))))))

(assert (=> b!807973 (= lt!362053 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21039 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!807973 (= lt!362051 (seekEntryOrOpen!0 (select (arr!21039 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!807974 () Bool)

(declare-fun res!552266 () Bool)

(assert (=> b!807974 (=> (not res!552266) (not e!447301))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43931 (_ BitVec 32)) Bool)

(assert (=> b!807974 (= res!552266 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!807975 () Bool)

(declare-fun res!552268 () Bool)

(assert (=> b!807975 (=> (not res!552268) (not e!447304))))

(declare-fun arrayContainsKey!0 (array!43931 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!807975 (= res!552268 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!552259 () Bool)

(assert (=> start!69280 (=> (not res!552259) (not e!447304))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69280 (= res!552259 (validMask!0 mask!3266))))

(assert (=> start!69280 e!447304))

(assert (=> start!69280 true))

(declare-fun array_inv!16813 (array!43931) Bool)

(assert (=> start!69280 (array_inv!16813 a!3170)))

(declare-fun b!807970 () Bool)

(assert (=> b!807970 (= e!447300 false)))

(declare-fun lt!362056 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!807970 (= lt!362056 (nextIndex!0 index!1236 x!1077 mask!3266))))

(assert (= (and start!69280 res!552259) b!807972))

(assert (= (and b!807972 res!552264) b!807965))

(assert (= (and b!807965 res!552265) b!807969))

(assert (= (and b!807969 res!552262) b!807975))

(assert (= (and b!807975 res!552268) b!807966))

(assert (= (and b!807966 res!552267) b!807974))

(assert (= (and b!807974 res!552266) b!807967))

(assert (= (and b!807967 res!552260) b!807971))

(assert (= (and b!807971 res!552261) b!807968))

(assert (= (and b!807968 res!552263) b!807973))

(assert (= (and b!807973 res!552258) b!807970))

(declare-fun m!750199 () Bool)

(assert (=> b!807974 m!750199))

(declare-fun m!750201 () Bool)

(assert (=> b!807975 m!750201))

(declare-fun m!750203 () Bool)

(assert (=> start!69280 m!750203))

(declare-fun m!750205 () Bool)

(assert (=> start!69280 m!750205))

(declare-fun m!750207 () Bool)

(assert (=> b!807968 m!750207))

(declare-fun m!750209 () Bool)

(assert (=> b!807968 m!750209))

(declare-fun m!750211 () Bool)

(assert (=> b!807968 m!750211))

(declare-fun m!750213 () Bool)

(assert (=> b!807968 m!750213))

(declare-fun m!750215 () Bool)

(assert (=> b!807965 m!750215))

(assert (=> b!807965 m!750215))

(declare-fun m!750217 () Bool)

(assert (=> b!807965 m!750217))

(declare-fun m!750219 () Bool)

(assert (=> b!807969 m!750219))

(declare-fun m!750221 () Bool)

(assert (=> b!807967 m!750221))

(declare-fun m!750223 () Bool)

(assert (=> b!807973 m!750223))

(assert (=> b!807973 m!750215))

(assert (=> b!807973 m!750215))

(declare-fun m!750225 () Bool)

(assert (=> b!807973 m!750225))

(assert (=> b!807973 m!750215))

(declare-fun m!750227 () Bool)

(assert (=> b!807973 m!750227))

(declare-fun m!750229 () Bool)

(assert (=> b!807970 m!750229))

(declare-fun m!750231 () Bool)

(assert (=> b!807966 m!750231))

(declare-fun m!750233 () Bool)

(assert (=> b!807971 m!750233))

(declare-fun m!750235 () Bool)

(assert (=> b!807971 m!750235))

(push 1)

