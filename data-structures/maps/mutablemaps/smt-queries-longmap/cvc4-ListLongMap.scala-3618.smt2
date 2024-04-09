; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49800 () Bool)

(assert start!49800)

(declare-fun b!546896 () Bool)

(declare-fun res!340764 () Bool)

(declare-fun e!316012 () Bool)

(assert (=> b!546896 (=> (not res!340764) (not e!316012))))

(declare-datatypes ((array!34492 0))(
  ( (array!34493 (arr!16568 (Array (_ BitVec 32) (_ BitVec 64))) (size!16932 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34492)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546896 (= res!340764 (validKeyInArray!0 (select (arr!16568 a!3118) j!142)))))

(declare-fun b!546897 () Bool)

(declare-fun e!316011 () Bool)

(assert (=> b!546897 (= e!316011 (and (bvsle #b00000000000000000000000000000000 (size!16932 a!3118)) (bvsge (size!16932 a!3118) #b01111111111111111111111111111111)))))

(declare-fun res!340766 () Bool)

(assert (=> start!49800 (=> (not res!340766) (not e!316012))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49800 (= res!340766 (validMask!0 mask!3119))))

(assert (=> start!49800 e!316012))

(assert (=> start!49800 true))

(declare-fun array_inv!12342 (array!34492) Bool)

(assert (=> start!49800 (array_inv!12342 a!3118)))

(declare-fun b!546898 () Bool)

(declare-fun res!340761 () Bool)

(assert (=> b!546898 (=> (not res!340761) (not e!316012))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!546898 (= res!340761 (and (= (size!16932 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16932 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16932 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!546899 () Bool)

(assert (=> b!546899 (= e!316012 e!316011)))

(declare-fun res!340763 () Bool)

(assert (=> b!546899 (=> (not res!340763) (not e!316011))))

(declare-datatypes ((SeekEntryResult!5024 0))(
  ( (MissingZero!5024 (index!22323 (_ BitVec 32))) (Found!5024 (index!22324 (_ BitVec 32))) (Intermediate!5024 (undefined!5836 Bool) (index!22325 (_ BitVec 32)) (x!51295 (_ BitVec 32))) (Undefined!5024) (MissingVacant!5024 (index!22326 (_ BitVec 32))) )
))
(declare-fun lt!249380 () SeekEntryResult!5024)

(assert (=> b!546899 (= res!340763 (or (= lt!249380 (MissingZero!5024 i!1132)) (= lt!249380 (MissingVacant!5024 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34492 (_ BitVec 32)) SeekEntryResult!5024)

(assert (=> b!546899 (= lt!249380 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!546900 () Bool)

(declare-fun res!340765 () Bool)

(assert (=> b!546900 (=> (not res!340765) (not e!316012))))

(declare-fun arrayContainsKey!0 (array!34492 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546900 (= res!340765 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!546901 () Bool)

(declare-fun res!340762 () Bool)

(assert (=> b!546901 (=> (not res!340762) (not e!316011))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34492 (_ BitVec 32)) Bool)

(assert (=> b!546901 (= res!340762 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!546902 () Bool)

(declare-fun res!340760 () Bool)

(assert (=> b!546902 (=> (not res!340760) (not e!316012))))

(assert (=> b!546902 (= res!340760 (validKeyInArray!0 k!1914))))

(assert (= (and start!49800 res!340766) b!546898))

(assert (= (and b!546898 res!340761) b!546896))

(assert (= (and b!546896 res!340764) b!546902))

(assert (= (and b!546902 res!340760) b!546900))

(assert (= (and b!546900 res!340765) b!546899))

(assert (= (and b!546899 res!340763) b!546901))

(assert (= (and b!546901 res!340762) b!546897))

(declare-fun m!524283 () Bool)

(assert (=> b!546899 m!524283))

(declare-fun m!524285 () Bool)

(assert (=> b!546900 m!524285))

(declare-fun m!524287 () Bool)

(assert (=> b!546902 m!524287))

(declare-fun m!524289 () Bool)

(assert (=> b!546896 m!524289))

(assert (=> b!546896 m!524289))

(declare-fun m!524291 () Bool)

(assert (=> b!546896 m!524291))

(declare-fun m!524293 () Bool)

(assert (=> b!546901 m!524293))

(declare-fun m!524295 () Bool)

(assert (=> start!49800 m!524295))

(declare-fun m!524297 () Bool)

(assert (=> start!49800 m!524297))

(push 1)

(assert (not b!546902))

(assert (not b!546900))

(assert (not b!546901))

(assert (not start!49800))

(assert (not b!546896))

(assert (not b!546899))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!82297 () Bool)

(declare-fun res!340793 () Bool)

(declare-fun e!316044 () Bool)

(assert (=> d!82297 (=> res!340793 e!316044)))

(assert (=> d!82297 (= res!340793 (= (select (arr!16568 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!82297 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!316044)))

(declare-fun b!546939 () Bool)

(declare-fun e!316045 () Bool)

(assert (=> b!546939 (= e!316044 e!316045)))

(declare-fun res!340794 () Bool)

(assert (=> b!546939 (=> (not res!340794) (not e!316045))))

(assert (=> b!546939 (= res!340794 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16932 a!3118)))))

(declare-fun b!546940 () Bool)

(assert (=> b!546940 (= e!316045 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82297 (not res!340793)) b!546939))

(assert (= (and b!546939 res!340794) b!546940))

(declare-fun m!524317 () Bool)

(assert (=> d!82297 m!524317))

(declare-fun m!524319 () Bool)

(assert (=> b!546940 m!524319))

(assert (=> b!546900 d!82297))

(declare-fun b!546953 () Bool)

(declare-fun e!316055 () Bool)

(declare-fun call!32153 () Bool)

(assert (=> b!546953 (= e!316055 call!32153)))

(declare-fun b!546954 () Bool)

(declare-fun e!316056 () Bool)

(declare-fun e!316057 () Bool)

(assert (=> b!546954 (= e!316056 e!316057)))

(declare-fun c!63404 () Bool)

(assert (=> b!546954 (= c!63404 (validKeyInArray!0 (select (arr!16568 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!82299 () Bool)

(declare-fun res!340801 () Bool)

(assert (=> d!82299 (=> res!340801 e!316056)))

(assert (=> d!82299 (= res!340801 (bvsge #b00000000000000000000000000000000 (size!16932 a!3118)))))

(assert (=> d!82299 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!316056)))

(declare-fun b!546955 () Bool)

(assert (=> b!546955 (= e!316057 call!32153)))

(declare-fun bm!32150 () Bool)

(assert (=> bm!32150 (= call!32153 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!546956 () Bool)

(assert (=> b!546956 (= e!316057 e!316055)))

(declare-fun lt!249406 () (_ BitVec 64))

(assert (=> b!546956 (= lt!249406 (select (arr!16568 a!3118) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16926 0))(
  ( (Unit!16927) )
))
(declare-fun lt!249405 () Unit!16926)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34492 (_ BitVec 64) (_ BitVec 32)) Unit!16926)

(assert (=> b!546956 (= lt!249405 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!249406 #b00000000000000000000000000000000))))

(assert (=> b!546956 (arrayContainsKey!0 a!3118 lt!249406 #b00000000000000000000000000000000)))

(declare-fun lt!249407 () Unit!16926)

(assert (=> b!546956 (= lt!249407 lt!249405)))

(declare-fun res!340802 () Bool)

(assert (=> b!546956 (= res!340802 (= (seekEntryOrOpen!0 (select (arr!16568 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5024 #b00000000000000000000000000000000)))))

