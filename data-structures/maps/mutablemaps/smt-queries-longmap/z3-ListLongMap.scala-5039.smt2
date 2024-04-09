; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68766 () Bool)

(assert start!68766)

(declare-fun b!800709 () Bool)

(declare-fun e!443932 () Bool)

(declare-fun e!443931 () Bool)

(assert (=> b!800709 (= e!443932 e!443931)))

(declare-fun res!545404 () Bool)

(assert (=> b!800709 (=> (not res!545404) (not e!443931))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43507 0))(
  ( (array!43508 (arr!20830 (Array (_ BitVec 32) (_ BitVec 64))) (size!21251 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43507)

(declare-fun lt!357826 () (_ BitVec 32))

(assert (=> b!800709 (= res!545404 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357826 #b00000000000000000000000000000000) (bvslt lt!357826 (size!21251 a!3170))))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!800709 (= lt!357826 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!800710 () Bool)

(declare-fun res!545407 () Bool)

(assert (=> b!800710 (=> (not res!545407) (not e!443931))))

(declare-fun lt!357821 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!357819 () array!43507)

(declare-datatypes ((SeekEntryResult!8428 0))(
  ( (MissingZero!8428 (index!36079 (_ BitVec 32))) (Found!8428 (index!36080 (_ BitVec 32))) (Intermediate!8428 (undefined!9240 Bool) (index!36081 (_ BitVec 32)) (x!66971 (_ BitVec 32))) (Undefined!8428) (MissingVacant!8428 (index!36082 (_ BitVec 32))) )
))
(declare-fun lt!357820 () SeekEntryResult!8428)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43507 (_ BitVec 32)) SeekEntryResult!8428)

(assert (=> b!800710 (= res!545407 (= lt!357820 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357826 vacantAfter!23 lt!357821 lt!357819 mask!3266)))))

(declare-fun b!800711 () Bool)

(declare-fun res!545405 () Bool)

(declare-fun e!443929 () Bool)

(assert (=> b!800711 (=> (not res!545405) (not e!443929))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!800711 (= res!545405 (validKeyInArray!0 (select (arr!20830 a!3170) j!153)))))

(declare-fun b!800712 () Bool)

(declare-fun res!545399 () Bool)

(declare-fun e!443927 () Bool)

(assert (=> b!800712 (=> (not res!545399) (not e!443927))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!800712 (= res!545399 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21251 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20830 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21251 a!3170)) (= (select (arr!20830 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!800713 () Bool)

(declare-fun res!545406 () Bool)

(assert (=> b!800713 (=> (not res!545406) (not e!443929))))

(assert (=> b!800713 (= res!545406 (and (= (size!21251 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21251 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21251 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!800714 () Bool)

(assert (=> b!800714 (= e!443929 e!443927)))

(declare-fun res!545409 () Bool)

(assert (=> b!800714 (=> (not res!545409) (not e!443927))))

(declare-fun lt!357823 () SeekEntryResult!8428)

(assert (=> b!800714 (= res!545409 (or (= lt!357823 (MissingZero!8428 i!1163)) (= lt!357823 (MissingVacant!8428 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43507 (_ BitVec 32)) SeekEntryResult!8428)

(assert (=> b!800714 (= lt!357823 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!800715 () Bool)

(declare-fun e!443928 () Bool)

(assert (=> b!800715 (= e!443928 e!443932)))

(declare-fun res!545403 () Bool)

(assert (=> b!800715 (=> (not res!545403) (not e!443932))))

(declare-fun lt!357822 () SeekEntryResult!8428)

(declare-fun lt!357824 () SeekEntryResult!8428)

(assert (=> b!800715 (= res!545403 (and (= lt!357824 lt!357822) (= lt!357822 (Found!8428 j!153)) (not (= (select (arr!20830 a!3170) index!1236) (select (arr!20830 a!3170) j!153)))))))

(assert (=> b!800715 (= lt!357822 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20830 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!800715 (= lt!357824 (seekEntryOrOpen!0 (select (arr!20830 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800716 () Bool)

(declare-fun res!545408 () Bool)

(assert (=> b!800716 (=> (not res!545408) (not e!443929))))

(declare-fun arrayContainsKey!0 (array!43507 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!800716 (= res!545408 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!800717 () Bool)

(assert (=> b!800717 (= e!443931 false)))

(declare-fun lt!357825 () SeekEntryResult!8428)

(assert (=> b!800717 (= lt!357825 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357826 vacantBefore!23 (select (arr!20830 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800718 () Bool)

(declare-fun res!545401 () Bool)

(assert (=> b!800718 (=> (not res!545401) (not e!443929))))

(assert (=> b!800718 (= res!545401 (validKeyInArray!0 k0!2044))))

(declare-fun b!800720 () Bool)

(assert (=> b!800720 (= e!443927 e!443928)))

(declare-fun res!545410 () Bool)

(assert (=> b!800720 (=> (not res!545410) (not e!443928))))

(assert (=> b!800720 (= res!545410 (= lt!357820 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357821 lt!357819 mask!3266)))))

(assert (=> b!800720 (= lt!357820 (seekEntryOrOpen!0 lt!357821 lt!357819 mask!3266))))

(assert (=> b!800720 (= lt!357821 (select (store (arr!20830 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!800720 (= lt!357819 (array!43508 (store (arr!20830 a!3170) i!1163 k0!2044) (size!21251 a!3170)))))

(declare-fun b!800721 () Bool)

(declare-fun res!545402 () Bool)

(assert (=> b!800721 (=> (not res!545402) (not e!443927))))

(declare-datatypes ((List!14846 0))(
  ( (Nil!14843) (Cons!14842 (h!15971 (_ BitVec 64)) (t!21169 List!14846)) )
))
(declare-fun arrayNoDuplicates!0 (array!43507 (_ BitVec 32) List!14846) Bool)

(assert (=> b!800721 (= res!545402 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14843))))

(declare-fun b!800719 () Bool)

(declare-fun res!545398 () Bool)

(assert (=> b!800719 (=> (not res!545398) (not e!443927))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43507 (_ BitVec 32)) Bool)

(assert (=> b!800719 (= res!545398 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!545400 () Bool)

(assert (=> start!68766 (=> (not res!545400) (not e!443929))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68766 (= res!545400 (validMask!0 mask!3266))))

(assert (=> start!68766 e!443929))

(assert (=> start!68766 true))

(declare-fun array_inv!16604 (array!43507) Bool)

(assert (=> start!68766 (array_inv!16604 a!3170)))

(assert (= (and start!68766 res!545400) b!800713))

(assert (= (and b!800713 res!545406) b!800711))

(assert (= (and b!800711 res!545405) b!800718))

(assert (= (and b!800718 res!545401) b!800716))

(assert (= (and b!800716 res!545408) b!800714))

(assert (= (and b!800714 res!545409) b!800719))

(assert (= (and b!800719 res!545398) b!800721))

(assert (= (and b!800721 res!545402) b!800712))

(assert (= (and b!800712 res!545399) b!800720))

(assert (= (and b!800720 res!545410) b!800715))

(assert (= (and b!800715 res!545403) b!800709))

(assert (= (and b!800709 res!545404) b!800710))

(assert (= (and b!800710 res!545407) b!800717))

(declare-fun m!741925 () Bool)

(assert (=> b!800709 m!741925))

(declare-fun m!741927 () Bool)

(assert (=> b!800712 m!741927))

(declare-fun m!741929 () Bool)

(assert (=> b!800712 m!741929))

(declare-fun m!741931 () Bool)

(assert (=> b!800710 m!741931))

(declare-fun m!741933 () Bool)

(assert (=> b!800717 m!741933))

(assert (=> b!800717 m!741933))

(declare-fun m!741935 () Bool)

(assert (=> b!800717 m!741935))

(declare-fun m!741937 () Bool)

(assert (=> b!800721 m!741937))

(declare-fun m!741939 () Bool)

(assert (=> b!800716 m!741939))

(declare-fun m!741941 () Bool)

(assert (=> b!800720 m!741941))

(declare-fun m!741943 () Bool)

(assert (=> b!800720 m!741943))

(declare-fun m!741945 () Bool)

(assert (=> b!800720 m!741945))

(declare-fun m!741947 () Bool)

(assert (=> b!800720 m!741947))

(assert (=> b!800711 m!741933))

(assert (=> b!800711 m!741933))

(declare-fun m!741949 () Bool)

(assert (=> b!800711 m!741949))

(declare-fun m!741951 () Bool)

(assert (=> b!800719 m!741951))

(declare-fun m!741953 () Bool)

(assert (=> start!68766 m!741953))

(declare-fun m!741955 () Bool)

(assert (=> start!68766 m!741955))

(declare-fun m!741957 () Bool)

(assert (=> b!800714 m!741957))

(declare-fun m!741959 () Bool)

(assert (=> b!800715 m!741959))

(assert (=> b!800715 m!741933))

(assert (=> b!800715 m!741933))

(declare-fun m!741961 () Bool)

(assert (=> b!800715 m!741961))

(assert (=> b!800715 m!741933))

(declare-fun m!741963 () Bool)

(assert (=> b!800715 m!741963))

(declare-fun m!741965 () Bool)

(assert (=> b!800718 m!741965))

(check-sat (not b!800719) (not b!800718) (not b!800710) (not b!800717) (not b!800720) (not b!800716) (not b!800714) (not b!800709) (not b!800715) (not b!800711) (not start!68766) (not b!800721))
(check-sat)
