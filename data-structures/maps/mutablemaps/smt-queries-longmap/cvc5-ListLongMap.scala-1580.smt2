; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30030 () Bool)

(assert start!30030)

(declare-fun res!159012 () Bool)

(declare-fun e!190060 () Bool)

(assert (=> start!30030 (=> (not res!159012) (not e!190060))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30030 (= res!159012 (validMask!0 mask!3709))))

(assert (=> start!30030 e!190060))

(assert (=> start!30030 true))

(declare-datatypes ((array!15251 0))(
  ( (array!15252 (arr!7216 (Array (_ BitVec 32) (_ BitVec 64))) (size!7568 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15251)

(declare-fun array_inv!5170 (array!15251) Bool)

(assert (=> start!30030 (array_inv!5170 a!3293)))

(declare-fun b!301099 () Bool)

(declare-fun res!159009 () Bool)

(assert (=> b!301099 (=> (not res!159009) (not e!190060))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15251 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301099 (= res!159009 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!301100 () Bool)

(declare-fun res!159010 () Bool)

(assert (=> b!301100 (=> (not res!159010) (not e!190060))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301100 (= res!159010 (validKeyInArray!0 k!2441))))

(declare-fun b!301101 () Bool)

(declare-fun res!159011 () Bool)

(assert (=> b!301101 (=> (not res!159011) (not e!190060))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15251 (_ BitVec 32)) Bool)

(assert (=> b!301101 (= res!159011 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!301102 () Bool)

(assert (=> b!301102 (= e!190060 (and (bvsge mask!3709 #b00000000000000000000000000000000) (bvsgt mask!3709 #b00111111111111111111111111111111)))))

(declare-fun b!301103 () Bool)

(declare-fun res!159007 () Bool)

(assert (=> b!301103 (=> (not res!159007) (not e!190060))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2367 0))(
  ( (MissingZero!2367 (index!11644 (_ BitVec 32))) (Found!2367 (index!11645 (_ BitVec 32))) (Intermediate!2367 (undefined!3179 Bool) (index!11646 (_ BitVec 32)) (x!29890 (_ BitVec 32))) (Undefined!2367) (MissingVacant!2367 (index!11647 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15251 (_ BitVec 32)) SeekEntryResult!2367)

(assert (=> b!301103 (= res!159007 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2367 i!1240)))))

(declare-fun b!301104 () Bool)

(declare-fun res!159008 () Bool)

(assert (=> b!301104 (=> (not res!159008) (not e!190060))))

(assert (=> b!301104 (= res!159008 (and (= (size!7568 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7568 a!3293))))))

(assert (= (and start!30030 res!159012) b!301104))

(assert (= (and b!301104 res!159008) b!301100))

(assert (= (and b!301100 res!159010) b!301099))

(assert (= (and b!301099 res!159009) b!301103))

(assert (= (and b!301103 res!159007) b!301101))

(assert (= (and b!301101 res!159011) b!301102))

(declare-fun m!312955 () Bool)

(assert (=> b!301100 m!312955))

(declare-fun m!312957 () Bool)

(assert (=> b!301099 m!312957))

(declare-fun m!312959 () Bool)

(assert (=> b!301103 m!312959))

(declare-fun m!312961 () Bool)

(assert (=> start!30030 m!312961))

(declare-fun m!312963 () Bool)

(assert (=> start!30030 m!312963))

(declare-fun m!312965 () Bool)

(assert (=> b!301101 m!312965))

(push 1)

(assert (not b!301101))

(assert (not b!301099))

(assert (not b!301103))

(assert (not start!30030))

(assert (not b!301100))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!67729 () Bool)

(declare-fun res!159053 () Bool)

(declare-fun e!190077 () Bool)

(assert (=> d!67729 (=> res!159053 e!190077)))

(assert (=> d!67729 (= res!159053 (= (select (arr!7216 a!3293) #b00000000000000000000000000000000) k!2441))))

(assert (=> d!67729 (= (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000) e!190077)))

(declare-fun b!301145 () Bool)

(declare-fun e!190078 () Bool)

(assert (=> b!301145 (= e!190077 e!190078)))

(declare-fun res!159054 () Bool)

(assert (=> b!301145 (=> (not res!159054) (not e!190078))))

(assert (=> b!301145 (= res!159054 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7568 a!3293)))))

(declare-fun b!301146 () Bool)

(assert (=> b!301146 (= e!190078 (arrayContainsKey!0 a!3293 k!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67729 (not res!159053)) b!301145))

(assert (= (and b!301145 res!159054) b!301146))

(declare-fun m!312991 () Bool)

(assert (=> d!67729 m!312991))

(declare-fun m!312993 () Bool)

(assert (=> b!301146 m!312993))

(assert (=> b!301099 d!67729))

(declare-fun d!67733 () Bool)

(assert (=> d!67733 (= (validKeyInArray!0 k!2441) (and (not (= k!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!301100 d!67733))

(declare-fun d!67735 () Bool)

(assert (=> d!67735 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!30030 d!67735))

(declare-fun d!67737 () Bool)

(assert (=> d!67737 (= (array_inv!5170 a!3293) (bvsge (size!7568 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!30030 d!67737))

(declare-fun bm!25859 () Bool)

(declare-fun call!25862 () Bool)

(assert (=> bm!25859 (= call!25862 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!301197 () Bool)

(declare-fun e!190111 () Bool)

(declare-fun e!190109 () Bool)

(assert (=> b!301197 (= e!190111 e!190109)))

(declare-fun lt!149776 () (_ BitVec 64))

(assert (=> b!301197 (= lt!149776 (select (arr!7216 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9364 0))(
  ( (Unit!9365) )
))
(declare-fun lt!149775 () Unit!9364)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15251 (_ BitVec 64) (_ BitVec 32)) Unit!9364)

(assert (=> b!301197 (= lt!149775 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!149776 #b00000000000000000000000000000000))))

(assert (=> b!301197 (arrayContainsKey!0 a!3293 lt!149776 #b00000000000000000000000000000000)))

(declare-fun lt!149777 () Unit!9364)

(assert (=> b!301197 (= lt!149777 lt!149775)))

(declare-fun res!159065 () Bool)

(assert (=> b!301197 (= res!159065 (= (seekEntryOrOpen!0 (select (arr!7216 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2367 #b00000000000000000000000000000000)))))

(assert (=> b!301197 (=> (not res!159065) (not e!190109))))

(declare-fun b!301198 () Bool)

(assert (=> b!301198 (= e!190109 call!25862)))

(declare-fun b!301199 () Bool)

(declare-fun e!190110 () Bool)

(assert (=> b!301199 (= e!190110 e!190111)))

(declare-fun c!48662 () Bool)

(assert (=> b!301199 (= c!48662 (validKeyInArray!0 (select (arr!7216 a!3293) #b00000000000000000000000000000000)))))

(declare-fun d!67739 () Bool)

(declare-fun res!159066 () Bool)

(assert (=> d!67739 (=> res!159066 e!190110)))

(assert (=> d!67739 (= res!159066 (bvsge #b00000000000000000000000000000000 (size!7568 a!3293)))))

(assert (=> d!67739 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!190110)))

(declare-fun b!301200 () Bool)

(assert (=> b!301200 (= e!190111 call!25862)))

(assert (= (and d!67739 (not res!159066)) b!301199))

(assert (= (and b!301199 c!48662) b!301197))

(assert (= (and b!301199 (not c!48662)) b!301200))

(assert (= (and b!301197 res!159065) b!301198))

(assert (= (or b!301198 b!301200) bm!25859))

(declare-fun m!313027 () Bool)

(assert (=> bm!25859 m!313027))

(assert (=> b!301197 m!312991))

(declare-fun m!313029 () Bool)

(assert (=> b!301197 m!313029))

(declare-fun m!313031 () Bool)

(assert (=> b!301197 m!313031))

(assert (=> b!301197 m!312991))

(declare-fun m!313033 () Bool)

(assert (=> b!301197 m!313033))

(assert (=> b!301199 m!312991))

(assert (=> b!301199 m!312991))

(declare-fun m!313035 () Bool)

(assert (=> b!301199 m!313035))

(assert (=> b!301101 d!67739))

(declare-fun b!301243 () Bool)

(declare-fun c!48675 () Bool)

(declare-fun lt!149804 () (_ BitVec 64))

(assert (=> b!301243 (= c!48675 (= lt!149804 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!190143 () SeekEntryResult!2367)

(declare-fun e!190142 () SeekEntryResult!2367)

(assert (=> b!301243 (= e!190143 e!190142)))

(declare-fun b!301244 () Bool)

(declare-fun lt!149802 () SeekEntryResult!2367)

(assert (=> b!301244 (= e!190142 (MissingZero!2367 (index!11646 lt!149802)))))

(declare-fun d!67747 () Bool)

(declare-fun lt!149803 () SeekEntryResult!2367)

