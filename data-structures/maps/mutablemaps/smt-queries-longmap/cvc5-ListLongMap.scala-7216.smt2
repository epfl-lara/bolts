; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92394 () Bool)

(assert start!92394)

(declare-fun b!1049916 () Bool)

(declare-fun res!699152 () Bool)

(declare-fun e!595780 () Bool)

(assert (=> b!1049916 (=> (not res!699152) (not e!595780))))

(declare-datatypes ((array!66143 0))(
  ( (array!66144 (arr!31807 (Array (_ BitVec 32) (_ BitVec 64))) (size!32344 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66143)

(declare-datatypes ((List!22250 0))(
  ( (Nil!22247) (Cons!22246 (h!23455 (_ BitVec 64)) (t!31564 List!22250)) )
))
(declare-fun arrayNoDuplicates!0 (array!66143 (_ BitVec 32) List!22250) Bool)

(assert (=> b!1049916 (= res!699152 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22247))))

(declare-fun b!1049917 () Bool)

(declare-fun res!699161 () Bool)

(assert (=> b!1049917 (=> (not res!699161) (not e!595780))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1049917 (= res!699161 (validKeyInArray!0 k!2747))))

(declare-fun b!1049918 () Bool)

(declare-fun res!699156 () Bool)

(declare-fun e!595779 () Bool)

(assert (=> b!1049918 (=> res!699156 e!595779)))

(declare-fun contains!6142 (List!22250 (_ BitVec 64)) Bool)

(assert (=> b!1049918 (= res!699156 (contains!6142 Nil!22247 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049919 () Bool)

(declare-fun e!595783 () Bool)

(assert (=> b!1049919 (= e!595780 e!595783)))

(declare-fun res!699155 () Bool)

(assert (=> b!1049919 (=> (not res!699155) (not e!595783))))

(declare-fun lt!463714 () array!66143)

(declare-fun arrayContainsKey!0 (array!66143 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1049919 (= res!699155 (arrayContainsKey!0 lt!463714 k!2747 #b00000000000000000000000000000000))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1049919 (= lt!463714 (array!66144 (store (arr!31807 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32344 a!3488)))))

(declare-fun b!1049921 () Bool)

(declare-fun res!699162 () Bool)

(assert (=> b!1049921 (=> res!699162 e!595779)))

(declare-fun noDuplicate!1527 (List!22250) Bool)

(assert (=> b!1049921 (= res!699162 (not (noDuplicate!1527 Nil!22247)))))

(declare-fun b!1049922 () Bool)

(declare-fun e!595778 () Bool)

(declare-fun e!595784 () Bool)

(assert (=> b!1049922 (= e!595778 e!595784)))

(declare-fun res!699160 () Bool)

(assert (=> b!1049922 (=> res!699160 e!595784)))

(declare-fun lt!463711 () (_ BitVec 32))

(assert (=> b!1049922 (= res!699160 (bvsle lt!463711 i!1381))))

(declare-fun b!1049923 () Bool)

(assert (=> b!1049923 (= e!595784 (arrayContainsKey!0 a!3488 k!2747 lt!463711))))

(declare-fun b!1049924 () Bool)

(assert (=> b!1049924 (= e!595779 true)))

(declare-fun lt!463713 () Bool)

(assert (=> b!1049924 (= lt!463713 (contains!6142 Nil!22247 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049925 () Bool)

(declare-fun e!595781 () Bool)

(assert (=> b!1049925 (= e!595783 e!595781)))

(declare-fun res!699158 () Bool)

(assert (=> b!1049925 (=> (not res!699158) (not e!595781))))

(assert (=> b!1049925 (= res!699158 (not (= lt!463711 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66143 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1049925 (= lt!463711 (arrayScanForKey!0 lt!463714 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1049926 () Bool)

(declare-fun e!595777 () Bool)

(assert (=> b!1049926 (= e!595781 (not e!595777))))

(declare-fun res!699159 () Bool)

(assert (=> b!1049926 (=> res!699159 e!595777)))

(assert (=> b!1049926 (= res!699159 (bvsle lt!463711 i!1381))))

(assert (=> b!1049926 e!595778))

(declare-fun res!699154 () Bool)

(assert (=> b!1049926 (=> (not res!699154) (not e!595778))))

(assert (=> b!1049926 (= res!699154 (= (select (store (arr!31807 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463711) k!2747))))

(declare-fun b!1049927 () Bool)

(assert (=> b!1049927 (= e!595777 e!595779)))

(declare-fun res!699151 () Bool)

(assert (=> b!1049927 (=> res!699151 e!595779)))

(assert (=> b!1049927 (= res!699151 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32344 a!3488)))))

(assert (=> b!1049927 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34343 0))(
  ( (Unit!34344) )
))
(declare-fun lt!463710 () Unit!34343)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66143 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34343)

(assert (=> b!1049927 (= lt!463710 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!463711 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1049927 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22247)))

(declare-fun lt!463712 () Unit!34343)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66143 (_ BitVec 32) (_ BitVec 32)) Unit!34343)

(assert (=> b!1049927 (= lt!463712 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1049920 () Bool)

(declare-fun res!699153 () Bool)

(assert (=> b!1049920 (=> (not res!699153) (not e!595780))))

(assert (=> b!1049920 (= res!699153 (= (select (arr!31807 a!3488) i!1381) k!2747))))

(declare-fun res!699157 () Bool)

(assert (=> start!92394 (=> (not res!699157) (not e!595780))))

(assert (=> start!92394 (= res!699157 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32344 a!3488)) (bvslt (size!32344 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92394 e!595780))

(assert (=> start!92394 true))

(declare-fun array_inv!24429 (array!66143) Bool)

(assert (=> start!92394 (array_inv!24429 a!3488)))

(assert (= (and start!92394 res!699157) b!1049916))

(assert (= (and b!1049916 res!699152) b!1049917))

(assert (= (and b!1049917 res!699161) b!1049920))

(assert (= (and b!1049920 res!699153) b!1049919))

(assert (= (and b!1049919 res!699155) b!1049925))

(assert (= (and b!1049925 res!699158) b!1049926))

(assert (= (and b!1049926 res!699154) b!1049922))

(assert (= (and b!1049922 (not res!699160)) b!1049923))

(assert (= (and b!1049926 (not res!699159)) b!1049927))

(assert (= (and b!1049927 (not res!699151)) b!1049921))

(assert (= (and b!1049921 (not res!699162)) b!1049918))

(assert (= (and b!1049918 (not res!699156)) b!1049924))

(declare-fun m!970761 () Bool)

(assert (=> start!92394 m!970761))

(declare-fun m!970763 () Bool)

(assert (=> b!1049924 m!970763))

(declare-fun m!970765 () Bool)

(assert (=> b!1049918 m!970765))

(declare-fun m!970767 () Bool)

(assert (=> b!1049917 m!970767))

(declare-fun m!970769 () Bool)

(assert (=> b!1049927 m!970769))

(declare-fun m!970771 () Bool)

(assert (=> b!1049927 m!970771))

(declare-fun m!970773 () Bool)

(assert (=> b!1049927 m!970773))

(declare-fun m!970775 () Bool)

(assert (=> b!1049927 m!970775))

(declare-fun m!970777 () Bool)

(assert (=> b!1049919 m!970777))

(declare-fun m!970779 () Bool)

(assert (=> b!1049919 m!970779))

(declare-fun m!970781 () Bool)

(assert (=> b!1049916 m!970781))

(declare-fun m!970783 () Bool)

(assert (=> b!1049923 m!970783))

(declare-fun m!970785 () Bool)

(assert (=> b!1049925 m!970785))

(declare-fun m!970787 () Bool)

(assert (=> b!1049920 m!970787))

(declare-fun m!970789 () Bool)

(assert (=> b!1049921 m!970789))

(assert (=> b!1049926 m!970779))

(declare-fun m!970791 () Bool)

(assert (=> b!1049926 m!970791))

(push 1)

