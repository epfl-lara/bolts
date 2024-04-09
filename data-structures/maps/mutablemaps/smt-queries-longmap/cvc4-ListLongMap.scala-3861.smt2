; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53150 () Bool)

(assert start!53150)

(declare-fun b!577724 () Bool)

(declare-fun e!332278 () Bool)

(declare-fun e!332281 () Bool)

(assert (=> b!577724 (= e!332278 e!332281)))

(declare-fun res!365766 () Bool)

(assert (=> b!577724 (=> res!365766 e!332281)))

(declare-datatypes ((List!11391 0))(
  ( (Nil!11388) (Cons!11387 (h!12432 (_ BitVec 64)) (t!17627 List!11391)) )
))
(declare-fun contains!2907 (List!11391 (_ BitVec 64)) Bool)

(assert (=> b!577724 (= res!365766 (contains!2907 Nil!11388 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!577725 () Bool)

(declare-fun res!365764 () Bool)

(declare-fun e!332280 () Bool)

(assert (=> b!577725 (=> (not res!365764) (not e!332280))))

(declare-datatypes ((array!36050 0))(
  ( (array!36051 (arr!17297 (Array (_ BitVec 32) (_ BitVec 64))) (size!17661 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36050)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!577725 (= res!365764 (validKeyInArray!0 (select (arr!17297 a!2986) j!136)))))

(declare-fun b!577726 () Bool)

(declare-fun res!365762 () Bool)

(assert (=> b!577726 (=> (not res!365762) (not e!332278))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36050 (_ BitVec 32)) Bool)

(assert (=> b!577726 (= res!365762 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!577727 () Bool)

(declare-fun res!365769 () Bool)

(assert (=> b!577727 (=> (not res!365769) (not e!332280))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!577727 (= res!365769 (validKeyInArray!0 k!1786))))

(declare-fun b!577728 () Bool)

(declare-fun res!365767 () Bool)

(assert (=> b!577728 (=> (not res!365767) (not e!332280))))

(declare-fun arrayContainsKey!0 (array!36050 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577728 (= res!365767 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!577729 () Bool)

(declare-fun res!365771 () Bool)

(assert (=> b!577729 (=> (not res!365771) (not e!332280))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!577729 (= res!365771 (and (= (size!17661 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17661 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17661 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!577730 () Bool)

(declare-fun res!365763 () Bool)

(assert (=> b!577730 (=> (not res!365763) (not e!332278))))

(assert (=> b!577730 (= res!365763 (and (bvsle #b00000000000000000000000000000000 (size!17661 a!2986)) (bvslt (size!17661 a!2986) #b01111111111111111111111111111111)))))

(declare-fun res!365770 () Bool)

(assert (=> start!53150 (=> (not res!365770) (not e!332280))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53150 (= res!365770 (validMask!0 mask!3053))))

(assert (=> start!53150 e!332280))

(assert (=> start!53150 true))

(declare-fun array_inv!13071 (array!36050) Bool)

(assert (=> start!53150 (array_inv!13071 a!2986)))

(declare-fun b!577731 () Bool)

(assert (=> b!577731 (= e!332281 (contains!2907 Nil!11388 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!577732 () Bool)

(declare-fun res!365765 () Bool)

(assert (=> b!577732 (=> (not res!365765) (not e!332278))))

(declare-fun noDuplicate!231 (List!11391) Bool)

(assert (=> b!577732 (= res!365765 (noDuplicate!231 Nil!11388))))

(declare-fun b!577733 () Bool)

(assert (=> b!577733 (= e!332280 e!332278)))

(declare-fun res!365768 () Bool)

(assert (=> b!577733 (=> (not res!365768) (not e!332278))))

(declare-datatypes ((SeekEntryResult!5744 0))(
  ( (MissingZero!5744 (index!25203 (_ BitVec 32))) (Found!5744 (index!25204 (_ BitVec 32))) (Intermediate!5744 (undefined!6556 Bool) (index!25205 (_ BitVec 32)) (x!54136 (_ BitVec 32))) (Undefined!5744) (MissingVacant!5744 (index!25206 (_ BitVec 32))) )
))
(declare-fun lt!264065 () SeekEntryResult!5744)

(assert (=> b!577733 (= res!365768 (or (= lt!264065 (MissingZero!5744 i!1108)) (= lt!264065 (MissingVacant!5744 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36050 (_ BitVec 32)) SeekEntryResult!5744)

(assert (=> b!577733 (= lt!264065 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!53150 res!365770) b!577729))

(assert (= (and b!577729 res!365771) b!577725))

(assert (= (and b!577725 res!365764) b!577727))

(assert (= (and b!577727 res!365769) b!577728))

(assert (= (and b!577728 res!365767) b!577733))

(assert (= (and b!577733 res!365768) b!577726))

(assert (= (and b!577726 res!365762) b!577730))

(assert (= (and b!577730 res!365763) b!577732))

(assert (= (and b!577732 res!365765) b!577724))

(assert (= (and b!577724 (not res!365766)) b!577731))

(declare-fun m!556527 () Bool)

(assert (=> b!577725 m!556527))

(assert (=> b!577725 m!556527))

(declare-fun m!556529 () Bool)

(assert (=> b!577725 m!556529))

(declare-fun m!556531 () Bool)

(assert (=> b!577733 m!556531))

(declare-fun m!556533 () Bool)

(assert (=> b!577727 m!556533))

(declare-fun m!556535 () Bool)

(assert (=> start!53150 m!556535))

(declare-fun m!556537 () Bool)

(assert (=> start!53150 m!556537))

(declare-fun m!556539 () Bool)

(assert (=> b!577724 m!556539))

(declare-fun m!556541 () Bool)

(assert (=> b!577732 m!556541))

(declare-fun m!556543 () Bool)

(assert (=> b!577728 m!556543))

(declare-fun m!556545 () Bool)

(assert (=> b!577726 m!556545))

(declare-fun m!556547 () Bool)

(assert (=> b!577731 m!556547))

(push 1)

(assert (not b!577724))

(assert (not b!577727))

(assert (not b!577732))

(assert (not b!577733))

(assert (not b!577726))

(assert (not b!577728))

(assert (not b!577725))

(assert (not start!53150))

(assert (not b!577731))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!85531 () Bool)

(declare-fun lt!264072 () Bool)

(declare-fun content!231 (List!11391) (Set (_ BitVec 64)))

(assert (=> d!85531 (= lt!264072 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!231 Nil!11388)))))

(declare-fun e!332296 () Bool)

(assert (=> d!85531 (= lt!264072 e!332296)))

(declare-fun res!365785 () Bool)

(assert (=> d!85531 (=> (not res!365785) (not e!332296))))

(assert (=> d!85531 (= res!365785 (is-Cons!11387 Nil!11388))))

(assert (=> d!85531 (= (contains!2907 Nil!11388 #b0000000000000000000000000000000000000000000000000000000000000000) lt!264072)))

(declare-fun b!577750 () Bool)

(declare-fun e!332297 () Bool)

(assert (=> b!577750 (= e!332296 e!332297)))

(declare-fun res!365784 () Bool)

(assert (=> b!577750 (=> res!365784 e!332297)))

(assert (=> b!577750 (= res!365784 (= (h!12432 Nil!11388) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!577751 () Bool)

(assert (=> b!577751 (= e!332297 (contains!2907 (t!17627 Nil!11388) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!85531 res!365785) b!577750))

(assert (= (and b!577750 (not res!365784)) b!577751))

(declare-fun m!556553 () Bool)

(assert (=> d!85531 m!556553))

(declare-fun m!556555 () Bool)

(assert (=> d!85531 m!556555))

(declare-fun m!556557 () Bool)

(assert (=> b!577751 m!556557))

(assert (=> b!577724 d!85531))

(declare-fun d!85535 () Bool)

(assert (=> d!85535 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!53150 d!85535))

(declare-fun d!85545 () Bool)

(assert (=> d!85545 (= (array_inv!13071 a!2986) (bvsge (size!17661 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!53150 d!85545))

(declare-fun b!577813 () Bool)

(declare-fun e!332348 () SeekEntryResult!5744)

(declare-fun lt!264101 () SeekEntryResult!5744)

(assert (=> b!577813 (= e!332348 (MissingZero!5744 (index!25205 lt!264101)))))

(declare-fun b!577814 () Bool)

(declare-fun e!332350 () SeekEntryResult!5744)

(assert (=> b!577814 (= e!332350 (Found!5744 (index!25205 lt!264101)))))

(declare-fun b!577815 () Bool)

(declare-fun e!332349 () SeekEntryResult!5744)

(assert (=> b!577815 (= e!332349 e!332350)))

(declare-fun lt!264100 () (_ BitVec 64))

(assert (=> b!577815 (= lt!264100 (select (arr!17297 a!2986) (index!25205 lt!264101)))))

(declare-fun c!66362 () Bool)

(assert (=> b!577815 (= c!66362 (= lt!264100 k!1786))))

(declare-fun b!577816 () Bool)

(assert (=> b!577816 (= e!332349 Undefined!5744)))

(declare-fun b!577817 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36050 (_ BitVec 32)) SeekEntryResult!5744)

(assert (=> b!577817 (= e!332348 (seekKeyOrZeroReturnVacant!0 (x!54136 lt!264101) (index!25205 lt!264101) (index!25205 lt!264101) k!1786 a!2986 mask!3053))))

(declare-fun b!577812 () Bool)

(declare-fun c!66361 () Bool)

(assert (=> b!577812 (= c!66361 (= lt!264100 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!577812 (= e!332350 e!332348)))

(declare-fun d!85549 () Bool)

(declare-fun lt!264099 () SeekEntryResult!5744)

(assert (=> d!85549 (and (or (is-Undefined!5744 lt!264099) (not (is-Found!5744 lt!264099)) (and (bvsge (index!25204 lt!264099) #b00000000000000000000000000000000) (bvslt (index!25204 lt!264099) (size!17661 a!2986)))) (or (is-Undefined!5744 lt!264099) (is-Found!5744 lt!264099) (not (is-MissingZero!5744 lt!264099)) (and (bvsge (index!25203 lt!264099) #b00000000000000000000000000000000) (bvslt (index!25203 lt!264099) (size!17661 a!2986)))) (or (is-Undefined!5744 lt!264099) (is-Found!5744 lt!264099) (is-MissingZero!5744 lt!264099) (not (is-MissingVacant!5744 lt!264099)) (and (bvsge (index!25206 lt!264099) #b00000000000000000000000000000000) (bvslt (index!25206 lt!264099) (size!17661 a!2986)))) (or (is-Undefined!5744 lt!264099) (ite (is-Found!5744 lt!264099) (= (select (arr!17297 a!2986) (index!25204 lt!264099)) k!1786) (ite (is-MissingZero!5744 lt!264099) (= (select (arr!17297 a!2986) (index!25203 lt!264099)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5744 lt!264099) (= (select (arr!17297 a!2986) (index!25206 lt!264099)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!85549 (= lt!264099 e!332349)))

(declare-fun c!66360 () Bool)

(assert (=> d!85549 (= c!66360 (and (is-Intermediate!5744 lt!264101) (undefined!6556 lt!264101)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36050 (_ BitVec 32)) SeekEntryResult!5744)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!85549 (= lt!264101 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!85549 (validMask!0 mask!3053)))

(assert (=> d!85549 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!264099)))

(assert (= (and d!85549 c!66360) b!577816))

(assert (= (and d!85549 (not c!66360)) b!577815))

(assert (= (and b!577815 c!66362) b!577814))

(assert (= (and b!577815 (not c!66362)) b!577812))

(assert (= (and b!577812 c!66361) b!577813))

(assert (= (and b!577812 (not c!66361)) b!577817))

(declare-fun m!556603 () Bool)

(assert (=> b!577815 m!556603))

(declare-fun m!556605 () Bool)

(assert (=> b!577817 m!556605))

(assert (=> d!85549 m!556535))

(declare-fun m!556607 () Bool)

(assert (=> d!85549 m!556607))

(declare-fun m!556609 () Bool)

(assert (=> d!85549 m!556609))

(declare-fun m!556611 () Bool)

(assert (=> d!85549 m!556611))

(declare-fun m!556613 () Bool)

(assert (=> d!85549 m!556613))

(assert (=> d!85549 m!556609))

(declare-fun m!556615 () Bool)

(assert (=> d!85549 m!556615))

(assert (=> b!577733 d!85549))

(declare-fun d!85569 () Bool)

(declare-fun res!365830 () Bool)

(declare-fun e!332355 () Bool)

(assert (=> d!85569 (=> res!365830 e!332355)))

(assert (=> d!85569 (= res!365830 (= (select (arr!17297 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!85569 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!332355)))

(declare-fun b!577822 () Bool)

(declare-fun e!332356 () Bool)

(assert (=> b!577822 (= e!332355 e!332356)))

(declare-fun res!365831 () Bool)

(assert (=> b!577822 (=> (not res!365831) (not e!332356))))

(assert (=> b!577822 (= res!365831 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17661 a!2986)))))

(declare-fun b!577823 () Bool)

(assert (=> b!577823 (= e!332356 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!85569 (not res!365830)) b!577822))

(assert (= (and b!577822 res!365831) b!577823))

(declare-fun m!556617 () Bool)

(assert (=> d!85569 m!556617))

(declare-fun m!556619 () Bool)

(assert (=> b!577823 m!556619))

(assert (=> b!577728 d!85569))

(declare-fun b!577862 () Bool)

(declare-fun e!332378 () Bool)

(declare-fun call!32774 () Bool)

(assert (=> b!577862 (= e!332378 call!32774)))

(declare-fun b!577863 () Bool)

(declare-fun e!332379 () Bool)

(assert (=> b!577863 (= e!332378 e!332379)))

(declare-fun lt!264125 () (_ BitVec 64))

(assert (=> b!577863 (= lt!264125 (select (arr!17297 a!2986) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!18134 0))(
  ( (Unit!18135) )
))
(declare-fun lt!264123 () Unit!18134)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!36050 (_ BitVec 64) (_ BitVec 32)) Unit!18134)

(assert (=> b!577863 (= lt!264123 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!264125 #b00000000000000000000000000000000))))

(assert (=> b!577863 (arrayContainsKey!0 a!2986 lt!264125 #b00000000000000000000000000000000)))

(declare-fun lt!264124 () Unit!18134)

(assert (=> b!577863 (= lt!264124 lt!264123)))

(declare-fun res!365836 () Bool)

(assert (=> b!577863 (= res!365836 (= (seekEntryOrOpen!0 (select (arr!17297 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!5744 #b00000000000000000000000000000000)))))

