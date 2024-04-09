; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68718 () Bool)

(assert start!68718)

(declare-fun res!544474 () Bool)

(declare-fun e!443498 () Bool)

(assert (=> start!68718 (=> (not res!544474) (not e!443498))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68718 (= res!544474 (validMask!0 mask!3266))))

(assert (=> start!68718 e!443498))

(assert (=> start!68718 true))

(declare-datatypes ((array!43459 0))(
  ( (array!43460 (arr!20806 (Array (_ BitVec 32) (_ BitVec 64))) (size!21227 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43459)

(declare-fun array_inv!16580 (array!43459) Bool)

(assert (=> start!68718 (array_inv!16580 a!3170)))

(declare-fun b!799773 () Bool)

(declare-fun e!443495 () Bool)

(assert (=> b!799773 (= e!443495 false)))

(declare-datatypes ((SeekEntryResult!8404 0))(
  ( (MissingZero!8404 (index!35983 (_ BitVec 32))) (Found!8404 (index!35984 (_ BitVec 32))) (Intermediate!8404 (undefined!9216 Bool) (index!35985 (_ BitVec 32)) (x!66883 (_ BitVec 32))) (Undefined!8404) (MissingVacant!8404 (index!35986 (_ BitVec 32))) )
))
(declare-fun lt!357246 () SeekEntryResult!8404)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!357243 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43459 (_ BitVec 32)) SeekEntryResult!8404)

(assert (=> b!799773 (= lt!357246 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357243 vacantBefore!23 (select (arr!20806 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799774 () Bool)

(declare-fun e!443496 () Bool)

(declare-fun e!443497 () Bool)

(assert (=> b!799774 (= e!443496 e!443497)))

(declare-fun res!544469 () Bool)

(assert (=> b!799774 (=> (not res!544469) (not e!443497))))

(declare-fun lt!357250 () SeekEntryResult!8404)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!357248 () SeekEntryResult!8404)

(assert (=> b!799774 (= res!544469 (and (= lt!357248 lt!357250) (= lt!357250 (Found!8404 j!153)) (not (= (select (arr!20806 a!3170) index!1236) (select (arr!20806 a!3170) j!153)))))))

(assert (=> b!799774 (= lt!357250 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20806 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43459 (_ BitVec 32)) SeekEntryResult!8404)

(assert (=> b!799774 (= lt!357248 (seekEntryOrOpen!0 (select (arr!20806 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799775 () Bool)

(declare-fun res!544473 () Bool)

(assert (=> b!799775 (=> (not res!544473) (not e!443498))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!799775 (= res!544473 (validKeyInArray!0 k0!2044))))

(declare-fun b!799776 () Bool)

(declare-fun res!544466 () Bool)

(declare-fun e!443499 () Bool)

(assert (=> b!799776 (=> (not res!544466) (not e!443499))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!799776 (= res!544466 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21227 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20806 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21227 a!3170)) (= (select (arr!20806 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!799777 () Bool)

(assert (=> b!799777 (= e!443499 e!443496)))

(declare-fun res!544471 () Bool)

(assert (=> b!799777 (=> (not res!544471) (not e!443496))))

(declare-fun lt!357245 () array!43459)

(declare-fun lt!357249 () (_ BitVec 64))

(declare-fun lt!357247 () SeekEntryResult!8404)

(assert (=> b!799777 (= res!544471 (= lt!357247 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357249 lt!357245 mask!3266)))))

(assert (=> b!799777 (= lt!357247 (seekEntryOrOpen!0 lt!357249 lt!357245 mask!3266))))

(assert (=> b!799777 (= lt!357249 (select (store (arr!20806 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!799777 (= lt!357245 (array!43460 (store (arr!20806 a!3170) i!1163 k0!2044) (size!21227 a!3170)))))

(declare-fun b!799778 () Bool)

(declare-fun res!544465 () Bool)

(assert (=> b!799778 (=> (not res!544465) (not e!443498))))

(declare-fun arrayContainsKey!0 (array!43459 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!799778 (= res!544465 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!799779 () Bool)

(declare-fun res!544462 () Bool)

(assert (=> b!799779 (=> (not res!544462) (not e!443498))))

(assert (=> b!799779 (= res!544462 (validKeyInArray!0 (select (arr!20806 a!3170) j!153)))))

(declare-fun b!799780 () Bool)

(declare-fun res!544470 () Bool)

(assert (=> b!799780 (=> (not res!544470) (not e!443499))))

(declare-datatypes ((List!14822 0))(
  ( (Nil!14819) (Cons!14818 (h!15947 (_ BitVec 64)) (t!21145 List!14822)) )
))
(declare-fun arrayNoDuplicates!0 (array!43459 (_ BitVec 32) List!14822) Bool)

(assert (=> b!799780 (= res!544470 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14819))))

(declare-fun b!799781 () Bool)

(assert (=> b!799781 (= e!443498 e!443499)))

(declare-fun res!544468 () Bool)

(assert (=> b!799781 (=> (not res!544468) (not e!443499))))

(declare-fun lt!357244 () SeekEntryResult!8404)

(assert (=> b!799781 (= res!544468 (or (= lt!357244 (MissingZero!8404 i!1163)) (= lt!357244 (MissingVacant!8404 i!1163))))))

(assert (=> b!799781 (= lt!357244 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!799782 () Bool)

(assert (=> b!799782 (= e!443497 e!443495)))

(declare-fun res!544472 () Bool)

(assert (=> b!799782 (=> (not res!544472) (not e!443495))))

(assert (=> b!799782 (= res!544472 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357243 #b00000000000000000000000000000000) (bvslt lt!357243 (size!21227 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!799782 (= lt!357243 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!799783 () Bool)

(declare-fun res!544463 () Bool)

(assert (=> b!799783 (=> (not res!544463) (not e!443499))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43459 (_ BitVec 32)) Bool)

(assert (=> b!799783 (= res!544463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!799784 () Bool)

(declare-fun res!544467 () Bool)

(assert (=> b!799784 (=> (not res!544467) (not e!443495))))

(assert (=> b!799784 (= res!544467 (= lt!357247 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357243 vacantAfter!23 lt!357249 lt!357245 mask!3266)))))

(declare-fun b!799785 () Bool)

(declare-fun res!544464 () Bool)

(assert (=> b!799785 (=> (not res!544464) (not e!443498))))

(assert (=> b!799785 (= res!544464 (and (= (size!21227 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21227 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21227 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68718 res!544474) b!799785))

(assert (= (and b!799785 res!544464) b!799779))

(assert (= (and b!799779 res!544462) b!799775))

(assert (= (and b!799775 res!544473) b!799778))

(assert (= (and b!799778 res!544465) b!799781))

(assert (= (and b!799781 res!544468) b!799783))

(assert (= (and b!799783 res!544463) b!799780))

(assert (= (and b!799780 res!544470) b!799776))

(assert (= (and b!799776 res!544466) b!799777))

(assert (= (and b!799777 res!544471) b!799774))

(assert (= (and b!799774 res!544469) b!799782))

(assert (= (and b!799782 res!544472) b!799784))

(assert (= (and b!799784 res!544467) b!799773))

(declare-fun m!740917 () Bool)

(assert (=> b!799777 m!740917))

(declare-fun m!740919 () Bool)

(assert (=> b!799777 m!740919))

(declare-fun m!740921 () Bool)

(assert (=> b!799777 m!740921))

(declare-fun m!740923 () Bool)

(assert (=> b!799777 m!740923))

(declare-fun m!740925 () Bool)

(assert (=> b!799774 m!740925))

(declare-fun m!740927 () Bool)

(assert (=> b!799774 m!740927))

(assert (=> b!799774 m!740927))

(declare-fun m!740929 () Bool)

(assert (=> b!799774 m!740929))

(assert (=> b!799774 m!740927))

(declare-fun m!740931 () Bool)

(assert (=> b!799774 m!740931))

(declare-fun m!740933 () Bool)

(assert (=> start!68718 m!740933))

(declare-fun m!740935 () Bool)

(assert (=> start!68718 m!740935))

(assert (=> b!799773 m!740927))

(assert (=> b!799773 m!740927))

(declare-fun m!740937 () Bool)

(assert (=> b!799773 m!740937))

(declare-fun m!740939 () Bool)

(assert (=> b!799780 m!740939))

(declare-fun m!740941 () Bool)

(assert (=> b!799783 m!740941))

(declare-fun m!740943 () Bool)

(assert (=> b!799778 m!740943))

(declare-fun m!740945 () Bool)

(assert (=> b!799776 m!740945))

(declare-fun m!740947 () Bool)

(assert (=> b!799776 m!740947))

(declare-fun m!740949 () Bool)

(assert (=> b!799781 m!740949))

(declare-fun m!740951 () Bool)

(assert (=> b!799775 m!740951))

(declare-fun m!740953 () Bool)

(assert (=> b!799784 m!740953))

(declare-fun m!740955 () Bool)

(assert (=> b!799782 m!740955))

(assert (=> b!799779 m!740927))

(assert (=> b!799779 m!740927))

(declare-fun m!740957 () Bool)

(assert (=> b!799779 m!740957))

(check-sat (not b!799777) (not b!799783) (not b!799775) (not b!799778) (not b!799779) (not b!799781) (not start!68718) (not b!799784) (not b!799773) (not b!799774) (not b!799780) (not b!799782))
(check-sat)
