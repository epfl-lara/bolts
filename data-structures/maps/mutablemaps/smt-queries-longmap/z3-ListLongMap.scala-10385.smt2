; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122328 () Bool)

(assert start!122328)

(declare-fun b!1417908 () Bool)

(declare-fun res!953717 () Bool)

(declare-fun e!802457 () Bool)

(assert (=> b!1417908 (=> (not res!953717) (not e!802457))))

(declare-datatypes ((List!33402 0))(
  ( (Nil!33399) (Cons!33398 (h!34691 (_ BitVec 64)) (t!48103 List!33402)) )
))
(declare-fun noDuplicate!2643 (List!33402) Bool)

(assert (=> b!1417908 (= res!953717 (noDuplicate!2643 Nil!33399))))

(declare-fun b!1417909 () Bool)

(declare-fun e!802456 () Bool)

(assert (=> b!1417909 (= e!802457 e!802456)))

(declare-fun res!953718 () Bool)

(assert (=> b!1417909 (=> res!953718 e!802456)))

(declare-fun contains!9845 (List!33402 (_ BitVec 64)) Bool)

(assert (=> b!1417909 (= res!953718 (contains!9845 Nil!33399 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1417910 () Bool)

(assert (=> b!1417910 (= e!802456 (contains!9845 Nil!33399 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1417911 () Bool)

(declare-fun res!953713 () Bool)

(assert (=> b!1417911 (=> (not res!953713) (not e!802457))))

(declare-datatypes ((array!96782 0))(
  ( (array!96783 (arr!46712 (Array (_ BitVec 32) (_ BitVec 64))) (size!47263 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96782)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1417911 (= res!953713 (and (= (size!47263 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47263 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47263 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!953711 () Bool)

(assert (=> start!122328 (=> (not res!953711) (not e!802457))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122328 (= res!953711 (validMask!0 mask!2608))))

(assert (=> start!122328 e!802457))

(assert (=> start!122328 true))

(declare-fun array_inv!35657 (array!96782) Bool)

(assert (=> start!122328 (array_inv!35657 a!2831)))

(declare-fun b!1417912 () Bool)

(declare-fun res!953715 () Bool)

(assert (=> b!1417912 (=> (not res!953715) (not e!802457))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96782 (_ BitVec 32)) Bool)

(assert (=> b!1417912 (= res!953715 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1417913 () Bool)

(declare-fun res!953712 () Bool)

(assert (=> b!1417913 (=> (not res!953712) (not e!802457))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417913 (= res!953712 (validKeyInArray!0 (select (arr!46712 a!2831) j!81)))))

(declare-fun b!1417914 () Bool)

(declare-fun res!953716 () Bool)

(assert (=> b!1417914 (=> (not res!953716) (not e!802457))))

(assert (=> b!1417914 (= res!953716 (and (bvsle #b00000000000000000000000000000000 (size!47263 a!2831)) (bvslt (size!47263 a!2831) #b01111111111111111111111111111111)))))

(declare-fun b!1417915 () Bool)

(declare-fun res!953714 () Bool)

(assert (=> b!1417915 (=> (not res!953714) (not e!802457))))

(assert (=> b!1417915 (= res!953714 (validKeyInArray!0 (select (arr!46712 a!2831) i!982)))))

(assert (= (and start!122328 res!953711) b!1417911))

(assert (= (and b!1417911 res!953713) b!1417915))

(assert (= (and b!1417915 res!953714) b!1417913))

(assert (= (and b!1417913 res!953712) b!1417912))

(assert (= (and b!1417912 res!953715) b!1417914))

(assert (= (and b!1417914 res!953716) b!1417908))

(assert (= (and b!1417908 res!953717) b!1417909))

(assert (= (and b!1417909 (not res!953718)) b!1417910))

(declare-fun m!1308721 () Bool)

(assert (=> b!1417909 m!1308721))

(declare-fun m!1308723 () Bool)

(assert (=> b!1417915 m!1308723))

(assert (=> b!1417915 m!1308723))

(declare-fun m!1308725 () Bool)

(assert (=> b!1417915 m!1308725))

(declare-fun m!1308727 () Bool)

(assert (=> b!1417910 m!1308727))

(declare-fun m!1308729 () Bool)

(assert (=> b!1417913 m!1308729))

(assert (=> b!1417913 m!1308729))

(declare-fun m!1308731 () Bool)

(assert (=> b!1417913 m!1308731))

(declare-fun m!1308733 () Bool)

(assert (=> b!1417908 m!1308733))

(declare-fun m!1308735 () Bool)

(assert (=> start!122328 m!1308735))

(declare-fun m!1308737 () Bool)

(assert (=> start!122328 m!1308737))

(declare-fun m!1308739 () Bool)

(assert (=> b!1417912 m!1308739))

(check-sat (not b!1417913) (not b!1417908) (not b!1417909) (not b!1417910) (not b!1417915) (not start!122328) (not b!1417912))
(check-sat)
(get-model)

(declare-fun b!1417948 () Bool)

(declare-fun e!802474 () Bool)

(declare-fun e!802473 () Bool)

(assert (=> b!1417948 (= e!802474 e!802473)))

(declare-fun c!131585 () Bool)

(assert (=> b!1417948 (= c!131585 (validKeyInArray!0 (select (arr!46712 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1417949 () Bool)

(declare-fun call!67242 () Bool)

(assert (=> b!1417949 (= e!802473 call!67242)))

(declare-fun bm!67239 () Bool)

(assert (=> bm!67239 (= call!67242 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1417950 () Bool)

(declare-fun e!802475 () Bool)

(assert (=> b!1417950 (= e!802473 e!802475)))

(declare-fun lt!625440 () (_ BitVec 64))

(assert (=> b!1417950 (= lt!625440 (select (arr!46712 a!2831) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!47998 0))(
  ( (Unit!47999) )
))
(declare-fun lt!625439 () Unit!47998)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96782 (_ BitVec 64) (_ BitVec 32)) Unit!47998)

(assert (=> b!1417950 (= lt!625439 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!625440 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96782 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1417950 (arrayContainsKey!0 a!2831 lt!625440 #b00000000000000000000000000000000)))

(declare-fun lt!625441 () Unit!47998)

(assert (=> b!1417950 (= lt!625441 lt!625439)))

(declare-fun res!953748 () Bool)

(declare-datatypes ((SeekEntryResult!11037 0))(
  ( (MissingZero!11037 (index!46539 (_ BitVec 32))) (Found!11037 (index!46540 (_ BitVec 32))) (Intermediate!11037 (undefined!11849 Bool) (index!46541 (_ BitVec 32)) (x!128163 (_ BitVec 32))) (Undefined!11037) (MissingVacant!11037 (index!46542 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96782 (_ BitVec 32)) SeekEntryResult!11037)

(assert (=> b!1417950 (= res!953748 (= (seekEntryOrOpen!0 (select (arr!46712 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11037 #b00000000000000000000000000000000)))))

(assert (=> b!1417950 (=> (not res!953748) (not e!802475))))

(declare-fun b!1417951 () Bool)

(assert (=> b!1417951 (= e!802475 call!67242)))

(declare-fun d!152713 () Bool)

(declare-fun res!953747 () Bool)

(assert (=> d!152713 (=> res!953747 e!802474)))

(assert (=> d!152713 (= res!953747 (bvsge #b00000000000000000000000000000000 (size!47263 a!2831)))))

(assert (=> d!152713 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!802474)))

(assert (= (and d!152713 (not res!953747)) b!1417948))

(assert (= (and b!1417948 c!131585) b!1417950))

(assert (= (and b!1417948 (not c!131585)) b!1417949))

(assert (= (and b!1417950 res!953748) b!1417951))

(assert (= (or b!1417951 b!1417949) bm!67239))

(declare-fun m!1308761 () Bool)

(assert (=> b!1417948 m!1308761))

(assert (=> b!1417948 m!1308761))

(declare-fun m!1308763 () Bool)

(assert (=> b!1417948 m!1308763))

(declare-fun m!1308765 () Bool)

(assert (=> bm!67239 m!1308765))

(assert (=> b!1417950 m!1308761))

(declare-fun m!1308767 () Bool)

(assert (=> b!1417950 m!1308767))

(declare-fun m!1308769 () Bool)

(assert (=> b!1417950 m!1308769))

(assert (=> b!1417950 m!1308761))

(declare-fun m!1308771 () Bool)

(assert (=> b!1417950 m!1308771))

(assert (=> b!1417912 d!152713))

(declare-fun d!152723 () Bool)

(assert (=> d!152723 (= (validKeyInArray!0 (select (arr!46712 a!2831) j!81)) (and (not (= (select (arr!46712 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46712 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1417913 d!152723))

(declare-fun d!152725 () Bool)

(declare-fun res!953759 () Bool)

(declare-fun e!802489 () Bool)

(assert (=> d!152725 (=> res!953759 e!802489)))

(get-info :version)

(assert (=> d!152725 (= res!953759 ((_ is Nil!33399) Nil!33399))))

(assert (=> d!152725 (= (noDuplicate!2643 Nil!33399) e!802489)))

(declare-fun b!1417968 () Bool)

(declare-fun e!802490 () Bool)

(assert (=> b!1417968 (= e!802489 e!802490)))

(declare-fun res!953760 () Bool)

(assert (=> b!1417968 (=> (not res!953760) (not e!802490))))

(assert (=> b!1417968 (= res!953760 (not (contains!9845 (t!48103 Nil!33399) (h!34691 Nil!33399))))))

(declare-fun b!1417969 () Bool)

(assert (=> b!1417969 (= e!802490 (noDuplicate!2643 (t!48103 Nil!33399)))))

(assert (= (and d!152725 (not res!953759)) b!1417968))

(assert (= (and b!1417968 res!953760) b!1417969))

(declare-fun m!1308785 () Bool)

(assert (=> b!1417968 m!1308785))

(declare-fun m!1308787 () Bool)

(assert (=> b!1417969 m!1308787))

(assert (=> b!1417908 d!152725))

(declare-fun d!152729 () Bool)

(assert (=> d!152729 (= (validKeyInArray!0 (select (arr!46712 a!2831) i!982)) (and (not (= (select (arr!46712 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46712 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1417915 d!152729))

(declare-fun d!152731 () Bool)

(declare-fun lt!625462 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!773 (List!33402) (InoxSet (_ BitVec 64)))

(assert (=> d!152731 (= lt!625462 (select (content!773 Nil!33399) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!802507 () Bool)

(assert (=> d!152731 (= lt!625462 e!802507)))

(declare-fun res!953775 () Bool)

(assert (=> d!152731 (=> (not res!953775) (not e!802507))))

(assert (=> d!152731 (= res!953775 ((_ is Cons!33398) Nil!33399))))

(assert (=> d!152731 (= (contains!9845 Nil!33399 #b1000000000000000000000000000000000000000000000000000000000000000) lt!625462)))

(declare-fun b!1417988 () Bool)

(declare-fun e!802508 () Bool)

(assert (=> b!1417988 (= e!802507 e!802508)))

(declare-fun res!953776 () Bool)

(assert (=> b!1417988 (=> res!953776 e!802508)))

(assert (=> b!1417988 (= res!953776 (= (h!34691 Nil!33399) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1417989 () Bool)

(assert (=> b!1417989 (= e!802508 (contains!9845 (t!48103 Nil!33399) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!152731 res!953775) b!1417988))

(assert (= (and b!1417988 (not res!953776)) b!1417989))

(declare-fun m!1308795 () Bool)

(assert (=> d!152731 m!1308795))

(declare-fun m!1308797 () Bool)

(assert (=> d!152731 m!1308797))

(declare-fun m!1308799 () Bool)

(assert (=> b!1417989 m!1308799))

(assert (=> b!1417910 d!152731))

(declare-fun d!152735 () Bool)

(declare-fun lt!625463 () Bool)

(assert (=> d!152735 (= lt!625463 (select (content!773 Nil!33399) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!802509 () Bool)

(assert (=> d!152735 (= lt!625463 e!802509)))

(declare-fun res!953777 () Bool)

(assert (=> d!152735 (=> (not res!953777) (not e!802509))))

(assert (=> d!152735 (= res!953777 ((_ is Cons!33398) Nil!33399))))

(assert (=> d!152735 (= (contains!9845 Nil!33399 #b0000000000000000000000000000000000000000000000000000000000000000) lt!625463)))

(declare-fun b!1417990 () Bool)

(declare-fun e!802510 () Bool)

(assert (=> b!1417990 (= e!802509 e!802510)))

(declare-fun res!953778 () Bool)

(assert (=> b!1417990 (=> res!953778 e!802510)))

(assert (=> b!1417990 (= res!953778 (= (h!34691 Nil!33399) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1417991 () Bool)

(assert (=> b!1417991 (= e!802510 (contains!9845 (t!48103 Nil!33399) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!152735 res!953777) b!1417990))

(assert (= (and b!1417990 (not res!953778)) b!1417991))

(assert (=> d!152735 m!1308795))

(declare-fun m!1308801 () Bool)

(assert (=> d!152735 m!1308801))

(declare-fun m!1308803 () Bool)

(assert (=> b!1417991 m!1308803))

(assert (=> b!1417909 d!152735))

(declare-fun d!152737 () Bool)

(assert (=> d!152737 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!122328 d!152737))

(declare-fun d!152743 () Bool)

(assert (=> d!152743 (= (array_inv!35657 a!2831) (bvsge (size!47263 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!122328 d!152743))

(check-sat (not d!152735) (not b!1417991) (not d!152731) (not b!1417948) (not b!1417969) (not b!1417968) (not bm!67239) (not b!1417989) (not b!1417950))
(check-sat)
