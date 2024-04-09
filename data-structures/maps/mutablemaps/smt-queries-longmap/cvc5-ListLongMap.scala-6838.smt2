; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86098 () Bool)

(assert start!86098)

(declare-fun b!996873 () Bool)

(declare-fun res!667152 () Bool)

(declare-fun e!562350 () Bool)

(assert (=> b!996873 (=> (not res!667152) (not e!562350))))

(declare-datatypes ((array!63055 0))(
  ( (array!63056 (arr!30355 (Array (_ BitVec 32) (_ BitVec 64))) (size!30858 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63055)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63055 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!996873 (= res!667152 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!996874 () Bool)

(declare-fun res!667143 () Bool)

(assert (=> b!996874 (=> (not res!667143) (not e!562350))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!996874 (= res!667143 (validKeyInArray!0 (select (arr!30355 a!3219) j!170)))))

(declare-fun b!996875 () Bool)

(declare-fun res!667145 () Bool)

(declare-fun e!562352 () Bool)

(assert (=> b!996875 (=> (not res!667145) (not e!562352))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!996875 (= res!667145 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30858 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30858 a!3219))))))

(declare-fun res!667148 () Bool)

(assert (=> start!86098 (=> (not res!667148) (not e!562350))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86098 (= res!667148 (validMask!0 mask!3464))))

(assert (=> start!86098 e!562350))

(declare-fun array_inv!23345 (array!63055) Bool)

(assert (=> start!86098 (array_inv!23345 a!3219)))

(assert (=> start!86098 true))

(declare-fun b!996876 () Bool)

(declare-fun res!667144 () Bool)

(assert (=> b!996876 (=> (not res!667144) (not e!562350))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!996876 (= res!667144 (and (= (size!30858 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30858 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30858 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!996877 () Bool)

(declare-fun res!667147 () Bool)

(assert (=> b!996877 (=> (not res!667147) (not e!562352))))

(declare-datatypes ((List!21157 0))(
  ( (Nil!21154) (Cons!21153 (h!22318 (_ BitVec 64)) (t!30166 List!21157)) )
))
(declare-fun arrayNoDuplicates!0 (array!63055 (_ BitVec 32) List!21157) Bool)

(assert (=> b!996877 (= res!667147 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21154))))

(declare-fun b!996878 () Bool)

(declare-fun res!667150 () Bool)

(assert (=> b!996878 (=> (not res!667150) (not e!562350))))

(assert (=> b!996878 (= res!667150 (validKeyInArray!0 k!2224))))

(declare-fun b!996879 () Bool)

(declare-fun res!667153 () Bool)

(declare-fun e!562351 () Bool)

(assert (=> b!996879 (=> (not res!667153) (not e!562351))))

(declare-datatypes ((SeekEntryResult!9287 0))(
  ( (MissingZero!9287 (index!39518 (_ BitVec 32))) (Found!9287 (index!39519 (_ BitVec 32))) (Intermediate!9287 (undefined!10099 Bool) (index!39520 (_ BitVec 32)) (x!86980 (_ BitVec 32))) (Undefined!9287) (MissingVacant!9287 (index!39521 (_ BitVec 32))) )
))
(declare-fun lt!441276 () SeekEntryResult!9287)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63055 (_ BitVec 32)) SeekEntryResult!9287)

(assert (=> b!996879 (= res!667153 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30355 a!3219) j!170) a!3219 mask!3464) lt!441276))))

(declare-fun b!996880 () Bool)

(assert (=> b!996880 (= e!562352 e!562351)))

(declare-fun res!667151 () Bool)

(assert (=> b!996880 (=> (not res!667151) (not e!562351))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!996880 (= res!667151 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30355 a!3219) j!170) mask!3464) (select (arr!30355 a!3219) j!170) a!3219 mask!3464) lt!441276))))

(assert (=> b!996880 (= lt!441276 (Intermediate!9287 false resIndex!38 resX!38))))

(declare-fun b!996881 () Bool)

(declare-fun res!667149 () Bool)

(assert (=> b!996881 (=> (not res!667149) (not e!562352))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63055 (_ BitVec 32)) Bool)

(assert (=> b!996881 (= res!667149 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!996882 () Bool)

(assert (=> b!996882 (= e!562351 (bvslt mask!3464 #b00000000000000000000000000000000))))

(declare-fun b!996883 () Bool)

(assert (=> b!996883 (= e!562350 e!562352)))

(declare-fun res!667146 () Bool)

(assert (=> b!996883 (=> (not res!667146) (not e!562352))))

(declare-fun lt!441275 () SeekEntryResult!9287)

(assert (=> b!996883 (= res!667146 (or (= lt!441275 (MissingVacant!9287 i!1194)) (= lt!441275 (MissingZero!9287 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63055 (_ BitVec 32)) SeekEntryResult!9287)

(assert (=> b!996883 (= lt!441275 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(assert (= (and start!86098 res!667148) b!996876))

(assert (= (and b!996876 res!667144) b!996874))

(assert (= (and b!996874 res!667143) b!996878))

(assert (= (and b!996878 res!667150) b!996873))

(assert (= (and b!996873 res!667152) b!996883))

(assert (= (and b!996883 res!667146) b!996881))

(assert (= (and b!996881 res!667149) b!996877))

(assert (= (and b!996877 res!667147) b!996875))

(assert (= (and b!996875 res!667145) b!996880))

(assert (= (and b!996880 res!667151) b!996879))

(assert (= (and b!996879 res!667153) b!996882))

(declare-fun m!923973 () Bool)

(assert (=> start!86098 m!923973))

(declare-fun m!923975 () Bool)

(assert (=> start!86098 m!923975))

(declare-fun m!923977 () Bool)

(assert (=> b!996879 m!923977))

(assert (=> b!996879 m!923977))

(declare-fun m!923979 () Bool)

(assert (=> b!996879 m!923979))

(declare-fun m!923981 () Bool)

(assert (=> b!996873 m!923981))

(declare-fun m!923983 () Bool)

(assert (=> b!996881 m!923983))

(assert (=> b!996880 m!923977))

(assert (=> b!996880 m!923977))

(declare-fun m!923985 () Bool)

(assert (=> b!996880 m!923985))

(assert (=> b!996880 m!923985))

(assert (=> b!996880 m!923977))

(declare-fun m!923987 () Bool)

(assert (=> b!996880 m!923987))

(declare-fun m!923989 () Bool)

(assert (=> b!996878 m!923989))

(declare-fun m!923991 () Bool)

(assert (=> b!996877 m!923991))

(declare-fun m!923993 () Bool)

(assert (=> b!996883 m!923993))

(assert (=> b!996874 m!923977))

(assert (=> b!996874 m!923977))

(declare-fun m!923995 () Bool)

(assert (=> b!996874 m!923995))

(push 1)

