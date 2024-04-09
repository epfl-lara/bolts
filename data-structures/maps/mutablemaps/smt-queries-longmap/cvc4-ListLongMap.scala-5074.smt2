; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68978 () Bool)

(assert start!68978)

(declare-fun b!804246 () Bool)

(declare-fun res!548935 () Bool)

(declare-fun e!445578 () Bool)

(assert (=> b!804246 (=> (not res!548935) (not e!445578))))

(declare-datatypes ((array!43719 0))(
  ( (array!43720 (arr!20936 (Array (_ BitVec 32) (_ BitVec 64))) (size!21357 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43719)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804246 (= res!548935 (validKeyInArray!0 (select (arr!20936 a!3170) j!153)))))

(declare-fun b!804247 () Bool)

(declare-fun e!445579 () Bool)

(assert (=> b!804247 (= e!445578 e!445579)))

(declare-fun res!548941 () Bool)

(assert (=> b!804247 (=> (not res!548941) (not e!445579))))

(declare-datatypes ((SeekEntryResult!8534 0))(
  ( (MissingZero!8534 (index!36503 (_ BitVec 32))) (Found!8534 (index!36504 (_ BitVec 32))) (Intermediate!8534 (undefined!9346 Bool) (index!36505 (_ BitVec 32)) (x!67357 (_ BitVec 32))) (Undefined!8534) (MissingVacant!8534 (index!36506 (_ BitVec 32))) )
))
(declare-fun lt!360091 () SeekEntryResult!8534)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!804247 (= res!548941 (or (= lt!360091 (MissingZero!8534 i!1163)) (= lt!360091 (MissingVacant!8534 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43719 (_ BitVec 32)) SeekEntryResult!8534)

(assert (=> b!804247 (= lt!360091 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!804248 () Bool)

(declare-fun res!548939 () Bool)

(assert (=> b!804248 (=> (not res!548939) (not e!445578))))

(declare-fun arrayContainsKey!0 (array!43719 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804248 (= res!548939 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804249 () Bool)

(declare-fun res!548936 () Bool)

(assert (=> b!804249 (=> (not res!548936) (not e!445578))))

(assert (=> b!804249 (= res!548936 (and (= (size!21357 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21357 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21357 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!804250 () Bool)

(declare-fun res!548938 () Bool)

(assert (=> b!804250 (=> (not res!548938) (not e!445578))))

(assert (=> b!804250 (= res!548938 (validKeyInArray!0 k!2044))))

(declare-fun b!804251 () Bool)

(declare-fun res!548940 () Bool)

(assert (=> b!804251 (=> (not res!548940) (not e!445579))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43719 (_ BitVec 32)) Bool)

(assert (=> b!804251 (= res!548940 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!548937 () Bool)

(assert (=> start!68978 (=> (not res!548937) (not e!445578))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68978 (= res!548937 (validMask!0 mask!3266))))

(assert (=> start!68978 e!445578))

(assert (=> start!68978 true))

(declare-fun array_inv!16710 (array!43719) Bool)

(assert (=> start!68978 (array_inv!16710 a!3170)))

(declare-fun b!804252 () Bool)

(assert (=> b!804252 (= e!445579 false)))

(declare-fun lt!360090 () Bool)

(declare-datatypes ((List!14952 0))(
  ( (Nil!14949) (Cons!14948 (h!16077 (_ BitVec 64)) (t!21275 List!14952)) )
))
(declare-fun arrayNoDuplicates!0 (array!43719 (_ BitVec 32) List!14952) Bool)

(assert (=> b!804252 (= lt!360090 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14949))))

(assert (= (and start!68978 res!548937) b!804249))

(assert (= (and b!804249 res!548936) b!804246))

(assert (= (and b!804246 res!548935) b!804250))

(assert (= (and b!804250 res!548938) b!804248))

(assert (= (and b!804248 res!548939) b!804247))

(assert (= (and b!804247 res!548941) b!804251))

(assert (= (and b!804251 res!548940) b!804252))

(declare-fun m!746221 () Bool)

(assert (=> b!804247 m!746221))

(declare-fun m!746223 () Bool)

(assert (=> b!804252 m!746223))

(declare-fun m!746225 () Bool)

(assert (=> b!804246 m!746225))

(assert (=> b!804246 m!746225))

(declare-fun m!746227 () Bool)

(assert (=> b!804246 m!746227))

(declare-fun m!746229 () Bool)

(assert (=> b!804248 m!746229))

(declare-fun m!746231 () Bool)

(assert (=> start!68978 m!746231))

(declare-fun m!746233 () Bool)

(assert (=> start!68978 m!746233))

(declare-fun m!746235 () Bool)

(assert (=> b!804251 m!746235))

(declare-fun m!746237 () Bool)

(assert (=> b!804250 m!746237))

(push 1)

(assert (not b!804250))

(assert (not b!804248))

(assert (not b!804251))

(assert (not start!68978))

(assert (not 