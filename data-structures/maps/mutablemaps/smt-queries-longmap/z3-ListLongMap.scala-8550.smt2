; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104424 () Bool)

(assert start!104424)

(declare-datatypes ((array!80200 0))(
  ( (array!80201 (arr!38674 (Array (_ BitVec 32) (_ BitVec 64))) (size!39211 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80200)

(declare-fun b!1246098 () Bool)

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((List!27655 0))(
  ( (Nil!27652) (Cons!27651 (h!28860 (_ BitVec 64)) (t!41131 List!27655)) )
))
(declare-fun lt!562966 () List!27655)

(declare-fun e!706707 () Bool)

(declare-fun arrayNoDuplicates!0 (array!80200 (_ BitVec 32) List!27655) Bool)

(assert (=> b!1246098 (= e!706707 (not (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) lt!562966)))))

(declare-datatypes ((Unit!41340 0))(
  ( (Unit!41341) )
))
(declare-fun lt!562967 () Unit!41340)

(declare-fun noDuplicateSubseq!108 (List!27655 List!27655) Unit!41340)

(assert (=> b!1246098 (= lt!562967 (noDuplicateSubseq!108 Nil!27652 lt!562966))))

(declare-fun b!1246099 () Bool)

(declare-fun res!831610 () Bool)

(assert (=> b!1246099 (=> (not res!831610) (not e!706707))))

(declare-fun contains!7473 (List!27655 (_ BitVec 64)) Bool)

(assert (=> b!1246099 (= res!831610 (not (contains!7473 Nil!27652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1246101 () Bool)

(declare-fun res!831609 () Bool)

(declare-fun e!706706 () Bool)

(assert (=> b!1246101 (=> (not res!831609) (not e!706706))))

(assert (=> b!1246101 (= res!831609 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27652))))

(declare-fun b!1246102 () Bool)

(declare-fun res!831613 () Bool)

(assert (=> b!1246102 (=> (not res!831613) (not e!706706))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1246102 (= res!831613 (validKeyInArray!0 (select (arr!38674 a!3892) from!3270)))))

(declare-fun b!1246103 () Bool)

(declare-fun res!831608 () Bool)

(assert (=> b!1246103 (=> (not res!831608) (not e!706706))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1246103 (= res!831608 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39211 a!3892)) (not (= newFrom!287 (size!39211 a!3892)))))))

(declare-fun b!1246104 () Bool)

(declare-fun res!831615 () Bool)

(assert (=> b!1246104 (=> (not res!831615) (not e!706707))))

(declare-fun subseq!657 (List!27655 List!27655) Bool)

(assert (=> b!1246104 (= res!831615 (subseq!657 Nil!27652 lt!562966))))

(declare-fun b!1246105 () Bool)

(declare-fun res!831614 () Bool)

(assert (=> b!1246105 (=> (not res!831614) (not e!706707))))

(assert (=> b!1246105 (= res!831614 (not (contains!7473 lt!562966 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1246106 () Bool)

(assert (=> b!1246106 (= e!706706 e!706707)))

(declare-fun res!831607 () Bool)

(assert (=> b!1246106 (=> (not res!831607) (not e!706707))))

(assert (=> b!1246106 (= res!831607 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(assert (=> b!1246106 (= lt!562966 (Cons!27651 (select (arr!38674 a!3892) from!3270) Nil!27652))))

(declare-fun b!1246107 () Bool)

(declare-fun res!831606 () Bool)

(assert (=> b!1246107 (=> (not res!831606) (not e!706707))))

(declare-fun noDuplicate!2063 (List!27655) Bool)

(assert (=> b!1246107 (= res!831606 (noDuplicate!2063 lt!562966))))

(declare-fun b!1246108 () Bool)

(declare-fun res!831612 () Bool)

(assert (=> b!1246108 (=> (not res!831612) (not e!706707))))

(assert (=> b!1246108 (= res!831612 (not (contains!7473 Nil!27652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!831616 () Bool)

(assert (=> start!104424 (=> (not res!831616) (not e!706706))))

(assert (=> start!104424 (= res!831616 (and (bvslt (size!39211 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39211 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39211 a!3892))))))

(assert (=> start!104424 e!706706))

(declare-fun array_inv!29450 (array!80200) Bool)

(assert (=> start!104424 (array_inv!29450 a!3892)))

(assert (=> start!104424 true))

(declare-fun b!1246100 () Bool)

(declare-fun res!831611 () Bool)

(assert (=> b!1246100 (=> (not res!831611) (not e!706707))))

(assert (=> b!1246100 (= res!831611 (not (contains!7473 lt!562966 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!104424 res!831616) b!1246101))

(assert (= (and b!1246101 res!831609) b!1246103))

(assert (= (and b!1246103 res!831608) b!1246102))

(assert (= (and b!1246102 res!831613) b!1246106))

(assert (= (and b!1246106 res!831607) b!1246107))

(assert (= (and b!1246107 res!831606) b!1246100))

(assert (= (and b!1246100 res!831611) b!1246105))

(assert (= (and b!1246105 res!831614) b!1246108))

(assert (= (and b!1246108 res!831612) b!1246099))

(assert (= (and b!1246099 res!831610) b!1246104))

(assert (= (and b!1246104 res!831615) b!1246098))

(declare-fun m!1148015 () Bool)

(assert (=> b!1246107 m!1148015))

(declare-fun m!1148017 () Bool)

(assert (=> b!1246106 m!1148017))

(declare-fun m!1148019 () Bool)

(assert (=> b!1246104 m!1148019))

(declare-fun m!1148021 () Bool)

(assert (=> b!1246101 m!1148021))

(declare-fun m!1148023 () Bool)

(assert (=> start!104424 m!1148023))

(declare-fun m!1148025 () Bool)

(assert (=> b!1246099 m!1148025))

(declare-fun m!1148027 () Bool)

(assert (=> b!1246098 m!1148027))

(declare-fun m!1148029 () Bool)

(assert (=> b!1246098 m!1148029))

(declare-fun m!1148031 () Bool)

(assert (=> b!1246100 m!1148031))

(declare-fun m!1148033 () Bool)

(assert (=> b!1246105 m!1148033))

(assert (=> b!1246102 m!1148017))

(assert (=> b!1246102 m!1148017))

(declare-fun m!1148035 () Bool)

(assert (=> b!1246102 m!1148035))

(declare-fun m!1148037 () Bool)

(assert (=> b!1246108 m!1148037))

(check-sat (not b!1246100) (not b!1246108) (not b!1246104) (not b!1246102) (not b!1246101) (not start!104424) (not b!1246107) (not b!1246105) (not b!1246098) (not b!1246099))
(check-sat)
(get-model)

(declare-fun d!137495 () Bool)

(assert (=> d!137495 (= (validKeyInArray!0 (select (arr!38674 a!3892) from!3270)) (and (not (= (select (arr!38674 a!3892) from!3270) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38674 a!3892) from!3270) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1246102 d!137495))

(declare-fun d!137497 () Bool)

(declare-fun lt!562976 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!636 (List!27655) (InoxSet (_ BitVec 64)))

(assert (=> d!137497 (= lt!562976 (select (content!636 Nil!27652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!706722 () Bool)

(assert (=> d!137497 (= lt!562976 e!706722)))

(declare-fun res!831654 () Bool)

(assert (=> d!137497 (=> (not res!831654) (not e!706722))))

(get-info :version)

(assert (=> d!137497 (= res!831654 ((_ is Cons!27651) Nil!27652))))

(assert (=> d!137497 (= (contains!7473 Nil!27652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!562976)))

(declare-fun b!1246146 () Bool)

(declare-fun e!706723 () Bool)

(assert (=> b!1246146 (= e!706722 e!706723)))

(declare-fun res!831655 () Bool)

(assert (=> b!1246146 (=> res!831655 e!706723)))

(assert (=> b!1246146 (= res!831655 (= (h!28860 Nil!27652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1246147 () Bool)

(assert (=> b!1246147 (= e!706723 (contains!7473 (t!41131 Nil!27652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137497 res!831654) b!1246146))

(assert (= (and b!1246146 (not res!831655)) b!1246147))

(declare-fun m!1148063 () Bool)

(assert (=> d!137497 m!1148063))

(declare-fun m!1148065 () Bool)

(assert (=> d!137497 m!1148065))

(declare-fun m!1148067 () Bool)

(assert (=> b!1246147 m!1148067))

(assert (=> b!1246108 d!137497))

(declare-fun d!137499 () Bool)

(declare-fun res!831672 () Bool)

(declare-fun e!706747 () Bool)

(assert (=> d!137499 (=> res!831672 e!706747)))

(assert (=> d!137499 (= res!831672 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) (size!39211 a!3892)))))

(assert (=> d!137499 (= (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) lt!562966) e!706747)))

(declare-fun b!1246172 () Bool)

(declare-fun e!706744 () Bool)

(declare-fun e!706745 () Bool)

(assert (=> b!1246172 (= e!706744 e!706745)))

(declare-fun c!121937 () Bool)

(assert (=> b!1246172 (= c!121937 (validKeyInArray!0 (select (arr!38674 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun b!1246173 () Bool)

(declare-fun call!61516 () Bool)

(assert (=> b!1246173 (= e!706745 call!61516)))

(declare-fun b!1246174 () Bool)

(assert (=> b!1246174 (= e!706747 e!706744)))

(declare-fun res!831673 () Bool)

(assert (=> b!1246174 (=> (not res!831673) (not e!706744))))

(declare-fun e!706746 () Bool)

(assert (=> b!1246174 (= res!831673 (not e!706746))))

(declare-fun res!831674 () Bool)

(assert (=> b!1246174 (=> (not res!831674) (not e!706746))))

(assert (=> b!1246174 (= res!831674 (validKeyInArray!0 (select (arr!38674 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun b!1246175 () Bool)

(assert (=> b!1246175 (= e!706745 call!61516)))

(declare-fun b!1246176 () Bool)

(assert (=> b!1246176 (= e!706746 (contains!7473 lt!562966 (select (arr!38674 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun bm!61513 () Bool)

(assert (=> bm!61513 (= call!61516 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270 #b00000000000000000000000000000001) (ite c!121937 (Cons!27651 (select (arr!38674 a!3892) (bvadd #b00000000000000000000000000000001 from!3270)) lt!562966) lt!562966)))))

(assert (= (and d!137499 (not res!831672)) b!1246174))

(assert (= (and b!1246174 res!831674) b!1246176))

(assert (= (and b!1246174 res!831673) b!1246172))

(assert (= (and b!1246172 c!121937) b!1246175))

(assert (= (and b!1246172 (not c!121937)) b!1246173))

(assert (= (or b!1246175 b!1246173) bm!61513))

(declare-fun m!1148069 () Bool)

(assert (=> b!1246172 m!1148069))

(assert (=> b!1246172 m!1148069))

(declare-fun m!1148071 () Bool)

(assert (=> b!1246172 m!1148071))

(assert (=> b!1246174 m!1148069))

(assert (=> b!1246174 m!1148069))

(assert (=> b!1246174 m!1148071))

(assert (=> b!1246176 m!1148069))

(assert (=> b!1246176 m!1148069))

(declare-fun m!1148073 () Bool)

(assert (=> b!1246176 m!1148073))

(assert (=> bm!61513 m!1148069))

(declare-fun m!1148075 () Bool)

(assert (=> bm!61513 m!1148075))

(assert (=> b!1246098 d!137499))

(declare-fun d!137505 () Bool)

(assert (=> d!137505 (noDuplicate!2063 Nil!27652)))

(declare-fun lt!562982 () Unit!41340)

(declare-fun choose!1852 (List!27655 List!27655) Unit!41340)

(assert (=> d!137505 (= lt!562982 (choose!1852 Nil!27652 lt!562966))))

(declare-fun e!706756 () Bool)

(assert (=> d!137505 e!706756))

(declare-fun res!831682 () Bool)

(assert (=> d!137505 (=> (not res!831682) (not e!706756))))

(assert (=> d!137505 (= res!831682 (subseq!657 Nil!27652 lt!562966))))

(assert (=> d!137505 (= (noDuplicateSubseq!108 Nil!27652 lt!562966) lt!562982)))

(declare-fun b!1246186 () Bool)

(assert (=> b!1246186 (= e!706756 (noDuplicate!2063 lt!562966))))

(assert (= (and d!137505 res!831682) b!1246186))

(declare-fun m!1148091 () Bool)

(assert (=> d!137505 m!1148091))

(declare-fun m!1148093 () Bool)

(assert (=> d!137505 m!1148093))

(assert (=> d!137505 m!1148019))

(assert (=> b!1246186 m!1148015))

(assert (=> b!1246098 d!137505))

(declare-fun d!137513 () Bool)

(declare-fun lt!562983 () Bool)

(assert (=> d!137513 (= lt!562983 (select (content!636 Nil!27652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!706759 () Bool)

(assert (=> d!137513 (= lt!562983 e!706759)))

(declare-fun res!831685 () Bool)

(assert (=> d!137513 (=> (not res!831685) (not e!706759))))

(assert (=> d!137513 (= res!831685 ((_ is Cons!27651) Nil!27652))))

(assert (=> d!137513 (= (contains!7473 Nil!27652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!562983)))

(declare-fun b!1246189 () Bool)

(declare-fun e!706760 () Bool)

(assert (=> b!1246189 (= e!706759 e!706760)))

(declare-fun res!831686 () Bool)

(assert (=> b!1246189 (=> res!831686 e!706760)))

(assert (=> b!1246189 (= res!831686 (= (h!28860 Nil!27652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1246190 () Bool)

(assert (=> b!1246190 (= e!706760 (contains!7473 (t!41131 Nil!27652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137513 res!831685) b!1246189))

(assert (= (and b!1246189 (not res!831686)) b!1246190))

(assert (=> d!137513 m!1148063))

(declare-fun m!1148095 () Bool)

(assert (=> d!137513 m!1148095))

(declare-fun m!1148097 () Bool)

(assert (=> b!1246190 m!1148097))

(assert (=> b!1246099 d!137513))

(declare-fun d!137515 () Bool)

(declare-fun res!831708 () Bool)

(declare-fun e!706788 () Bool)

(assert (=> d!137515 (=> res!831708 e!706788)))

(assert (=> d!137515 (= res!831708 ((_ is Nil!27652) Nil!27652))))

(assert (=> d!137515 (= (subseq!657 Nil!27652 lt!562966) e!706788)))

(declare-fun b!1246222 () Bool)

(declare-fun e!706787 () Bool)

(assert (=> b!1246222 (= e!706787 (subseq!657 (t!41131 Nil!27652) (t!41131 lt!562966)))))

(declare-fun b!1246220 () Bool)

(declare-fun e!706786 () Bool)

(assert (=> b!1246220 (= e!706788 e!706786)))

(declare-fun res!831710 () Bool)

(assert (=> b!1246220 (=> (not res!831710) (not e!706786))))

(assert (=> b!1246220 (= res!831710 ((_ is Cons!27651) lt!562966))))

(declare-fun b!1246221 () Bool)

(declare-fun e!706789 () Bool)

(assert (=> b!1246221 (= e!706786 e!706789)))

(declare-fun res!831709 () Bool)

(assert (=> b!1246221 (=> res!831709 e!706789)))

(assert (=> b!1246221 (= res!831709 e!706787)))

(declare-fun res!831711 () Bool)

(assert (=> b!1246221 (=> (not res!831711) (not e!706787))))

(assert (=> b!1246221 (= res!831711 (= (h!28860 Nil!27652) (h!28860 lt!562966)))))

(declare-fun b!1246223 () Bool)

(assert (=> b!1246223 (= e!706789 (subseq!657 Nil!27652 (t!41131 lt!562966)))))

(assert (= (and d!137515 (not res!831708)) b!1246220))

(assert (= (and b!1246220 res!831710) b!1246221))

(assert (= (and b!1246221 res!831711) b!1246222))

(assert (= (and b!1246221 (not res!831709)) b!1246223))

(declare-fun m!1148111 () Bool)

(assert (=> b!1246222 m!1148111))

(declare-fun m!1148113 () Bool)

(assert (=> b!1246223 m!1148113))

(assert (=> b!1246104 d!137515))

(declare-fun d!137525 () Bool)

(declare-fun lt!562987 () Bool)

(assert (=> d!137525 (= lt!562987 (select (content!636 lt!562966) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!706794 () Bool)

(assert (=> d!137525 (= lt!562987 e!706794)))

(declare-fun res!831715 () Bool)

(assert (=> d!137525 (=> (not res!831715) (not e!706794))))

(assert (=> d!137525 (= res!831715 ((_ is Cons!27651) lt!562966))))

(assert (=> d!137525 (= (contains!7473 lt!562966 #b1000000000000000000000000000000000000000000000000000000000000000) lt!562987)))

(declare-fun b!1246229 () Bool)

(declare-fun e!706795 () Bool)

(assert (=> b!1246229 (= e!706794 e!706795)))

(declare-fun res!831716 () Bool)

(assert (=> b!1246229 (=> res!831716 e!706795)))

(assert (=> b!1246229 (= res!831716 (= (h!28860 lt!562966) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1246230 () Bool)

(assert (=> b!1246230 (= e!706795 (contains!7473 (t!41131 lt!562966) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137525 res!831715) b!1246229))

(assert (= (and b!1246229 (not res!831716)) b!1246230))

(declare-fun m!1148119 () Bool)

(assert (=> d!137525 m!1148119))

(declare-fun m!1148121 () Bool)

(assert (=> d!137525 m!1148121))

(declare-fun m!1148123 () Bool)

(assert (=> b!1246230 m!1148123))

(assert (=> b!1246105 d!137525))

(declare-fun d!137527 () Bool)

(declare-fun lt!562990 () Bool)

(assert (=> d!137527 (= lt!562990 (select (content!636 lt!562966) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!706798 () Bool)

(assert (=> d!137527 (= lt!562990 e!706798)))

(declare-fun res!831719 () Bool)

(assert (=> d!137527 (=> (not res!831719) (not e!706798))))

(assert (=> d!137527 (= res!831719 ((_ is Cons!27651) lt!562966))))

(assert (=> d!137527 (= (contains!7473 lt!562966 #b0000000000000000000000000000000000000000000000000000000000000000) lt!562990)))

(declare-fun b!1246233 () Bool)

(declare-fun e!706799 () Bool)

(assert (=> b!1246233 (= e!706798 e!706799)))

(declare-fun res!831720 () Bool)

(assert (=> b!1246233 (=> res!831720 e!706799)))

(assert (=> b!1246233 (= res!831720 (= (h!28860 lt!562966) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1246234 () Bool)

(assert (=> b!1246234 (= e!706799 (contains!7473 (t!41131 lt!562966) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137527 res!831719) b!1246233))

(assert (= (and b!1246233 (not res!831720)) b!1246234))

(assert (=> d!137527 m!1148119))

(declare-fun m!1148129 () Bool)

(assert (=> d!137527 m!1148129))

(declare-fun m!1148131 () Bool)

(assert (=> b!1246234 m!1148131))

(assert (=> b!1246100 d!137527))

(declare-fun d!137531 () Bool)

(declare-fun res!831723 () Bool)

(declare-fun e!706805 () Bool)

(assert (=> d!137531 (=> res!831723 e!706805)))

(assert (=> d!137531 (= res!831723 (bvsge from!3270 (size!39211 a!3892)))))

(assert (=> d!137531 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27652) e!706805)))

(declare-fun b!1246237 () Bool)

(declare-fun e!706802 () Bool)

(declare-fun e!706803 () Bool)

(assert (=> b!1246237 (= e!706802 e!706803)))

(declare-fun c!121944 () Bool)

(assert (=> b!1246237 (= c!121944 (validKeyInArray!0 (select (arr!38674 a!3892) from!3270)))))

(declare-fun b!1246238 () Bool)

(declare-fun call!61523 () Bool)

(assert (=> b!1246238 (= e!706803 call!61523)))

(declare-fun b!1246239 () Bool)

(assert (=> b!1246239 (= e!706805 e!706802)))

(declare-fun res!831724 () Bool)

(assert (=> b!1246239 (=> (not res!831724) (not e!706802))))

(declare-fun e!706804 () Bool)

(assert (=> b!1246239 (= res!831724 (not e!706804))))

(declare-fun res!831725 () Bool)

(assert (=> b!1246239 (=> (not res!831725) (not e!706804))))

(assert (=> b!1246239 (= res!831725 (validKeyInArray!0 (select (arr!38674 a!3892) from!3270)))))

(declare-fun b!1246240 () Bool)

(assert (=> b!1246240 (= e!706803 call!61523)))

(declare-fun b!1246241 () Bool)

(assert (=> b!1246241 (= e!706804 (contains!7473 Nil!27652 (select (arr!38674 a!3892) from!3270)))))

(declare-fun bm!61520 () Bool)

(assert (=> bm!61520 (= call!61523 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121944 (Cons!27651 (select (arr!38674 a!3892) from!3270) Nil!27652) Nil!27652)))))

(assert (= (and d!137531 (not res!831723)) b!1246239))

(assert (= (and b!1246239 res!831725) b!1246241))

(assert (= (and b!1246239 res!831724) b!1246237))

(assert (= (and b!1246237 c!121944) b!1246240))

(assert (= (and b!1246237 (not c!121944)) b!1246238))

(assert (= (or b!1246240 b!1246238) bm!61520))

(assert (=> b!1246237 m!1148017))

(assert (=> b!1246237 m!1148017))

(assert (=> b!1246237 m!1148035))

(assert (=> b!1246239 m!1148017))

(assert (=> b!1246239 m!1148017))

(assert (=> b!1246239 m!1148035))

(assert (=> b!1246241 m!1148017))

(assert (=> b!1246241 m!1148017))

(declare-fun m!1148133 () Bool)

(assert (=> b!1246241 m!1148133))

(assert (=> bm!61520 m!1148017))

(declare-fun m!1148135 () Bool)

(assert (=> bm!61520 m!1148135))

(assert (=> b!1246101 d!137531))

(declare-fun d!137533 () Bool)

(assert (=> d!137533 (= (array_inv!29450 a!3892) (bvsge (size!39211 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104424 d!137533))

(declare-fun d!137537 () Bool)

(declare-fun res!831739 () Bool)

(declare-fun e!706819 () Bool)

(assert (=> d!137537 (=> res!831739 e!706819)))

(assert (=> d!137537 (= res!831739 ((_ is Nil!27652) lt!562966))))

(assert (=> d!137537 (= (noDuplicate!2063 lt!562966) e!706819)))

(declare-fun b!1246255 () Bool)

(declare-fun e!706820 () Bool)

(assert (=> b!1246255 (= e!706819 e!706820)))

(declare-fun res!831740 () Bool)

(assert (=> b!1246255 (=> (not res!831740) (not e!706820))))

(assert (=> b!1246255 (= res!831740 (not (contains!7473 (t!41131 lt!562966) (h!28860 lt!562966))))))

(declare-fun b!1246256 () Bool)

(assert (=> b!1246256 (= e!706820 (noDuplicate!2063 (t!41131 lt!562966)))))

(assert (= (and d!137537 (not res!831739)) b!1246255))

(assert (= (and b!1246255 res!831740) b!1246256))

(declare-fun m!1148157 () Bool)

(assert (=> b!1246255 m!1148157))

(declare-fun m!1148159 () Bool)

(assert (=> b!1246256 m!1148159))

(assert (=> b!1246107 d!137537))

(check-sat (not d!137513) (not d!137525) (not b!1246256) (not b!1246174) (not b!1246147) (not b!1246186) (not b!1246239) (not d!137505) (not b!1246255) (not bm!61513) (not d!137497) (not b!1246176) (not d!137527) (not b!1246172) (not b!1246234) (not bm!61520) (not b!1246230) (not b!1246222) (not b!1246241) (not b!1246223) (not b!1246190) (not b!1246237))
(check-sat)
