; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68314 () Bool)

(assert start!68314)

(declare-fun b!793208 () Bool)

(declare-fun res!537899 () Bool)

(declare-fun e!440674 () Bool)

(assert (=> b!793208 (=> (not res!537899) (not e!440674))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793208 (= res!537899 (validKeyInArray!0 k!2044))))

(declare-fun b!793209 () Bool)

(declare-fun res!537904 () Bool)

(assert (=> b!793209 (=> (not res!537904) (not e!440674))))

(declare-datatypes ((array!43055 0))(
  ( (array!43056 (arr!20604 (Array (_ BitVec 32) (_ BitVec 64))) (size!21025 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43055)

(declare-fun arrayContainsKey!0 (array!43055 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793209 (= res!537904 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun b!793210 () Bool)

(declare-fun e!440672 () Bool)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!793210 (= e!440672 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21025 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20604 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21025 a!3170)) (= (select (arr!20604 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23)) (bvsge mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvslt vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (not (= (select (store (arr!20604 a!3170) i!1163 k!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!793211 () Bool)

(declare-fun res!537901 () Bool)

(assert (=> b!793211 (=> (not res!537901) (not e!440674))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!793211 (= res!537901 (validKeyInArray!0 (select (arr!20604 a!3170) j!153)))))

(declare-fun res!537900 () Bool)

(assert (=> start!68314 (=> (not res!537900) (not e!440674))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68314 (= res!537900 (validMask!0 mask!3266))))

(assert (=> start!68314 e!440674))

(assert (=> start!68314 true))

(declare-fun array_inv!16378 (array!43055) Bool)

(assert (=> start!68314 (array_inv!16378 a!3170)))

(declare-fun b!793212 () Bool)

(assert (=> b!793212 (= e!440674 e!440672)))

(declare-fun res!537897 () Bool)

(assert (=> b!793212 (=> (not res!537897) (not e!440672))))

(declare-datatypes ((SeekEntryResult!8202 0))(
  ( (MissingZero!8202 (index!35175 (_ BitVec 32))) (Found!8202 (index!35176 (_ BitVec 32))) (Intermediate!8202 (undefined!9014 Bool) (index!35177 (_ BitVec 32)) (x!66145 (_ BitVec 32))) (Undefined!8202) (MissingVacant!8202 (index!35178 (_ BitVec 32))) )
))
(declare-fun lt!353641 () SeekEntryResult!8202)

(assert (=> b!793212 (= res!537897 (or (= lt!353641 (MissingZero!8202 i!1163)) (= lt!353641 (MissingVacant!8202 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43055 (_ BitVec 32)) SeekEntryResult!8202)

(assert (=> b!793212 (= lt!353641 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!793213 () Bool)

(declare-fun res!537903 () Bool)

(assert (=> b!793213 (=> (not res!537903) (not e!440672))))

(declare-datatypes ((List!14620 0))(
  ( (Nil!14617) (Cons!14616 (h!15745 (_ BitVec 64)) (t!20943 List!14620)) )
))
(declare-fun arrayNoDuplicates!0 (array!43055 (_ BitVec 32) List!14620) Bool)

(assert (=> b!793213 (= res!537903 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14617))))

(declare-fun b!793214 () Bool)

(declare-fun res!537898 () Bool)

(assert (=> b!793214 (=> (not res!537898) (not e!440672))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43055 (_ BitVec 32)) Bool)

(assert (=> b!793214 (= res!537898 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!793215 () Bool)

(declare-fun res!537902 () Bool)

(assert (=> b!793215 (=> (not res!537902) (not e!440674))))

(assert (=> b!793215 (= res!537902 (and (= (size!21025 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21025 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21025 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68314 res!537900) b!793215))

(assert (= (and b!793215 res!537902) b!793211))

(assert (= (and b!793211 res!537901) b!793208))

(assert (= (and b!793208 res!537899) b!793209))

(assert (= (and b!793209 res!537904) b!793212))

(assert (= (and b!793212 res!537897) b!793214))

(assert (= (and b!793214 res!537898) b!793213))

(assert (= (and b!793213 res!537903) b!793210))

(declare-fun m!733765 () Bool)

(assert (=> b!793211 m!733765))

(assert (=> b!793211 m!733765))

(declare-fun m!733767 () Bool)

(assert (=> b!793211 m!733767))

(declare-fun m!733769 () Bool)

(assert (=> b!793208 m!733769))

(declare-fun m!733771 () Bool)

(assert (=> start!68314 m!733771))

(declare-fun m!733773 () Bool)

(assert (=> start!68314 m!733773))

(declare-fun m!733775 () Bool)

(assert (=> b!793212 m!733775))

(declare-fun m!733777 () Bool)

(assert (=> b!793213 m!733777))

(declare-fun m!733779 () Bool)

(assert (=> b!793209 m!733779))

(declare-fun m!733781 () Bool)

(assert (=> b!793210 m!733781))

(declare-fun m!733783 () Bool)

(assert (=> b!793210 m!733783))

(declare-fun m!733785 () Bool)

(assert (=> b!793210 m!733785))

(declare-fun m!733787 () Bool)

(assert (=> b!793210 m!733787))

(declare-fun m!733789 () Bool)

(assert (=> b!793214 m!733789))

(push 1)

(assert (not b!793213))

(assert (not b!793211))

(assert (not b!793208))

(assert (not b!793209))

(assert (not b!793214))

(assert (not start!68314))

(assert (not b!793212))

