; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92396 () Bool)

(assert start!92396)

(declare-fun b!1049952 () Bool)

(declare-fun e!595806 () Bool)

(declare-fun e!595801 () Bool)

(assert (=> b!1049952 (= e!595806 e!595801)))

(declare-fun res!699187 () Bool)

(assert (=> b!1049952 (=> res!699187 e!595801)))

(declare-fun lt!463726 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1049952 (= res!699187 (bvsle lt!463726 i!1381))))

(declare-fun b!1049953 () Bool)

(declare-fun res!699188 () Bool)

(declare-fun e!595805 () Bool)

(assert (=> b!1049953 (=> res!699188 e!595805)))

(declare-datatypes ((List!22251 0))(
  ( (Nil!22248) (Cons!22247 (h!23456 (_ BitVec 64)) (t!31565 List!22251)) )
))
(declare-fun noDuplicate!1528 (List!22251) Bool)

(assert (=> b!1049953 (= res!699188 (not (noDuplicate!1528 Nil!22248)))))

(declare-fun b!1049954 () Bool)

(declare-fun e!595804 () Bool)

(declare-fun e!595802 () Bool)

(assert (=> b!1049954 (= e!595804 e!595802)))

(declare-fun res!699194 () Bool)

(assert (=> b!1049954 (=> (not res!699194) (not e!595802))))

(declare-datatypes ((array!66145 0))(
  ( (array!66146 (arr!31808 (Array (_ BitVec 32) (_ BitVec 64))) (size!32345 (_ BitVec 32))) )
))
(declare-fun lt!463729 () array!66145)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66145 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1049954 (= res!699194 (arrayContainsKey!0 lt!463729 k0!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66145)

(assert (=> b!1049954 (= lt!463729 (array!66146 (store (arr!31808 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32345 a!3488)))))

(declare-fun b!1049955 () Bool)

(declare-fun e!595803 () Bool)

(assert (=> b!1049955 (= e!595803 e!595805)))

(declare-fun res!699196 () Bool)

(assert (=> b!1049955 (=> res!699196 e!595805)))

(assert (=> b!1049955 (= res!699196 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32345 a!3488)))))

(assert (=> b!1049955 (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34345 0))(
  ( (Unit!34346) )
))
(declare-fun lt!463727 () Unit!34345)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66145 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34345)

(assert (=> b!1049955 (= lt!463727 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 lt!463726 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-fun arrayNoDuplicates!0 (array!66145 (_ BitVec 32) List!22251) Bool)

(assert (=> b!1049955 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22248)))

(declare-fun lt!463728 () Unit!34345)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66145 (_ BitVec 32) (_ BitVec 32)) Unit!34345)

(assert (=> b!1049955 (= lt!463728 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun res!699197 () Bool)

(assert (=> start!92396 (=> (not res!699197) (not e!595804))))

(assert (=> start!92396 (= res!699197 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32345 a!3488)) (bvslt (size!32345 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92396 e!595804))

(assert (=> start!92396 true))

(declare-fun array_inv!24430 (array!66145) Bool)

(assert (=> start!92396 (array_inv!24430 a!3488)))

(declare-fun b!1049956 () Bool)

(declare-fun res!699190 () Bool)

(assert (=> b!1049956 (=> (not res!699190) (not e!595804))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1049956 (= res!699190 (validKeyInArray!0 k0!2747))))

(declare-fun b!1049957 () Bool)

(declare-fun res!699193 () Bool)

(assert (=> b!1049957 (=> (not res!699193) (not e!595804))))

(assert (=> b!1049957 (= res!699193 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22248))))

(declare-fun b!1049958 () Bool)

(declare-fun res!699189 () Bool)

(assert (=> b!1049958 (=> res!699189 e!595805)))

(declare-fun contains!6143 (List!22251 (_ BitVec 64)) Bool)

(assert (=> b!1049958 (= res!699189 (contains!6143 Nil!22248 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049959 () Bool)

(assert (=> b!1049959 (= e!595801 (arrayContainsKey!0 a!3488 k0!2747 lt!463726))))

(declare-fun b!1049960 () Bool)

(assert (=> b!1049960 (= e!595805 true)))

(declare-fun lt!463725 () Bool)

(assert (=> b!1049960 (= lt!463725 (contains!6143 Nil!22248 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049961 () Bool)

(declare-fun e!595807 () Bool)

(assert (=> b!1049961 (= e!595807 (not e!595803))))

(declare-fun res!699191 () Bool)

(assert (=> b!1049961 (=> res!699191 e!595803)))

(assert (=> b!1049961 (= res!699191 (bvsle lt!463726 i!1381))))

(assert (=> b!1049961 e!595806))

(declare-fun res!699195 () Bool)

(assert (=> b!1049961 (=> (not res!699195) (not e!595806))))

(assert (=> b!1049961 (= res!699195 (= (select (store (arr!31808 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463726) k0!2747))))

(declare-fun b!1049962 () Bool)

(assert (=> b!1049962 (= e!595802 e!595807)))

(declare-fun res!699192 () Bool)

(assert (=> b!1049962 (=> (not res!699192) (not e!595807))))

(assert (=> b!1049962 (= res!699192 (not (= lt!463726 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66145 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1049962 (= lt!463726 (arrayScanForKey!0 lt!463729 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1049963 () Bool)

(declare-fun res!699198 () Bool)

(assert (=> b!1049963 (=> (not res!699198) (not e!595804))))

(assert (=> b!1049963 (= res!699198 (= (select (arr!31808 a!3488) i!1381) k0!2747))))

(assert (= (and start!92396 res!699197) b!1049957))

(assert (= (and b!1049957 res!699193) b!1049956))

(assert (= (and b!1049956 res!699190) b!1049963))

(assert (= (and b!1049963 res!699198) b!1049954))

(assert (= (and b!1049954 res!699194) b!1049962))

(assert (= (and b!1049962 res!699192) b!1049961))

(assert (= (and b!1049961 res!699195) b!1049952))

(assert (= (and b!1049952 (not res!699187)) b!1049959))

(assert (= (and b!1049961 (not res!699191)) b!1049955))

(assert (= (and b!1049955 (not res!699196)) b!1049953))

(assert (= (and b!1049953 (not res!699188)) b!1049958))

(assert (= (and b!1049958 (not res!699189)) b!1049960))

(declare-fun m!970793 () Bool)

(assert (=> b!1049960 m!970793))

(declare-fun m!970795 () Bool)

(assert (=> b!1049963 m!970795))

(declare-fun m!970797 () Bool)

(assert (=> b!1049961 m!970797))

(declare-fun m!970799 () Bool)

(assert (=> b!1049961 m!970799))

(declare-fun m!970801 () Bool)

(assert (=> b!1049958 m!970801))

(declare-fun m!970803 () Bool)

(assert (=> b!1049957 m!970803))

(declare-fun m!970805 () Bool)

(assert (=> b!1049955 m!970805))

(declare-fun m!970807 () Bool)

(assert (=> b!1049955 m!970807))

(declare-fun m!970809 () Bool)

(assert (=> b!1049955 m!970809))

(declare-fun m!970811 () Bool)

(assert (=> b!1049955 m!970811))

(declare-fun m!970813 () Bool)

(assert (=> b!1049956 m!970813))

(declare-fun m!970815 () Bool)

(assert (=> b!1049954 m!970815))

(assert (=> b!1049954 m!970797))

(declare-fun m!970817 () Bool)

(assert (=> start!92396 m!970817))

(declare-fun m!970819 () Bool)

(assert (=> b!1049959 m!970819))

(declare-fun m!970821 () Bool)

(assert (=> b!1049962 m!970821))

(declare-fun m!970823 () Bool)

(assert (=> b!1049953 m!970823))

(check-sat (not b!1049953) (not b!1049960) (not start!92396) (not b!1049954) (not b!1049957) (not b!1049955) (not b!1049956) (not b!1049959) (not b!1049958) (not b!1049962))
(check-sat)
