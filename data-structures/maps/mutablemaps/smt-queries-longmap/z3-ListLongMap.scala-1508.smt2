; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28590 () Bool)

(assert start!28590)

(declare-fun b!292157 () Bool)

(declare-fun e!184864 () Bool)

(declare-fun e!184867 () Bool)

(assert (=> b!292157 (= e!184864 e!184867)))

(declare-fun res!153255 () Bool)

(assert (=> b!292157 (=> (not res!153255) (not e!184867))))

(declare-fun lt!144668 () Bool)

(declare-datatypes ((SeekEntryResult!2161 0))(
  ( (MissingZero!2161 (index!10814 (_ BitVec 32))) (Found!2161 (index!10815 (_ BitVec 32))) (Intermediate!2161 (undefined!2973 Bool) (index!10816 (_ BitVec 32)) (x!28976 (_ BitVec 32))) (Undefined!2161) (MissingVacant!2161 (index!10817 (_ BitVec 32))) )
))
(declare-fun lt!144671 () SeekEntryResult!2161)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!292157 (= res!153255 (and (not lt!144668) (= lt!144671 (MissingVacant!2161 i!1256))))))

(declare-fun lt!144672 () (_ BitVec 32))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun lt!144674 () SeekEntryResult!2161)

(declare-datatypes ((array!14758 0))(
  ( (array!14759 (arr!7001 (Array (_ BitVec 32) (_ BitVec 64))) (size!7353 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14758)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14758 (_ BitVec 32)) SeekEntryResult!2161)

(assert (=> b!292157 (= lt!144674 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144672 k0!2524 (array!14759 (store (arr!7001 a!3312) i!1256 k0!2524) (size!7353 a!3312)) mask!3809))))

(declare-fun lt!144669 () SeekEntryResult!2161)

(assert (=> b!292157 (= lt!144669 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144672 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292157 (= lt!144672 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!292158 () Bool)

(declare-fun e!184865 () Bool)

(assert (=> b!292158 (= e!184865 (not (bvsge mask!3809 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!9153 0))(
  ( (Unit!9154) )
))
(declare-fun lt!144673 () Unit!9153)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!14758 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9153)

(assert (=> b!292158 (= lt!144673 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3312 i!1256 k0!2524 #b00000000000000000000000000000000 lt!144672 (index!10816 lt!144669) (x!28976 lt!144669) mask!3809))))

(assert (=> b!292158 (= (index!10816 lt!144669) i!1256)))

(declare-fun b!292159 () Bool)

(declare-fun res!153252 () Bool)

(declare-fun e!184863 () Bool)

(assert (=> b!292159 (=> (not res!153252) (not e!184863))))

(assert (=> b!292159 (= res!153252 (and (= (size!7353 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7353 a!3312))))))

(declare-fun b!292160 () Bool)

(assert (=> b!292160 (= e!184867 e!184865)))

(declare-fun res!153258 () Bool)

(assert (=> b!292160 (=> (not res!153258) (not e!184865))))

(declare-fun lt!144670 () Bool)

(assert (=> b!292160 (= res!153258 (and (or lt!144670 (not (undefined!2973 lt!144669))) (not lt!144670) (= (select (arr!7001 a!3312) (index!10816 lt!144669)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(get-info :version)

(assert (=> b!292160 (= lt!144670 (not ((_ is Intermediate!2161) lt!144669)))))

(declare-fun b!292161 () Bool)

(assert (=> b!292161 (= e!184863 e!184864)))

(declare-fun res!153256 () Bool)

(assert (=> b!292161 (=> (not res!153256) (not e!184864))))

(assert (=> b!292161 (= res!153256 (or lt!144668 (= lt!144671 (MissingVacant!2161 i!1256))))))

(assert (=> b!292161 (= lt!144668 (= lt!144671 (MissingZero!2161 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14758 (_ BitVec 32)) SeekEntryResult!2161)

(assert (=> b!292161 (= lt!144671 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!292162 () Bool)

(declare-fun res!153257 () Bool)

(assert (=> b!292162 (=> (not res!153257) (not e!184863))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292162 (= res!153257 (validKeyInArray!0 k0!2524))))

(declare-fun b!292163 () Bool)

(declare-fun res!153254 () Bool)

(assert (=> b!292163 (=> (not res!153254) (not e!184864))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14758 (_ BitVec 32)) Bool)

(assert (=> b!292163 (= res!153254 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!153253 () Bool)

(assert (=> start!28590 (=> (not res!153253) (not e!184863))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28590 (= res!153253 (validMask!0 mask!3809))))

(assert (=> start!28590 e!184863))

(assert (=> start!28590 true))

(declare-fun array_inv!4955 (array!14758) Bool)

(assert (=> start!28590 (array_inv!4955 a!3312)))

(declare-fun b!292164 () Bool)

(declare-fun res!153251 () Bool)

(assert (=> b!292164 (=> (not res!153251) (not e!184863))))

(declare-fun arrayContainsKey!0 (array!14758 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292164 (= res!153251 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28590 res!153253) b!292159))

(assert (= (and b!292159 res!153252) b!292162))

(assert (= (and b!292162 res!153257) b!292164))

(assert (= (and b!292164 res!153251) b!292161))

(assert (= (and b!292161 res!153256) b!292163))

(assert (= (and b!292163 res!153254) b!292157))

(assert (= (and b!292157 res!153255) b!292160))

(assert (= (and b!292160 res!153258) b!292158))

(declare-fun m!305923 () Bool)

(assert (=> start!28590 m!305923))

(declare-fun m!305925 () Bool)

(assert (=> start!28590 m!305925))

(declare-fun m!305927 () Bool)

(assert (=> b!292164 m!305927))

(declare-fun m!305929 () Bool)

(assert (=> b!292158 m!305929))

(declare-fun m!305931 () Bool)

(assert (=> b!292161 m!305931))

(declare-fun m!305933 () Bool)

(assert (=> b!292162 m!305933))

(declare-fun m!305935 () Bool)

(assert (=> b!292157 m!305935))

(declare-fun m!305937 () Bool)

(assert (=> b!292157 m!305937))

(declare-fun m!305939 () Bool)

(assert (=> b!292157 m!305939))

(declare-fun m!305941 () Bool)

(assert (=> b!292157 m!305941))

(declare-fun m!305943 () Bool)

(assert (=> b!292163 m!305943))

(declare-fun m!305945 () Bool)

(assert (=> b!292160 m!305945))

(check-sat (not start!28590) (not b!292162) (not b!292164) (not b!292157) (not b!292161) (not b!292163) (not b!292158))
(check-sat)
