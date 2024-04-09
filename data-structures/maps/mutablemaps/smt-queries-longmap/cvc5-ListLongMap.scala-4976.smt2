; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68386 () Bool)

(assert start!68386)

(declare-fun b!794209 () Bool)

(declare-fun res!538903 () Bool)

(declare-fun e!441032 () Bool)

(assert (=> b!794209 (=> (not res!538903) (not e!441032))))

(declare-datatypes ((array!43127 0))(
  ( (array!43128 (arr!20640 (Array (_ BitVec 32) (_ BitVec 64))) (size!21061 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43127)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794209 (= res!538903 (validKeyInArray!0 (select (arr!20640 a!3170) j!153)))))

(declare-fun b!794210 () Bool)

(declare-fun e!441033 () Bool)

(assert (=> b!794210 (= e!441033 false)))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!354047 () array!43127)

(declare-datatypes ((SeekEntryResult!8238 0))(
  ( (MissingZero!8238 (index!35319 (_ BitVec 32))) (Found!8238 (index!35320 (_ BitVec 32))) (Intermediate!8238 (undefined!9050 Bool) (index!35321 (_ BitVec 32)) (x!66277 (_ BitVec 32))) (Undefined!8238) (MissingVacant!8238 (index!35322 (_ BitVec 32))) )
))
(declare-fun lt!354046 () SeekEntryResult!8238)

(declare-fun lt!354048 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43127 (_ BitVec 32)) SeekEntryResult!8238)

(assert (=> b!794210 (= lt!354046 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354048 lt!354047 mask!3266))))

(declare-fun lt!354049 () SeekEntryResult!8238)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43127 (_ BitVec 32)) SeekEntryResult!8238)

(assert (=> b!794210 (= lt!354049 (seekEntryOrOpen!0 lt!354048 lt!354047 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!794210 (= lt!354048 (select (store (arr!20640 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!794210 (= lt!354047 (array!43128 (store (arr!20640 a!3170) i!1163 k!2044) (size!21061 a!3170)))))

(declare-fun b!794211 () Bool)

(declare-fun res!538900 () Bool)

(assert (=> b!794211 (=> (not res!538900) (not e!441033))))

(declare-datatypes ((List!14656 0))(
  ( (Nil!14653) (Cons!14652 (h!15781 (_ BitVec 64)) (t!20979 List!14656)) )
))
(declare-fun arrayNoDuplicates!0 (array!43127 (_ BitVec 32) List!14656) Bool)

(assert (=> b!794211 (= res!538900 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14653))))

(declare-fun b!794212 () Bool)

(assert (=> b!794212 (= e!441032 e!441033)))

(declare-fun res!538904 () Bool)

(assert (=> b!794212 (=> (not res!538904) (not e!441033))))

(declare-fun lt!354045 () SeekEntryResult!8238)

(assert (=> b!794212 (= res!538904 (or (= lt!354045 (MissingZero!8238 i!1163)) (= lt!354045 (MissingVacant!8238 i!1163))))))

(assert (=> b!794212 (= lt!354045 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!538906 () Bool)

(assert (=> start!68386 (=> (not res!538906) (not e!441032))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68386 (= res!538906 (validMask!0 mask!3266))))

(assert (=> start!68386 e!441032))

(assert (=> start!68386 true))

(declare-fun array_inv!16414 (array!43127) Bool)

(assert (=> start!68386 (array_inv!16414 a!3170)))

(declare-fun b!794213 () Bool)

(declare-fun res!538898 () Bool)

(assert (=> b!794213 (=> (not res!538898) (not e!441032))))

(declare-fun arrayContainsKey!0 (array!43127 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794213 (= res!538898 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!794214 () Bool)

(declare-fun res!538905 () Bool)

(assert (=> b!794214 (=> (not res!538905) (not e!441033))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!794214 (= res!538905 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21061 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20640 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21061 a!3170)) (= (select (arr!20640 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!794215 () Bool)

(declare-fun res!538901 () Bool)

(assert (=> b!794215 (=> (not res!538901) (not e!441032))))

(assert (=> b!794215 (= res!538901 (validKeyInArray!0 k!2044))))

(declare-fun b!794216 () Bool)

(declare-fun res!538899 () Bool)

(assert (=> b!794216 (=> (not res!538899) (not e!441033))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43127 (_ BitVec 32)) Bool)

(assert (=> b!794216 (= res!538899 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!794217 () Bool)

(declare-fun res!538902 () Bool)

(assert (=> b!794217 (=> (not res!538902) (not e!441032))))

(assert (=> b!794217 (= res!538902 (and (= (size!21061 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21061 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21061 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68386 res!538906) b!794217))

(assert (= (and b!794217 res!538902) b!794209))

(assert (= (and b!794209 res!538903) b!794215))

(assert (= (and b!794215 res!538901) b!794213))

(assert (= (and b!794213 res!538898) b!794212))

(assert (= (and b!794212 res!538904) b!794216))

(assert (= (and b!794216 res!538899) b!794211))

(assert (= (and b!794211 res!538900) b!794214))

(assert (= (and b!794214 res!538905) b!794210))

(declare-fun m!734833 () Bool)

(assert (=> b!794211 m!734833))

(declare-fun m!734835 () Bool)

(assert (=> b!794214 m!734835))

(declare-fun m!734837 () Bool)

(assert (=> b!794214 m!734837))

(declare-fun m!734839 () Bool)

(assert (=> b!794216 m!734839))

(declare-fun m!734841 () Bool)

(assert (=> start!68386 m!734841))

(declare-fun m!734843 () Bool)

(assert (=> start!68386 m!734843))

(declare-fun m!734845 () Bool)

(assert (=> b!794213 m!734845))

(declare-fun m!734847 () Bool)

(assert (=> b!794210 m!734847))

(declare-fun m!734849 () Bool)

(assert (=> b!794210 m!734849))

(declare-fun m!734851 () Bool)

(assert (=> b!794210 m!734851))

(declare-fun m!734853 () Bool)

(assert (=> b!794210 m!734853))

(declare-fun m!734855 () Bool)

(assert (=> b!794215 m!734855))

(declare-fun m!734857 () Bool)

(assert (=> b!794212 m!734857))

(declare-fun m!734859 () Bool)

(assert (=> b!794209 m!734859))

(assert (=> b!794209 m!734859))

(declare-fun m!734861 () Bool)

(assert (=> b!794209 m!734861))

(push 1)

