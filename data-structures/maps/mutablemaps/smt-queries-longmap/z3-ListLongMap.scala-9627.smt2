; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113938 () Bool)

(assert start!113938)

(declare-fun b!1350600 () Bool)

(declare-fun res!896192 () Bool)

(declare-fun e!768335 () Bool)

(assert (=> b!1350600 (=> res!896192 e!768335)))

(declare-datatypes ((List!31686 0))(
  ( (Nil!31683) (Cons!31682 (h!32891 (_ BitVec 64)) (t!46351 List!31686)) )
))
(declare-fun lt!596966 () List!31686)

(declare-fun contains!9251 (List!31686 (_ BitVec 64)) Bool)

(assert (=> b!1350600 (= res!896192 (contains!9251 lt!596966 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350601 () Bool)

(declare-fun res!896180 () Bool)

(assert (=> b!1350601 (=> res!896180 e!768335)))

(assert (=> b!1350601 (= res!896180 (contains!9251 lt!596966 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350602 () Bool)

(declare-fun res!896182 () Bool)

(assert (=> b!1350602 (=> res!896182 e!768335)))

(declare-fun noDuplicate!2130 (List!31686) Bool)

(assert (=> b!1350602 (= res!896182 (not (noDuplicate!2130 lt!596966)))))

(declare-fun b!1350603 () Bool)

(declare-fun e!768336 () Bool)

(assert (=> b!1350603 (= e!768336 (not e!768335))))

(declare-fun res!896193 () Bool)

(assert (=> b!1350603 (=> res!896193 e!768335)))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1350603 (= res!896193 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun acc!759 () List!31686)

(declare-datatypes ((array!92043 0))(
  ( (array!92044 (arr!44465 (Array (_ BitVec 32) (_ BitVec 64))) (size!45016 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92043)

(declare-fun $colon$colon!677 (List!31686 (_ BitVec 64)) List!31686)

(assert (=> b!1350603 (= lt!596966 ($colon$colon!677 acc!759 (select (arr!44465 a!3742) from!3120)))))

(declare-fun subseq!660 (List!31686 List!31686) Bool)

(assert (=> b!1350603 (subseq!660 acc!759 acc!759)))

(declare-datatypes ((Unit!44182 0))(
  ( (Unit!44183) )
))
(declare-fun lt!596963 () Unit!44182)

(declare-fun lemmaListSubSeqRefl!0 (List!31686) Unit!44182)

(assert (=> b!1350603 (= lt!596963 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun res!896184 () Bool)

(assert (=> start!113938 (=> (not res!896184) (not e!768336))))

(assert (=> start!113938 (= res!896184 (and (bvslt (size!45016 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45016 a!3742))))))

(assert (=> start!113938 e!768336))

(assert (=> start!113938 true))

(declare-fun array_inv!33410 (array!92043) Bool)

(assert (=> start!113938 (array_inv!33410 a!3742)))

(declare-fun b!1350604 () Bool)

(declare-fun res!896187 () Bool)

(assert (=> b!1350604 (=> res!896187 e!768335)))

(assert (=> b!1350604 (= res!896187 (not (subseq!660 acc!759 lt!596966)))))

(declare-fun b!1350605 () Bool)

(declare-fun res!896179 () Bool)

(assert (=> b!1350605 (=> (not res!896179) (not e!768336))))

(assert (=> b!1350605 (= res!896179 (noDuplicate!2130 acc!759))))

(declare-fun b!1350606 () Bool)

(assert (=> b!1350606 (= e!768335 true)))

(declare-fun lt!596965 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92043 (_ BitVec 32) List!31686) Bool)

(assert (=> b!1350606 (= lt!596965 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!596966))))

(declare-fun lt!596964 () Unit!44182)

(declare-fun noDuplicateSubseq!111 (List!31686 List!31686) Unit!44182)

(assert (=> b!1350606 (= lt!596964 (noDuplicateSubseq!111 acc!759 lt!596966))))

(declare-fun b!1350607 () Bool)

(declare-fun res!896186 () Bool)

(assert (=> b!1350607 (=> (not res!896186) (not e!768336))))

(assert (=> b!1350607 (= res!896186 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31683))))

(declare-fun b!1350608 () Bool)

(declare-fun res!896188 () Bool)

(assert (=> b!1350608 (=> (not res!896188) (not e!768336))))

(assert (=> b!1350608 (= res!896188 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45016 a!3742)))))

(declare-fun b!1350609 () Bool)

(declare-fun res!896190 () Bool)

(assert (=> b!1350609 (=> (not res!896190) (not e!768336))))

(assert (=> b!1350609 (= res!896190 (not (contains!9251 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350610 () Bool)

(declare-fun res!896185 () Bool)

(assert (=> b!1350610 (=> (not res!896185) (not e!768336))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1350610 (= res!896185 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45016 a!3742))))))

(declare-fun b!1350611 () Bool)

(declare-fun res!896183 () Bool)

(assert (=> b!1350611 (=> (not res!896183) (not e!768336))))

(assert (=> b!1350611 (= res!896183 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1350612 () Bool)

(declare-fun res!896181 () Bool)

(assert (=> b!1350612 (=> (not res!896181) (not e!768336))))

(assert (=> b!1350612 (= res!896181 (not (contains!9251 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350613 () Bool)

(declare-fun res!896191 () Bool)

(assert (=> b!1350613 (=> (not res!896191) (not e!768336))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1350613 (= res!896191 (validKeyInArray!0 (select (arr!44465 a!3742) from!3120)))))

(declare-fun b!1350614 () Bool)

(declare-fun res!896189 () Bool)

(assert (=> b!1350614 (=> (not res!896189) (not e!768336))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1350614 (= res!896189 (not (validKeyInArray!0 l!3587)))))

(assert (= (and start!113938 res!896184) b!1350605))

(assert (= (and b!1350605 res!896179) b!1350612))

(assert (= (and b!1350612 res!896181) b!1350609))

(assert (= (and b!1350609 res!896190) b!1350607))

(assert (= (and b!1350607 res!896186) b!1350611))

(assert (= (and b!1350611 res!896183) b!1350610))

(assert (= (and b!1350610 res!896185) b!1350614))

(assert (= (and b!1350614 res!896189) b!1350608))

(assert (= (and b!1350608 res!896188) b!1350613))

(assert (= (and b!1350613 res!896191) b!1350603))

(assert (= (and b!1350603 (not res!896193)) b!1350602))

(assert (= (and b!1350602 (not res!896182)) b!1350600))

(assert (= (and b!1350600 (not res!896192)) b!1350601))

(assert (= (and b!1350601 (not res!896180)) b!1350604))

(assert (= (and b!1350604 (not res!896187)) b!1350606))

(declare-fun m!1237813 () Bool)

(assert (=> b!1350611 m!1237813))

(declare-fun m!1237815 () Bool)

(assert (=> b!1350606 m!1237815))

(declare-fun m!1237817 () Bool)

(assert (=> b!1350606 m!1237817))

(declare-fun m!1237819 () Bool)

(assert (=> start!113938 m!1237819))

(declare-fun m!1237821 () Bool)

(assert (=> b!1350605 m!1237821))

(declare-fun m!1237823 () Bool)

(assert (=> b!1350601 m!1237823))

(declare-fun m!1237825 () Bool)

(assert (=> b!1350614 m!1237825))

(declare-fun m!1237827 () Bool)

(assert (=> b!1350603 m!1237827))

(assert (=> b!1350603 m!1237827))

(declare-fun m!1237829 () Bool)

(assert (=> b!1350603 m!1237829))

(declare-fun m!1237831 () Bool)

(assert (=> b!1350603 m!1237831))

(declare-fun m!1237833 () Bool)

(assert (=> b!1350603 m!1237833))

(declare-fun m!1237835 () Bool)

(assert (=> b!1350607 m!1237835))

(declare-fun m!1237837 () Bool)

(assert (=> b!1350612 m!1237837))

(declare-fun m!1237839 () Bool)

(assert (=> b!1350609 m!1237839))

(declare-fun m!1237841 () Bool)

(assert (=> b!1350604 m!1237841))

(assert (=> b!1350613 m!1237827))

(assert (=> b!1350613 m!1237827))

(declare-fun m!1237843 () Bool)

(assert (=> b!1350613 m!1237843))

(declare-fun m!1237845 () Bool)

(assert (=> b!1350602 m!1237845))

(declare-fun m!1237847 () Bool)

(assert (=> b!1350600 m!1237847))

(check-sat (not b!1350611) (not b!1350604) (not b!1350609) (not b!1350606) (not b!1350612) (not b!1350605) (not b!1350603) (not b!1350601) (not b!1350607) (not b!1350614) (not b!1350602) (not b!1350600) (not start!113938) (not b!1350613))
