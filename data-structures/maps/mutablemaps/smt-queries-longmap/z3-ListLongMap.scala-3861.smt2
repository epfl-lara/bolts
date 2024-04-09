; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53148 () Bool)

(assert start!53148)

(declare-fun b!577694 () Bool)

(declare-fun res!365732 () Bool)

(declare-fun e!332267 () Bool)

(assert (=> b!577694 (=> (not res!365732) (not e!332267))))

(declare-datatypes ((array!36048 0))(
  ( (array!36049 (arr!17296 (Array (_ BitVec 32) (_ BitVec 64))) (size!17660 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36048)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!577694 (= res!365732 (validKeyInArray!0 (select (arr!17296 a!2986) j!136)))))

(declare-fun b!577695 () Bool)

(declare-fun e!332266 () Bool)

(assert (=> b!577695 (= e!332267 e!332266)))

(declare-fun res!365736 () Bool)

(assert (=> b!577695 (=> (not res!365736) (not e!332266))))

(declare-datatypes ((SeekEntryResult!5743 0))(
  ( (MissingZero!5743 (index!25199 (_ BitVec 32))) (Found!5743 (index!25200 (_ BitVec 32))) (Intermediate!5743 (undefined!6555 Bool) (index!25201 (_ BitVec 32)) (x!54135 (_ BitVec 32))) (Undefined!5743) (MissingVacant!5743 (index!25202 (_ BitVec 32))) )
))
(declare-fun lt!264062 () SeekEntryResult!5743)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!577695 (= res!365736 (or (= lt!264062 (MissingZero!5743 i!1108)) (= lt!264062 (MissingVacant!5743 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36048 (_ BitVec 32)) SeekEntryResult!5743)

(assert (=> b!577695 (= lt!264062 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!577696 () Bool)

(declare-fun res!365741 () Bool)

(assert (=> b!577696 (=> (not res!365741) (not e!332267))))

(assert (=> b!577696 (= res!365741 (and (= (size!17660 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17660 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17660 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!577697 () Bool)

(declare-fun res!365733 () Bool)

(assert (=> b!577697 (=> (not res!365733) (not e!332266))))

(declare-datatypes ((List!11390 0))(
  ( (Nil!11387) (Cons!11386 (h!12431 (_ BitVec 64)) (t!17626 List!11390)) )
))
(declare-fun noDuplicate!230 (List!11390) Bool)

(assert (=> b!577697 (= res!365733 (noDuplicate!230 Nil!11387))))

(declare-fun b!577698 () Bool)

(declare-fun e!332269 () Bool)

(declare-fun contains!2906 (List!11390 (_ BitVec 64)) Bool)

(assert (=> b!577698 (= e!332269 (contains!2906 Nil!11387 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!577699 () Bool)

(declare-fun res!365735 () Bool)

(assert (=> b!577699 (=> (not res!365735) (not e!332266))))

(assert (=> b!577699 (= res!365735 (and (bvsle #b00000000000000000000000000000000 (size!17660 a!2986)) (bvslt (size!17660 a!2986) #b01111111111111111111111111111111)))))

(declare-fun b!577700 () Bool)

(declare-fun res!365739 () Bool)

(assert (=> b!577700 (=> (not res!365739) (not e!332266))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36048 (_ BitVec 32)) Bool)

(assert (=> b!577700 (= res!365739 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!365734 () Bool)

(assert (=> start!53148 (=> (not res!365734) (not e!332267))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53148 (= res!365734 (validMask!0 mask!3053))))

(assert (=> start!53148 e!332267))

(assert (=> start!53148 true))

(declare-fun array_inv!13070 (array!36048) Bool)

(assert (=> start!53148 (array_inv!13070 a!2986)))

(declare-fun b!577701 () Bool)

(assert (=> b!577701 (= e!332266 e!332269)))

(declare-fun res!365738 () Bool)

(assert (=> b!577701 (=> res!365738 e!332269)))

(assert (=> b!577701 (= res!365738 (contains!2906 Nil!11387 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!577702 () Bool)

(declare-fun res!365737 () Bool)

(assert (=> b!577702 (=> (not res!365737) (not e!332267))))

(declare-fun arrayContainsKey!0 (array!36048 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577702 (= res!365737 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!577703 () Bool)

(declare-fun res!365740 () Bool)

(assert (=> b!577703 (=> (not res!365740) (not e!332267))))

(assert (=> b!577703 (= res!365740 (validKeyInArray!0 k0!1786))))

(assert (= (and start!53148 res!365734) b!577696))

(assert (= (and b!577696 res!365741) b!577694))

(assert (= (and b!577694 res!365732) b!577703))

(assert (= (and b!577703 res!365740) b!577702))

(assert (= (and b!577702 res!365737) b!577695))

(assert (= (and b!577695 res!365736) b!577700))

(assert (= (and b!577700 res!365739) b!577699))

(assert (= (and b!577699 res!365735) b!577697))

(assert (= (and b!577697 res!365733) b!577701))

(assert (= (and b!577701 (not res!365738)) b!577698))

(declare-fun m!556505 () Bool)

(assert (=> b!577697 m!556505))

(declare-fun m!556507 () Bool)

(assert (=> b!577695 m!556507))

(declare-fun m!556509 () Bool)

(assert (=> b!577701 m!556509))

(declare-fun m!556511 () Bool)

(assert (=> b!577698 m!556511))

(declare-fun m!556513 () Bool)

(assert (=> start!53148 m!556513))

(declare-fun m!556515 () Bool)

(assert (=> start!53148 m!556515))

(declare-fun m!556517 () Bool)

(assert (=> b!577700 m!556517))

(declare-fun m!556519 () Bool)

(assert (=> b!577694 m!556519))

(assert (=> b!577694 m!556519))

(declare-fun m!556521 () Bool)

(assert (=> b!577694 m!556521))

(declare-fun m!556523 () Bool)

(assert (=> b!577703 m!556523))

(declare-fun m!556525 () Bool)

(assert (=> b!577702 m!556525))

(check-sat (not b!577698) (not b!577697) (not b!577701) (not b!577700) (not b!577695) (not b!577702) (not b!577703) (not start!53148) (not b!577694))
(check-sat)
(get-model)

(declare-fun d!85525 () Bool)

(assert (=> d!85525 (= (validKeyInArray!0 (select (arr!17296 a!2986) j!136)) (and (not (= (select (arr!17296 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17296 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!577694 d!85525))

(declare-fun b!577754 () Bool)

(declare-fun e!332300 () Bool)

(declare-fun e!332301 () Bool)

(assert (=> b!577754 (= e!332300 e!332301)))

(declare-fun c!66350 () Bool)

(assert (=> b!577754 (= c!66350 (validKeyInArray!0 (select (arr!17296 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!577755 () Bool)

(declare-fun e!332302 () Bool)

(declare-fun call!32768 () Bool)

(assert (=> b!577755 (= e!332302 call!32768)))

(declare-fun b!577756 () Bool)

(assert (=> b!577756 (= e!332301 call!32768)))

(declare-fun b!577757 () Bool)

(assert (=> b!577757 (= e!332301 e!332302)))

(declare-fun lt!264076 () (_ BitVec 64))

(assert (=> b!577757 (= lt!264076 (select (arr!17296 a!2986) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!18130 0))(
  ( (Unit!18131) )
))
(declare-fun lt!264077 () Unit!18130)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!36048 (_ BitVec 64) (_ BitVec 32)) Unit!18130)

(assert (=> b!577757 (= lt!264077 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!264076 #b00000000000000000000000000000000))))

(assert (=> b!577757 (arrayContainsKey!0 a!2986 lt!264076 #b00000000000000000000000000000000)))

(declare-fun lt!264075 () Unit!18130)

(assert (=> b!577757 (= lt!264075 lt!264077)))

(declare-fun res!365789 () Bool)

(assert (=> b!577757 (= res!365789 (= (seekEntryOrOpen!0 (select (arr!17296 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!5743 #b00000000000000000000000000000000)))))

(assert (=> b!577757 (=> (not res!365789) (not e!332302))))

(declare-fun d!85527 () Bool)

(declare-fun res!365788 () Bool)

(assert (=> d!85527 (=> res!365788 e!332300)))

(assert (=> d!85527 (= res!365788 (bvsge #b00000000000000000000000000000000 (size!17660 a!2986)))))

(assert (=> d!85527 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!332300)))

(declare-fun bm!32765 () Bool)

(assert (=> bm!32765 (= call!32768 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(assert (= (and d!85527 (not res!365788)) b!577754))

(assert (= (and b!577754 c!66350) b!577757))

(assert (= (and b!577754 (not c!66350)) b!577756))

(assert (= (and b!577757 res!365789) b!577755))

(assert (= (or b!577755 b!577756) bm!32765))

(declare-fun m!556559 () Bool)

(assert (=> b!577754 m!556559))

(assert (=> b!577754 m!556559))

(declare-fun m!556561 () Bool)

(assert (=> b!577754 m!556561))

(assert (=> b!577757 m!556559))

(declare-fun m!556563 () Bool)

(assert (=> b!577757 m!556563))

(declare-fun m!556565 () Bool)

(assert (=> b!577757 m!556565))

(assert (=> b!577757 m!556559))

(declare-fun m!556567 () Bool)

(assert (=> b!577757 m!556567))

(declare-fun m!556569 () Bool)

(assert (=> bm!32765 m!556569))

(assert (=> b!577700 d!85527))

(declare-fun d!85537 () Bool)

(assert (=> d!85537 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!577703 d!85537))

(declare-fun d!85539 () Bool)

(declare-fun lt!264089 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!232 (List!11390) (InoxSet (_ BitVec 64)))

(assert (=> d!85539 (= lt!264089 (select (content!232 Nil!11387) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!332317 () Bool)

(assert (=> d!85539 (= lt!264089 e!332317)))

(declare-fun res!365801 () Bool)

(assert (=> d!85539 (=> (not res!365801) (not e!332317))))

(get-info :version)

(assert (=> d!85539 (= res!365801 ((_ is Cons!11386) Nil!11387))))

(assert (=> d!85539 (= (contains!2906 Nil!11387 #b1000000000000000000000000000000000000000000000000000000000000000) lt!264089)))

(declare-fun b!577774 () Bool)

(declare-fun e!332316 () Bool)

(assert (=> b!577774 (= e!332317 e!332316)))

(declare-fun res!365800 () Bool)

(assert (=> b!577774 (=> res!365800 e!332316)))

(assert (=> b!577774 (= res!365800 (= (h!12431 Nil!11387) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!577775 () Bool)

(assert (=> b!577775 (= e!332316 (contains!2906 (t!17626 Nil!11387) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!85539 res!365801) b!577774))

(assert (= (and b!577774 (not res!365800)) b!577775))

(declare-fun m!556577 () Bool)

(assert (=> d!85539 m!556577))

(declare-fun m!556581 () Bool)

(assert (=> d!85539 m!556581))

(declare-fun m!556585 () Bool)

(assert (=> b!577775 m!556585))

(assert (=> b!577698 d!85539))

(declare-fun d!85543 () Bool)

(declare-fun res!365810 () Bool)

(declare-fun e!332326 () Bool)

(assert (=> d!85543 (=> res!365810 e!332326)))

(assert (=> d!85543 (= res!365810 (= (select (arr!17296 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!85543 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!332326)))

(declare-fun b!577784 () Bool)

(declare-fun e!332327 () Bool)

(assert (=> b!577784 (= e!332326 e!332327)))

(declare-fun res!365811 () Bool)

(assert (=> b!577784 (=> (not res!365811) (not e!332327))))

(assert (=> b!577784 (= res!365811 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17660 a!2986)))))

(declare-fun b!577785 () Bool)

(assert (=> b!577785 (= e!332327 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!85543 (not res!365810)) b!577784))

(assert (= (and b!577784 res!365811) b!577785))

(assert (=> d!85543 m!556559))

(declare-fun m!556587 () Bool)

(assert (=> b!577785 m!556587))

(assert (=> b!577702 d!85543))

(declare-fun d!85547 () Bool)

(declare-fun res!365822 () Bool)

(declare-fun e!332338 () Bool)

(assert (=> d!85547 (=> res!365822 e!332338)))

(assert (=> d!85547 (= res!365822 ((_ is Nil!11387) Nil!11387))))

(assert (=> d!85547 (= (noDuplicate!230 Nil!11387) e!332338)))

(declare-fun b!577796 () Bool)

(declare-fun e!332339 () Bool)

(assert (=> b!577796 (= e!332338 e!332339)))

(declare-fun res!365823 () Bool)

(assert (=> b!577796 (=> (not res!365823) (not e!332339))))

(assert (=> b!577796 (= res!365823 (not (contains!2906 (t!17626 Nil!11387) (h!12431 Nil!11387))))))

(declare-fun b!577797 () Bool)

(assert (=> b!577797 (= e!332339 (noDuplicate!230 (t!17626 Nil!11387)))))

(assert (= (and d!85547 (not res!365822)) b!577796))

(assert (= (and b!577796 res!365823) b!577797))

(declare-fun m!556595 () Bool)

(assert (=> b!577796 m!556595))

(declare-fun m!556597 () Bool)

(assert (=> b!577797 m!556597))

(assert (=> b!577697 d!85547))

(declare-fun d!85553 () Bool)

(assert (=> d!85553 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!53148 d!85553))

(declare-fun d!85561 () Bool)

(assert (=> d!85561 (= (array_inv!13070 a!2986) (bvsge (size!17660 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!53148 d!85561))

(declare-fun b!577856 () Bool)

(declare-fun e!332377 () SeekEntryResult!5743)

(declare-fun e!332376 () SeekEntryResult!5743)

(assert (=> b!577856 (= e!332377 e!332376)))

(declare-fun lt!264121 () (_ BitVec 64))

(declare-fun lt!264122 () SeekEntryResult!5743)

(assert (=> b!577856 (= lt!264121 (select (arr!17296 a!2986) (index!25201 lt!264122)))))

(declare-fun c!66377 () Bool)

(assert (=> b!577856 (= c!66377 (= lt!264121 k0!1786))))

(declare-fun b!577857 () Bool)

(assert (=> b!577857 (= e!332376 (Found!5743 (index!25201 lt!264122)))))

(declare-fun b!577858 () Bool)

(assert (=> b!577858 (= e!332377 Undefined!5743)))

(declare-fun d!85563 () Bool)

(declare-fun lt!264120 () SeekEntryResult!5743)

(assert (=> d!85563 (and (or ((_ is Undefined!5743) lt!264120) (not ((_ is Found!5743) lt!264120)) (and (bvsge (index!25200 lt!264120) #b00000000000000000000000000000000) (bvslt (index!25200 lt!264120) (size!17660 a!2986)))) (or ((_ is Undefined!5743) lt!264120) ((_ is Found!5743) lt!264120) (not ((_ is MissingZero!5743) lt!264120)) (and (bvsge (index!25199 lt!264120) #b00000000000000000000000000000000) (bvslt (index!25199 lt!264120) (size!17660 a!2986)))) (or ((_ is Undefined!5743) lt!264120) ((_ is Found!5743) lt!264120) ((_ is MissingZero!5743) lt!264120) (not ((_ is MissingVacant!5743) lt!264120)) (and (bvsge (index!25202 lt!264120) #b00000000000000000000000000000000) (bvslt (index!25202 lt!264120) (size!17660 a!2986)))) (or ((_ is Undefined!5743) lt!264120) (ite ((_ is Found!5743) lt!264120) (= (select (arr!17296 a!2986) (index!25200 lt!264120)) k0!1786) (ite ((_ is MissingZero!5743) lt!264120) (= (select (arr!17296 a!2986) (index!25199 lt!264120)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5743) lt!264120) (= (select (arr!17296 a!2986) (index!25202 lt!264120)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!85563 (= lt!264120 e!332377)))

(declare-fun c!66379 () Bool)

(assert (=> d!85563 (= c!66379 (and ((_ is Intermediate!5743) lt!264122) (undefined!6555 lt!264122)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36048 (_ BitVec 32)) SeekEntryResult!5743)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!85563 (= lt!264122 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!85563 (validMask!0 mask!3053)))

(assert (=> d!85563 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!264120)))

(declare-fun b!577859 () Bool)

(declare-fun e!332375 () SeekEntryResult!5743)

(assert (=> b!577859 (= e!332375 (MissingZero!5743 (index!25201 lt!264122)))))

(declare-fun b!577860 () Bool)

(declare-fun c!66378 () Bool)

(assert (=> b!577860 (= c!66378 (= lt!264121 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!577860 (= e!332376 e!332375)))

(declare-fun b!577861 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36048 (_ BitVec 32)) SeekEntryResult!5743)

(assert (=> b!577861 (= e!332375 (seekKeyOrZeroReturnVacant!0 (x!54135 lt!264122) (index!25201 lt!264122) (index!25201 lt!264122) k0!1786 a!2986 mask!3053))))

(assert (= (and d!85563 c!66379) b!577858))

(assert (= (and d!85563 (not c!66379)) b!577856))

(assert (= (and b!577856 c!66377) b!577857))

(assert (= (and b!577856 (not c!66377)) b!577860))

(assert (= (and b!577860 c!66378) b!577859))

(assert (= (and b!577860 (not c!66378)) b!577861))

(declare-fun m!556621 () Bool)

(assert (=> b!577856 m!556621))

(declare-fun m!556623 () Bool)

(assert (=> d!85563 m!556623))

(declare-fun m!556625 () Bool)

(assert (=> d!85563 m!556625))

(declare-fun m!556627 () Bool)

(assert (=> d!85563 m!556627))

(declare-fun m!556629 () Bool)

(assert (=> d!85563 m!556629))

(declare-fun m!556631 () Bool)

(assert (=> d!85563 m!556631))

(assert (=> d!85563 m!556513))

(assert (=> d!85563 m!556629))

(declare-fun m!556637 () Bool)

(assert (=> b!577861 m!556637))

(assert (=> b!577695 d!85563))

(declare-fun d!85573 () Bool)

(declare-fun lt!264126 () Bool)

(assert (=> d!85573 (= lt!264126 (select (content!232 Nil!11387) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!332382 () Bool)

(assert (=> d!85573 (= lt!264126 e!332382)))

(declare-fun res!365839 () Bool)

(assert (=> d!85573 (=> (not res!365839) (not e!332382))))

(assert (=> d!85573 (= res!365839 ((_ is Cons!11386) Nil!11387))))

(assert (=> d!85573 (= (contains!2906 Nil!11387 #b0000000000000000000000000000000000000000000000000000000000000000) lt!264126)))

(declare-fun b!577866 () Bool)

(declare-fun e!332381 () Bool)

(assert (=> b!577866 (= e!332382 e!332381)))

(declare-fun res!365838 () Bool)

(assert (=> b!577866 (=> res!365838 e!332381)))

(assert (=> b!577866 (= res!365838 (= (h!12431 Nil!11387) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!577867 () Bool)

(assert (=> b!577867 (= e!332381 (contains!2906 (t!17626 Nil!11387) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!85573 res!365839) b!577866))

(assert (= (and b!577866 (not res!365838)) b!577867))

(assert (=> d!85573 m!556577))

(declare-fun m!556645 () Bool)

(assert (=> d!85573 m!556645))

(declare-fun m!556647 () Bool)

(assert (=> b!577867 m!556647))

(assert (=> b!577701 d!85573))

(check-sat (not b!577754) (not b!577867) (not b!577861) (not bm!32765) (not d!85539) (not b!577797) (not b!577775) (not b!577785) (not d!85563) (not b!577757) (not b!577796) (not d!85573))
(check-sat)
