; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86242 () Bool)

(assert start!86242)

(declare-fun b!997969 () Bool)

(declare-fun res!667923 () Bool)

(declare-fun e!562882 () Bool)

(assert (=> b!997969 (=> (not res!667923) (not e!562882))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!997969 (= res!667923 (validKeyInArray!0 k!2224))))

(declare-fun b!997970 () Bool)

(declare-fun res!667926 () Bool)

(declare-fun e!562881 () Bool)

(assert (=> b!997970 (=> (not res!667926) (not e!562881))))

(declare-datatypes ((array!63097 0))(
  ( (array!63098 (arr!30373 (Array (_ BitVec 32) (_ BitVec 64))) (size!30876 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63097)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63097 (_ BitVec 32)) Bool)

(assert (=> b!997970 (= res!667926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!997971 () Bool)

(assert (=> b!997971 (= e!562881 false)))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9305 0))(
  ( (MissingZero!9305 (index!39590 (_ BitVec 32))) (Found!9305 (index!39591 (_ BitVec 32))) (Intermediate!9305 (undefined!10117 Bool) (index!39592 (_ BitVec 32)) (x!87058 (_ BitVec 32))) (Undefined!9305) (MissingVacant!9305 (index!39593 (_ BitVec 32))) )
))
(declare-fun lt!441584 () SeekEntryResult!9305)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63097 (_ BitVec 32)) SeekEntryResult!9305)

(assert (=> b!997971 (= lt!441584 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30373 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!997972 () Bool)

(declare-fun res!667922 () Bool)

(assert (=> b!997972 (=> (not res!667922) (not e!562882))))

(declare-fun arrayContainsKey!0 (array!63097 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!997972 (= res!667922 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!997973 () Bool)

(assert (=> b!997973 (= e!562882 e!562881)))

(declare-fun res!667925 () Bool)

(assert (=> b!997973 (=> (not res!667925) (not e!562881))))

(declare-fun lt!441585 () SeekEntryResult!9305)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!997973 (= res!667925 (or (= lt!441585 (MissingVacant!9305 i!1194)) (= lt!441585 (MissingZero!9305 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63097 (_ BitVec 32)) SeekEntryResult!9305)

(assert (=> b!997973 (= lt!441585 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!997974 () Bool)

(declare-fun res!667929 () Bool)

(assert (=> b!997974 (=> (not res!667929) (not e!562881))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!997974 (= res!667929 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30876 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30876 a!3219))))))

(declare-fun b!997975 () Bool)

(declare-fun res!667921 () Bool)

(assert (=> b!997975 (=> (not res!667921) (not e!562882))))

(assert (=> b!997975 (= res!667921 (validKeyInArray!0 (select (arr!30373 a!3219) j!170)))))

(declare-fun b!997976 () Bool)

(declare-fun res!667930 () Bool)

(assert (=> b!997976 (=> (not res!667930) (not e!562881))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!997976 (= res!667930 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30373 a!3219) j!170) mask!3464) (select (arr!30373 a!3219) j!170) a!3219 mask!3464) (Intermediate!9305 false resIndex!38 resX!38)))))

(declare-fun res!667928 () Bool)

(assert (=> start!86242 (=> (not res!667928) (not e!562882))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86242 (= res!667928 (validMask!0 mask!3464))))

(assert (=> start!86242 e!562882))

(declare-fun array_inv!23363 (array!63097) Bool)

(assert (=> start!86242 (array_inv!23363 a!3219)))

(assert (=> start!86242 true))

(declare-fun b!997977 () Bool)

(declare-fun res!667924 () Bool)

(assert (=> b!997977 (=> (not res!667924) (not e!562882))))

(assert (=> b!997977 (= res!667924 (and (= (size!30876 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30876 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30876 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!997978 () Bool)

(declare-fun res!667927 () Bool)

(assert (=> b!997978 (=> (not res!667927) (not e!562881))))

(declare-datatypes ((List!21175 0))(
  ( (Nil!21172) (Cons!21171 (h!22342 (_ BitVec 64)) (t!30184 List!21175)) )
))
(declare-fun arrayNoDuplicates!0 (array!63097 (_ BitVec 32) List!21175) Bool)

(assert (=> b!997978 (= res!667927 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21172))))

(assert (= (and start!86242 res!667928) b!997977))

(assert (= (and b!997977 res!667924) b!997975))

(assert (= (and b!997975 res!667921) b!997969))

(assert (= (and b!997969 res!667923) b!997972))

(assert (= (and b!997972 res!667922) b!997973))

(assert (= (and b!997973 res!667925) b!997970))

(assert (= (and b!997970 res!667926) b!997978))

(assert (= (and b!997978 res!667927) b!997974))

(assert (= (and b!997974 res!667929) b!997976))

(assert (= (and b!997976 res!667930) b!997971))

(declare-fun m!924693 () Bool)

(assert (=> start!86242 m!924693))

(declare-fun m!924695 () Bool)

(assert (=> start!86242 m!924695))

(declare-fun m!924697 () Bool)

(assert (=> b!997970 m!924697))

(declare-fun m!924699 () Bool)

(assert (=> b!997976 m!924699))

(assert (=> b!997976 m!924699))

(declare-fun m!924701 () Bool)

(assert (=> b!997976 m!924701))

(assert (=> b!997976 m!924701))

(assert (=> b!997976 m!924699))

(declare-fun m!924703 () Bool)

(assert (=> b!997976 m!924703))

(declare-fun m!924705 () Bool)

(assert (=> b!997972 m!924705))

(assert (=> b!997971 m!924699))

(assert (=> b!997971 m!924699))

(declare-fun m!924707 () Bool)

(assert (=> b!997971 m!924707))

(assert (=> b!997975 m!924699))

(assert (=> b!997975 m!924699))

(declare-fun m!924709 () Bool)

(assert (=> b!997975 m!924709))

(declare-fun m!924711 () Bool)

(assert (=> b!997973 m!924711))

(declare-fun m!924713 () Bool)

(assert (=> b!997969 m!924713))

(declare-fun m!924715 () Bool)

(assert (=> b!997978 m!924715))

(push 1)

