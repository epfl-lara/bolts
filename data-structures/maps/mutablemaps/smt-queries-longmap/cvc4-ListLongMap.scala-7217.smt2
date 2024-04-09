; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92404 () Bool)

(assert start!92404)

(declare-fun b!1050097 () Bool)

(declare-fun res!699334 () Bool)

(declare-fun e!595902 () Bool)

(assert (=> b!1050097 (=> (not res!699334) (not e!595902))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050097 (= res!699334 (validKeyInArray!0 k!2747))))

(declare-fun b!1050098 () Bool)

(declare-fun res!699336 () Bool)

(assert (=> b!1050098 (=> (not res!699336) (not e!595902))))

(declare-datatypes ((array!66153 0))(
  ( (array!66154 (arr!31812 (Array (_ BitVec 32) (_ BitVec 64))) (size!32349 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66153)

(declare-datatypes ((List!22255 0))(
  ( (Nil!22252) (Cons!22251 (h!23460 (_ BitVec 64)) (t!31569 List!22255)) )
))
(declare-fun arrayNoDuplicates!0 (array!66153 (_ BitVec 32) List!22255) Bool)

(assert (=> b!1050098 (= res!699336 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22252))))

(declare-fun e!595898 () Bool)

(declare-fun b!1050099 () Bool)

(declare-fun lt!463786 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!66153 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050099 (= e!595898 (arrayContainsKey!0 a!3488 k!2747 lt!463786))))

(declare-fun b!1050100 () Bool)

(declare-fun res!699333 () Bool)

(declare-fun e!595899 () Bool)

(assert (=> b!1050100 (=> res!699333 e!595899)))

(declare-fun noDuplicate!1532 (List!22255) Bool)

(assert (=> b!1050100 (= res!699333 (not (noDuplicate!1532 Nil!22252)))))

(declare-fun b!1050101 () Bool)

(declare-fun e!595897 () Bool)

(assert (=> b!1050101 (= e!595897 e!595898)))

(declare-fun res!699335 () Bool)

(assert (=> b!1050101 (=> res!699335 e!595898)))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1050101 (= res!699335 (bvsle lt!463786 i!1381))))

(declare-fun b!1050102 () Bool)

(declare-fun e!595904 () Bool)

(declare-fun e!595903 () Bool)

(assert (=> b!1050102 (= e!595904 e!595903)))

(declare-fun res!699342 () Bool)

(assert (=> b!1050102 (=> (not res!699342) (not e!595903))))

(assert (=> b!1050102 (= res!699342 (not (= lt!463786 i!1381)))))

(declare-fun lt!463788 () array!66153)

(declare-fun arrayScanForKey!0 (array!66153 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050102 (= lt!463786 (arrayScanForKey!0 lt!463788 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1050103 () Bool)

(declare-fun res!699331 () Bool)

(assert (=> b!1050103 (=> (not res!699331) (not e!595902))))

(assert (=> b!1050103 (= res!699331 (= (select (arr!31812 a!3488) i!1381) k!2747))))

(declare-fun b!1050104 () Bool)

(declare-fun e!595901 () Bool)

(assert (=> b!1050104 (= e!595903 (not e!595901))))

(declare-fun res!699337 () Bool)

(assert (=> b!1050104 (=> res!699337 e!595901)))

(assert (=> b!1050104 (= res!699337 (bvsle lt!463786 i!1381))))

(assert (=> b!1050104 e!595897))

(declare-fun res!699338 () Bool)

(assert (=> b!1050104 (=> (not res!699338) (not e!595897))))

(assert (=> b!1050104 (= res!699338 (= (select (store (arr!31812 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463786) k!2747))))

(declare-fun b!1050105 () Bool)

(declare-fun res!699332 () Bool)

(assert (=> b!1050105 (=> res!699332 e!595899)))

(declare-fun contains!6147 (List!22255 (_ BitVec 64)) Bool)

(assert (=> b!1050105 (= res!699332 (contains!6147 Nil!22252 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!699339 () Bool)

(assert (=> start!92404 (=> (not res!699339) (not e!595902))))

(assert (=> start!92404 (= res!699339 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32349 a!3488)) (bvslt (size!32349 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92404 e!595902))

(assert (=> start!92404 true))

(declare-fun array_inv!24434 (array!66153) Bool)

(assert (=> start!92404 (array_inv!24434 a!3488)))

(declare-fun b!1050096 () Bool)

(assert (=> b!1050096 (= e!595902 e!595904)))

(declare-fun res!699340 () Bool)

(assert (=> b!1050096 (=> (not res!699340) (not e!595904))))

(assert (=> b!1050096 (= res!699340 (arrayContainsKey!0 lt!463788 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1050096 (= lt!463788 (array!66154 (store (arr!31812 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32349 a!3488)))))

(declare-fun b!1050106 () Bool)

(assert (=> b!1050106 (= e!595899 true)))

(declare-fun lt!463789 () Bool)

(assert (=> b!1050106 (= lt!463789 (contains!6147 Nil!22252 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1050107 () Bool)

(assert (=> b!1050107 (= e!595901 e!595899)))

(declare-fun res!699341 () Bool)

(assert (=> b!1050107 (=> res!699341 e!595899)))

(assert (=> b!1050107 (= res!699341 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32349 a!3488)))))

(assert (=> b!1050107 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34353 0))(
  ( (Unit!34354) )
))
(declare-fun lt!463785 () Unit!34353)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66153 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34353)

(assert (=> b!1050107 (= lt!463785 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!463786 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1050107 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22252)))

(declare-fun lt!463787 () Unit!34353)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66153 (_ BitVec 32) (_ BitVec 32)) Unit!34353)

(assert (=> b!1050107 (= lt!463787 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(assert (= (and start!92404 res!699339) b!1050098))

(assert (= (and b!1050098 res!699336) b!1050097))

(assert (= (and b!1050097 res!699334) b!1050103))

(assert (= (and b!1050103 res!699331) b!1050096))

(assert (= (and b!1050096 res!699340) b!1050102))

(assert (= (and b!1050102 res!699342) b!1050104))

(assert (= (and b!1050104 res!699338) b!1050101))

(assert (= (and b!1050101 (not res!699335)) b!1050099))

(assert (= (and b!1050104 (not res!699337)) b!1050107))

(assert (= (and b!1050107 (not res!699341)) b!1050100))

(assert (= (and b!1050100 (not res!699333)) b!1050105))

(assert (= (and b!1050105 (not res!699332)) b!1050106))

(declare-fun m!970921 () Bool)

(assert (=> b!1050103 m!970921))

(declare-fun m!970923 () Bool)

(assert (=> b!1050099 m!970923))

(declare-fun m!970925 () Bool)

(assert (=> b!1050107 m!970925))

(declare-fun m!970927 () Bool)

(assert (=> b!1050107 m!970927))

(declare-fun m!970929 () Bool)

(assert (=> b!1050107 m!970929))

(declare-fun m!970931 () Bool)

(assert (=> b!1050107 m!970931))

(declare-fun m!970933 () Bool)

(assert (=> b!1050097 m!970933))

(declare-fun m!970935 () Bool)

(assert (=> b!1050096 m!970935))

(declare-fun m!970937 () Bool)

(assert (=> b!1050096 m!970937))

(assert (=> b!1050104 m!970937))

(declare-fun m!970939 () Bool)

(assert (=> b!1050104 m!970939))

(declare-fun m!970941 () Bool)

(assert (=> start!92404 m!970941))

(declare-fun m!970943 () Bool)

(assert (=> b!1050102 m!970943))

(declare-fun m!970945 () Bool)

(assert (=> b!1050105 m!970945))

(declare-fun m!970947 () Bool)

(assert (=> b!1050106 m!970947))

(declare-fun m!970949 () Bool)

(assert (=> b!1050098 m!970949))

(declare-fun m!970951 () Bool)

(assert (=> b!1050100 m!970951))

(push 1)

(assert (not start!92404))

(assert (not b!1050098))

(assert (not b!1050100))

(assert (not b!1050105))

