; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29170 () Bool)

(assert start!29170)

(declare-fun b!295822 () Bool)

(declare-fun res!155744 () Bool)

(declare-fun e!186986 () Bool)

(assert (=> b!295822 (=> (not res!155744) (not e!186986))))

(declare-datatypes ((array!14970 0))(
  ( (array!14971 (arr!7095 (Array (_ BitVec 32) (_ BitVec 64))) (size!7447 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14970)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14970 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!295822 (= res!155744 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!295823 () Bool)

(declare-fun res!155746 () Bool)

(assert (=> b!295823 (=> (not res!155746) (not e!186986))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!295823 (= res!155746 (validKeyInArray!0 k!2524))))

(declare-fun b!295824 () Bool)

(declare-fun res!155751 () Bool)

(declare-fun e!186987 () Bool)

(assert (=> b!295824 (=> (not res!155751) (not e!186987))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14970 (_ BitVec 32)) Bool)

(assert (=> b!295824 (= res!155751 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!155750 () Bool)

(assert (=> start!29170 (=> (not res!155750) (not e!186986))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29170 (= res!155750 (validMask!0 mask!3809))))

(assert (=> start!29170 e!186986))

(assert (=> start!29170 true))

(declare-fun array_inv!5049 (array!14970) Bool)

(assert (=> start!29170 (array_inv!5049 a!3312)))

(declare-fun b!295825 () Bool)

(declare-fun e!186988 () Bool)

(assert (=> b!295825 (= e!186988 (not true))))

(declare-datatypes ((SeekEntryResult!2255 0))(
  ( (MissingZero!2255 (index!11190 (_ BitVec 32))) (Found!2255 (index!11191 (_ BitVec 32))) (Intermediate!2255 (undefined!3067 Bool) (index!11192 (_ BitVec 32)) (x!29368 (_ BitVec 32))) (Undefined!2255) (MissingVacant!2255 (index!11193 (_ BitVec 32))) )
))
(declare-fun lt!146845 () SeekEntryResult!2255)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!295825 (and (= (select (arr!7095 a!3312) (index!11192 lt!146845)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11192 lt!146845) i!1256))))

(declare-fun b!295826 () Bool)

(declare-fun e!186985 () Bool)

(assert (=> b!295826 (= e!186987 e!186985)))

(declare-fun res!155745 () Bool)

(assert (=> b!295826 (=> (not res!155745) (not e!186985))))

(declare-fun lt!146844 () Bool)

(assert (=> b!295826 (= res!155745 lt!146844)))

(declare-fun lt!146847 () SeekEntryResult!2255)

(declare-fun lt!146846 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14970 (_ BitVec 32)) SeekEntryResult!2255)

(assert (=> b!295826 (= lt!146847 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146846 k!2524 (array!14971 (store (arr!7095 a!3312) i!1256 k!2524) (size!7447 a!3312)) mask!3809))))

(assert (=> b!295826 (= lt!146845 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146846 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295826 (= lt!146846 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!295827 () Bool)

(assert (=> b!295827 (= e!186986 e!186987)))

(declare-fun res!155747 () Bool)

(assert (=> b!295827 (=> (not res!155747) (not e!186987))))

(declare-fun lt!146849 () SeekEntryResult!2255)

(assert (=> b!295827 (= res!155747 (or lt!146844 (= lt!146849 (MissingVacant!2255 i!1256))))))

(assert (=> b!295827 (= lt!146844 (= lt!146849 (MissingZero!2255 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14970 (_ BitVec 32)) SeekEntryResult!2255)

(assert (=> b!295827 (= lt!146849 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!295828 () Bool)

(declare-fun res!155748 () Bool)

(assert (=> b!295828 (=> (not res!155748) (not e!186986))))

(assert (=> b!295828 (= res!155748 (and (= (size!7447 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7447 a!3312))))))

(declare-fun b!295829 () Bool)

(assert (=> b!295829 (= e!186985 e!186988)))

(declare-fun res!155749 () Bool)

(assert (=> b!295829 (=> (not res!155749) (not e!186988))))

(declare-fun lt!146848 () Bool)

(assert (=> b!295829 (= res!155749 (and (or lt!146848 (not (undefined!3067 lt!146845))) (or lt!146848 (not (= (select (arr!7095 a!3312) (index!11192 lt!146845)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146848 (not (= (select (arr!7095 a!3312) (index!11192 lt!146845)) k!2524))) (not lt!146848)))))

(assert (=> b!295829 (= lt!146848 (not (is-Intermediate!2255 lt!146845)))))

(assert (= (and start!29170 res!155750) b!295828))

(assert (= (and b!295828 res!155748) b!295823))

(assert (= (and b!295823 res!155746) b!295822))

(assert (= (and b!295822 res!155744) b!295827))

(assert (= (and b!295827 res!155747) b!295824))

(assert (= (and b!295824 res!155751) b!295826))

(assert (= (and b!295826 res!155745) b!295829))

(assert (= (and b!295829 res!155749) b!295825))

(declare-fun m!308923 () Bool)

(assert (=> b!295829 m!308923))

(declare-fun m!308925 () Bool)

(assert (=> b!295826 m!308925))

(declare-fun m!308927 () Bool)

(assert (=> b!295826 m!308927))

(declare-fun m!308929 () Bool)

(assert (=> b!295826 m!308929))

(declare-fun m!308931 () Bool)

(assert (=> b!295826 m!308931))

(declare-fun m!308933 () Bool)

(assert (=> b!295824 m!308933))

(declare-fun m!308935 () Bool)

(assert (=> start!29170 m!308935))

(declare-fun m!308937 () Bool)

(assert (=> start!29170 m!308937))

(declare-fun m!308939 () Bool)

(assert (=> b!295827 m!308939))

(declare-fun m!308941 () Bool)

(assert (=> b!295822 m!308941))

(declare-fun m!308943 () Bool)

(assert (=> b!295823 m!308943))

(assert (=> b!295825 m!308923))

(push 1)

