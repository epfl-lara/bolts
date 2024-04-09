; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118200 () Bool)

(assert start!118200)

(declare-fun b!1382765 () Bool)

(declare-fun res!924468 () Bool)

(declare-fun e!783757 () Bool)

(assert (=> b!1382765 (=> (not res!924468) (not e!783757))))

(declare-datatypes ((List!32307 0))(
  ( (Nil!32304) (Cons!32303 (h!33512 (_ BitVec 64)) (t!47008 List!32307)) )
))
(declare-fun noDuplicate!2631 (List!32307) Bool)

(assert (=> b!1382765 (= res!924468 (noDuplicate!2631 Nil!32304))))

(declare-fun b!1382766 () Bool)

(declare-fun e!783756 () Bool)

(assert (=> b!1382766 (= e!783757 e!783756)))

(declare-fun res!924470 () Bool)

(assert (=> b!1382766 (=> res!924470 e!783756)))

(declare-fun contains!9751 (List!32307 (_ BitVec 64)) Bool)

(assert (=> b!1382766 (= res!924470 (contains!9751 Nil!32304 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1382767 () Bool)

(declare-fun res!924469 () Bool)

(assert (=> b!1382767 (=> (not res!924469) (not e!783757))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94448 0))(
  ( (array!94449 (arr!45599 (Array (_ BitVec 32) (_ BitVec 64))) (size!46150 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94448)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1382767 (= res!924469 (and (= (size!46150 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46150 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46150 a!2938))))))

(declare-fun b!1382768 () Bool)

(declare-fun res!924467 () Bool)

(assert (=> b!1382768 (=> (not res!924467) (not e!783757))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382768 (= res!924467 (validKeyInArray!0 (select (arr!45599 a!2938) i!1065)))))

(declare-fun b!1382769 () Bool)

(assert (=> b!1382769 (= e!783756 (contains!9751 Nil!32304 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1382770 () Bool)

(declare-fun res!924466 () Bool)

(assert (=> b!1382770 (=> (not res!924466) (not e!783757))))

(assert (=> b!1382770 (= res!924466 (and (bvsle #b00000000000000000000000000000000 (size!46150 a!2938)) (bvslt (size!46150 a!2938) #b01111111111111111111111111111111)))))

(declare-fun res!924471 () Bool)

(assert (=> start!118200 (=> (not res!924471) (not e!783757))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118200 (= res!924471 (validMask!0 mask!2987))))

(assert (=> start!118200 e!783757))

(assert (=> start!118200 true))

(declare-fun array_inv!34544 (array!94448) Bool)

(assert (=> start!118200 (array_inv!34544 a!2938)))

(assert (= (and start!118200 res!924471) b!1382767))

(assert (= (and b!1382767 res!924469) b!1382768))

(assert (= (and b!1382768 res!924467) b!1382770))

(assert (= (and b!1382770 res!924466) b!1382765))

(assert (= (and b!1382765 res!924468) b!1382766))

(assert (= (and b!1382766 (not res!924470)) b!1382769))

(declare-fun m!1267927 () Bool)

(assert (=> b!1382766 m!1267927))

(declare-fun m!1267929 () Bool)

(assert (=> start!118200 m!1267929))

(declare-fun m!1267931 () Bool)

(assert (=> start!118200 m!1267931))

(declare-fun m!1267933 () Bool)

(assert (=> b!1382765 m!1267933))

(declare-fun m!1267935 () Bool)

(assert (=> b!1382769 m!1267935))

(declare-fun m!1267937 () Bool)

(assert (=> b!1382768 m!1267937))

(assert (=> b!1382768 m!1267937))

(declare-fun m!1267939 () Bool)

(assert (=> b!1382768 m!1267939))

(check-sat (not b!1382766) (not b!1382769) (not b!1382765) (not start!118200) (not b!1382768))
(check-sat)
(get-model)

(declare-fun d!149175 () Bool)

(declare-fun lt!608416 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!764 (List!32307) (InoxSet (_ BitVec 64)))

(assert (=> d!149175 (= lt!608416 (select (content!764 Nil!32304) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!783772 () Bool)

(assert (=> d!149175 (= lt!608416 e!783772)))

(declare-fun res!924495 () Bool)

(assert (=> d!149175 (=> (not res!924495) (not e!783772))))

(get-info :version)

(assert (=> d!149175 (= res!924495 ((_ is Cons!32303) Nil!32304))))

(assert (=> d!149175 (= (contains!9751 Nil!32304 #b0000000000000000000000000000000000000000000000000000000000000000) lt!608416)))

(declare-fun b!1382793 () Bool)

(declare-fun e!783773 () Bool)

(assert (=> b!1382793 (= e!783772 e!783773)))

(declare-fun res!924494 () Bool)

(assert (=> b!1382793 (=> res!924494 e!783773)))

(assert (=> b!1382793 (= res!924494 (= (h!33512 Nil!32304) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1382794 () Bool)

(assert (=> b!1382794 (= e!783773 (contains!9751 (t!47008 Nil!32304) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!149175 res!924495) b!1382793))

(assert (= (and b!1382793 (not res!924494)) b!1382794))

(declare-fun m!1267955 () Bool)

(assert (=> d!149175 m!1267955))

(declare-fun m!1267957 () Bool)

(assert (=> d!149175 m!1267957))

(declare-fun m!1267959 () Bool)

(assert (=> b!1382794 m!1267959))

(assert (=> b!1382766 d!149175))

(declare-fun d!149177 () Bool)

(assert (=> d!149177 (= (validMask!0 mask!2987) (and (or (= mask!2987 #b00000000000000000000000000000111) (= mask!2987 #b00000000000000000000000000001111) (= mask!2987 #b00000000000000000000000000011111) (= mask!2987 #b00000000000000000000000000111111) (= mask!2987 #b00000000000000000000000001111111) (= mask!2987 #b00000000000000000000000011111111) (= mask!2987 #b00000000000000000000000111111111) (= mask!2987 #b00000000000000000000001111111111) (= mask!2987 #b00000000000000000000011111111111) (= mask!2987 #b00000000000000000000111111111111) (= mask!2987 #b00000000000000000001111111111111) (= mask!2987 #b00000000000000000011111111111111) (= mask!2987 #b00000000000000000111111111111111) (= mask!2987 #b00000000000000001111111111111111) (= mask!2987 #b00000000000000011111111111111111) (= mask!2987 #b00000000000000111111111111111111) (= mask!2987 #b00000000000001111111111111111111) (= mask!2987 #b00000000000011111111111111111111) (= mask!2987 #b00000000000111111111111111111111) (= mask!2987 #b00000000001111111111111111111111) (= mask!2987 #b00000000011111111111111111111111) (= mask!2987 #b00000000111111111111111111111111) (= mask!2987 #b00000001111111111111111111111111) (= mask!2987 #b00000011111111111111111111111111) (= mask!2987 #b00000111111111111111111111111111) (= mask!2987 #b00001111111111111111111111111111) (= mask!2987 #b00011111111111111111111111111111) (= mask!2987 #b00111111111111111111111111111111)) (bvsle mask!2987 #b00111111111111111111111111111111)))))

(assert (=> start!118200 d!149177))

(declare-fun d!149187 () Bool)

(assert (=> d!149187 (= (array_inv!34544 a!2938) (bvsge (size!46150 a!2938) #b00000000000000000000000000000000))))

(assert (=> start!118200 d!149187))

(declare-fun d!149189 () Bool)

(declare-fun lt!608420 () Bool)

(assert (=> d!149189 (= lt!608420 (select (content!764 Nil!32304) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!783784 () Bool)

(assert (=> d!149189 (= lt!608420 e!783784)))

(declare-fun res!924507 () Bool)

(assert (=> d!149189 (=> (not res!924507) (not e!783784))))

(assert (=> d!149189 (= res!924507 ((_ is Cons!32303) Nil!32304))))

(assert (=> d!149189 (= (contains!9751 Nil!32304 #b1000000000000000000000000000000000000000000000000000000000000000) lt!608420)))

(declare-fun b!1382805 () Bool)

(declare-fun e!783785 () Bool)

(assert (=> b!1382805 (= e!783784 e!783785)))

(declare-fun res!924506 () Bool)

(assert (=> b!1382805 (=> res!924506 e!783785)))

(assert (=> b!1382805 (= res!924506 (= (h!33512 Nil!32304) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1382806 () Bool)

(assert (=> b!1382806 (= e!783785 (contains!9751 (t!47008 Nil!32304) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!149189 res!924507) b!1382805))

(assert (= (and b!1382805 (not res!924506)) b!1382806))

(assert (=> d!149189 m!1267955))

(declare-fun m!1267967 () Bool)

(assert (=> d!149189 m!1267967))

(declare-fun m!1267969 () Bool)

(assert (=> b!1382806 m!1267969))

(assert (=> b!1382769 d!149189))

(declare-fun d!149191 () Bool)

(assert (=> d!149191 (= (validKeyInArray!0 (select (arr!45599 a!2938) i!1065)) (and (not (= (select (arr!45599 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45599 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1382768 d!149191))

(declare-fun d!149197 () Bool)

(declare-fun res!924516 () Bool)

(declare-fun e!783794 () Bool)

(assert (=> d!149197 (=> res!924516 e!783794)))

(assert (=> d!149197 (= res!924516 ((_ is Nil!32304) Nil!32304))))

(assert (=> d!149197 (= (noDuplicate!2631 Nil!32304) e!783794)))

(declare-fun b!1382815 () Bool)

(declare-fun e!783795 () Bool)

(assert (=> b!1382815 (= e!783794 e!783795)))

(declare-fun res!924517 () Bool)

(assert (=> b!1382815 (=> (not res!924517) (not e!783795))))

(assert (=> b!1382815 (= res!924517 (not (contains!9751 (t!47008 Nil!32304) (h!33512 Nil!32304))))))

(declare-fun b!1382816 () Bool)

(assert (=> b!1382816 (= e!783795 (noDuplicate!2631 (t!47008 Nil!32304)))))

(assert (= (and d!149197 (not res!924516)) b!1382815))

(assert (= (and b!1382815 res!924517) b!1382816))

(declare-fun m!1267979 () Bool)

(assert (=> b!1382815 m!1267979))

(declare-fun m!1267981 () Bool)

(assert (=> b!1382816 m!1267981))

(assert (=> b!1382765 d!149197))

(check-sat (not b!1382794) (not d!149189) (not b!1382815) (not b!1382816) (not b!1382806) (not d!149175))
(check-sat)
