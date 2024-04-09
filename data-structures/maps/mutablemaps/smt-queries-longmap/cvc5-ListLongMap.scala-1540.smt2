; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29172 () Bool)

(assert start!29172)

(declare-fun b!295846 () Bool)

(declare-fun res!155773 () Bool)

(declare-fun e!187003 () Bool)

(assert (=> b!295846 (=> (not res!155773) (not e!187003))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14972 0))(
  ( (array!14973 (arr!7096 (Array (_ BitVec 32) (_ BitVec 64))) (size!7448 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14972)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!295846 (= res!155773 (and (= (size!7448 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7448 a!3312))))))

(declare-fun b!295847 () Bool)

(declare-fun res!155774 () Bool)

(assert (=> b!295847 (=> (not res!155774) (not e!187003))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14972 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!295847 (= res!155774 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!155772 () Bool)

(assert (=> start!29172 (=> (not res!155772) (not e!187003))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29172 (= res!155772 (validMask!0 mask!3809))))

(assert (=> start!29172 e!187003))

(assert (=> start!29172 true))

(declare-fun array_inv!5050 (array!14972) Bool)

(assert (=> start!29172 (array_inv!5050 a!3312)))

(declare-fun b!295848 () Bool)

(declare-fun e!187001 () Bool)

(assert (=> b!295848 (= e!187003 e!187001)))

(declare-fun res!155770 () Bool)

(assert (=> b!295848 (=> (not res!155770) (not e!187001))))

(declare-fun lt!146864 () Bool)

(declare-datatypes ((SeekEntryResult!2256 0))(
  ( (MissingZero!2256 (index!11194 (_ BitVec 32))) (Found!2256 (index!11195 (_ BitVec 32))) (Intermediate!2256 (undefined!3068 Bool) (index!11196 (_ BitVec 32)) (x!29377 (_ BitVec 32))) (Undefined!2256) (MissingVacant!2256 (index!11197 (_ BitVec 32))) )
))
(declare-fun lt!146863 () SeekEntryResult!2256)

(assert (=> b!295848 (= res!155770 (or lt!146864 (= lt!146863 (MissingVacant!2256 i!1256))))))

(assert (=> b!295848 (= lt!146864 (= lt!146863 (MissingZero!2256 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14972 (_ BitVec 32)) SeekEntryResult!2256)

(assert (=> b!295848 (= lt!146863 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!295849 () Bool)

(declare-fun e!187004 () Bool)

(assert (=> b!295849 (= e!187004 (not true))))

(declare-fun lt!146865 () SeekEntryResult!2256)

(assert (=> b!295849 (and (= (select (arr!7096 a!3312) (index!11196 lt!146865)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11196 lt!146865) i!1256))))

(declare-fun b!295850 () Bool)

(declare-fun e!187002 () Bool)

(assert (=> b!295850 (= e!187001 e!187002)))

(declare-fun res!155771 () Bool)

(assert (=> b!295850 (=> (not res!155771) (not e!187002))))

(assert (=> b!295850 (= res!155771 lt!146864)))

(declare-fun lt!146866 () SeekEntryResult!2256)

(declare-fun lt!146867 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14972 (_ BitVec 32)) SeekEntryResult!2256)

(assert (=> b!295850 (= lt!146866 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146867 k!2524 (array!14973 (store (arr!7096 a!3312) i!1256 k!2524) (size!7448 a!3312)) mask!3809))))

(assert (=> b!295850 (= lt!146865 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146867 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295850 (= lt!146867 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!295851 () Bool)

(assert (=> b!295851 (= e!187002 e!187004)))

(declare-fun res!155775 () Bool)

(assert (=> b!295851 (=> (not res!155775) (not e!187004))))

(declare-fun lt!146862 () Bool)

(assert (=> b!295851 (= res!155775 (and (or lt!146862 (not (undefined!3068 lt!146865))) (or lt!146862 (not (= (select (arr!7096 a!3312) (index!11196 lt!146865)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146862 (not (= (select (arr!7096 a!3312) (index!11196 lt!146865)) k!2524))) (not lt!146862)))))

(assert (=> b!295851 (= lt!146862 (not (is-Intermediate!2256 lt!146865)))))

(declare-fun b!295852 () Bool)

(declare-fun res!155768 () Bool)

(assert (=> b!295852 (=> (not res!155768) (not e!187003))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!295852 (= res!155768 (validKeyInArray!0 k!2524))))

(declare-fun b!295853 () Bool)

(declare-fun res!155769 () Bool)

(assert (=> b!295853 (=> (not res!155769) (not e!187001))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14972 (_ BitVec 32)) Bool)

(assert (=> b!295853 (= res!155769 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!29172 res!155772) b!295846))

(assert (= (and b!295846 res!155773) b!295852))

(assert (= (and b!295852 res!155768) b!295847))

(assert (= (and b!295847 res!155774) b!295848))

(assert (= (and b!295848 res!155770) b!295853))

(assert (= (and b!295853 res!155769) b!295850))

(assert (= (and b!295850 res!155771) b!295851))

(assert (= (and b!295851 res!155775) b!295849))

(declare-fun m!308945 () Bool)

(assert (=> start!29172 m!308945))

(declare-fun m!308947 () Bool)

(assert (=> start!29172 m!308947))

(declare-fun m!308949 () Bool)

(assert (=> b!295853 m!308949))

(declare-fun m!308951 () Bool)

(assert (=> b!295848 m!308951))

(declare-fun m!308953 () Bool)

(assert (=> b!295849 m!308953))

(declare-fun m!308955 () Bool)

(assert (=> b!295850 m!308955))

(declare-fun m!308957 () Bool)

(assert (=> b!295850 m!308957))

(declare-fun m!308959 () Bool)

(assert (=> b!295850 m!308959))

(declare-fun m!308961 () Bool)

(assert (=> b!295850 m!308961))

(assert (=> b!295851 m!308953))

(declare-fun m!308963 () Bool)

(assert (=> b!295852 m!308963))

(declare-fun m!308965 () Bool)

(assert (=> b!295847 m!308965))

(push 1)

