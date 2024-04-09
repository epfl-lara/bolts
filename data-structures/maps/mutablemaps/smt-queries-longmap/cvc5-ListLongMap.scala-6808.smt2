; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85668 () Bool)

(assert start!85668)

(declare-fun b!994122 () Bool)

(declare-fun res!664803 () Bool)

(declare-fun e!561064 () Bool)

(assert (=> b!994122 (=> (not res!664803) (not e!561064))))

(declare-datatypes ((List!21106 0))(
  ( (Nil!21103) (Cons!21102 (h!22264 (_ BitVec 64)) (t!30115 List!21106)) )
))
(declare-fun acc!919 () List!21106)

(declare-fun contains!5863 (List!21106 (_ BitVec 64)) Bool)

(assert (=> b!994122 (= res!664803 (not (contains!5863 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!664804 () Bool)

(assert (=> start!85668 (=> (not res!664804) (not e!561064))))

(declare-datatypes ((array!62857 0))(
  ( (array!62858 (arr!30265 (Array (_ BitVec 32) (_ BitVec 64))) (size!30768 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62857)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85668 (= res!664804 (and (= (size!30768 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62858 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30768 a!4424))))))

(assert (=> start!85668 e!561064))

(declare-fun array_inv!23255 (array!62857) Bool)

(assert (=> start!85668 (array_inv!23255 a!4424)))

(assert (=> start!85668 true))

(declare-fun b!994123 () Bool)

(declare-fun res!664805 () Bool)

(assert (=> b!994123 (=> (not res!664805) (not e!561064))))

(assert (=> b!994123 (= res!664805 (not (contains!5863 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!994124 () Bool)

(declare-fun arrayNoDuplicates!0 (array!62857 (_ BitVec 32) List!21106) Bool)

(assert (=> b!994124 (= e!561064 (not (arrayNoDuplicates!0 a!4424 from!3778 acc!919)))))

(declare-fun b!994125 () Bool)

(declare-fun res!664807 () Bool)

(assert (=> b!994125 (=> (not res!664807) (not e!561064))))

(declare-fun noDuplicate!1460 (List!21106) Bool)

(assert (=> b!994125 (= res!664807 (noDuplicate!1460 acc!919))))

(declare-fun b!994126 () Bool)

(declare-fun res!664806 () Bool)

(assert (=> b!994126 (=> (not res!664806) (not e!561064))))

(assert (=> b!994126 (= res!664806 (bvsge from!3778 size!36))))

(assert (= (and start!85668 res!664804) b!994122))

(assert (= (and b!994122 res!664803) b!994123))

(assert (= (and b!994123 res!664805) b!994125))

(assert (= (and b!994125 res!664807) b!994126))

(assert (= (and b!994126 res!664806) b!994124))

(declare-fun m!921875 () Bool)

(assert (=> b!994124 m!921875))

(declare-fun m!921877 () Bool)

(assert (=> start!85668 m!921877))

(declare-fun m!921879 () Bool)

(assert (=> b!994122 m!921879))

(declare-fun m!921881 () Bool)

(assert (=> b!994125 m!921881))

(declare-fun m!921883 () Bool)

(assert (=> b!994123 m!921883))

(push 1)

(assert (not start!85668))

(assert (not b!994125))

(assert (not b!994122))

(assert (not b!994123))

(assert (not b!994124))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118617 () Bool)

(declare-fun lt!440655 () Bool)

(declare-fun content!480 (List!21106) (Set (_ BitVec 64)))

(assert (=> d!118617 (= lt!440655 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!480 acc!919)))))

(declare-fun e!561082 () Bool)

(assert (=> d!118617 (= lt!440655 e!561082)))

(declare-fun res!664843 () Bool)

(assert (=> d!118617 (=> (not res!664843) (not e!561082))))

(assert (=> d!118617 (= res!664843 (is-Cons!21102 acc!919))))

(assert (=> d!118617 (= (contains!5863 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000) lt!440655)))

(declare-fun b!994161 () Bool)

(declare-fun e!561083 () Bool)

(assert (=> b!994161 (= e!561082 e!561083)))

(declare-fun res!664842 () Bool)

(assert (=> b!994161 (=> res!664842 e!561083)))

(assert (=> b!994161 (= res!664842 (= (h!22264 acc!919) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!994162 () Bool)

(assert (=> b!994162 (= e!561083 (contains!5863 (t!30115 acc!919) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!118617 res!664843) b!994161))

(assert (= (and b!994161 (not res!664842)) b!994162))

(declare-fun m!921905 () Bool)

(assert (=> d!118617 m!921905))

(declare-fun m!921907 () Bool)

(assert (=> d!118617 m!921907))

(declare-fun m!921909 () Bool)

(assert (=> b!994162 m!921909))

(assert (=> b!994123 d!118617))

(declare-fun d!118623 () Bool)

(declare-fun lt!440656 () Bool)

(assert (=> d!118623 (= lt!440656 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!480 acc!919)))))

(declare-fun e!561090 () Bool)

(assert (=> d!118623 (= lt!440656 e!561090)))

(declare-fun res!664851 () Bool)

(assert (=> d!118623 (=> (not res!664851) (not e!561090))))

(assert (=> d!118623 (= res!664851 (is-Cons!21102 acc!919))))

(assert (=> d!118623 (= (contains!5863 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000) lt!440656)))

(declare-fun b!994167 () Bool)

(declare-fun e!561091 () Bool)

(assert (=> b!994167 (= e!561090 e!561091)))

(declare-fun res!664850 () Bool)

(assert (=> b!994167 (=> res!664850 e!561091)))

(assert (=> b!994167 (= res!664850 (= (h!22264 acc!919) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!994168 () Bool)

(assert (=> b!994168 (= e!561091 (contains!5863 (t!30115 acc!919) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!118623 res!664851) b!994167))

(assert (= (and b!994167 (not res!664850)) b!994168))

(assert (=> d!118623 m!921905))

(declare-fun m!921911 () Bool)

(assert (=> d!118623 m!921911))

(declare-fun m!921913 () Bool)

(assert (=> b!994168 m!921913))

(assert (=> b!994122 d!118623))

(declare-fun d!118625 () Bool)

(assert (=> d!118625 (= (array_inv!23255 a!4424) (bvsge (size!30768 a!4424) #b00000000000000000000000000000000))))

(assert (=> start!85668 d!118625))

(declare-fun b!994213 () Bool)

(declare-fun e!561127 () Bool)

(declare-fun e!561126 () Bool)

(assert (=> b!994213 (= e!561127 e!561126)))

(declare-fun res!664878 () Bool)

(assert (=> b!994213 (=> (not res!664878) (not e!561126))))

(declare-fun e!561128 () Bool)

(assert (=> b!994213 (= res!664878 (not e!561128))))

(declare-fun res!664880 () Bool)

(assert (=> b!994213 (=> (not res!664880) (not e!561128))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994213 (= res!664880 (validKeyInArray!0 (select (arr!30265 a!4424) from!3778)))))

(declare-fun b!994214 () Bool)

(declare-fun e!561129 () Bool)

(declare-fun call!42178 () Bool)

(assert (=> b!994214 (= e!561129 call!42178)))

(declare-fun c!100809 () Bool)

(declare-fun bm!42175 () Bool)

(assert (=> bm!42175 (= call!42178 (arrayNoDuplicates!0 a!4424 (bvadd from!3778 #b00000000000000000000000000000001) (ite c!100809 (Cons!21102 (select (arr!30265 a!4424) from!3778) acc!919) acc!919)))))

(declare-fun b!994215 () Bool)

(assert (=> b!994215 (= e!561128 (contains!5863 acc!919 (select (arr!30265 a!4424) from!3778)))))

(declare-fun b!994216 () Bool)

(assert (=> b!994216 (= e!561126 e!561129)))

(assert (=> b!994216 (= c!100809 (validKeyInArray!0 (select (arr!30265 a!4424) from!3778)))))

(declare-fun d!118627 () Bool)

(declare-fun res!664879 () Bool)

(assert (=> d!118627 (=> res!664879 e!561127)))

(assert (=> d!118627 (= res!664879 (bvsge from!3778 (size!30768 a!4424)))))

(assert (=> d!118627 (= (arrayNoDuplicates!0 a!4424 from!3778 acc!919) e!561127)))

(declare-fun b!994217 () Bool)

(assert (=> b!994217 (= e!561129 call!42178)))

(assert (= (and d!118627 (not res!664879)) b!994213))

(assert (= (and b!994213 res!664880) b!994215))

(assert (= (and b!994213 res!664878) b!994216))

(assert (= (and b!994216 c!100809) b!994214))

(assert (= (and b!994216 (not c!100809)) b!994217))

(assert (= (or b!994214 b!994217) bm!42175))

(declare-fun m!921937 () Bool)

(assert (=> b!994213 m!921937))

(assert (=> b!994213 m!921937))

(declare-fun m!921939 () Bool)

(assert (=> b!994213 m!921939))

(assert (=> bm!42175 m!921937))

(declare-fun m!921941 () Bool)

(assert (=> bm!42175 m!921941))

(assert (=> b!994215 m!921937))

(assert (=> b!994215 m!921937))

(declare-fun m!921943 () Bool)

(assert (=> b!994215 m!921943))

(assert (=> b!994216 m!921937))

(assert (=> b!994216 m!921937))

(assert (=> b!994216 m!921939))

(assert (=> b!994124 d!118627))

(declare-fun d!118637 () Bool)

(declare-fun res!664901 () Bool)

(declare-fun e!561150 () Bool)

(assert (=> d!118637 (=> res!664901 e!561150)))

(assert (=> d!118637 (= res!664901 (is-Nil!21103 acc!919))))

(assert (=> d!118637 (= (noDuplicate!1460 acc!919) e!561150)))

(declare-fun b!994238 () Bool)

(declare-fun e!561151 () Bool)

(assert (=> b!994238 (= e!561150 e!561151)))

(declare-fun res!664902 () Bool)

(assert (=> b!994238 (=> (not res!664902) (not e!561151))))

(assert (=> b!994238 (= res!664902 (not (contains!5863 (t!30115 acc!919) (h!22264 acc!919))))))

(declare-fun b!994239 () Bool)

(assert (=> b!994239 (= e!561151 (noDuplicate!1460 (t!30115 acc!919)))))

(assert (= (and d!118637 (not res!664901)) b!994238))

(assert (= (and b!994238 res!664902) b!994239))

(declare-fun m!921959 () Bool)

(assert (=> b!994238 m!921959))

(declare-fun m!921961 () Bool)

(assert (=> b!994239 m!921961))

(assert (=> b!994125 d!118637))

(push 1)

(assert (not b!994213))

(assert (not d!118617))

(assert (not b!994162))

(assert (not b!994238))

(assert (not b!994216))

(assert (not b!994215))

(assert (not b!994168))

(assert (not bm!42175))

(assert (not b!994239))

(assert (not d!118623))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

