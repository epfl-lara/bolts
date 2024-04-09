; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113866 () Bool)

(assert start!113866)

(declare-fun res!895762 () Bool)

(declare-fun e!768106 () Bool)

(assert (=> start!113866 (=> (not res!895762) (not e!768106))))

(declare-datatypes ((array!92001 0))(
  ( (array!92002 (arr!44447 (Array (_ BitVec 32) (_ BitVec 64))) (size!44998 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92001)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!113866 (= res!895762 (and (bvslt (size!44998 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!44998 a!3742))))))

(assert (=> start!113866 e!768106))

(declare-fun array_inv!33392 (array!92001) Bool)

(assert (=> start!113866 (array_inv!33392 a!3742)))

(assert (=> start!113866 true))

(declare-fun b!1350181 () Bool)

(declare-fun res!895761 () Bool)

(assert (=> b!1350181 (=> (not res!895761) (not e!768106))))

(declare-datatypes ((List!31668 0))(
  ( (Nil!31665) (Cons!31664 (h!32873 (_ BitVec 64)) (t!46333 List!31668)) )
))
(declare-fun acc!759 () List!31668)

(declare-fun contains!9233 (List!31668 (_ BitVec 64)) Bool)

(assert (=> b!1350181 (= res!895761 (not (contains!9233 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350182 () Bool)

(declare-fun res!895764 () Bool)

(assert (=> b!1350182 (=> (not res!895764) (not e!768106))))

(assert (=> b!1350182 (= res!895764 (bvsle #b00000000000000000000000000000000 (size!44998 a!3742)))))

(declare-fun b!1350183 () Bool)

(declare-fun res!895763 () Bool)

(assert (=> b!1350183 (=> (not res!895763) (not e!768106))))

(declare-fun noDuplicate!2112 (List!31668) Bool)

(assert (=> b!1350183 (= res!895763 (noDuplicate!2112 acc!759))))

(declare-fun b!1350184 () Bool)

(assert (=> b!1350184 (= e!768106 (not (noDuplicate!2112 Nil!31665)))))

(declare-fun b!1350185 () Bool)

(declare-fun res!895760 () Bool)

(assert (=> b!1350185 (=> (not res!895760) (not e!768106))))

(assert (=> b!1350185 (= res!895760 (not (contains!9233 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!113866 res!895762) b!1350183))

(assert (= (and b!1350183 res!895763) b!1350181))

(assert (= (and b!1350181 res!895761) b!1350185))

(assert (= (and b!1350185 res!895760) b!1350182))

(assert (= (and b!1350182 res!895764) b!1350184))

(declare-fun m!1237457 () Bool)

(assert (=> b!1350185 m!1237457))

(declare-fun m!1237459 () Bool)

(assert (=> b!1350181 m!1237459))

(declare-fun m!1237461 () Bool)

(assert (=> b!1350183 m!1237461))

(declare-fun m!1237463 () Bool)

(assert (=> b!1350184 m!1237463))

(declare-fun m!1237465 () Bool)

(assert (=> start!113866 m!1237465))

(check-sat (not b!1350185) (not b!1350183) (not start!113866) (not b!1350181) (not b!1350184))
(check-sat)
(get-model)

(declare-fun d!144805 () Bool)

(declare-fun res!895784 () Bool)

(declare-fun e!768117 () Bool)

(assert (=> d!144805 (=> res!895784 e!768117)))

(get-info :version)

(assert (=> d!144805 (= res!895784 ((_ is Nil!31665) acc!759))))

(assert (=> d!144805 (= (noDuplicate!2112 acc!759) e!768117)))

(declare-fun b!1350205 () Bool)

(declare-fun e!768118 () Bool)

(assert (=> b!1350205 (= e!768117 e!768118)))

(declare-fun res!895785 () Bool)

(assert (=> b!1350205 (=> (not res!895785) (not e!768118))))

(assert (=> b!1350205 (= res!895785 (not (contains!9233 (t!46333 acc!759) (h!32873 acc!759))))))

(declare-fun b!1350206 () Bool)

(assert (=> b!1350206 (= e!768118 (noDuplicate!2112 (t!46333 acc!759)))))

(assert (= (and d!144805 (not res!895784)) b!1350205))

(assert (= (and b!1350205 res!895785) b!1350206))

(declare-fun m!1237477 () Bool)

(assert (=> b!1350205 m!1237477))

(declare-fun m!1237479 () Bool)

(assert (=> b!1350206 m!1237479))

(assert (=> b!1350183 d!144805))

(declare-fun d!144807 () Bool)

(assert (=> d!144807 (= (array_inv!33392 a!3742) (bvsge (size!44998 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!113866 d!144807))

(declare-fun d!144811 () Bool)

(declare-fun lt!596888 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!675 (List!31668) (InoxSet (_ BitVec 64)))

(assert (=> d!144811 (= lt!596888 (select (content!675 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!768129 () Bool)

(assert (=> d!144811 (= lt!596888 e!768129)))

(declare-fun res!895796 () Bool)

(assert (=> d!144811 (=> (not res!895796) (not e!768129))))

(assert (=> d!144811 (= res!895796 ((_ is Cons!31664) acc!759))))

(assert (=> d!144811 (= (contains!9233 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!596888)))

(declare-fun b!1350217 () Bool)

(declare-fun e!768130 () Bool)

(assert (=> b!1350217 (= e!768129 e!768130)))

(declare-fun res!895797 () Bool)

(assert (=> b!1350217 (=> res!895797 e!768130)))

(assert (=> b!1350217 (= res!895797 (= (h!32873 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350218 () Bool)

(assert (=> b!1350218 (= e!768130 (contains!9233 (t!46333 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!144811 res!895796) b!1350217))

(assert (= (and b!1350217 (not res!895797)) b!1350218))

(declare-fun m!1237485 () Bool)

(assert (=> d!144811 m!1237485))

(declare-fun m!1237487 () Bool)

(assert (=> d!144811 m!1237487))

(declare-fun m!1237489 () Bool)

(assert (=> b!1350218 m!1237489))

(assert (=> b!1350181 d!144811))

(declare-fun d!144815 () Bool)

(declare-fun lt!596889 () Bool)

(assert (=> d!144815 (= lt!596889 (select (content!675 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!768131 () Bool)

(assert (=> d!144815 (= lt!596889 e!768131)))

(declare-fun res!895798 () Bool)

(assert (=> d!144815 (=> (not res!895798) (not e!768131))))

(assert (=> d!144815 (= res!895798 ((_ is Cons!31664) acc!759))))

(assert (=> d!144815 (= (contains!9233 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!596889)))

(declare-fun b!1350219 () Bool)

(declare-fun e!768132 () Bool)

(assert (=> b!1350219 (= e!768131 e!768132)))

(declare-fun res!895799 () Bool)

(assert (=> b!1350219 (=> res!895799 e!768132)))

(assert (=> b!1350219 (= res!895799 (= (h!32873 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350220 () Bool)

(assert (=> b!1350220 (= e!768132 (contains!9233 (t!46333 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!144815 res!895798) b!1350219))

(assert (= (and b!1350219 (not res!895799)) b!1350220))

(assert (=> d!144815 m!1237485))

(declare-fun m!1237491 () Bool)

(assert (=> d!144815 m!1237491))

(declare-fun m!1237493 () Bool)

(assert (=> b!1350220 m!1237493))

(assert (=> b!1350185 d!144815))

(declare-fun d!144819 () Bool)

(declare-fun res!895800 () Bool)

(declare-fun e!768133 () Bool)

(assert (=> d!144819 (=> res!895800 e!768133)))

(assert (=> d!144819 (= res!895800 ((_ is Nil!31665) Nil!31665))))

(assert (=> d!144819 (= (noDuplicate!2112 Nil!31665) e!768133)))

(declare-fun b!1350221 () Bool)

(declare-fun e!768134 () Bool)

(assert (=> b!1350221 (= e!768133 e!768134)))

(declare-fun res!895801 () Bool)

(assert (=> b!1350221 (=> (not res!895801) (not e!768134))))

(assert (=> b!1350221 (= res!895801 (not (contains!9233 (t!46333 Nil!31665) (h!32873 Nil!31665))))))

(declare-fun b!1350222 () Bool)

(assert (=> b!1350222 (= e!768134 (noDuplicate!2112 (t!46333 Nil!31665)))))

(assert (= (and d!144819 (not res!895800)) b!1350221))

(assert (= (and b!1350221 res!895801) b!1350222))

(declare-fun m!1237495 () Bool)

(assert (=> b!1350221 m!1237495))

(declare-fun m!1237497 () Bool)

(assert (=> b!1350222 m!1237497))

(assert (=> b!1350184 d!144819))

(check-sat (not b!1350206) (not b!1350205) (not b!1350220) (not b!1350222) (not b!1350218) (not b!1350221) (not d!144815) (not d!144811))
(check-sat)
