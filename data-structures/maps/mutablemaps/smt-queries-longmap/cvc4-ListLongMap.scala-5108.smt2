; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69278 () Bool)

(assert start!69278)

(declare-fun b!807932 () Bool)

(declare-fun res!552228 () Bool)

(declare-fun e!447287 () Bool)

(assert (=> b!807932 (=> (not res!552228) (not e!447287))))

(declare-datatypes ((array!43929 0))(
  ( (array!43930 (arr!21038 (Array (_ BitVec 32) (_ BitVec 64))) (size!21459 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43929)

(declare-datatypes ((List!15054 0))(
  ( (Nil!15051) (Cons!15050 (h!16179 (_ BitVec 64)) (t!21377 List!15054)) )
))
(declare-fun arrayNoDuplicates!0 (array!43929 (_ BitVec 32) List!15054) Bool)

(assert (=> b!807932 (= res!552228 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15051))))

(declare-fun b!807933 () Bool)

(declare-fun res!552234 () Bool)

(declare-fun e!447285 () Bool)

(assert (=> b!807933 (=> (not res!552234) (not e!447285))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!807933 (= res!552234 (validKeyInArray!0 k!2044))))

(declare-fun b!807934 () Bool)

(declare-fun res!552229 () Bool)

(assert (=> b!807934 (=> (not res!552229) (not e!447285))))

(declare-fun arrayContainsKey!0 (array!43929 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!807934 (= res!552229 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!807935 () Bool)

(assert (=> b!807935 (= e!447285 e!447287)))

(declare-fun res!552226 () Bool)

(assert (=> b!807935 (=> (not res!552226) (not e!447287))))

(declare-datatypes ((SeekEntryResult!8636 0))(
  ( (MissingZero!8636 (index!36911 (_ BitVec 32))) (Found!8636 (index!36912 (_ BitVec 32))) (Intermediate!8636 (undefined!9448 Bool) (index!36913 (_ BitVec 32)) (x!67737 (_ BitVec 32))) (Undefined!8636) (MissingVacant!8636 (index!36914 (_ BitVec 32))) )
))
(declare-fun lt!362037 () SeekEntryResult!8636)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!807935 (= res!552226 (or (= lt!362037 (MissingZero!8636 i!1163)) (= lt!362037 (MissingVacant!8636 i!1163))))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43929 (_ BitVec 32)) SeekEntryResult!8636)

(assert (=> b!807935 (= lt!362037 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!552235 () Bool)

(assert (=> start!69278 (=> (not res!552235) (not e!447285))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69278 (= res!552235 (validMask!0 mask!3266))))

(assert (=> start!69278 e!447285))

(assert (=> start!69278 true))

(declare-fun array_inv!16812 (array!43929) Bool)

(assert (=> start!69278 (array_inv!16812 a!3170)))

(declare-fun b!807936 () Bool)

(declare-fun e!447288 () Bool)

(assert (=> b!807936 (= e!447287 e!447288)))

(declare-fun res!552231 () Bool)

(assert (=> b!807936 (=> (not res!552231) (not e!447288))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!362036 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!362035 () array!43929)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43929 (_ BitVec 32)) SeekEntryResult!8636)

(assert (=> b!807936 (= res!552231 (= (seekEntryOrOpen!0 lt!362036 lt!362035 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362036 lt!362035 mask!3266)))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!807936 (= lt!362036 (select (store (arr!21038 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!807936 (= lt!362035 (array!43930 (store (arr!21038 a!3170) i!1163 k!2044) (size!21459 a!3170)))))

(declare-fun b!807937 () Bool)

(declare-fun res!552227 () Bool)

(assert (=> b!807937 (=> (not res!552227) (not e!447285))))

(assert (=> b!807937 (= res!552227 (and (= (size!21459 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21459 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21459 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!807938 () Bool)

(declare-fun res!552230 () Bool)

(assert (=> b!807938 (=> (not res!552230) (not e!447285))))

(assert (=> b!807938 (= res!552230 (validKeyInArray!0 (select (arr!21038 a!3170) j!153)))))

(declare-fun b!807939 () Bool)

(declare-fun e!447286 () Bool)

(assert (=> b!807939 (= e!447288 e!447286)))

(declare-fun res!552233 () Bool)

(assert (=> b!807939 (=> (not res!552233) (not e!447286))))

(declare-fun lt!362034 () SeekEntryResult!8636)

(declare-fun lt!362038 () SeekEntryResult!8636)

(assert (=> b!807939 (= res!552233 (and (= lt!362038 lt!362034) (= lt!362034 (Found!8636 j!153)) (not (= (select (arr!21038 a!3170) index!1236) (select (arr!21038 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!807939 (= lt!362034 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21038 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!807939 (= lt!362038 (seekEntryOrOpen!0 (select (arr!21038 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!807940 () Bool)

(assert (=> b!807940 (= e!447286 false)))

(declare-fun lt!362033 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!807940 (= lt!362033 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!807941 () Bool)

(declare-fun res!552232 () Bool)

(assert (=> b!807941 (=> (not res!552232) (not e!447287))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43929 (_ BitVec 32)) Bool)

(assert (=> b!807941 (= res!552232 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!807942 () Bool)

(declare-fun res!552225 () Bool)

(assert (=> b!807942 (=> (not res!552225) (not e!447287))))

(assert (=> b!807942 (= res!552225 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21459 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21038 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21459 a!3170)) (= (select (arr!21038 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(assert (= (and start!69278 res!552235) b!807937))

(assert (= (and b!807937 res!552227) b!807938))

(assert (= (and b!807938 res!552230) b!807933))

(assert (= (and b!807933 res!552234) b!807934))

(assert (= (and b!807934 res!552229) b!807935))

(assert (= (and b!807935 res!552226) b!807941))

(assert (= (and b!807941 res!552232) b!807932))

(assert (= (and b!807932 res!552228) b!807942))

(assert (= (and b!807942 res!552225) b!807936))

(assert (= (and b!807936 res!552231) b!807939))

(assert (= (and b!807939 res!552233) b!807940))

(declare-fun m!750161 () Bool)

(assert (=> b!807940 m!750161))

(declare-fun m!750163 () Bool)

(assert (=> b!807942 m!750163))

(declare-fun m!750165 () Bool)

(assert (=> b!807942 m!750165))

(declare-fun m!750167 () Bool)

(assert (=> b!807932 m!750167))

(declare-fun m!750169 () Bool)

(assert (=> b!807934 m!750169))

(declare-fun m!750171 () Bool)

(assert (=> start!69278 m!750171))

(declare-fun m!750173 () Bool)

(assert (=> start!69278 m!750173))

(declare-fun m!750175 () Bool)

(assert (=> b!807936 m!750175))

(declare-fun m!750177 () Bool)

(assert (=> b!807936 m!750177))

(declare-fun m!750179 () Bool)

(assert (=> b!807936 m!750179))

(declare-fun m!750181 () Bool)

(assert (=> b!807936 m!750181))

(declare-fun m!750183 () Bool)

(assert (=> b!807939 m!750183))

(declare-fun m!750185 () Bool)

(assert (=> b!807939 m!750185))

(assert (=> b!807939 m!750185))

(declare-fun m!750187 () Bool)

(assert (=> b!807939 m!750187))

(assert (=> b!807939 m!750185))

(declare-fun m!750189 () Bool)

(assert (=> b!807939 m!750189))

(declare-fun m!750191 () Bool)

(assert (=> b!807935 m!750191))

(declare-fun m!750193 () Bool)

(assert (=> b!807941 m!750193))

(assert (=> b!807938 m!750185))

(assert (=> b!807938 m!750185))

(declare-fun m!750195 () Bool)

(assert (=> b!807938 m!750195))

(declare-fun m!750197 () Bool)

(assert (=> b!807933 m!750197))

(push 1)

