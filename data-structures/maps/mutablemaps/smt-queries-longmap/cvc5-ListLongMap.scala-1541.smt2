; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29178 () Bool)

(assert start!29178)

(declare-fun b!295918 () Bool)

(declare-fun res!155847 () Bool)

(declare-fun e!187048 () Bool)

(assert (=> b!295918 (=> (not res!155847) (not e!187048))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14978 0))(
  ( (array!14979 (arr!7099 (Array (_ BitVec 32) (_ BitVec 64))) (size!7451 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14978)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!295918 (= res!155847 (and (= (size!7451 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7451 a!3312))))))

(declare-fun b!295919 () Bool)

(declare-fun e!187045 () Bool)

(declare-datatypes ((SeekEntryResult!2259 0))(
  ( (MissingZero!2259 (index!11206 (_ BitVec 32))) (Found!2259 (index!11207 (_ BitVec 32))) (Intermediate!2259 (undefined!3071 Bool) (index!11208 (_ BitVec 32)) (x!29388 (_ BitVec 32))) (Undefined!2259) (MissingVacant!2259 (index!11209 (_ BitVec 32))) )
))
(declare-fun lt!146920 () SeekEntryResult!2259)

(assert (=> b!295919 (= e!187045 (not (= lt!146920 (Intermediate!2259 false (index!11208 lt!146920) (x!29388 lt!146920)))))))

(assert (=> b!295919 (and (= (select (arr!7099 a!3312) (index!11208 lt!146920)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11208 lt!146920) i!1256))))

(declare-fun b!295920 () Bool)

(declare-fun res!155845 () Bool)

(declare-fun e!187046 () Bool)

(assert (=> b!295920 (=> (not res!155845) (not e!187046))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14978 (_ BitVec 32)) Bool)

(assert (=> b!295920 (= res!155845 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!155844 () Bool)

(assert (=> start!29178 (=> (not res!155844) (not e!187048))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29178 (= res!155844 (validMask!0 mask!3809))))

(assert (=> start!29178 e!187048))

(assert (=> start!29178 true))

(declare-fun array_inv!5053 (array!14978) Bool)

(assert (=> start!29178 (array_inv!5053 a!3312)))

(declare-fun b!295921 () Bool)

(declare-fun res!155846 () Bool)

(assert (=> b!295921 (=> (not res!155846) (not e!187048))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14978 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!295921 (= res!155846 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!295922 () Bool)

(declare-fun e!187049 () Bool)

(assert (=> b!295922 (= e!187046 e!187049)))

(declare-fun res!155841 () Bool)

(assert (=> b!295922 (=> (not res!155841) (not e!187049))))

(declare-fun lt!146916 () Bool)

(assert (=> b!295922 (= res!155841 lt!146916)))

(declare-fun lt!146921 () SeekEntryResult!2259)

(declare-fun lt!146917 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14978 (_ BitVec 32)) SeekEntryResult!2259)

(assert (=> b!295922 (= lt!146921 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146917 k!2524 (array!14979 (store (arr!7099 a!3312) i!1256 k!2524) (size!7451 a!3312)) mask!3809))))

(assert (=> b!295922 (= lt!146920 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146917 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295922 (= lt!146917 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!295923 () Bool)

(declare-fun res!155840 () Bool)

(assert (=> b!295923 (=> (not res!155840) (not e!187048))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!295923 (= res!155840 (validKeyInArray!0 k!2524))))

(declare-fun b!295924 () Bool)

(assert (=> b!295924 (= e!187049 e!187045)))

(declare-fun res!155843 () Bool)

(assert (=> b!295924 (=> (not res!155843) (not e!187045))))

(declare-fun lt!146919 () Bool)

(assert (=> b!295924 (= res!155843 (and (or lt!146919 (not (undefined!3071 lt!146920))) (or lt!146919 (not (= (select (arr!7099 a!3312) (index!11208 lt!146920)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146919 (not (= (select (arr!7099 a!3312) (index!11208 lt!146920)) k!2524))) (not lt!146919)))))

(assert (=> b!295924 (= lt!146919 (not (is-Intermediate!2259 lt!146920)))))

(declare-fun b!295925 () Bool)

(assert (=> b!295925 (= e!187048 e!187046)))

(declare-fun res!155842 () Bool)

(assert (=> b!295925 (=> (not res!155842) (not e!187046))))

(declare-fun lt!146918 () SeekEntryResult!2259)

(assert (=> b!295925 (= res!155842 (or lt!146916 (= lt!146918 (MissingVacant!2259 i!1256))))))

(assert (=> b!295925 (= lt!146916 (= lt!146918 (MissingZero!2259 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14978 (_ BitVec 32)) SeekEntryResult!2259)

(assert (=> b!295925 (= lt!146918 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(assert (= (and start!29178 res!155844) b!295918))

(assert (= (and b!295918 res!155847) b!295923))

(assert (= (and b!295923 res!155840) b!295921))

(assert (= (and b!295921 res!155846) b!295925))

(assert (= (and b!295925 res!155842) b!295920))

(assert (= (and b!295920 res!155845) b!295922))

(assert (= (and b!295922 res!155841) b!295924))

(assert (= (and b!295924 res!155843) b!295919))

(declare-fun m!309011 () Bool)

(assert (=> b!295923 m!309011))

(declare-fun m!309013 () Bool)

(assert (=> b!295925 m!309013))

(declare-fun m!309015 () Bool)

(assert (=> b!295919 m!309015))

(declare-fun m!309017 () Bool)

(assert (=> start!29178 m!309017))

(declare-fun m!309019 () Bool)

(assert (=> start!29178 m!309019))

(declare-fun m!309021 () Bool)

(assert (=> b!295920 m!309021))

(declare-fun m!309023 () Bool)

(assert (=> b!295921 m!309023))

(declare-fun m!309025 () Bool)

(assert (=> b!295922 m!309025))

(declare-fun m!309027 () Bool)

(assert (=> b!295922 m!309027))

(declare-fun m!309029 () Bool)

(assert (=> b!295922 m!309029))

(declare-fun m!309031 () Bool)

(assert (=> b!295922 m!309031))

(assert (=> b!295924 m!309015))

(push 1)

