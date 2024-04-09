; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68388 () Bool)

(assert start!68388)

(declare-fun b!794236 () Bool)

(declare-fun res!538925 () Bool)

(declare-fun e!441041 () Bool)

(assert (=> b!794236 (=> (not res!538925) (not e!441041))))

(declare-datatypes ((array!43129 0))(
  ( (array!43130 (arr!20641 (Array (_ BitVec 32) (_ BitVec 64))) (size!21062 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43129)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794236 (= res!538925 (validKeyInArray!0 (select (arr!20641 a!3170) j!153)))))

(declare-fun b!794237 () Bool)

(declare-fun res!538927 () Bool)

(declare-fun e!441043 () Bool)

(assert (=> b!794237 (=> (not res!538927) (not e!441043))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43129 (_ BitVec 32)) Bool)

(assert (=> b!794237 (= res!538927 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!794238 () Bool)

(assert (=> b!794238 (= e!441041 e!441043)))

(declare-fun res!538928 () Bool)

(assert (=> b!794238 (=> (not res!538928) (not e!441043))))

(declare-datatypes ((SeekEntryResult!8239 0))(
  ( (MissingZero!8239 (index!35323 (_ BitVec 32))) (Found!8239 (index!35324 (_ BitVec 32))) (Intermediate!8239 (undefined!9051 Bool) (index!35325 (_ BitVec 32)) (x!66278 (_ BitVec 32))) (Undefined!8239) (MissingVacant!8239 (index!35326 (_ BitVec 32))) )
))
(declare-fun lt!354064 () SeekEntryResult!8239)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!794238 (= res!538928 (or (= lt!354064 (MissingZero!8239 i!1163)) (= lt!354064 (MissingVacant!8239 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43129 (_ BitVec 32)) SeekEntryResult!8239)

(assert (=> b!794238 (= lt!354064 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!794239 () Bool)

(declare-fun res!538926 () Bool)

(assert (=> b!794239 (=> (not res!538926) (not e!441041))))

(assert (=> b!794239 (= res!538926 (validKeyInArray!0 k0!2044))))

(declare-fun res!538933 () Bool)

(assert (=> start!68388 (=> (not res!538933) (not e!441041))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68388 (= res!538933 (validMask!0 mask!3266))))

(assert (=> start!68388 e!441041))

(assert (=> start!68388 true))

(declare-fun array_inv!16415 (array!43129) Bool)

(assert (=> start!68388 (array_inv!16415 a!3170)))

(declare-fun b!794240 () Bool)

(declare-fun res!538931 () Bool)

(assert (=> b!794240 (=> (not res!538931) (not e!441041))))

(declare-fun arrayContainsKey!0 (array!43129 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794240 (= res!538931 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!794241 () Bool)

(assert (=> b!794241 (= e!441043 false)))

(declare-fun lt!354060 () SeekEntryResult!8239)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!354061 () array!43129)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!354063 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43129 (_ BitVec 32)) SeekEntryResult!8239)

(assert (=> b!794241 (= lt!354060 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354063 lt!354061 mask!3266))))

(declare-fun lt!354062 () SeekEntryResult!8239)

(assert (=> b!794241 (= lt!354062 (seekEntryOrOpen!0 lt!354063 lt!354061 mask!3266))))

(assert (=> b!794241 (= lt!354063 (select (store (arr!20641 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!794241 (= lt!354061 (array!43130 (store (arr!20641 a!3170) i!1163 k0!2044) (size!21062 a!3170)))))

(declare-fun b!794242 () Bool)

(declare-fun res!538930 () Bool)

(assert (=> b!794242 (=> (not res!538930) (not e!441043))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!794242 (= res!538930 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21062 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20641 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21062 a!3170)) (= (select (arr!20641 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!794243 () Bool)

(declare-fun res!538929 () Bool)

(assert (=> b!794243 (=> (not res!538929) (not e!441041))))

(assert (=> b!794243 (= res!538929 (and (= (size!21062 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21062 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21062 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!794244 () Bool)

(declare-fun res!538932 () Bool)

(assert (=> b!794244 (=> (not res!538932) (not e!441043))))

(declare-datatypes ((List!14657 0))(
  ( (Nil!14654) (Cons!14653 (h!15782 (_ BitVec 64)) (t!20980 List!14657)) )
))
(declare-fun arrayNoDuplicates!0 (array!43129 (_ BitVec 32) List!14657) Bool)

(assert (=> b!794244 (= res!538932 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14654))))

(assert (= (and start!68388 res!538933) b!794243))

(assert (= (and b!794243 res!538929) b!794236))

(assert (= (and b!794236 res!538925) b!794239))

(assert (= (and b!794239 res!538926) b!794240))

(assert (= (and b!794240 res!538931) b!794238))

(assert (= (and b!794238 res!538928) b!794237))

(assert (= (and b!794237 res!538927) b!794244))

(assert (= (and b!794244 res!538932) b!794242))

(assert (= (and b!794242 res!538930) b!794241))

(declare-fun m!734863 () Bool)

(assert (=> b!794236 m!734863))

(assert (=> b!794236 m!734863))

(declare-fun m!734865 () Bool)

(assert (=> b!794236 m!734865))

(declare-fun m!734867 () Bool)

(assert (=> start!68388 m!734867))

(declare-fun m!734869 () Bool)

(assert (=> start!68388 m!734869))

(declare-fun m!734871 () Bool)

(assert (=> b!794244 m!734871))

(declare-fun m!734873 () Bool)

(assert (=> b!794241 m!734873))

(declare-fun m!734875 () Bool)

(assert (=> b!794241 m!734875))

(declare-fun m!734877 () Bool)

(assert (=> b!794241 m!734877))

(declare-fun m!734879 () Bool)

(assert (=> b!794241 m!734879))

(declare-fun m!734881 () Bool)

(assert (=> b!794239 m!734881))

(declare-fun m!734883 () Bool)

(assert (=> b!794237 m!734883))

(declare-fun m!734885 () Bool)

(assert (=> b!794240 m!734885))

(declare-fun m!734887 () Bool)

(assert (=> b!794242 m!734887))

(declare-fun m!734889 () Bool)

(assert (=> b!794242 m!734889))

(declare-fun m!734891 () Bool)

(assert (=> b!794238 m!734891))

(check-sat (not b!794239) (not b!794238) (not start!68388) (not b!794237) (not b!794241) (not b!794244) (not b!794240) (not b!794236))
(check-sat)
