; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69030 () Bool)

(assert start!69030)

(declare-fun b!804925 () Bool)

(declare-fun res!549616 () Bool)

(declare-fun e!445846 () Bool)

(assert (=> b!804925 (=> (not res!549616) (not e!445846))))

(declare-datatypes ((array!43771 0))(
  ( (array!43772 (arr!20962 (Array (_ BitVec 32) (_ BitVec 64))) (size!21383 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43771)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43771 (_ BitVec 32)) Bool)

(assert (=> b!804925 (= res!549616 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804926 () Bool)

(declare-fun res!549617 () Bool)

(assert (=> b!804926 (=> (not res!549617) (not e!445846))))

(declare-datatypes ((List!14978 0))(
  ( (Nil!14975) (Cons!14974 (h!16103 (_ BitVec 64)) (t!21301 List!14978)) )
))
(declare-fun arrayNoDuplicates!0 (array!43771 (_ BitVec 32) List!14978) Bool)

(assert (=> b!804926 (= res!549617 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14975))))

(declare-fun b!804927 () Bool)

(declare-fun e!445843 () Bool)

(assert (=> b!804927 (= e!445843 e!445846)))

(declare-fun res!549614 () Bool)

(assert (=> b!804927 (=> (not res!549614) (not e!445846))))

(declare-datatypes ((SeekEntryResult!8560 0))(
  ( (MissingZero!8560 (index!36607 (_ BitVec 32))) (Found!8560 (index!36608 (_ BitVec 32))) (Intermediate!8560 (undefined!9372 Bool) (index!36609 (_ BitVec 32)) (x!67455 (_ BitVec 32))) (Undefined!8560) (MissingVacant!8560 (index!36610 (_ BitVec 32))) )
))
(declare-fun lt!360397 () SeekEntryResult!8560)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!804927 (= res!549614 (or (= lt!360397 (MissingZero!8560 i!1163)) (= lt!360397 (MissingVacant!8560 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43771 (_ BitVec 32)) SeekEntryResult!8560)

(assert (=> b!804927 (= lt!360397 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!804928 () Bool)

(declare-fun e!445844 () Bool)

(assert (=> b!804928 (= e!445844 false)))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!360396 () SeekEntryResult!8560)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43771 (_ BitVec 32)) SeekEntryResult!8560)

(assert (=> b!804928 (= lt!360396 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20962 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!360399 () SeekEntryResult!8560)

(assert (=> b!804928 (= lt!360399 (seekEntryOrOpen!0 (select (arr!20962 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!804929 () Bool)

(declare-fun res!549619 () Bool)

(assert (=> b!804929 (=> (not res!549619) (not e!445846))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!804929 (= res!549619 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21383 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20962 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21383 a!3170)) (= (select (arr!20962 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!804930 () Bool)

(declare-fun res!549621 () Bool)

(assert (=> b!804930 (=> (not res!549621) (not e!445843))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804930 (= res!549621 (validKeyInArray!0 (select (arr!20962 a!3170) j!153)))))

(declare-fun b!804931 () Bool)

(declare-fun res!549615 () Bool)

(assert (=> b!804931 (=> (not res!549615) (not e!445843))))

(assert (=> b!804931 (= res!549615 (and (= (size!21383 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21383 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21383 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!804932 () Bool)

(assert (=> b!804932 (= e!445846 e!445844)))

(declare-fun res!549622 () Bool)

(assert (=> b!804932 (=> (not res!549622) (not e!445844))))

(declare-fun lt!360400 () array!43771)

(declare-fun lt!360398 () (_ BitVec 64))

(assert (=> b!804932 (= res!549622 (= (seekEntryOrOpen!0 lt!360398 lt!360400 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360398 lt!360400 mask!3266)))))

(assert (=> b!804932 (= lt!360398 (select (store (arr!20962 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!804932 (= lt!360400 (array!43772 (store (arr!20962 a!3170) i!1163 k0!2044) (size!21383 a!3170)))))

(declare-fun b!804933 () Bool)

(declare-fun res!549620 () Bool)

(assert (=> b!804933 (=> (not res!549620) (not e!445843))))

(declare-fun arrayContainsKey!0 (array!43771 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804933 (= res!549620 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun res!549613 () Bool)

(assert (=> start!69030 (=> (not res!549613) (not e!445843))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69030 (= res!549613 (validMask!0 mask!3266))))

(assert (=> start!69030 e!445843))

(assert (=> start!69030 true))

(declare-fun array_inv!16736 (array!43771) Bool)

(assert (=> start!69030 (array_inv!16736 a!3170)))

(declare-fun b!804924 () Bool)

(declare-fun res!549618 () Bool)

(assert (=> b!804924 (=> (not res!549618) (not e!445843))))

(assert (=> b!804924 (= res!549618 (validKeyInArray!0 k0!2044))))

(assert (= (and start!69030 res!549613) b!804931))

(assert (= (and b!804931 res!549615) b!804930))

(assert (= (and b!804930 res!549621) b!804924))

(assert (= (and b!804924 res!549618) b!804933))

(assert (= (and b!804933 res!549620) b!804927))

(assert (= (and b!804927 res!549614) b!804925))

(assert (= (and b!804925 res!549616) b!804926))

(assert (= (and b!804926 res!549617) b!804929))

(assert (= (and b!804929 res!549619) b!804932))

(assert (= (and b!804932 res!549622) b!804928))

(declare-fun m!746921 () Bool)

(assert (=> b!804925 m!746921))

(declare-fun m!746923 () Bool)

(assert (=> b!804932 m!746923))

(declare-fun m!746925 () Bool)

(assert (=> b!804932 m!746925))

(declare-fun m!746927 () Bool)

(assert (=> b!804932 m!746927))

(declare-fun m!746929 () Bool)

(assert (=> b!804932 m!746929))

(declare-fun m!746931 () Bool)

(assert (=> b!804930 m!746931))

(assert (=> b!804930 m!746931))

(declare-fun m!746933 () Bool)

(assert (=> b!804930 m!746933))

(declare-fun m!746935 () Bool)

(assert (=> b!804929 m!746935))

(declare-fun m!746937 () Bool)

(assert (=> b!804929 m!746937))

(declare-fun m!746939 () Bool)

(assert (=> start!69030 m!746939))

(declare-fun m!746941 () Bool)

(assert (=> start!69030 m!746941))

(declare-fun m!746943 () Bool)

(assert (=> b!804927 m!746943))

(declare-fun m!746945 () Bool)

(assert (=> b!804926 m!746945))

(declare-fun m!746947 () Bool)

(assert (=> b!804933 m!746947))

(assert (=> b!804928 m!746931))

(assert (=> b!804928 m!746931))

(declare-fun m!746949 () Bool)

(assert (=> b!804928 m!746949))

(assert (=> b!804928 m!746931))

(declare-fun m!746951 () Bool)

(assert (=> b!804928 m!746951))

(declare-fun m!746953 () Bool)

(assert (=> b!804924 m!746953))

(check-sat (not b!804927) (not start!69030) (not b!804924) (not b!804930) (not b!804933) (not b!804932) (not b!804925) (not b!804928) (not b!804926))
(check-sat)
