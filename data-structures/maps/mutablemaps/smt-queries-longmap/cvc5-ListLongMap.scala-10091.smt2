; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118948 () Bool)

(assert start!118948)

(declare-fun b!1388567 () Bool)

(declare-fun res!928945 () Bool)

(declare-fun e!786617 () Bool)

(assert (=> b!1388567 (=> (not res!928945) (not e!786617))))

(declare-datatypes ((array!94923 0))(
  ( (array!94924 (arr!45829 (Array (_ BitVec 32) (_ BitVec 64))) (size!46380 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94923)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94923 (_ BitVec 32)) Bool)

(assert (=> b!1388567 (= res!928945 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1388568 () Bool)

(declare-fun res!928947 () Bool)

(assert (=> b!1388568 (=> (not res!928947) (not e!786617))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1388568 (= res!928947 (and (= (size!46380 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46380 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46380 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1388569 () Bool)

(declare-fun res!928946 () Bool)

(assert (=> b!1388569 (=> (not res!928946) (not e!786617))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1388569 (= res!928946 (validKeyInArray!0 (select (arr!45829 a!2901) j!112)))))

(declare-fun b!1388570 () Bool)

(declare-fun res!928942 () Bool)

(assert (=> b!1388570 (=> (not res!928942) (not e!786617))))

(assert (=> b!1388570 (= res!928942 (and (bvsle #b00000000000000000000000000000000 (size!46380 a!2901)) (bvslt (size!46380 a!2901) #b01111111111111111111111111111111)))))

(declare-fun b!1388572 () Bool)

(declare-fun res!928944 () Bool)

(assert (=> b!1388572 (=> (not res!928944) (not e!786617))))

(assert (=> b!1388572 (= res!928944 (validKeyInArray!0 (select (arr!45829 a!2901) i!1037)))))

(declare-fun b!1388571 () Bool)

(declare-datatypes ((List!32528 0))(
  ( (Nil!32525) (Cons!32524 (h!33739 (_ BitVec 64)) (t!47229 List!32528)) )
))
(declare-fun noDuplicate!2633 (List!32528) Bool)

(assert (=> b!1388571 (= e!786617 (not (noDuplicate!2633 Nil!32525)))))

(declare-fun res!928943 () Bool)

(assert (=> start!118948 (=> (not res!928943) (not e!786617))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118948 (= res!928943 (validMask!0 mask!2840))))

(assert (=> start!118948 e!786617))

(assert (=> start!118948 true))

(declare-fun array_inv!34774 (array!94923) Bool)

(assert (=> start!118948 (array_inv!34774 a!2901)))

(assert (= (and start!118948 res!928943) b!1388568))

(assert (= (and b!1388568 res!928947) b!1388572))

(assert (= (and b!1388572 res!928944) b!1388569))

(assert (= (and b!1388569 res!928946) b!1388567))

(assert (= (and b!1388567 res!928945) b!1388570))

(assert (= (and b!1388570 res!928942) b!1388571))

(declare-fun m!1274369 () Bool)

(assert (=> b!1388567 m!1274369))

(declare-fun m!1274371 () Bool)

(assert (=> start!118948 m!1274371))

(declare-fun m!1274373 () Bool)

(assert (=> start!118948 m!1274373))

(declare-fun m!1274375 () Bool)

(assert (=> b!1388571 m!1274375))

(declare-fun m!1274377 () Bool)

(assert (=> b!1388569 m!1274377))

(assert (=> b!1388569 m!1274377))

(declare-fun m!1274379 () Bool)

(assert (=> b!1388569 m!1274379))

(declare-fun m!1274381 () Bool)

(assert (=> b!1388572 m!1274381))

(assert (=> b!1388572 m!1274381))

(declare-fun m!1274383 () Bool)

(assert (=> b!1388572 m!1274383))

(push 1)

(assert (not b!1388572))

(assert (not b!1388571))

(assert (not start!118948))

(assert (not b!1388569))

(assert (not b!1388567))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!149917 () Bool)

(declare-fun res!928988 () Bool)

(declare-fun e!786634 () Bool)

(assert (=> d!149917 (=> res!928988 e!786634)))

(assert (=> d!149917 (= res!928988 (is-Nil!32525 Nil!32525))))

(assert (=> d!149917 (= (noDuplicate!2633 Nil!32525) e!786634)))

(declare-fun b!1388613 () Bool)

(declare-fun e!786635 () Bool)

(assert (=> b!1388613 (= e!786634 e!786635)))

(declare-fun res!928989 () Bool)

(assert (=> b!1388613 (=> (not res!928989) (not e!786635))))

(declare-fun contains!9763 (List!32528 (_ BitVec 64)) Bool)

(assert (=> b!1388613 (= res!928989 (not (contains!9763 (t!47229 Nil!32525) (h!33739 Nil!32525))))))

(declare-fun b!1388614 () Bool)

(assert (=> b!1388614 (= e!786635 (noDuplicate!2633 (t!47229 Nil!32525)))))

(assert (= (and d!149917 (not res!928988)) b!1388613))

(assert (= (and b!1388613 res!928989) b!1388614))

(declare-fun m!1274417 () Bool)

(assert (=> b!1388613 m!1274417))

(declare-fun m!1274419 () Bool)

(assert (=> b!1388614 m!1274419))

(assert (=> b!1388571 d!149917))

(declare-fun d!149921 () Bool)

(assert (=> d!149921 (= (validKeyInArray!0 (select (arr!45829 a!2901) j!112)) (and (not (= (select (arr!45829 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45829 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1388569 d!149921))

(declare-fun d!149923 () Bool)

(assert (=> d!149923 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!118948 d!149923))

(declare-fun d!149937 () Bool)

(assert (=> d!149937 (= (array_inv!34774 a!2901) (bvsge (size!46380 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!118948 d!149937))

(declare-fun b!1388659 () Bool)

(declare-fun e!786672 () Bool)

(declare-fun call!66651 () Bool)

(assert (=> b!1388659 (= e!786672 call!66651)))

(declare-fun b!1388660 () Bool)

(declare-fun e!786674 () Bool)

(assert (=> b!1388660 (= e!786674 call!66651)))

(declare-fun b!1388661 () Bool)

(assert (=> b!1388661 (= e!786674 e!786672)))

(declare-fun lt!610348 () (_ BitVec 64))

