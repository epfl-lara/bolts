; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93472 () Bool)

(assert start!93472)

(declare-fun b!1058275 () Bool)

(declare-fun e!602078 () Bool)

(declare-fun e!602073 () Bool)

(assert (=> b!1058275 (= e!602078 (not e!602073))))

(declare-fun res!706966 () Bool)

(assert (=> b!1058275 (=> res!706966 e!602073)))

(declare-fun lt!466800 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1058275 (= res!706966 (or (bvsgt lt!466800 i!1381) (bvsle i!1381 lt!466800)))))

(declare-fun e!602075 () Bool)

(assert (=> b!1058275 e!602075))

(declare-fun res!706968 () Bool)

(assert (=> b!1058275 (=> (not res!706968) (not e!602075))))

(declare-datatypes ((array!66723 0))(
  ( (array!66724 (arr!32076 (Array (_ BitVec 32) (_ BitVec 64))) (size!32613 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66723)

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1058275 (= res!706968 (= (select (store (arr!32076 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466800) k!2747))))

(declare-fun b!1058276 () Bool)

(declare-fun res!706959 () Bool)

(declare-fun e!602076 () Bool)

(assert (=> b!1058276 (=> res!706959 e!602076)))

(declare-datatypes ((List!22519 0))(
  ( (Nil!22516) (Cons!22515 (h!23724 (_ BitVec 64)) (t!31833 List!22519)) )
))
(declare-fun noDuplicate!1586 (List!22519) Bool)

(assert (=> b!1058276 (= res!706959 (not (noDuplicate!1586 Nil!22516)))))

(declare-fun b!1058278 () Bool)

(declare-fun res!706969 () Bool)

(assert (=> b!1058278 (=> res!706969 e!602076)))

(declare-fun contains!6225 (List!22519 (_ BitVec 64)) Bool)

(assert (=> b!1058278 (= res!706969 (contains!6225 Nil!22516 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1058279 () Bool)

(declare-fun res!706961 () Bool)

(declare-fun e!602077 () Bool)

(assert (=> b!1058279 (=> (not res!706961) (not e!602077))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1058279 (= res!706961 (validKeyInArray!0 k!2747))))

(declare-fun b!1058280 () Bool)

(declare-fun res!706960 () Bool)

(assert (=> b!1058280 (=> (not res!706960) (not e!602077))))

(assert (=> b!1058280 (= res!706960 (= (select (arr!32076 a!3488) i!1381) k!2747))))

(declare-fun b!1058281 () Bool)

(assert (=> b!1058281 (= e!602073 e!602076)))

(declare-fun res!706967 () Bool)

(assert (=> b!1058281 (=> res!706967 e!602076)))

(declare-fun lt!466796 () (_ BitVec 32))

(assert (=> b!1058281 (= res!706967 (or (bvslt lt!466800 #b00000000000000000000000000000000) (bvsge lt!466796 (size!32613 a!3488)) (bvsge lt!466800 (size!32613 a!3488))))))

(declare-fun arrayContainsKey!0 (array!66723 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058281 (arrayContainsKey!0 a!3488 k!2747 lt!466796)))

(declare-datatypes ((Unit!34683 0))(
  ( (Unit!34684) )
))
(declare-fun lt!466798 () Unit!34683)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66723 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34683)

(assert (=> b!1058281 (= lt!466798 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!466796))))

(assert (=> b!1058281 (= lt!466796 (bvadd #b00000000000000000000000000000001 lt!466800))))

(declare-fun arrayNoDuplicates!0 (array!66723 (_ BitVec 32) List!22519) Bool)

(assert (=> b!1058281 (arrayNoDuplicates!0 a!3488 lt!466800 Nil!22516)))

(declare-fun lt!466799 () Unit!34683)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66723 (_ BitVec 32) (_ BitVec 32)) Unit!34683)

(assert (=> b!1058281 (= lt!466799 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466800))))

(declare-fun b!1058282 () Bool)

(declare-fun res!706964 () Bool)

(assert (=> b!1058282 (=> (not res!706964) (not e!602077))))

(assert (=> b!1058282 (= res!706964 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22516))))

(declare-fun b!1058283 () Bool)

(declare-fun e!602074 () Bool)

(assert (=> b!1058283 (= e!602075 e!602074)))

(declare-fun res!706958 () Bool)

(assert (=> b!1058283 (=> res!706958 e!602074)))

(assert (=> b!1058283 (= res!706958 (or (bvsgt lt!466800 i!1381) (bvsle i!1381 lt!466800)))))

(declare-fun b!1058284 () Bool)

(assert (=> b!1058284 (= e!602076 true)))

(declare-fun lt!466797 () Bool)

(assert (=> b!1058284 (= lt!466797 (contains!6225 Nil!22516 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1058285 () Bool)

(declare-fun e!602072 () Bool)

(assert (=> b!1058285 (= e!602077 e!602072)))

(declare-fun res!706962 () Bool)

(assert (=> b!1058285 (=> (not res!706962) (not e!602072))))

(declare-fun lt!466801 () array!66723)

(assert (=> b!1058285 (= res!706962 (arrayContainsKey!0 lt!466801 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1058285 (= lt!466801 (array!66724 (store (arr!32076 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32613 a!3488)))))

(declare-fun b!1058286 () Bool)

(assert (=> b!1058286 (= e!602074 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1058277 () Bool)

(assert (=> b!1058277 (= e!602072 e!602078)))

(declare-fun res!706963 () Bool)

(assert (=> b!1058277 (=> (not res!706963) (not e!602078))))

(assert (=> b!1058277 (= res!706963 (not (= lt!466800 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66723 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1058277 (= lt!466800 (arrayScanForKey!0 lt!466801 k!2747 #b00000000000000000000000000000000))))

(declare-fun res!706965 () Bool)

(assert (=> start!93472 (=> (not res!706965) (not e!602077))))

(assert (=> start!93472 (= res!706965 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32613 a!3488)) (bvslt (size!32613 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93472 e!602077))

(assert (=> start!93472 true))

(declare-fun array_inv!24698 (array!66723) Bool)

(assert (=> start!93472 (array_inv!24698 a!3488)))

(assert (= (and start!93472 res!706965) b!1058282))

(assert (= (and b!1058282 res!706964) b!1058279))

(assert (= (and b!1058279 res!706961) b!1058280))

(assert (= (and b!1058280 res!706960) b!1058285))

(assert (= (and b!1058285 res!706962) b!1058277))

(assert (= (and b!1058277 res!706963) b!1058275))

(assert (= (and b!1058275 res!706968) b!1058283))

(assert (= (and b!1058283 (not res!706958)) b!1058286))

(assert (= (and b!1058275 (not res!706966)) b!1058281))

(assert (= (and b!1058281 (not res!706967)) b!1058276))

(assert (= (and b!1058276 (not res!706959)) b!1058278))

(assert (= (and b!1058278 (not res!706969)) b!1058284))

(declare-fun m!978037 () Bool)

(assert (=> b!1058282 m!978037))

(declare-fun m!978039 () Bool)

(assert (=> b!1058280 m!978039))

(declare-fun m!978041 () Bool)

(assert (=> b!1058277 m!978041))

(declare-fun m!978043 () Bool)

(assert (=> b!1058276 m!978043))

(declare-fun m!978045 () Bool)

(assert (=> b!1058281 m!978045))

(declare-fun m!978047 () Bool)

(assert (=> b!1058281 m!978047))

(declare-fun m!978049 () Bool)

(assert (=> b!1058281 m!978049))

(declare-fun m!978051 () Bool)

(assert (=> b!1058281 m!978051))

(declare-fun m!978053 () Bool)

(assert (=> b!1058284 m!978053))

(declare-fun m!978055 () Bool)

(assert (=> b!1058285 m!978055))

(declare-fun m!978057 () Bool)

(assert (=> b!1058285 m!978057))

(declare-fun m!978059 () Bool)

(assert (=> b!1058278 m!978059))

(declare-fun m!978061 () Bool)

(assert (=> b!1058279 m!978061))

(declare-fun m!978063 () Bool)

(assert (=> start!93472 m!978063))

(declare-fun m!978065 () Bool)

(assert (=> b!1058286 m!978065))

(assert (=> b!1058275 m!978057))

(declare-fun m!978067 () Bool)

(assert (=> b!1058275 m!978067))

(push 1)

(assert (not b!1058282))

