; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49796 () Bool)

(assert start!49796)

(declare-fun b!546854 () Bool)

(declare-fun res!340718 () Bool)

(declare-fun e!315994 () Bool)

(assert (=> b!546854 (=> (not res!340718) (not e!315994))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546854 (= res!340718 (validKeyInArray!0 k!1914))))

(declare-fun b!546855 () Bool)

(declare-fun e!315993 () Bool)

(declare-datatypes ((array!34488 0))(
  ( (array!34489 (arr!16566 (Array (_ BitVec 32) (_ BitVec 64))) (size!16930 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34488)

(assert (=> b!546855 (= e!315993 (and (bvsle #b00000000000000000000000000000000 (size!16930 a!3118)) (bvsge (size!16930 a!3118) #b01111111111111111111111111111111)))))

(declare-fun b!546856 () Bool)

(declare-fun res!340724 () Bool)

(assert (=> b!546856 (=> (not res!340724) (not e!315993))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34488 (_ BitVec 32)) Bool)

(assert (=> b!546856 (= res!340724 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!546858 () Bool)

(assert (=> b!546858 (= e!315994 e!315993)))

(declare-fun res!340720 () Bool)

(assert (=> b!546858 (=> (not res!340720) (not e!315993))))

(declare-datatypes ((SeekEntryResult!5022 0))(
  ( (MissingZero!5022 (index!22315 (_ BitVec 32))) (Found!5022 (index!22316 (_ BitVec 32))) (Intermediate!5022 (undefined!5834 Bool) (index!22317 (_ BitVec 32)) (x!51293 (_ BitVec 32))) (Undefined!5022) (MissingVacant!5022 (index!22318 (_ BitVec 32))) )
))
(declare-fun lt!249374 () SeekEntryResult!5022)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!546858 (= res!340720 (or (= lt!249374 (MissingZero!5022 i!1132)) (= lt!249374 (MissingVacant!5022 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34488 (_ BitVec 32)) SeekEntryResult!5022)

(assert (=> b!546858 (= lt!249374 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!546859 () Bool)

(declare-fun res!340723 () Bool)

(assert (=> b!546859 (=> (not res!340723) (not e!315994))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!546859 (= res!340723 (validKeyInArray!0 (select (arr!16566 a!3118) j!142)))))

(declare-fun b!546860 () Bool)

(declare-fun res!340719 () Bool)

(assert (=> b!546860 (=> (not res!340719) (not e!315994))))

(declare-fun arrayContainsKey!0 (array!34488 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546860 (= res!340719 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!340721 () Bool)

(assert (=> start!49796 (=> (not res!340721) (not e!315994))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49796 (= res!340721 (validMask!0 mask!3119))))

(assert (=> start!49796 e!315994))

(assert (=> start!49796 true))

(declare-fun array_inv!12340 (array!34488) Bool)

(assert (=> start!49796 (array_inv!12340 a!3118)))

(declare-fun b!546857 () Bool)

(declare-fun res!340722 () Bool)

(assert (=> b!546857 (=> (not res!340722) (not e!315994))))

(assert (=> b!546857 (= res!340722 (and (= (size!16930 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16930 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16930 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!49796 res!340721) b!546857))

(assert (= (and b!546857 res!340722) b!546859))

(assert (= (and b!546859 res!340723) b!546854))

(assert (= (and b!546854 res!340718) b!546860))

(assert (= (and b!546860 res!340719) b!546858))

(assert (= (and b!546858 res!340720) b!546856))

(assert (= (and b!546856 res!340724) b!546855))

(declare-fun m!524251 () Bool)

(assert (=> b!546859 m!524251))

(assert (=> b!546859 m!524251))

(declare-fun m!524253 () Bool)

(assert (=> b!546859 m!524253))

(declare-fun m!524255 () Bool)

(assert (=> start!49796 m!524255))

(declare-fun m!524257 () Bool)

(assert (=> start!49796 m!524257))

(declare-fun m!524259 () Bool)

(assert (=> b!546854 m!524259))

(declare-fun m!524261 () Bool)

(assert (=> b!546856 m!524261))

(declare-fun m!524263 () Bool)

(assert (=> b!546858 m!524263))

(declare-fun m!524265 () Bool)

(assert (=> b!546860 m!524265))

(push 1)

(assert (not b!546860))

(assert (not b!546854))

(assert (not b!546858))

(assert (not b!546859))

(assert (not b!546856))

(assert (not start!49796))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!82291 () Bool)

(declare-fun res!340781 () Bool)

(declare-fun e!316029 () Bool)

(assert (=> d!82291 (=> res!340781 e!316029)))

(assert (=> d!82291 (= res!340781 (= (select (arr!16566 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!82291 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!316029)))

(declare-fun b!546921 () Bool)

(declare-fun e!316030 () Bool)

(assert (=> b!546921 (= e!316029 e!316030)))

(declare-fun res!340782 () Bool)

(assert (=> b!546921 (=> (not res!340782) (not e!316030))))

(assert (=> b!546921 (= res!340782 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16930 a!3118)))))

(declare-fun b!546922 () Bool)

(assert (=> b!546922 (= e!316030 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82291 (not res!340781)) b!546921))

(assert (= (and b!546921 res!340782) b!546922))

(declare-fun m!524303 () Bool)

(assert (=> d!82291 m!524303))

(declare-fun m!524305 () Bool)

(assert (=> b!546922 m!524305))

(assert (=> b!546860 d!82291))

(declare-fun b!546941 () Bool)

(declare-fun e!316047 () Bool)

(declare-fun e!316046 () Bool)

(assert (=> b!546941 (= e!316047 e!316046)))

(declare-fun c!63401 () Bool)

(assert (=> b!546941 (= c!63401 (validKeyInArray!0 (select (arr!16566 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!546942 () Bool)

(declare-fun e!316048 () Bool)

(assert (=> b!546942 (= e!316046 e!316048)))

(declare-fun lt!249396 () (_ BitVec 64))

(assert (=> b!546942 (= lt!249396 (select (arr!16566 a!3118) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16924 0))(
  ( (Unit!16925) )
))
(declare-fun lt!249397 () Unit!16924)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34488 (_ BitVec 64) (_ BitVec 32)) Unit!16924)

(assert (=> b!546942 (= lt!249397 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!249396 #b00000000000000000000000000000000))))

(assert (=> b!546942 (arrayContainsKey!0 a!3118 lt!249396 #b00000000000000000000000000000000)))

(declare-fun lt!249398 () Unit!16924)

(assert (=> b!546942 (= lt!249398 lt!249397)))

(declare-fun res!340796 () Bool)

(assert (=> b!546942 (= res!340796 (= (seekEntryOrOpen!0 (select (arr!16566 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5022 #b00000000000000000000000000000000)))))

(assert (=> b!546942 (=> (not res!340796) (not e!316048))))

(declare-fun d!82293 () Bool)

(declare-fun res!340795 () Bool)

(assert (=> d!82293 (=> res!340795 e!316047)))

(assert (=> d!82293 (= res!340795 (bvsge #b00000000000000000000000000000000 (size!16930 a!3118)))))

(assert (=> d!82293 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!316047)))

(declare-fun b!546943 () Bool)

(declare-fun call!32150 () Bool)

(assert (=> b!546943 (= e!316048 call!32150)))

(declare-fun bm!32147 () Bool)

(assert (=> bm!32147 (= call!32150 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!546944 () Bool)

(assert (=> b!546944 (= e!316046 call!32150)))

(assert (= (and d!82293 (not res!340795)) b!546941))

(assert (= (and b!546941 c!63401) b!546942))

(assert (= (and b!546941 (not c!63401)) b!546944))

(assert (= (and b!546942 res!340796) b!546943))

(assert (= (or b!546943 b!546944) bm!32147))

(assert (=> b!546941 m!524303))

(assert (=> b!546941 m!524303))

(declare-fun m!524321 () Bool)

(assert (=> b!546941 m!524321))

(assert (=> b!546942 m!524303))

(declare-fun m!524323 () Bool)

(assert (=> b!546942 m!524323))

(declare-fun m!524325 () Bool)

(assert (=> b!546942 m!524325))

(assert (=> b!546942 m!524303))

(declare-fun m!524327 () Bool)

(assert (=> b!546942 m!524327))

(declare-fun m!524329 () Bool)

(assert (=> bm!32147 m!524329))

(assert (=> b!546856 d!82293))

(declare-fun b!546987 () Bool)

(declare-fun e!316075 () SeekEntryResult!5022)

(declare-fun lt!249423 () SeekEntryResult!5022)

(assert (=> b!546987 (= e!316075 (Found!5022 (index!22317 lt!249423)))))

(declare-fun b!546988 () Bool)

(declare-fun e!316073 () SeekEntryResult!5022)

(assert (=> b!546988 (= e!316073 e!316075)))

(declare-fun lt!249424 () (_ BitVec 64))

(assert (=> b!546988 (= lt!249424 (select (arr!16566 a!3118) (index!22317 lt!249423)))))

(declare-fun c!63420 () Bool)

(assert (=> b!546988 (= c!63420 (= lt!249424 k!1914))))

(declare-fun b!546989 () Bool)

(declare-fun e!316074 () SeekEntryResult!5022)

(assert (=> b!546989 (= e!316074 (MissingZero!5022 (index!22317 lt!249423)))))

(declare-fun b!546990 () Bool)

(declare-fun c!63422 () Bool)

(assert (=> b!546990 (= c!63422 (= lt!249424 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!546990 (= e!316075 e!316074)))

(declare-fun b!546991 () Bool)

(assert (=> b!546991 (= e!316073 Undefined!5022)))

(declare-fun d!82301 () Bool)

(declare-fun lt!249425 () SeekEntryResult!5022)

(assert (=> d!82301 (and (or (is-Undefined!5022 lt!249425) (not (is-Found!5022 lt!249425)) (and (bvsge (index!22316 lt!249425) #b00000000000000000000000000000000) (bvslt (index!22316 lt!249425) (size!16930 a!3118)))) (or (is-Undefined!5022 lt!249425) (is-Found!5022 lt!249425) (not (is-MissingZero!5022 lt!249425)) (and (bvsge (index!22315 lt!249425) #b00000000000000000000000000000000) (bvslt (index!22315 lt!249425) (size!16930 a!3118)))) (or (is-Undefined!5022 lt!249425) (is-Found!5022 lt!249425) (is-MissingZero!5022 lt!249425) (not (is-MissingVacant!5022 lt!249425)) (and (bvsge (index!22318 lt!249425) #b00000000000000000000000000000000) (bvslt (index!22318 lt!249425) (size!16930 a!3118)))) (or (is-Undefined!5022 lt!249425) (ite (is-Found!5022 lt!249425) (= (select (arr!16566 a!3118) (index!22316 lt!249425)) k!1914) (ite (is-MissingZero!5022 lt!249425) (= (select (arr!16566 a!3118) (index!22315 lt!249425)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5022 lt!249425) (= (select (arr!16566 a!3118) (index!22318 lt!249425)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!82301 (= lt!249425 e!316073)))

(declare-fun c!63421 () Bool)

(assert (=> d!82301 (= c!63421 (and (is-Intermediate!5022 lt!249423) (undefined!5834 lt!249423)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34488 (_ BitVec 32)) SeekEntryResult!5022)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!82301 (= lt!249423 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!82301 (validMask!0 mask!3119)))

(assert (=> d!82301 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!249425)))

(declare-fun b!546992 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34488 (_ BitVec 32)) SeekEntryResult!5022)

(assert (=> b!546992 (= e!316074 (seekKeyOrZeroReturnVacant!0 (x!51293 lt!249423) (index!22317 lt!249423) (index!22317 lt!249423) k!1914 a!3118 mask!3119))))

(assert (= (and d!82301 c!63421) b!546991))

(assert (= (and d!82301 (not c!63421)) b!546988))

(assert (= (and b!546988 c!63420) b!546987))

