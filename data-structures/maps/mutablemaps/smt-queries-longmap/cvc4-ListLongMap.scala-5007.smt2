; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68576 () Bool)

(assert start!68576)

(declare-fun b!797240 () Bool)

(declare-fun res!541932 () Bool)

(declare-fun e!442325 () Bool)

(assert (=> b!797240 (=> (not res!541932) (not e!442325))))

(declare-datatypes ((array!43317 0))(
  ( (array!43318 (arr!20735 (Array (_ BitVec 32) (_ BitVec 64))) (size!21156 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43317)

(declare-datatypes ((List!14751 0))(
  ( (Nil!14748) (Cons!14747 (h!15876 (_ BitVec 64)) (t!21074 List!14751)) )
))
(declare-fun arrayNoDuplicates!0 (array!43317 (_ BitVec 32) List!14751) Bool)

(assert (=> b!797240 (= res!541932 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14748))))

(declare-fun b!797241 () Bool)

(declare-fun res!541939 () Bool)

(declare-fun e!442326 () Bool)

(assert (=> b!797241 (=> (not res!541939) (not e!442326))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!797241 (= res!541939 (and (= (size!21156 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21156 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21156 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!797242 () Bool)

(assert (=> b!797242 (= e!442326 e!442325)))

(declare-fun res!541937 () Bool)

(assert (=> b!797242 (=> (not res!541937) (not e!442325))))

(declare-datatypes ((SeekEntryResult!8333 0))(
  ( (MissingZero!8333 (index!35699 (_ BitVec 32))) (Found!8333 (index!35700 (_ BitVec 32))) (Intermediate!8333 (undefined!9145 Bool) (index!35701 (_ BitVec 32)) (x!66620 (_ BitVec 32))) (Undefined!8333) (MissingVacant!8333 (index!35702 (_ BitVec 32))) )
))
(declare-fun lt!355698 () SeekEntryResult!8333)

(assert (=> b!797242 (= res!541937 (or (= lt!355698 (MissingZero!8333 i!1163)) (= lt!355698 (MissingVacant!8333 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43317 (_ BitVec 32)) SeekEntryResult!8333)

(assert (=> b!797242 (= lt!355698 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!797243 () Bool)

(declare-fun res!541928 () Bool)

(assert (=> b!797243 (=> (not res!541928) (not e!442325))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43317 (_ BitVec 32)) Bool)

(assert (=> b!797243 (= res!541928 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!797244 () Bool)

(declare-fun res!541936 () Bool)

(assert (=> b!797244 (=> (not res!541936) (not e!442326))))

(declare-fun arrayContainsKey!0 (array!43317 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!797244 (= res!541936 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!797245 () Bool)

(declare-fun e!442327 () Bool)

(declare-fun e!442328 () Bool)

(assert (=> b!797245 (= e!442327 e!442328)))

(declare-fun res!541929 () Bool)

(assert (=> b!797245 (=> (not res!541929) (not e!442328))))

(declare-fun lt!355692 () SeekEntryResult!8333)

(declare-fun lt!355695 () SeekEntryResult!8333)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!797245 (= res!541929 (and (= lt!355695 lt!355692) (= (select (arr!20735 a!3170) index!1236) (select (arr!20735 a!3170) j!153))))))

(assert (=> b!797245 (= lt!355692 (Found!8333 j!153))))

(declare-fun b!797246 () Bool)

(declare-fun res!541933 () Bool)

(assert (=> b!797246 (=> (not res!541933) (not e!442326))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!797246 (= res!541933 (validKeyInArray!0 (select (arr!20735 a!3170) j!153)))))

(declare-fun b!797247 () Bool)

(declare-fun res!541931 () Bool)

(assert (=> b!797247 (=> (not res!541931) (not e!442325))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!797247 (= res!541931 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21156 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20735 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21156 a!3170)) (= (select (arr!20735 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!797248 () Bool)

(declare-fun res!541930 () Bool)

(assert (=> b!797248 (=> (not res!541930) (not e!442326))))

(assert (=> b!797248 (= res!541930 (validKeyInArray!0 k!2044))))

(declare-fun b!797249 () Bool)

(declare-fun e!442330 () Bool)

(assert (=> b!797249 (= e!442325 e!442330)))

(declare-fun res!541935 () Bool)

(assert (=> b!797249 (=> (not res!541935) (not e!442330))))

(declare-fun lt!355697 () SeekEntryResult!8333)

(declare-fun lt!355699 () SeekEntryResult!8333)

(assert (=> b!797249 (= res!541935 (= lt!355697 lt!355699))))

(declare-fun lt!355696 () array!43317)

(declare-fun lt!355693 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43317 (_ BitVec 32)) SeekEntryResult!8333)

(assert (=> b!797249 (= lt!355699 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355693 lt!355696 mask!3266))))

(assert (=> b!797249 (= lt!355697 (seekEntryOrOpen!0 lt!355693 lt!355696 mask!3266))))

(assert (=> b!797249 (= lt!355693 (select (store (arr!20735 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!797249 (= lt!355696 (array!43318 (store (arr!20735 a!3170) i!1163 k!2044) (size!21156 a!3170)))))

(declare-fun b!797250 () Bool)

(assert (=> b!797250 (= e!442328 (not (or (not (= lt!355699 lt!355692)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvslt vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(assert (=> b!797250 (= lt!355699 (Found!8333 index!1236))))

(declare-fun b!797239 () Bool)

(assert (=> b!797239 (= e!442330 e!442327)))

(declare-fun res!541938 () Bool)

(assert (=> b!797239 (=> (not res!541938) (not e!442327))))

(declare-fun lt!355694 () SeekEntryResult!8333)

(assert (=> b!797239 (= res!541938 (= lt!355694 lt!355695))))

(assert (=> b!797239 (= lt!355695 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20735 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!797239 (= lt!355694 (seekEntryOrOpen!0 (select (arr!20735 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!541934 () Bool)

(assert (=> start!68576 (=> (not res!541934) (not e!442326))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68576 (= res!541934 (validMask!0 mask!3266))))

(assert (=> start!68576 e!442326))

(assert (=> start!68576 true))

(declare-fun array_inv!16509 (array!43317) Bool)

(assert (=> start!68576 (array_inv!16509 a!3170)))

(assert (= (and start!68576 res!541934) b!797241))

(assert (= (and b!797241 res!541939) b!797246))

(assert (= (and b!797246 res!541933) b!797248))

(assert (= (and b!797248 res!541930) b!797244))

(assert (= (and b!797244 res!541936) b!797242))

(assert (= (and b!797242 res!541937) b!797243))

(assert (= (and b!797243 res!541928) b!797240))

(assert (= (and b!797240 res!541932) b!797247))

(assert (= (and b!797247 res!541931) b!797249))

(assert (= (and b!797249 res!541935) b!797239))

(assert (= (and b!797239 res!541938) b!797245))

(assert (= (and b!797245 res!541929) b!797250))

(declare-fun m!738187 () Bool)

(assert (=> b!797249 m!738187))

(declare-fun m!738189 () Bool)

(assert (=> b!797249 m!738189))

(declare-fun m!738191 () Bool)

(assert (=> b!797249 m!738191))

(declare-fun m!738193 () Bool)

(assert (=> b!797249 m!738193))

(declare-fun m!738195 () Bool)

(assert (=> b!797244 m!738195))

(declare-fun m!738197 () Bool)

(assert (=> b!797242 m!738197))

(declare-fun m!738199 () Bool)

(assert (=> b!797243 m!738199))

(declare-fun m!738201 () Bool)

(assert (=> b!797247 m!738201))

(declare-fun m!738203 () Bool)

(assert (=> b!797247 m!738203))

(declare-fun m!738205 () Bool)

(assert (=> start!68576 m!738205))

(declare-fun m!738207 () Bool)

(assert (=> start!68576 m!738207))

(declare-fun m!738209 () Bool)

(assert (=> b!797240 m!738209))

(declare-fun m!738211 () Bool)

(assert (=> b!797239 m!738211))

(assert (=> b!797239 m!738211))

(declare-fun m!738213 () Bool)

(assert (=> b!797239 m!738213))

(assert (=> b!797239 m!738211))

(declare-fun m!738215 () Bool)

(assert (=> b!797239 m!738215))

(declare-fun m!738217 () Bool)

(assert (=> b!797245 m!738217))

(assert (=> b!797245 m!738211))

(assert (=> b!797246 m!738211))

(assert (=> b!797246 m!738211))

(declare-fun m!738219 () Bool)

(assert (=> b!797246 m!738219))

(declare-fun m!738221 () Bool)

(assert (=> b!797248 m!738221))

(push 1)

(assert (not b!797248))

(assert (not b!797240))

(assert (not b!797244))

(assert (not b!797239))

(assert (not b!797243))

(assert (not start!68576))

(assert (not b!797249))

(assert (not b!797242))

(assert (not b!797246))

(check-sat)

(pop 1)

(push 1)

(check-sat)

