; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113890 () Bool)

(assert start!113890)

(declare-fun b!1350284 () Bool)

(declare-fun res!895866 () Bool)

(declare-fun e!768178 () Bool)

(assert (=> b!1350284 (=> (not res!895866) (not e!768178))))

(declare-datatypes ((List!31671 0))(
  ( (Nil!31668) (Cons!31667 (h!32876 (_ BitVec 64)) (t!46336 List!31671)) )
))
(declare-fun acc!759 () List!31671)

(declare-fun noDuplicate!2115 (List!31671) Bool)

(assert (=> b!1350284 (= res!895866 (noDuplicate!2115 acc!759))))

(declare-fun b!1350285 () Bool)

(declare-fun res!895867 () Bool)

(assert (=> b!1350285 (=> (not res!895867) (not e!768178))))

(declare-fun contains!9236 (List!31671 (_ BitVec 64)) Bool)

(assert (=> b!1350285 (= res!895867 (not (contains!9236 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!895864 () Bool)

(assert (=> start!113890 (=> (not res!895864) (not e!768178))))

(declare-datatypes ((array!92010 0))(
  ( (array!92011 (arr!44450 (Array (_ BitVec 32) (_ BitVec 64))) (size!45001 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92010)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!113890 (= res!895864 (and (bvslt (size!45001 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45001 a!3742))))))

(assert (=> start!113890 e!768178))

(declare-fun array_inv!33395 (array!92010) Bool)

(assert (=> start!113890 (array_inv!33395 a!3742)))

(assert (=> start!113890 true))

(declare-fun b!1350286 () Bool)

(declare-fun res!895865 () Bool)

(assert (=> b!1350286 (=> (not res!895865) (not e!768178))))

(assert (=> b!1350286 (= res!895865 (bvsle #b00000000000000000000000000000000 (size!45001 a!3742)))))

(declare-fun b!1350287 () Bool)

(declare-fun res!895869 () Bool)

(assert (=> b!1350287 (=> (not res!895869) (not e!768178))))

(assert (=> b!1350287 (= res!895869 (not (contains!9236 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350288 () Bool)

(declare-fun e!768177 () Bool)

(assert (=> b!1350288 (= e!768177 (contains!9236 Nil!31668 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350289 () Bool)

(assert (=> b!1350289 (= e!768178 e!768177)))

(declare-fun res!895863 () Bool)

(assert (=> b!1350289 (=> res!895863 e!768177)))

(assert (=> b!1350289 (= res!895863 (contains!9236 Nil!31668 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350290 () Bool)

(declare-fun res!895868 () Bool)

(assert (=> b!1350290 (=> (not res!895868) (not e!768178))))

(assert (=> b!1350290 (= res!895868 (noDuplicate!2115 Nil!31668))))

(assert (= (and start!113890 res!895864) b!1350284))

(assert (= (and b!1350284 res!895866) b!1350285))

(assert (= (and b!1350285 res!895867) b!1350287))

(assert (= (and b!1350287 res!895869) b!1350286))

(assert (= (and b!1350286 res!895865) b!1350290))

(assert (= (and b!1350290 res!895868) b!1350289))

(assert (= (and b!1350289 (not res!895863)) b!1350288))

(declare-fun m!1237545 () Bool)

(assert (=> start!113890 m!1237545))

(declare-fun m!1237547 () Bool)

(assert (=> b!1350285 m!1237547))

(declare-fun m!1237549 () Bool)

(assert (=> b!1350287 m!1237549))

(declare-fun m!1237551 () Bool)

(assert (=> b!1350290 m!1237551))

(declare-fun m!1237553 () Bool)

(assert (=> b!1350288 m!1237553))

(declare-fun m!1237555 () Bool)

(assert (=> b!1350289 m!1237555))

(declare-fun m!1237557 () Bool)

(assert (=> b!1350284 m!1237557))

(check-sat (not b!1350284) (not b!1350290) (not start!113890) (not b!1350285) (not b!1350288) (not b!1350289) (not b!1350287))
(check-sat)
(get-model)

(declare-fun d!144837 () Bool)

(assert (=> d!144837 (= (array_inv!33395 a!3742) (bvsge (size!45001 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!113890 d!144837))

(declare-fun d!144839 () Bool)

(declare-fun lt!596900 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!678 (List!31671) (InoxSet (_ BitVec 64)))

(assert (=> d!144839 (= lt!596900 (select (content!678 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!768193 () Bool)

(assert (=> d!144839 (= lt!596900 e!768193)))

(declare-fun res!895895 () Bool)

(assert (=> d!144839 (=> (not res!895895) (not e!768193))))

(get-info :version)

(assert (=> d!144839 (= res!895895 ((_ is Cons!31667) acc!759))))

(assert (=> d!144839 (= (contains!9236 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!596900)))

(declare-fun b!1350316 () Bool)

(declare-fun e!768192 () Bool)

(assert (=> b!1350316 (= e!768193 e!768192)))

(declare-fun res!895896 () Bool)

(assert (=> b!1350316 (=> res!895896 e!768192)))

(assert (=> b!1350316 (= res!895896 (= (h!32876 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350317 () Bool)

(assert (=> b!1350317 (= e!768192 (contains!9236 (t!46336 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!144839 res!895895) b!1350316))

(assert (= (and b!1350316 (not res!895896)) b!1350317))

(declare-fun m!1237573 () Bool)

(assert (=> d!144839 m!1237573))

(declare-fun m!1237575 () Bool)

(assert (=> d!144839 m!1237575))

(declare-fun m!1237577 () Bool)

(assert (=> b!1350317 m!1237577))

(assert (=> b!1350287 d!144839))

(declare-fun d!144841 () Bool)

(declare-fun lt!596901 () Bool)

(assert (=> d!144841 (= lt!596901 (select (content!678 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!768195 () Bool)

(assert (=> d!144841 (= lt!596901 e!768195)))

(declare-fun res!895897 () Bool)

(assert (=> d!144841 (=> (not res!895897) (not e!768195))))

(assert (=> d!144841 (= res!895897 ((_ is Cons!31667) acc!759))))

(assert (=> d!144841 (= (contains!9236 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!596901)))

(declare-fun b!1350318 () Bool)

(declare-fun e!768194 () Bool)

(assert (=> b!1350318 (= e!768195 e!768194)))

(declare-fun res!895898 () Bool)

(assert (=> b!1350318 (=> res!895898 e!768194)))

(assert (=> b!1350318 (= res!895898 (= (h!32876 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350319 () Bool)

(assert (=> b!1350319 (= e!768194 (contains!9236 (t!46336 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!144841 res!895897) b!1350318))

(assert (= (and b!1350318 (not res!895898)) b!1350319))

(assert (=> d!144841 m!1237573))

(declare-fun m!1237579 () Bool)

(assert (=> d!144841 m!1237579))

(declare-fun m!1237581 () Bool)

(assert (=> b!1350319 m!1237581))

(assert (=> b!1350285 d!144841))

(declare-fun d!144843 () Bool)

(declare-fun res!895903 () Bool)

(declare-fun e!768200 () Bool)

(assert (=> d!144843 (=> res!895903 e!768200)))

(assert (=> d!144843 (= res!895903 ((_ is Nil!31668) Nil!31668))))

(assert (=> d!144843 (= (noDuplicate!2115 Nil!31668) e!768200)))

(declare-fun b!1350324 () Bool)

(declare-fun e!768201 () Bool)

(assert (=> b!1350324 (= e!768200 e!768201)))

(declare-fun res!895904 () Bool)

(assert (=> b!1350324 (=> (not res!895904) (not e!768201))))

(assert (=> b!1350324 (= res!895904 (not (contains!9236 (t!46336 Nil!31668) (h!32876 Nil!31668))))))

(declare-fun b!1350325 () Bool)

(assert (=> b!1350325 (= e!768201 (noDuplicate!2115 (t!46336 Nil!31668)))))

(assert (= (and d!144843 (not res!895903)) b!1350324))

(assert (= (and b!1350324 res!895904) b!1350325))

(declare-fun m!1237583 () Bool)

(assert (=> b!1350324 m!1237583))

(declare-fun m!1237585 () Bool)

(assert (=> b!1350325 m!1237585))

(assert (=> b!1350290 d!144843))

(declare-fun d!144849 () Bool)

(declare-fun res!895905 () Bool)

(declare-fun e!768202 () Bool)

(assert (=> d!144849 (=> res!895905 e!768202)))

(assert (=> d!144849 (= res!895905 ((_ is Nil!31668) acc!759))))

(assert (=> d!144849 (= (noDuplicate!2115 acc!759) e!768202)))

(declare-fun b!1350326 () Bool)

(declare-fun e!768203 () Bool)

(assert (=> b!1350326 (= e!768202 e!768203)))

(declare-fun res!895906 () Bool)

(assert (=> b!1350326 (=> (not res!895906) (not e!768203))))

(assert (=> b!1350326 (= res!895906 (not (contains!9236 (t!46336 acc!759) (h!32876 acc!759))))))

(declare-fun b!1350327 () Bool)

(assert (=> b!1350327 (= e!768203 (noDuplicate!2115 (t!46336 acc!759)))))

(assert (= (and d!144849 (not res!895905)) b!1350326))

(assert (= (and b!1350326 res!895906) b!1350327))

(declare-fun m!1237587 () Bool)

(assert (=> b!1350326 m!1237587))

(declare-fun m!1237589 () Bool)

(assert (=> b!1350327 m!1237589))

(assert (=> b!1350284 d!144849))

(declare-fun d!144851 () Bool)

(declare-fun lt!596902 () Bool)

(assert (=> d!144851 (= lt!596902 (select (content!678 Nil!31668) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!768205 () Bool)

(assert (=> d!144851 (= lt!596902 e!768205)))

(declare-fun res!895907 () Bool)

(assert (=> d!144851 (=> (not res!895907) (not e!768205))))

(assert (=> d!144851 (= res!895907 ((_ is Cons!31667) Nil!31668))))

(assert (=> d!144851 (= (contains!9236 Nil!31668 #b0000000000000000000000000000000000000000000000000000000000000000) lt!596902)))

(declare-fun b!1350328 () Bool)

(declare-fun e!768204 () Bool)

(assert (=> b!1350328 (= e!768205 e!768204)))

(declare-fun res!895908 () Bool)

(assert (=> b!1350328 (=> res!895908 e!768204)))

(assert (=> b!1350328 (= res!895908 (= (h!32876 Nil!31668) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350329 () Bool)

(assert (=> b!1350329 (= e!768204 (contains!9236 (t!46336 Nil!31668) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!144851 res!895907) b!1350328))

(assert (= (and b!1350328 (not res!895908)) b!1350329))

(declare-fun m!1237591 () Bool)

(assert (=> d!144851 m!1237591))

(declare-fun m!1237593 () Bool)

(assert (=> d!144851 m!1237593))

(declare-fun m!1237595 () Bool)

(assert (=> b!1350329 m!1237595))

(assert (=> b!1350289 d!144851))

(declare-fun d!144853 () Bool)

(declare-fun lt!596905 () Bool)

(assert (=> d!144853 (= lt!596905 (select (content!678 Nil!31668) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!768209 () Bool)

(assert (=> d!144853 (= lt!596905 e!768209)))

(declare-fun res!895911 () Bool)

(assert (=> d!144853 (=> (not res!895911) (not e!768209))))

(assert (=> d!144853 (= res!895911 ((_ is Cons!31667) Nil!31668))))

(assert (=> d!144853 (= (contains!9236 Nil!31668 #b1000000000000000000000000000000000000000000000000000000000000000) lt!596905)))

(declare-fun b!1350332 () Bool)

(declare-fun e!768208 () Bool)

(assert (=> b!1350332 (= e!768209 e!768208)))

(declare-fun res!895912 () Bool)

(assert (=> b!1350332 (=> res!895912 e!768208)))

(assert (=> b!1350332 (= res!895912 (= (h!32876 Nil!31668) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350333 () Bool)

(assert (=> b!1350333 (= e!768208 (contains!9236 (t!46336 Nil!31668) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!144853 res!895911) b!1350332))

(assert (= (and b!1350332 (not res!895912)) b!1350333))

(assert (=> d!144853 m!1237591))

(declare-fun m!1237597 () Bool)

(assert (=> d!144853 m!1237597))

(declare-fun m!1237599 () Bool)

(assert (=> b!1350333 m!1237599))

(assert (=> b!1350288 d!144853))

(check-sat (not b!1350326) (not b!1350317) (not d!144841) (not d!144851) (not b!1350319) (not d!144853) (not b!1350327) (not b!1350324) (not b!1350333) (not b!1350325) (not b!1350329) (not d!144839))
(check-sat)
