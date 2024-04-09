; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68464 () Bool)

(assert start!68464)

(declare-fun b!795390 () Bool)

(declare-fun res!540079 () Bool)

(declare-fun e!441486 () Bool)

(assert (=> b!795390 (=> (not res!540079) (not e!441486))))

(declare-datatypes ((array!43205 0))(
  ( (array!43206 (arr!20679 (Array (_ BitVec 32) (_ BitVec 64))) (size!21100 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43205)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795390 (= res!540079 (validKeyInArray!0 (select (arr!20679 a!3170) j!153)))))

(declare-fun e!441484 () Bool)

(declare-datatypes ((SeekEntryResult!8277 0))(
  ( (MissingZero!8277 (index!35475 (_ BitVec 32))) (Found!8277 (index!35476 (_ BitVec 32))) (Intermediate!8277 (undefined!9089 Bool) (index!35477 (_ BitVec 32)) (x!66420 (_ BitVec 32))) (Undefined!8277) (MissingVacant!8277 (index!35478 (_ BitVec 32))) )
))
(declare-fun lt!354578 () SeekEntryResult!8277)

(declare-fun b!795391 () Bool)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!354579 () SeekEntryResult!8277)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!795391 (= e!441484 (and (= lt!354578 lt!354579) (= lt!354579 (Found!8277 j!153)) (= (select (arr!20679 a!3170) index!1236) (select (arr!20679 a!3170) j!153)) (bvsge mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43205 (_ BitVec 32)) SeekEntryResult!8277)

(assert (=> b!795391 (= lt!354579 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20679 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43205 (_ BitVec 32)) SeekEntryResult!8277)

(assert (=> b!795391 (= lt!354578 (seekEntryOrOpen!0 (select (arr!20679 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!795392 () Bool)

(declare-fun e!441487 () Bool)

(assert (=> b!795392 (= e!441487 e!441484)))

(declare-fun res!540081 () Bool)

(assert (=> b!795392 (=> (not res!540081) (not e!441484))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!354580 () array!43205)

(declare-fun lt!354577 () (_ BitVec 64))

(assert (=> b!795392 (= res!540081 (= (seekEntryOrOpen!0 lt!354577 lt!354580 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354577 lt!354580 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!795392 (= lt!354577 (select (store (arr!20679 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!795392 (= lt!354580 (array!43206 (store (arr!20679 a!3170) i!1163 k!2044) (size!21100 a!3170)))))

(declare-fun b!795393 () Bool)

(declare-fun res!540082 () Bool)

(assert (=> b!795393 (=> (not res!540082) (not e!441487))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43205 (_ BitVec 32)) Bool)

(assert (=> b!795393 (= res!540082 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!795394 () Bool)

(declare-fun res!540085 () Bool)

(assert (=> b!795394 (=> (not res!540085) (not e!441487))))

(declare-datatypes ((List!14695 0))(
  ( (Nil!14692) (Cons!14691 (h!15820 (_ BitVec 64)) (t!21018 List!14695)) )
))
(declare-fun arrayNoDuplicates!0 (array!43205 (_ BitVec 32) List!14695) Bool)

(assert (=> b!795394 (= res!540085 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14692))))

(declare-fun b!795395 () Bool)

(declare-fun res!540083 () Bool)

(assert (=> b!795395 (=> (not res!540083) (not e!441486))))

(declare-fun arrayContainsKey!0 (array!43205 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795395 (= res!540083 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!795396 () Bool)

(declare-fun res!540084 () Bool)

(assert (=> b!795396 (=> (not res!540084) (not e!441486))))

(assert (=> b!795396 (= res!540084 (validKeyInArray!0 k!2044))))

(declare-fun res!540080 () Bool)

(assert (=> start!68464 (=> (not res!540080) (not e!441486))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68464 (= res!540080 (validMask!0 mask!3266))))

(assert (=> start!68464 e!441486))

(assert (=> start!68464 true))

(declare-fun array_inv!16453 (array!43205) Bool)

(assert (=> start!68464 (array_inv!16453 a!3170)))

(declare-fun b!795397 () Bool)

(assert (=> b!795397 (= e!441486 e!441487)))

(declare-fun res!540086 () Bool)

(assert (=> b!795397 (=> (not res!540086) (not e!441487))))

(declare-fun lt!354576 () SeekEntryResult!8277)

(assert (=> b!795397 (= res!540086 (or (= lt!354576 (MissingZero!8277 i!1163)) (= lt!354576 (MissingVacant!8277 i!1163))))))

(assert (=> b!795397 (= lt!354576 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!795398 () Bool)

(declare-fun res!540087 () Bool)

(assert (=> b!795398 (=> (not res!540087) (not e!441486))))

(assert (=> b!795398 (= res!540087 (and (= (size!21100 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21100 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21100 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!795399 () Bool)

(declare-fun res!540088 () Bool)

(assert (=> b!795399 (=> (not res!540088) (not e!441487))))

(assert (=> b!795399 (= res!540088 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21100 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20679 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21100 a!3170)) (= (select (arr!20679 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(assert (= (and start!68464 res!540080) b!795398))

(assert (= (and b!795398 res!540087) b!795390))

(assert (= (and b!795390 res!540079) b!795396))

(assert (= (and b!795396 res!540084) b!795395))

(assert (= (and b!795395 res!540083) b!795397))

(assert (= (and b!795397 res!540086) b!795393))

(assert (= (and b!795393 res!540082) b!795394))

(assert (= (and b!795394 res!540085) b!795399))

(assert (= (and b!795399 res!540088) b!795392))

(assert (= (and b!795392 res!540081) b!795391))

(declare-fun m!736141 () Bool)

(assert (=> b!795396 m!736141))

(declare-fun m!736143 () Bool)

(assert (=> start!68464 m!736143))

(declare-fun m!736145 () Bool)

(assert (=> start!68464 m!736145))

(declare-fun m!736147 () Bool)

(assert (=> b!795391 m!736147))

(declare-fun m!736149 () Bool)

(assert (=> b!795391 m!736149))

(assert (=> b!795391 m!736149))

(declare-fun m!736151 () Bool)

(assert (=> b!795391 m!736151))

(assert (=> b!795391 m!736149))

(declare-fun m!736153 () Bool)

(assert (=> b!795391 m!736153))

(declare-fun m!736155 () Bool)

(assert (=> b!795394 m!736155))

(declare-fun m!736157 () Bool)

(assert (=> b!795392 m!736157))

(declare-fun m!736159 () Bool)

(assert (=> b!795392 m!736159))

(declare-fun m!736161 () Bool)

(assert (=> b!795392 m!736161))

(declare-fun m!736163 () Bool)

(assert (=> b!795392 m!736163))

(declare-fun m!736165 () Bool)

(assert (=> b!795397 m!736165))

(declare-fun m!736167 () Bool)

(assert (=> b!795399 m!736167))

(declare-fun m!736169 () Bool)

(assert (=> b!795399 m!736169))

(assert (=> b!795390 m!736149))

(assert (=> b!795390 m!736149))

(declare-fun m!736171 () Bool)

(assert (=> b!795390 m!736171))

(declare-fun m!736173 () Bool)

(assert (=> b!795395 m!736173))

(declare-fun m!736175 () Bool)

(assert (=> b!795393 m!736175))

(push 1)

(assert (not b!795395))

(assert (not b!795393))

(assert (not b!795396))

(assert (not start!68464))

(assert (not b!795390))

(assert (not b!795391))

(assert (not b!795394))

(assert (not b!795392))

(assert (not b!795397))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

