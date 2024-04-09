; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49886 () Bool)

(assert start!49886)

(declare-fun b!547229 () Bool)

(declare-fun res!340955 () Bool)

(declare-fun e!316212 () Bool)

(assert (=> b!547229 (=> (not res!340955) (not e!316212))))

(declare-datatypes ((array!34506 0))(
  ( (array!34507 (arr!16572 (Array (_ BitVec 32) (_ BitVec 64))) (size!16936 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34506)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34506 (_ BitVec 32)) Bool)

(assert (=> b!547229 (= res!340955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!547230 () Bool)

(declare-fun e!316210 () Bool)

(assert (=> b!547230 (= e!316212 e!316210)))

(declare-fun res!340951 () Bool)

(assert (=> b!547230 (=> res!340951 e!316210)))

(declare-datatypes ((List!10705 0))(
  ( (Nil!10702) (Cons!10701 (h!11668 (_ BitVec 64)) (t!16941 List!10705)) )
))
(declare-fun contains!2823 (List!10705 (_ BitVec 64)) Bool)

(assert (=> b!547230 (= res!340951 (contains!2823 Nil!10702 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!547231 () Bool)

(declare-fun res!340956 () Bool)

(declare-fun e!316211 () Bool)

(assert (=> b!547231 (=> (not res!340956) (not e!316211))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34506 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!547231 (= res!340956 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!547232 () Bool)

(declare-fun res!340957 () Bool)

(assert (=> b!547232 (=> (not res!340957) (not e!316211))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!547232 (= res!340957 (and (= (size!16936 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16936 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16936 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!547233 () Bool)

(declare-fun res!340954 () Bool)

(assert (=> b!547233 (=> (not res!340954) (not e!316211))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!547233 (= res!340954 (validKeyInArray!0 (select (arr!16572 a!3118) j!142)))))

(declare-fun b!547234 () Bool)

(declare-fun res!340958 () Bool)

(assert (=> b!547234 (=> (not res!340958) (not e!316212))))

(declare-fun noDuplicate!223 (List!10705) Bool)

(assert (=> b!547234 (= res!340958 (noDuplicate!223 Nil!10702))))

(declare-fun b!547235 () Bool)

(assert (=> b!547235 (= e!316211 e!316212)))

(declare-fun res!340952 () Bool)

(assert (=> b!547235 (=> (not res!340952) (not e!316212))))

(declare-datatypes ((SeekEntryResult!5028 0))(
  ( (MissingZero!5028 (index!22339 (_ BitVec 32))) (Found!5028 (index!22340 (_ BitVec 32))) (Intermediate!5028 (undefined!5840 Bool) (index!22341 (_ BitVec 32)) (x!51315 (_ BitVec 32))) (Undefined!5028) (MissingVacant!5028 (index!22342 (_ BitVec 32))) )
))
(declare-fun lt!249500 () SeekEntryResult!5028)

(assert (=> b!547235 (= res!340952 (or (= lt!249500 (MissingZero!5028 i!1132)) (= lt!249500 (MissingVacant!5028 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34506 (_ BitVec 32)) SeekEntryResult!5028)

(assert (=> b!547235 (= lt!249500 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!340950 () Bool)

(assert (=> start!49886 (=> (not res!340950) (not e!316211))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49886 (= res!340950 (validMask!0 mask!3119))))

(assert (=> start!49886 e!316211))

(assert (=> start!49886 true))

(declare-fun array_inv!12346 (array!34506) Bool)

(assert (=> start!49886 (array_inv!12346 a!3118)))

(declare-fun b!547236 () Bool)

(assert (=> b!547236 (= e!316210 (contains!2823 Nil!10702 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!547237 () Bool)

(declare-fun res!340953 () Bool)

(assert (=> b!547237 (=> (not res!340953) (not e!316211))))

(assert (=> b!547237 (= res!340953 (validKeyInArray!0 k!1914))))

(declare-fun b!547238 () Bool)

(declare-fun res!340949 () Bool)

(assert (=> b!547238 (=> (not res!340949) (not e!316212))))

(assert (=> b!547238 (= res!340949 (and (bvsle #b00000000000000000000000000000000 (size!16936 a!3118)) (bvslt (size!16936 a!3118) #b01111111111111111111111111111111)))))

(assert (= (and start!49886 res!340950) b!547232))

(assert (= (and b!547232 res!340957) b!547233))

(assert (= (and b!547233 res!340954) b!547237))

(assert (= (and b!547237 res!340953) b!547231))

(assert (= (and b!547231 res!340956) b!547235))

(assert (= (and b!547235 res!340952) b!547229))

(assert (= (and b!547229 res!340955) b!547238))

(assert (= (and b!547238 res!340949) b!547234))

(assert (= (and b!547234 res!340958) b!547230))

(assert (= (and b!547230 (not res!340951)) b!547236))

(declare-fun m!524533 () Bool)

(assert (=> b!547237 m!524533))

(declare-fun m!524535 () Bool)

(assert (=> b!547236 m!524535))

(declare-fun m!524537 () Bool)

(assert (=> b!547235 m!524537))

(declare-fun m!524539 () Bool)

(assert (=> b!547229 m!524539))

(declare-fun m!524541 () Bool)

(assert (=> start!49886 m!524541))

(declare-fun m!524543 () Bool)

(assert (=> start!49886 m!524543))

(declare-fun m!524545 () Bool)

(assert (=> b!547230 m!524545))

(declare-fun m!524547 () Bool)

(assert (=> b!547234 m!524547))

(declare-fun m!524549 () Bool)

(assert (=> b!547233 m!524549))

(assert (=> b!547233 m!524549))

(declare-fun m!524551 () Bool)

(assert (=> b!547233 m!524551))

(declare-fun m!524553 () Bool)

(assert (=> b!547231 m!524553))

(push 1)

(assert (not b!547236))

(assert (not b!547233))

(assert (not b!547231))

(assert (not start!49886))

(assert (not b!547235))

(assert (not b!547237))

(assert (not b!547230))

(assert (not b!547229))

(assert (not b!547234))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!82381 () Bool)

(assert (=> d!82381 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!547237 d!82381))

(declare-fun d!82385 () Bool)

(declare-fun res!341035 () Bool)

(declare-fun e!316257 () Bool)

(assert (=> d!82385 (=> res!341035 e!316257)))

(assert (=> d!82385 (= res!341035 (= (select (arr!16572 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!82385 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!316257)))

(declare-fun b!547321 () Bool)

(declare-fun e!316258 () Bool)

(assert (=> b!547321 (= e!316257 e!316258)))

(declare-fun res!341036 () Bool)

(assert (=> b!547321 (=> (not res!341036) (not e!316258))))

(assert (=> b!547321 (= res!341036 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16936 a!3118)))))

(declare-fun b!547322 () Bool)

(assert (=> b!547322 (= e!316258 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82385 (not res!341035)) b!547321))

(assert (= (and b!547321 res!341036) b!547322))

(declare-fun m!524613 () Bool)

(assert (=> d!82385 m!524613))

(declare-fun m!524615 () Bool)

(assert (=> b!547322 m!524615))

(assert (=> b!547231 d!82385))

(declare-fun d!82391 () Bool)

(declare-fun lt!249520 () Bool)

(declare-fun content!229 (List!10705) (Set (_ BitVec 64)))

(assert (=> d!82391 (= lt!249520 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!229 Nil!10702)))))

(declare-fun e!316267 () Bool)

(assert (=> d!82391 (= lt!249520 e!316267)))

(declare-fun res!341045 () Bool)

(assert (=> d!82391 (=> (not res!341045) (not e!316267))))

(assert (=> d!82391 (= res!341045 (is-Cons!10701 Nil!10702))))

(assert (=> d!82391 (= (contains!2823 Nil!10702 #b1000000000000000000000000000000000000000000000000000000000000000) lt!249520)))

(declare-fun b!547331 () Bool)

(declare-fun e!316268 () Bool)

(assert (=> b!547331 (= e!316267 e!316268)))

(declare-fun res!341046 () Bool)

(assert (=> b!547331 (=> res!341046 e!316268)))

(assert (=> b!547331 (= res!341046 (= (h!11668 Nil!10702) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!547332 () Bool)

(assert (=> b!547332 (= e!316268 (contains!2823 (t!16941 Nil!10702) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!82391 res!341045) b!547331))

(assert (= (and b!547331 (not res!341046)) b!547332))

(declare-fun m!524617 () Bool)

(assert (=> d!82391 m!524617))

(declare-fun m!524619 () Bool)

(assert (=> d!82391 m!524619))

(declare-fun m!524621 () Bool)

(assert (=> b!547332 m!524621))

(assert (=> b!547236 d!82391))

(declare-fun b!547391 () Bool)

(declare-fun e!316306 () SeekEntryResult!5028)

(assert (=> b!547391 (= e!316306 Undefined!5028)))

(declare-fun d!82395 () Bool)

(declare-fun lt!249548 () SeekEntryResult!5028)

(assert (=> d!82395 (and (or (is-Undefined!5028 lt!249548) (not (is-Found!5028 lt!249548)) (and (bvsge (index!22340 lt!249548) #b00000000000000000000000000000000) (bvslt (index!22340 lt!249548) (size!16936 a!3118)))) (or (is-Undefined!5028 lt!249548) (is-Found!5028 lt!249548) (not (is-MissingZero!5028 lt!249548)) (and (bvsge (index!22339 lt!249548) #b00000000000000000000000000000000) (bvslt (index!22339 lt!249548) (size!16936 a!3118)))) (or (is-Undefined!5028 lt!249548) (is-Found!5028 lt!249548) (is-MissingZero!5028 lt!249548) (not (is-MissingVacant!5028 lt!249548)) (and (bvsge (index!22342 lt!249548) #b00000000000000000000000000000000) (bvslt (index!22342 lt!249548) (size!16936 a!3118)))) (or (is-Undefined!5028 lt!249548) (ite (is-Found!5028 lt!249548) (= (select (arr!16572 a!3118) (index!22340 lt!249548)) k!1914) (ite (is-MissingZero!5028 lt!249548) (= (select (arr!16572 a!3118) (index!22339 lt!249548)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5028 lt!249548) (= (select (arr!16572 a!3118) (index!22342 lt!249548)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!82395 (= lt!249548 e!316306)))

(declare-fun c!63494 () Bool)

(declare-fun lt!249549 () SeekEntryResult!5028)

(assert (=> d!82395 (= c!63494 (and (is-Intermediate!5028 lt!249549) (undefined!5840 lt!249549)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34506 (_ BitVec 32)) SeekEntryResult!5028)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!82395 (= lt!249549 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!82395 (validMask!0 mask!3119)))

(assert (=> d!82395 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!249548)))

(declare-fun b!547392 () Bool)

(declare-fun e!316307 () SeekEntryResult!5028)

(assert (=> b!547392 (= e!316307 (MissingZero!5028 (index!22341 lt!249549)))))

(declare-fun b!547393 () Bool)

(declare-fun e!316308 () SeekEntryResult!5028)

(assert (=> b!547393 (= e!316306 e!316308)))

(declare-fun lt!249547 () (_ BitVec 64))

(assert (=> b!547393 (= lt!249547 (select (arr!16572 a!3118) (index!22341 lt!249549)))))

(declare-fun c!63493 () Bool)

(assert (=> b!547393 (= c!63493 (= lt!249547 k!1914))))

(declare-fun b!547394 () Bool)

(assert (=> b!547394 (= e!316308 (Found!5028 (index!22341 lt!249549)))))

(declare-fun b!547395 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34506 (_ BitVec 32)) SeekEntryResult!5028)

(assert (=> b!547395 (= e!316307 (seekKeyOrZeroReturnVacant!0 (x!51315 lt!249549) (index!22341 lt!249549) (index!22341 lt!249549) k!1914 a!3118 mask!3119))))

(declare-fun b!547396 () Bool)

(declare-fun c!63492 () Bool)

(assert (=> b!547396 (= c!63492 (= lt!249547 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!547396 (= e!316308 e!316307)))

(assert (= (and d!82395 c!63494) b!547391))

(assert (= (and d!82395 (not c!63494)) b!547393))

(assert (= (and b!547393 c!63493) b!547394))

(assert (= (and b!547393 (not c!63493)) b!547396))

(assert (= (and b!547396 c!63492) b!547392))

(assert (= (and b!547396 (not c!63492)) b!547395))

(declare-fun m!524657 () Bool)

(assert (=> d!82395 m!524657))

(declare-fun m!524659 () Bool)

(assert (=> d!82395 m!524659))

(declare-fun m!524661 () Bool)

(assert (=> d!82395 m!524661))

(declare-fun m!524663 () Bool)

(assert (=> d!82395 m!524663))

(assert (=> d!82395 m!524541))

(declare-fun m!524665 () Bool)

(assert (=> d!82395 m!524665))

(assert (=> d!82395 m!524659))

(declare-fun m!524667 () Bool)

(assert (=> b!547393 m!524667))

(declare-fun m!524669 () Bool)

(assert (=> b!547395 m!524669))

(assert (=> b!547235 d!82395))

(declare-fun d!82411 () Bool)

(declare-fun lt!249550 () Bool)

(assert (=> d!82411 (= lt!249550 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!229 Nil!10702)))))

(declare-fun e!316309 () Bool)

(assert (=> d!82411 (= lt!249550 e!316309)))

(declare-fun res!341063 () Bool)

(assert (=> d!82411 (=> (not res!341063) (not e!316309))))

(assert (=> d!82411 (= res!341063 (is-Cons!10701 Nil!10702))))

(assert (=> d!82411 (= (contains!2823 Nil!10702 #b0000000000000000000000000000000000000000000000000000000000000000) lt!249550)))

(declare-fun b!547397 () Bool)

(declare-fun e!316310 () Bool)

(assert (=> b!547397 (= e!316309 e!316310)))

(declare-fun res!341064 () Bool)

(assert (=> b!547397 (=> res!341064 e!316310)))

(assert (=> b!547397 (= res!341064 (= (h!11668 Nil!10702) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!547398 () Bool)

(assert (=> b!547398 (= e!316310 (contains!2823 (t!16941 Nil!10702) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!82411 res!341063) b!547397))

(assert (= (and b!547397 (not res!341064)) b!547398))

(assert (=> d!82411 m!524617))

(declare-fun m!524671 () Bool)

(assert (=> d!82411 m!524671))

(declare-fun m!524673 () Bool)

(assert (=> b!547398 m!524673))

(assert (=> b!547230 d!82411))

(declare-fun d!82413 () Bool)

(declare-fun res!341076 () Bool)

(declare-fun e!316330 () Bool)

(assert (=> d!82413 (=> res!341076 e!316330)))

(assert (=> d!82413 (= res!341076 (bvsge #b00000000000000000000000000000000 (size!16936 a!3118)))))

(assert (=> d!82413 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!316330)))

(declare-fun b!547425 () Bool)

(declare-fun e!316331 () Bool)

(assert (=> b!547425 (= e!316330 e!316331)))

(declare-fun c!63503 () Bool)

(assert (=> b!547425 (= c!63503 (validKeyInArray!0 (select (arr!16572 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!547426 () Bool)

(declare-fun call!32171 () Bool)

(assert (=> b!547426 (= e!316331 call!32171)))

(declare-fun b!547427 () Bool)

(declare-fun e!316329 () Bool)

(assert (=> b!547427 (= e!316331 e!316329)))

(declare-fun lt!249570 () (_ BitVec 64))

(assert (=> b!547427 (= lt!249570 (select (arr!16572 a!3118) #b00000000000000000000000000000000))))

