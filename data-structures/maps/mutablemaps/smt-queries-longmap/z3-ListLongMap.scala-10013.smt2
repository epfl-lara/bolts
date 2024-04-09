; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118170 () Bool)

(assert start!118170)

(declare-fun b!1382704 () Bool)

(declare-fun e!783715 () Bool)

(declare-datatypes ((List!32304 0))(
  ( (Nil!32301) (Cons!32300 (h!33509 (_ BitVec 64)) (t!47005 List!32304)) )
))
(declare-fun noDuplicate!2628 (List!32304) Bool)

(assert (=> b!1382704 (= e!783715 (not (noDuplicate!2628 Nil!32301)))))

(declare-fun b!1382703 () Bool)

(declare-fun res!924404 () Bool)

(assert (=> b!1382703 (=> (not res!924404) (not e!783715))))

(declare-datatypes ((array!94439 0))(
  ( (array!94440 (arr!45596 (Array (_ BitVec 32) (_ BitVec 64))) (size!46147 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94439)

(assert (=> b!1382703 (= res!924404 (and (bvsle #b00000000000000000000000000000000 (size!46147 a!2938)) (bvslt (size!46147 a!2938) #b01111111111111111111111111111111)))))

(declare-fun b!1382702 () Bool)

(declare-fun res!924402 () Bool)

(assert (=> b!1382702 (=> (not res!924402) (not e!783715))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382702 (= res!924402 (validKeyInArray!0 (select (arr!45596 a!2938) i!1065)))))

(declare-fun res!924403 () Bool)

(assert (=> start!118170 (=> (not res!924403) (not e!783715))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118170 (= res!924403 (validMask!0 mask!2987))))

(assert (=> start!118170 e!783715))

(assert (=> start!118170 true))

(declare-fun array_inv!34541 (array!94439) Bool)

(assert (=> start!118170 (array_inv!34541 a!2938)))

(declare-fun b!1382701 () Bool)

(declare-fun res!924405 () Bool)

(assert (=> b!1382701 (=> (not res!924405) (not e!783715))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1382701 (= res!924405 (and (= (size!46147 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46147 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46147 a!2938))))))

(assert (= (and start!118170 res!924403) b!1382701))

(assert (= (and b!1382701 res!924405) b!1382702))

(assert (= (and b!1382702 res!924402) b!1382703))

(assert (= (and b!1382703 res!924404) b!1382704))

(declare-fun m!1267885 () Bool)

(assert (=> b!1382704 m!1267885))

(declare-fun m!1267887 () Bool)

(assert (=> b!1382702 m!1267887))

(assert (=> b!1382702 m!1267887))

(declare-fun m!1267889 () Bool)

(assert (=> b!1382702 m!1267889))

(declare-fun m!1267891 () Bool)

(assert (=> start!118170 m!1267891))

(declare-fun m!1267893 () Bool)

(assert (=> start!118170 m!1267893))

(check-sat (not b!1382702) (not start!118170) (not b!1382704))
(check-sat)
(get-model)

(declare-fun d!149149 () Bool)

(assert (=> d!149149 (= (validKeyInArray!0 (select (arr!45596 a!2938) i!1065)) (and (not (= (select (arr!45596 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45596 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1382702 d!149149))

(declare-fun d!149151 () Bool)

(assert (=> d!149151 (= (validMask!0 mask!2987) (and (or (= mask!2987 #b00000000000000000000000000000111) (= mask!2987 #b00000000000000000000000000001111) (= mask!2987 #b00000000000000000000000000011111) (= mask!2987 #b00000000000000000000000000111111) (= mask!2987 #b00000000000000000000000001111111) (= mask!2987 #b00000000000000000000000011111111) (= mask!2987 #b00000000000000000000000111111111) (= mask!2987 #b00000000000000000000001111111111) (= mask!2987 #b00000000000000000000011111111111) (= mask!2987 #b00000000000000000000111111111111) (= mask!2987 #b00000000000000000001111111111111) (= mask!2987 #b00000000000000000011111111111111) (= mask!2987 #b00000000000000000111111111111111) (= mask!2987 #b00000000000000001111111111111111) (= mask!2987 #b00000000000000011111111111111111) (= mask!2987 #b00000000000000111111111111111111) (= mask!2987 #b00000000000001111111111111111111) (= mask!2987 #b00000000000011111111111111111111) (= mask!2987 #b00000000000111111111111111111111) (= mask!2987 #b00000000001111111111111111111111) (= mask!2987 #b00000000011111111111111111111111) (= mask!2987 #b00000000111111111111111111111111) (= mask!2987 #b00000001111111111111111111111111) (= mask!2987 #b00000011111111111111111111111111) (= mask!2987 #b00000111111111111111111111111111) (= mask!2987 #b00001111111111111111111111111111) (= mask!2987 #b00011111111111111111111111111111) (= mask!2987 #b00111111111111111111111111111111)) (bvsle mask!2987 #b00111111111111111111111111111111)))))

(assert (=> start!118170 d!149151))

(declare-fun d!149161 () Bool)

(assert (=> d!149161 (= (array_inv!34541 a!2938) (bvsge (size!46147 a!2938) #b00000000000000000000000000000000))))

(assert (=> start!118170 d!149161))

(declare-fun d!149163 () Bool)

(declare-fun res!924422 () Bool)

(declare-fun e!783727 () Bool)

(assert (=> d!149163 (=> res!924422 e!783727)))

(get-info :version)

(assert (=> d!149163 (= res!924422 ((_ is Nil!32301) Nil!32301))))

(assert (=> d!149163 (= (noDuplicate!2628 Nil!32301) e!783727)))

(declare-fun b!1382721 () Bool)

(declare-fun e!783728 () Bool)

(assert (=> b!1382721 (= e!783727 e!783728)))

(declare-fun res!924423 () Bool)

(assert (=> b!1382721 (=> (not res!924423) (not e!783728))))

(declare-fun contains!9749 (List!32304 (_ BitVec 64)) Bool)

(assert (=> b!1382721 (= res!924423 (not (contains!9749 (t!47005 Nil!32301) (h!33509 Nil!32301))))))

(declare-fun b!1382722 () Bool)

(assert (=> b!1382722 (= e!783728 (noDuplicate!2628 (t!47005 Nil!32301)))))

(assert (= (and d!149163 (not res!924422)) b!1382721))

(assert (= (and b!1382721 res!924423) b!1382722))

(declare-fun m!1267905 () Bool)

(assert (=> b!1382721 m!1267905))

(declare-fun m!1267907 () Bool)

(assert (=> b!1382722 m!1267907))

(assert (=> b!1382704 d!149163))

(check-sat (not b!1382721) (not b!1382722))
(check-sat)
