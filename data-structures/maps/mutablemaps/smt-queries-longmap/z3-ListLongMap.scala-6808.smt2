; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85670 () Bool)

(assert start!85670)

(declare-fun from!3778 () (_ BitVec 32))

(declare-datatypes ((List!21107 0))(
  ( (Nil!21104) (Cons!21103 (h!22265 (_ BitVec 64)) (t!30116 List!21107)) )
))
(declare-fun acc!919 () List!21107)

(declare-fun e!561071 () Bool)

(declare-fun b!994137 () Bool)

(declare-datatypes ((array!62859 0))(
  ( (array!62860 (arr!30266 (Array (_ BitVec 32) (_ BitVec 64))) (size!30769 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62859)

(declare-fun arrayNoDuplicates!0 (array!62859 (_ BitVec 32) List!21107) Bool)

(assert (=> b!994137 (= e!561071 (not (arrayNoDuplicates!0 a!4424 from!3778 acc!919)))))

(declare-fun b!994138 () Bool)

(declare-fun res!664819 () Bool)

(assert (=> b!994138 (=> (not res!664819) (not e!561071))))

(declare-fun noDuplicate!1461 (List!21107) Bool)

(assert (=> b!994138 (= res!664819 (noDuplicate!1461 acc!919))))

(declare-fun b!994139 () Bool)

(declare-fun res!664820 () Bool)

(assert (=> b!994139 (=> (not res!664820) (not e!561071))))

(declare-fun contains!5864 (List!21107 (_ BitVec 64)) Bool)

(assert (=> b!994139 (= res!664820 (not (contains!5864 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!994141 () Bool)

(declare-fun res!664821 () Bool)

(assert (=> b!994141 (=> (not res!664821) (not e!561071))))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> b!994141 (= res!664821 (bvsge from!3778 size!36))))

(declare-fun b!994140 () Bool)

(declare-fun res!664822 () Bool)

(assert (=> b!994140 (=> (not res!664822) (not e!561071))))

(assert (=> b!994140 (= res!664822 (not (contains!5864 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!664818 () Bool)

(assert (=> start!85670 (=> (not res!664818) (not e!561071))))

(assert (=> start!85670 (= res!664818 (and (= (size!30769 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62860 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30769 a!4424))))))

(assert (=> start!85670 e!561071))

(declare-fun array_inv!23256 (array!62859) Bool)

(assert (=> start!85670 (array_inv!23256 a!4424)))

(assert (=> start!85670 true))

(assert (= (and start!85670 res!664818) b!994139))

(assert (= (and b!994139 res!664820) b!994140))

(assert (= (and b!994140 res!664822) b!994138))

(assert (= (and b!994138 res!664819) b!994141))

(assert (= (and b!994141 res!664821) b!994137))

(declare-fun m!921885 () Bool)

(assert (=> b!994140 m!921885))

(declare-fun m!921887 () Bool)

(assert (=> b!994139 m!921887))

(declare-fun m!921889 () Bool)

(assert (=> b!994137 m!921889))

(declare-fun m!921891 () Bool)

(assert (=> start!85670 m!921891))

(declare-fun m!921893 () Bool)

(assert (=> b!994138 m!921893))

(check-sat (not b!994138) (not b!994140) (not b!994137) (not b!994139) (not start!85670))
(check-sat)
(get-model)

(declare-fun b!994190 () Bool)

(declare-fun e!561109 () Bool)

(declare-fun e!561107 () Bool)

(assert (=> b!994190 (= e!561109 e!561107)))

(declare-fun c!100806 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994190 (= c!100806 (validKeyInArray!0 (select (arr!30266 a!4424) from!3778)))))

(declare-fun b!994191 () Bool)

(declare-fun call!42175 () Bool)

(assert (=> b!994191 (= e!561107 call!42175)))

(declare-fun d!118621 () Bool)

(declare-fun res!664861 () Bool)

(declare-fun e!561106 () Bool)

(assert (=> d!118621 (=> res!664861 e!561106)))

(assert (=> d!118621 (= res!664861 (bvsge from!3778 (size!30769 a!4424)))))

(assert (=> d!118621 (= (arrayNoDuplicates!0 a!4424 from!3778 acc!919) e!561106)))

(declare-fun b!994192 () Bool)

(assert (=> b!994192 (= e!561107 call!42175)))

(declare-fun b!994193 () Bool)

(assert (=> b!994193 (= e!561106 e!561109)))

(declare-fun res!664862 () Bool)

(assert (=> b!994193 (=> (not res!664862) (not e!561109))))

(declare-fun e!561108 () Bool)

(assert (=> b!994193 (= res!664862 (not e!561108))))

(declare-fun res!664863 () Bool)

(assert (=> b!994193 (=> (not res!664863) (not e!561108))))

(assert (=> b!994193 (= res!664863 (validKeyInArray!0 (select (arr!30266 a!4424) from!3778)))))

(declare-fun b!994194 () Bool)

(assert (=> b!994194 (= e!561108 (contains!5864 acc!919 (select (arr!30266 a!4424) from!3778)))))

(declare-fun bm!42172 () Bool)

(assert (=> bm!42172 (= call!42175 (arrayNoDuplicates!0 a!4424 (bvadd from!3778 #b00000000000000000000000000000001) (ite c!100806 (Cons!21103 (select (arr!30266 a!4424) from!3778) acc!919) acc!919)))))

(assert (= (and d!118621 (not res!664861)) b!994193))

(assert (= (and b!994193 res!664863) b!994194))

(assert (= (and b!994193 res!664862) b!994190))

(assert (= (and b!994190 c!100806) b!994192))

(assert (= (and b!994190 (not c!100806)) b!994191))

(assert (= (or b!994192 b!994191) bm!42172))

(declare-fun m!921921 () Bool)

(assert (=> b!994190 m!921921))

(assert (=> b!994190 m!921921))

(declare-fun m!921925 () Bool)

(assert (=> b!994190 m!921925))

(assert (=> b!994193 m!921921))

(assert (=> b!994193 m!921921))

(assert (=> b!994193 m!921925))

(assert (=> b!994194 m!921921))

(assert (=> b!994194 m!921921))

(declare-fun m!921927 () Bool)

(assert (=> b!994194 m!921927))

(assert (=> bm!42172 m!921921))

(declare-fun m!921929 () Bool)

(assert (=> bm!42172 m!921929))

(assert (=> b!994137 d!118621))

(declare-fun d!118631 () Bool)

(assert (=> d!118631 (= (array_inv!23256 a!4424) (bvsge (size!30769 a!4424) #b00000000000000000000000000000000))))

(assert (=> start!85670 d!118631))

(declare-fun d!118633 () Bool)

(declare-fun lt!440663 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!481 (List!21107) (InoxSet (_ BitVec 64)))

(assert (=> d!118633 (= lt!440663 (select (content!481 acc!919) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!561135 () Bool)

(assert (=> d!118633 (= lt!440663 e!561135)))

(declare-fun res!664886 () Bool)

(assert (=> d!118633 (=> (not res!664886) (not e!561135))))

(get-info :version)

(assert (=> d!118633 (= res!664886 ((_ is Cons!21103) acc!919))))

(assert (=> d!118633 (= (contains!5864 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000) lt!440663)))

(declare-fun b!994222 () Bool)

(declare-fun e!561134 () Bool)

(assert (=> b!994222 (= e!561135 e!561134)))

(declare-fun res!664885 () Bool)

(assert (=> b!994222 (=> res!664885 e!561134)))

(assert (=> b!994222 (= res!664885 (= (h!22265 acc!919) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!994223 () Bool)

(assert (=> b!994223 (= e!561134 (contains!5864 (t!30116 acc!919) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!118633 res!664886) b!994222))

(assert (= (and b!994222 (not res!664885)) b!994223))

(declare-fun m!921949 () Bool)

(assert (=> d!118633 m!921949))

(declare-fun m!921951 () Bool)

(assert (=> d!118633 m!921951))

(declare-fun m!921953 () Bool)

(assert (=> b!994223 m!921953))

(assert (=> b!994139 d!118633))

(declare-fun d!118641 () Bool)

(declare-fun lt!440664 () Bool)

(assert (=> d!118641 (= lt!440664 (select (content!481 acc!919) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!561137 () Bool)

(assert (=> d!118641 (= lt!440664 e!561137)))

(declare-fun res!664888 () Bool)

(assert (=> d!118641 (=> (not res!664888) (not e!561137))))

(assert (=> d!118641 (= res!664888 ((_ is Cons!21103) acc!919))))

(assert (=> d!118641 (= (contains!5864 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000) lt!440664)))

(declare-fun b!994224 () Bool)

(declare-fun e!561136 () Bool)

(assert (=> b!994224 (= e!561137 e!561136)))

(declare-fun res!664887 () Bool)

(assert (=> b!994224 (=> res!664887 e!561136)))

(assert (=> b!994224 (= res!664887 (= (h!22265 acc!919) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!994225 () Bool)

(assert (=> b!994225 (= e!561136 (contains!5864 (t!30116 acc!919) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!118641 res!664888) b!994224))

(assert (= (and b!994224 (not res!664887)) b!994225))

(assert (=> d!118641 m!921949))

(declare-fun m!921955 () Bool)

(assert (=> d!118641 m!921955))

(declare-fun m!921957 () Bool)

(assert (=> b!994225 m!921957))

(assert (=> b!994140 d!118641))

(declare-fun d!118643 () Bool)

(declare-fun res!664905 () Bool)

(declare-fun e!561154 () Bool)

(assert (=> d!118643 (=> res!664905 e!561154)))

(assert (=> d!118643 (= res!664905 ((_ is Nil!21104) acc!919))))

(assert (=> d!118643 (= (noDuplicate!1461 acc!919) e!561154)))

(declare-fun b!994242 () Bool)

(declare-fun e!561155 () Bool)

(assert (=> b!994242 (= e!561154 e!561155)))

(declare-fun res!664906 () Bool)

(assert (=> b!994242 (=> (not res!664906) (not e!561155))))

(assert (=> b!994242 (= res!664906 (not (contains!5864 (t!30116 acc!919) (h!22265 acc!919))))))

(declare-fun b!994243 () Bool)

(assert (=> b!994243 (= e!561155 (noDuplicate!1461 (t!30116 acc!919)))))

(assert (= (and d!118643 (not res!664905)) b!994242))

(assert (= (and b!994242 res!664906) b!994243))

(declare-fun m!921967 () Bool)

(assert (=> b!994242 m!921967))

(declare-fun m!921969 () Bool)

(assert (=> b!994243 m!921969))

(assert (=> b!994138 d!118643))

(check-sat (not d!118641) (not b!994193) (not b!994243) (not b!994194) (not d!118633) (not bm!42172) (not b!994242) (not b!994190) (not b!994223) (not b!994225))
(check-sat)
