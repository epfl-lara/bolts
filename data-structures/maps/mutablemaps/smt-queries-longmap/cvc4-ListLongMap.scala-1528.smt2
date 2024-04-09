; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28864 () Bool)

(assert start!28864)

(declare-fun res!154634 () Bool)

(declare-fun e!185886 () Bool)

(assert (=> start!28864 (=> (not res!154634) (not e!185886))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28864 (= res!154634 (validMask!0 mask!3809))))

(assert (=> start!28864 e!185886))

(assert (=> start!28864 true))

(declare-datatypes ((array!14889 0))(
  ( (array!14890 (arr!7062 (Array (_ BitVec 32) (_ BitVec 64))) (size!7414 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14889)

(declare-fun array_inv!5016 (array!14889) Bool)

(assert (=> start!28864 (array_inv!5016 a!3312)))

(declare-fun b!294006 () Bool)

(declare-fun res!154638 () Bool)

(assert (=> b!294006 (=> (not res!154638) (not e!185886))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14889 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!294006 (= res!154638 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!2222 0))(
  ( (MissingZero!2222 (index!11058 (_ BitVec 32))) (Found!2222 (index!11059 (_ BitVec 32))) (Intermediate!2222 (undefined!3034 Bool) (index!11060 (_ BitVec 32)) (x!29217 (_ BitVec 32))) (Undefined!2222) (MissingVacant!2222 (index!11061 (_ BitVec 32))) )
))
(declare-fun lt!145798 () SeekEntryResult!2222)

(declare-fun lt!145800 () Bool)

(declare-fun e!185888 () Bool)

(declare-fun b!294007 () Bool)

(assert (=> b!294007 (= e!185888 (and lt!145800 (let ((bdg!6229 (not (is-Intermediate!2222 lt!145798)))) (and (or bdg!6229 (not (undefined!3034 lt!145798))) (or bdg!6229 (not (= (select (arr!7062 a!3312) (index!11060 lt!145798)) #b1000000000000000000000000000000000000000000000000000000000000000))) (not bdg!6229) (or (bvslt (index!11060 lt!145798) #b00000000000000000000000000000000) (bvsge (index!11060 lt!145798) (size!7414 a!3312)))))))))

(declare-fun lt!145799 () (_ BitVec 32))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!145802 () SeekEntryResult!2222)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14889 (_ BitVec 32)) SeekEntryResult!2222)

(assert (=> b!294007 (= lt!145802 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145799 k!2524 (array!14890 (store (arr!7062 a!3312) i!1256 k!2524) (size!7414 a!3312)) mask!3809))))

(assert (=> b!294007 (= lt!145798 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145799 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!294007 (= lt!145799 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!294008 () Bool)

(declare-fun res!154633 () Bool)

(assert (=> b!294008 (=> (not res!154633) (not e!185888))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14889 (_ BitVec 32)) Bool)

(assert (=> b!294008 (= res!154633 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!294009 () Bool)

(declare-fun res!154637 () Bool)

(assert (=> b!294009 (=> (not res!154637) (not e!185886))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!294009 (= res!154637 (validKeyInArray!0 k!2524))))

(declare-fun b!294010 () Bool)

(declare-fun res!154635 () Bool)

(assert (=> b!294010 (=> (not res!154635) (not e!185886))))

(assert (=> b!294010 (= res!154635 (and (= (size!7414 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7414 a!3312))))))

(declare-fun b!294011 () Bool)

(assert (=> b!294011 (= e!185886 e!185888)))

(declare-fun res!154636 () Bool)

(assert (=> b!294011 (=> (not res!154636) (not e!185888))))

(declare-fun lt!145801 () SeekEntryResult!2222)

(assert (=> b!294011 (= res!154636 (or lt!145800 (= lt!145801 (MissingVacant!2222 i!1256))))))

(assert (=> b!294011 (= lt!145800 (= lt!145801 (MissingZero!2222 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14889 (_ BitVec 32)) SeekEntryResult!2222)

(assert (=> b!294011 (= lt!145801 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(assert (= (and start!28864 res!154634) b!294010))

(assert (= (and b!294010 res!154635) b!294009))

(assert (= (and b!294009 res!154637) b!294006))

(assert (= (and b!294006 res!154638) b!294011))

(assert (= (and b!294011 res!154636) b!294008))

(assert (= (and b!294008 res!154633) b!294007))

(declare-fun m!307597 () Bool)

(assert (=> b!294009 m!307597))

(declare-fun m!307599 () Bool)

(assert (=> b!294007 m!307599))

(declare-fun m!307601 () Bool)

(assert (=> b!294007 m!307601))

(declare-fun m!307603 () Bool)

(assert (=> b!294007 m!307603))

(declare-fun m!307605 () Bool)

(assert (=> b!294007 m!307605))

(declare-fun m!307607 () Bool)

(assert (=> b!294007 m!307607))

(declare-fun m!307609 () Bool)

(assert (=> b!294011 m!307609))

(declare-fun m!307611 () Bool)

(assert (=> start!28864 m!307611))

(declare-fun m!307613 () Bool)

(assert (=> start!28864 m!307613))

(declare-fun m!307615 () Bool)

(assert (=> b!294008 m!307615))

(declare-fun m!307617 () Bool)

(assert (=> b!294006 m!307617))

(push 1)

(assert (not b!294008))

(assert (not b!294006))

(assert (not b!294009))

(assert (not start!28864))

(assert (not b!294007))

(assert (not b!294011))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!66625 () Bool)

(assert (=> d!66625 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!294009 d!66625))

(declare-fun d!66627 () Bool)

(assert (=> d!66627 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!28864 d!66627))

(declare-fun d!66635 () Bool)

(assert (=> d!66635 (= (array_inv!5016 a!3312) (bvsge (size!7414 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!28864 d!66635))

(declare-fun b!294072 () Bool)

(declare-fun e!185925 () SeekEntryResult!2222)

(declare-fun lt!145834 () SeekEntryResult!2222)

(assert (=> b!294072 (= e!185925 (Found!2222 (index!11060 lt!145834)))))

(declare-fun b!294073 () Bool)

(declare-fun e!185926 () SeekEntryResult!2222)

(assert (=> b!294073 (= e!185926 (MissingZero!2222 (index!11060 lt!145834)))))

(declare-fun b!294074 () Bool)

(declare-fun c!47281 () Bool)

(declare-fun lt!145833 () (_ BitVec 64))

(assert (=> b!294074 (= c!47281 (= lt!145833 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!294074 (= e!185925 e!185926)))

(declare-fun d!66637 () Bool)

(declare-fun lt!145835 () SeekEntryResult!2222)

(assert (=> d!66637 (and (or (is-Undefined!2222 lt!145835) (not (is-Found!2222 lt!145835)) (and (bvsge (index!11059 lt!145835) #b00000000000000000000000000000000) (bvslt (index!11059 lt!145835) (size!7414 a!3312)))) (or (is-Undefined!2222 lt!145835) (is-Found!2222 lt!145835) (not (is-MissingZero!2222 lt!145835)) (and (bvsge (index!11058 lt!145835) #b00000000000000000000000000000000) (bvslt (index!11058 lt!145835) (size!7414 a!3312)))) (or (is-Undefined!2222 lt!145835) (is-Found!2222 lt!145835) (is-MissingZero!2222 lt!145835) (not (is-MissingVacant!2222 lt!145835)) (and (bvsge (index!11061 lt!145835) #b00000000000000000000000000000000) (bvslt (index!11061 lt!145835) (size!7414 a!3312)))) (or (is-Undefined!2222 lt!145835) (ite (is-Found!2222 lt!145835) (= (select (arr!7062 a!3312) (index!11059 lt!145835)) k!2524) (ite (is-MissingZero!2222 lt!145835) (= (select (arr!7062 a!3312) (index!11058 lt!145835)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2222 lt!145835) (= (select (arr!7062 a!3312) (index!11061 lt!145835)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!185927 () SeekEntryResult!2222)

(assert (=> d!66637 (= lt!145835 e!185927)))

(declare-fun c!47282 () Bool)

(assert (=> d!66637 (= c!47282 (and (is-Intermediate!2222 lt!145834) (undefined!3034 lt!145834)))))

(assert (=> d!66637 (= lt!145834 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!66637 (validMask!0 mask!3809)))

(assert (=> d!66637 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!145835)))

(declare-fun b!294075 () Bool)

(assert (=> b!294075 (= e!185927 Undefined!2222)))

(declare-fun b!294076 () Bool)

(assert (=> b!294076 (= e!185927 e!185925)))

(assert (=> b!294076 (= lt!145833 (select (arr!7062 a!3312) (index!11060 lt!145834)))))

(declare-fun c!47283 () Bool)

(assert (=> b!294076 (= c!47283 (= lt!145833 k!2524))))

(declare-fun b!294077 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14889 (_ BitVec 32)) SeekEntryResult!2222)

(assert (=> b!294077 (= e!185926 (seekKeyOrZeroReturnVacant!0 (x!29217 lt!145834) (index!11060 lt!145834) (index!11060 lt!145834) k!2524 a!3312 mask!3809))))

(assert (= (and d!66637 c!47282) b!294075))

(assert (= (and d!66637 (not c!47282)) b!294076))

(assert (= (and b!294076 c!47283) b!294072))

(assert (= (and b!294076 (not c!47283)) b!294074))

(assert (= (and b!294074 c!47281) b!294073))

(assert (= (and b!294074 (not c!47281)) b!294077))

(declare-fun m!307645 () Bool)

(assert (=> d!66637 m!307645))

(declare-fun m!307647 () Bool)

(assert (=> d!66637 m!307647))

(assert (=> d!66637 m!307603))

(assert (=> d!66637 m!307611))

(declare-fun m!307649 () Bool)

(assert (=> d!66637 m!307649))

(assert (=> d!66637 m!307603))

(declare-fun m!307651 () Bool)

(assert (=> d!66637 m!307651))

(declare-fun m!307653 () Bool)

(assert (=> b!294076 m!307653))

(declare-fun m!307655 () Bool)

(assert (=> b!294077 m!307655))

(assert (=> b!294011 d!66637))

(declare-fun d!66647 () Bool)

(declare-fun res!154655 () Bool)

(declare-fun e!185935 () Bool)

(assert (=> d!66647 (=> res!154655 e!185935)))

(assert (=> d!66647 (= res!154655 (= (select (arr!7062 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!66647 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!185935)))

(declare-fun b!294088 () Bool)

(declare-fun e!185936 () Bool)

(assert (=> b!294088 (= e!185935 e!185936)))

(declare-fun res!154656 () Bool)

(assert (=> b!294088 (=> (not res!154656) (not e!185936))))

(assert (=> b!294088 (= res!154656 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7414 a!3312)))))

(declare-fun b!294089 () Bool)

(assert (=> b!294089 (= e!185936 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66647 (not res!154655)) b!294088))

(assert (= (and b!294088 res!154656) b!294089))

(declare-fun m!307669 () Bool)

(assert (=> d!66647 m!307669))

(declare-fun m!307671 () Bool)

(assert (=> b!294089 m!307671))

(assert (=> b!294006 d!66647))

(declare-fun b!294168 () Bool)

(declare-fun e!185984 () SeekEntryResult!2222)

(assert (=> b!294168 (= e!185984 (Intermediate!2222 false lt!145799 #b00000000000000000000000000000000))))

(declare-fun lt!145861 () SeekEntryResult!2222)

(declare-fun b!294169 () Bool)

(assert (=> b!294169 (and (bvsge (index!11060 lt!145861) #b00000000000000000000000000000000) (bvslt (index!11060 lt!145861) (size!7414 (array!14890 (store (arr!7062 a!3312) i!1256 k!2524) (size!7414 a!3312)))))))

(declare-fun res!154688 () Bool)

(assert (=> b!294169 (= res!154688 (= (select (arr!7062 (array!14890 (store (arr!7062 a!3312) i!1256 k!2524) (size!7414 a!3312))) (index!11060 lt!145861)) k!2524))))

(declare-fun e!185986 () Bool)

(assert (=> b!294169 (=> res!154688 e!185986)))

(declare-fun e!185985 () Bool)

(assert (=> b!294169 (= e!185985 e!185986)))

(declare-fun b!294170 () Bool)

(declare-fun e!185983 () SeekEntryResult!2222)

(assert (=> b!294170 (= e!185983 e!185984)))

(declare-fun c!47311 () Bool)

(declare-fun lt!145862 () (_ BitVec 64))

(assert (=> b!294170 (= c!47311 (or (= lt!145862 k!2524) (= (bvadd lt!145862 lt!145862) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!294171 () Bool)

(assert (=> b!294171 (and (bvsge (index!11060 lt!145861) #b00000000000000000000000000000000) (bvslt (index!11060 lt!145861) (size!7414 (array!14890 (store (arr!7062 a!3312) i!1256 k!2524) (size!7414 a!3312)))))))

(assert (=> b!294171 (= e!185986 (= (select (arr!7062 (array!14890 (store (arr!7062 a!3312) i!1256 k!2524) (size!7414 a!3312))) (index!11060 lt!145861)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!66651 () Bool)

(declare-fun e!185987 () Bool)

(assert (=> d!66651 e!185987))

(declare-fun c!47313 () Bool)

(assert (=> d!66651 (= c!47313 (and (is-Intermediate!2222 lt!145861) (undefined!3034 lt!145861)))))

(assert (=> d!66651 (= lt!145861 e!185983)))

(declare-fun c!47312 () Bool)

(assert (=> d!66651 (= c!47312 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66651 (= lt!145862 (select (arr!7062 (array!14890 (store (arr!7062 a!3312) i!1256 k!2524) (size!7414 a!3312))) lt!145799))))

(assert (=> d!66651 (validMask!0 mask!3809)))

(assert (=> d!66651 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145799 k!2524 (array!14890 (store (arr!7062 a!3312) i!1256 k!2524) (size!7414 a!3312)) mask!3809) lt!145861)))

(declare-fun b!294172 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!294172 (= e!185984 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145799 #b00000000000000000000000000000000 mask!3809) k!2524 (array!14890 (store (arr!7062 a!3312) i!1256 k!2524) (size!7414 a!3312)) mask!3809))))

(declare-fun b!294173 () Bool)

(assert (=> b!294173 (and (bvsge (index!11060 lt!145861) #b00000000000000000000000000000000) (bvslt (index!11060 lt!145861) (size!7414 (array!14890 (store (arr!7062 a!3312) i!1256 k!2524) (size!7414 a!3312)))))))

(declare-fun res!154689 () Bool)

(assert (=> b!294173 (= res!154689 (= (select (arr!7062 (array!14890 (store (arr!7062 a!3312) i!1256 k!2524) (size!7414 a!3312))) (index!11060 lt!145861)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!294173 (=> res!154689 e!185986)))

(declare-fun b!294174 () Bool)

(assert (=> b!294174 (= e!185983 (Intermediate!2222 true lt!145799 #b00000000000000000000000000000000))))

(declare-fun b!294175 () Bool)

(assert (=> b!294175 (= e!185987 (bvsge (x!29217 lt!145861) #b01111111111111111111111111111110))))

(declare-fun b!294176 () Bool)

(assert (=> b!294176 (= e!185987 e!185985)))

(declare-fun res!154690 () Bool)

(assert (=> b!294176 (= res!154690 (and (is-Intermediate!2222 lt!145861) (not (undefined!3034 lt!145861)) (bvslt (x!29217 lt!145861) #b01111111111111111111111111111110) (bvsge (x!29217 lt!145861) #b00000000000000000000000000000000) (bvsge (x!29217 lt!145861) #b00000000000000000000000000000000)))))

(assert (=> b!294176 (=> (not res!154690) (not e!185985))))

(assert (= (and d!66651 c!47312) b!294174))

(assert (= (and d!66651 (not c!47312)) b!294170))

(assert (= (and b!294170 c!47311) b!294168))

(assert (= (and b!294170 (not c!47311)) b!294172))

(assert (= (and d!66651 c!47313) b!294175))

(assert (= (and d!66651 (not c!47313)) b!294176))

(assert (= (and b!294176 res!154690) b!294169))

(assert (= (and b!294169 (not res!154688)) b!294173))

(assert (= (and b!294173 (not res!154689)) b!294171))

(declare-fun m!307691 () Bool)

(assert (=> b!294173 m!307691))

(declare-fun m!307693 () Bool)

(assert (=> d!66651 m!307693))

(assert (=> d!66651 m!307611))

(assert (=> b!294169 m!307691))

(declare-fun m!307695 () Bool)

(assert (=> b!294172 m!307695))

(assert (=> b!294172 m!307695))

(declare-fun m!307697 () Bool)

(assert (=> b!294172 m!307697))

(assert (=> b!294171 m!307691))

(assert (=> b!294007 d!66651))

(declare-fun b!294186 () Bool)

(declare-fun e!185994 () SeekEntryResult!2222)

(assert (=> b!294186 (= e!185994 (Intermediate!2222 false lt!145799 #b00000000000000000000000000000000))))

(declare-fun b!294187 () Bool)

(declare-fun lt!145865 () SeekEntryResult!2222)

(assert (=> b!294187 (and (bvsge (index!11060 lt!145865) #b00000000000000000000000000000000) (bvslt (index!11060 lt!145865) (size!7414 a!3312)))))

(declare-fun res!154694 () Bool)

(assert (=> b!294187 (= res!154694 (= (select (arr!7062 a!3312) (index!11060 lt!145865)) k!2524))))

(declare-fun e!185996 () Bool)

(assert (=> b!294187 (=> res!154694 e!185996)))

(declare-fun e!185995 () Bool)

(assert (=> b!294187 (= e!185995 e!185996)))

(declare-fun b!294188 () Bool)

(declare-fun e!185993 () SeekEntryResult!2222)

(assert (=> b!294188 (= e!185993 e!185994)))

(declare-fun c!47317 () Bool)

(declare-fun lt!145866 () (_ BitVec 64))

(assert (=> b!294188 (= c!47317 (or (= lt!145866 k!2524) (= (bvadd lt!145866 lt!145866) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!294189 () Bool)

(assert (=> b!294189 (and (bvsge (index!11060 lt!145865) #b00000000000000000000000000000000) (bvslt (index!11060 lt!145865) (size!7414 a!3312)))))

(assert (=> b!294189 (= e!185996 (= (select (arr!7062 a!3312) (index!11060 lt!145865)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!66659 () Bool)

(declare-fun e!185997 () Bool)

(assert (=> d!66659 e!185997))

(declare-fun c!47319 () Bool)

(assert (=> d!66659 (= c!47319 (and (is-Intermediate!2222 lt!145865) (undefined!3034 lt!145865)))))

(assert (=> d!66659 (= lt!145865 e!185993)))

(declare-fun c!47318 () Bool)

(assert (=> d!66659 (= c!47318 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66659 (= lt!145866 (select (arr!7062 a!3312) lt!145799))))

(assert (=> d!66659 (validMask!0 mask!3809)))

(assert (=> d!66659 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145799 k!2524 a!3312 mask!3809) lt!145865)))

(declare-fun b!294190 () Bool)

(assert (=> b!294190 (= e!185994 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145799 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!294191 () Bool)

(assert (=> b!294191 (and (bvsge (index!11060 lt!145865) #b00000000000000000000000000000000) (bvslt (index!11060 lt!145865) (size!7414 a!3312)))))

(declare-fun res!154695 () Bool)

(assert (=> b!294191 (= res!154695 (= (select (arr!7062 a!3312) (index!11060 lt!145865)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!294191 (=> res!154695 e!185996)))

(declare-fun b!294192 () Bool)

(assert (=> b!294192 (= e!185993 (Intermediate!2222 true lt!145799 #b00000000000000000000000000000000))))

(declare-fun b!294193 () Bool)

(assert (=> b!294193 (= e!185997 (bvsge (x!29217 lt!145865) #b01111111111111111111111111111110))))

(declare-fun b!294194 () Bool)

(assert (=> b!294194 (= e!185997 e!185995)))

(declare-fun res!154696 () Bool)

(assert (=> b!294194 (= res!154696 (and (is-Intermediate!2222 lt!145865) (not (undefined!3034 lt!145865)) (bvslt (x!29217 lt!145865) #b01111111111111111111111111111110) (bvsge (x!29217 lt!145865) #b00000000000000000000000000000000) (bvsge (x!29217 lt!145865) #b00000000000000000000000000000000)))))

(assert (=> b!294194 (=> (not res!154696) (not e!185995))))

(assert (= (and d!66659 c!47318) b!294192))

(assert (= (and d!66659 (not c!47318)) b!294188))

(assert (= (and b!294188 c!47317) b!294186))

(assert (= (and b!294188 (not c!47317)) b!294190))

(assert (= (and d!66659 c!47319) b!294193))

(assert (= (and d!66659 (not c!47319)) b!294194))

(assert (= (and b!294194 res!154696) b!294187))

(assert (= (and b!294187 (not res!154694)) b!294191))

(assert (= (and b!294191 (not res!154695)) b!294189))

(declare-fun m!307707 () Bool)

(assert (=> b!294191 m!307707))

(declare-fun m!307709 () Bool)

(assert (=> d!66659 m!307709))

(assert (=> d!66659 m!307611))

(assert (=> b!294187 m!307707))

(assert (=> b!294190 m!307695))

(assert (=> b!294190 m!307695))

(declare-fun m!307711 () Bool)

(assert (=> b!294190 m!307711))

(assert (=> b!294189 m!307707))

(assert (=> b!294007 d!66659))

(declare-fun d!66663 () Bool)

(declare-fun lt!145880 () (_ BitVec 32))

(declare-fun lt!145879 () (_ BitVec 32))

(assert (=> d!66663 (= lt!145880 (bvmul (bvxor lt!145879 (bvlshr lt!145879 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66663 (= lt!145879 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66663 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!154700 (let ((h!5298 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29222 (bvmul (bvxor h!5298 (bvlshr h!5298 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29222 (bvlshr x!29222 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!154700 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!154700 #b00000000000000000000000000000000))))))

(assert (=> d!66663 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!145880 (bvlshr lt!145880 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!294007 d!66663))

(declare-fun b!294224 () Bool)

(declare-fun e!186019 () Bool)

(declare-fun call!25695 () Bool)

(assert (=> b!294224 (= e!186019 call!25695)))

(declare-fun bm!25692 () Bool)

(assert (=> bm!25692 (= call!25695 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!294225 () Bool)

(declare-fun e!186018 () Bool)

(assert (=> b!294225 (= e!186018 e!186019)))

(declare-fun c!47328 () Bool)

(assert (=> b!294225 (= c!47328 (validKeyInArray!0 (select (arr!7062 a!3312) #b00000000000000000000000000000000)))))

(declare-fun d!66669 () Bool)

(declare-fun res!154713 () Bool)

(assert (=> d!66669 (=> res!154713 e!186018)))

(assert (=> d!66669 (= res!154713 (bvsge #b00000000000000000000000000000000 (size!7414 a!3312)))))

(assert (=> d!66669 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!186018)))

(declare-fun b!294226 () Bool)

(declare-fun e!186020 () Bool)

(assert (=> b!294226 (= e!186020 call!25695)))

(declare-fun b!294227 () Bool)

(assert (=> b!294227 (= e!186019 e!186020)))

(declare-fun lt!145896 () (_ BitVec 64))

(assert (=> b!294227 (= lt!145896 (select (arr!7062 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9191 0))(
  ( (Unit!9192) )
))
(declare-fun lt!145897 () Unit!9191)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14889 (_ BitVec 64) (_ BitVec 32)) Unit!9191)

(assert (=> b!294227 (= lt!145897 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!145896 #b00000000000000000000000000000000))))

