; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68980 () Bool)

(assert start!68980)

(declare-fun b!804267 () Bool)

(declare-fun res!548962 () Bool)

(declare-fun e!445587 () Bool)

(assert (=> b!804267 (=> (not res!548962) (not e!445587))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43721 0))(
  ( (array!43722 (arr!20937 (Array (_ BitVec 32) (_ BitVec 64))) (size!21358 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43721)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!804267 (= res!548962 (and (= (size!21358 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21358 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21358 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!804268 () Bool)

(declare-fun e!445588 () Bool)

(assert (=> b!804268 (= e!445587 e!445588)))

(declare-fun res!548960 () Bool)

(assert (=> b!804268 (=> (not res!548960) (not e!445588))))

(declare-datatypes ((SeekEntryResult!8535 0))(
  ( (MissingZero!8535 (index!36507 (_ BitVec 32))) (Found!8535 (index!36508 (_ BitVec 32))) (Intermediate!8535 (undefined!9347 Bool) (index!36509 (_ BitVec 32)) (x!67366 (_ BitVec 32))) (Undefined!8535) (MissingVacant!8535 (index!36510 (_ BitVec 32))) )
))
(declare-fun lt!360097 () SeekEntryResult!8535)

(assert (=> b!804268 (= res!548960 (or (= lt!360097 (MissingZero!8535 i!1163)) (= lt!360097 (MissingVacant!8535 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43721 (_ BitVec 32)) SeekEntryResult!8535)

(assert (=> b!804268 (= lt!360097 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!804269 () Bool)

(assert (=> b!804269 (= e!445588 false)))

(declare-fun lt!360096 () Bool)

(declare-datatypes ((List!14953 0))(
  ( (Nil!14950) (Cons!14949 (h!16078 (_ BitVec 64)) (t!21276 List!14953)) )
))
(declare-fun arrayNoDuplicates!0 (array!43721 (_ BitVec 32) List!14953) Bool)

(assert (=> b!804269 (= lt!360096 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14950))))

(declare-fun res!548956 () Bool)

(assert (=> start!68980 (=> (not res!548956) (not e!445587))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68980 (= res!548956 (validMask!0 mask!3266))))

(assert (=> start!68980 e!445587))

(assert (=> start!68980 true))

(declare-fun array_inv!16711 (array!43721) Bool)

(assert (=> start!68980 (array_inv!16711 a!3170)))

(declare-fun b!804270 () Bool)

(declare-fun res!548957 () Bool)

(assert (=> b!804270 (=> (not res!548957) (not e!445587))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804270 (= res!548957 (validKeyInArray!0 (select (arr!20937 a!3170) j!153)))))

(declare-fun b!804271 () Bool)

(declare-fun res!548961 () Bool)

(assert (=> b!804271 (=> (not res!548961) (not e!445587))))

(declare-fun arrayContainsKey!0 (array!43721 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804271 (= res!548961 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804272 () Bool)

(declare-fun res!548959 () Bool)

(assert (=> b!804272 (=> (not res!548959) (not e!445587))))

(assert (=> b!804272 (= res!548959 (validKeyInArray!0 k!2044))))

(declare-fun b!804273 () Bool)

(declare-fun res!548958 () Bool)

(assert (=> b!804273 (=> (not res!548958) (not e!445588))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43721 (_ BitVec 32)) Bool)

(assert (=> b!804273 (= res!548958 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(assert (= (and start!68980 res!548956) b!804267))

(assert (= (and b!804267 res!548962) b!804270))

(assert (= (and b!804270 res!548957) b!804272))

(assert (= (and b!804272 res!548959) b!804271))

(assert (= (and b!804271 res!548961) b!804268))

(assert (= (and b!804268 res!548960) b!804273))

(assert (= (and b!804273 res!548958) b!804269))

(declare-fun m!746239 () Bool)

(assert (=> b!804271 m!746239))

(declare-fun m!746241 () Bool)

(assert (=> b!804272 m!746241))

(declare-fun m!746243 () Bool)

(assert (=> b!804269 m!746243))

(declare-fun m!746245 () Bool)

(assert (=> b!804270 m!746245))

(assert (=> b!804270 m!746245))

(declare-fun m!746247 () Bool)

(assert (=> b!804270 m!746247))

(declare-fun m!746249 () Bool)

(assert (=> start!68980 m!746249))

(declare-fun m!746251 () Bool)

(assert (=> start!68980 m!746251))

(declare-fun m!746253 () Bool)

(assert (=> b!804268 m!746253))

(declare-fun m!746255 () Bool)

(assert (=> b!804273 m!746255))

(push 1)

