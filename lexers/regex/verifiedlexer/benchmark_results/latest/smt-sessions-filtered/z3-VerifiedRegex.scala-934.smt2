; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47710 () Bool)

(assert start!47710)

(declare-fun b!520828 () Bool)

(declare-fun res!221202 () Bool)

(declare-fun e!312158 () Bool)

(assert (=> b!520828 (=> (not res!221202) (not e!312158))))

(declare-datatypes ((B!1173 0))(
  ( (B!1174 (val!1876 Int)) )
))
(declare-datatypes ((List!4824 0))(
  ( (Nil!4814) (Cons!4814 (h!10215 B!1173) (t!73414 List!4824)) )
))
(declare-fun list!41 () List!4824)

(declare-fun acc!308 () List!4824)

(declare-fun noDuplicate!165 (List!4824) Bool)

(assert (=> b!520828 (= res!221202 (noDuplicate!165 (Cons!4814 (h!10215 list!41) acc!308)))))

(declare-fun b!520829 () Bool)

(declare-fun res!221204 () Bool)

(assert (=> b!520829 (=> (not res!221204) (not e!312158))))

(declare-fun e!312155 () Bool)

(assert (=> b!520829 (= res!221204 e!312155)))

(declare-fun res!221201 () Bool)

(assert (=> b!520829 (=> res!221201 e!312155)))

(get-info :version)

(assert (=> b!520829 (= res!221201 (not ((_ is Cons!4814) list!41)))))

(declare-fun b!520830 () Bool)

(declare-fun e!312156 () Bool)

(declare-fun tp_is_empty!2769 () Bool)

(declare-fun tp!162018 () Bool)

(assert (=> b!520830 (= e!312156 (and tp_is_empty!2769 tp!162018))))

(declare-fun b!520831 () Bool)

(declare-fun size!3928 (List!4824) Int)

(assert (=> b!520831 (= e!312158 (>= (size!3928 (t!73414 list!41)) (size!3928 list!41)))))

(declare-fun b!520832 () Bool)

(declare-fun e!312157 () Bool)

(declare-fun tp!162019 () Bool)

(assert (=> b!520832 (= e!312157 (and tp_is_empty!2769 tp!162019))))

(declare-fun b!520833 () Bool)

(declare-fun contains!1162 (List!4824 B!1173) Bool)

(assert (=> b!520833 (= e!312155 (not (contains!1162 acc!308 (h!10215 list!41))))))

(declare-fun b!520834 () Bool)

(declare-fun res!221205 () Bool)

(assert (=> b!520834 (=> (not res!221205) (not e!312158))))

(assert (=> b!520834 (= res!221205 ((_ is Cons!4814) list!41))))

(declare-fun res!221203 () Bool)

(assert (=> start!47710 (=> (not res!221203) (not e!312158))))

(assert (=> start!47710 (= res!221203 (noDuplicate!165 acc!308))))

(assert (=> start!47710 e!312158))

(assert (=> start!47710 e!312157))

(assert (=> start!47710 e!312156))

(assert (= (and start!47710 res!221203) b!520829))

(assert (= (and b!520829 (not res!221201)) b!520833))

(assert (= (and b!520829 res!221204) b!520834))

(assert (= (and b!520834 res!221205) b!520828))

(assert (= (and b!520828 res!221202) b!520831))

(assert (= (and start!47710 ((_ is Cons!4814) acc!308)) b!520832))

(assert (= (and start!47710 ((_ is Cons!4814) list!41)) b!520830))

(declare-fun m!767387 () Bool)

(assert (=> b!520828 m!767387))

(declare-fun m!767389 () Bool)

(assert (=> b!520831 m!767389))

(declare-fun m!767391 () Bool)

(assert (=> b!520831 m!767391))

(declare-fun m!767393 () Bool)

(assert (=> b!520833 m!767393))

(declare-fun m!767395 () Bool)

(assert (=> start!47710 m!767395))

(check-sat (not b!520831) (not b!520832) (not b!520828) tp_is_empty!2769 (not b!520833) (not start!47710) (not b!520830))
(check-sat)
(get-model)

(declare-fun d!185947 () Bool)

(declare-fun res!221214 () Bool)

(declare-fun e!312167 () Bool)

(assert (=> d!185947 (=> res!221214 e!312167)))

(assert (=> d!185947 (= res!221214 ((_ is Nil!4814) (Cons!4814 (h!10215 list!41) acc!308)))))

(assert (=> d!185947 (= (noDuplicate!165 (Cons!4814 (h!10215 list!41) acc!308)) e!312167)))

(declare-fun b!520843 () Bool)

(declare-fun e!312168 () Bool)

(assert (=> b!520843 (= e!312167 e!312168)))

(declare-fun res!221215 () Bool)

(assert (=> b!520843 (=> (not res!221215) (not e!312168))))

(assert (=> b!520843 (= res!221215 (not (contains!1162 (t!73414 (Cons!4814 (h!10215 list!41) acc!308)) (h!10215 (Cons!4814 (h!10215 list!41) acc!308)))))))

(declare-fun b!520844 () Bool)

(assert (=> b!520844 (= e!312168 (noDuplicate!165 (t!73414 (Cons!4814 (h!10215 list!41) acc!308))))))

(assert (= (and d!185947 (not res!221214)) b!520843))

(assert (= (and b!520843 res!221215) b!520844))

(declare-fun m!767397 () Bool)

(assert (=> b!520843 m!767397))

(declare-fun m!767399 () Bool)

(assert (=> b!520844 m!767399))

(assert (=> b!520828 d!185947))

(declare-fun d!185951 () Bool)

(declare-fun res!221218 () Bool)

(declare-fun e!312171 () Bool)

(assert (=> d!185951 (=> res!221218 e!312171)))

(assert (=> d!185951 (= res!221218 ((_ is Nil!4814) acc!308))))

(assert (=> d!185951 (= (noDuplicate!165 acc!308) e!312171)))

(declare-fun b!520847 () Bool)

(declare-fun e!312172 () Bool)

(assert (=> b!520847 (= e!312171 e!312172)))

(declare-fun res!221219 () Bool)

(assert (=> b!520847 (=> (not res!221219) (not e!312172))))

(assert (=> b!520847 (= res!221219 (not (contains!1162 (t!73414 acc!308) (h!10215 acc!308))))))

(declare-fun b!520848 () Bool)

(assert (=> b!520848 (= e!312172 (noDuplicate!165 (t!73414 acc!308)))))

(assert (= (and d!185951 (not res!221218)) b!520847))

(assert (= (and b!520847 res!221219) b!520848))

(declare-fun m!767405 () Bool)

(assert (=> b!520847 m!767405))

(declare-fun m!767407 () Bool)

(assert (=> b!520848 m!767407))

(assert (=> start!47710 d!185951))

(declare-fun d!185955 () Bool)

(declare-fun lt!217029 () Int)

(assert (=> d!185955 (>= lt!217029 0)))

(declare-fun e!312178 () Int)

(assert (=> d!185955 (= lt!217029 e!312178)))

(declare-fun c!100642 () Bool)

(assert (=> d!185955 (= c!100642 ((_ is Nil!4814) (t!73414 list!41)))))

(assert (=> d!185955 (= (size!3928 (t!73414 list!41)) lt!217029)))

(declare-fun b!520859 () Bool)

(assert (=> b!520859 (= e!312178 0)))

(declare-fun b!520860 () Bool)

(assert (=> b!520860 (= e!312178 (+ 1 (size!3928 (t!73414 (t!73414 list!41)))))))

(assert (= (and d!185955 c!100642) b!520859))

(assert (= (and d!185955 (not c!100642)) b!520860))

(declare-fun m!767411 () Bool)

(assert (=> b!520860 m!767411))

(assert (=> b!520831 d!185955))

(declare-fun d!185959 () Bool)

(declare-fun lt!217031 () Int)

(assert (=> d!185959 (>= lt!217031 0)))

(declare-fun e!312180 () Int)

(assert (=> d!185959 (= lt!217031 e!312180)))

(declare-fun c!100644 () Bool)

(assert (=> d!185959 (= c!100644 ((_ is Nil!4814) list!41))))

(assert (=> d!185959 (= (size!3928 list!41) lt!217031)))

(declare-fun b!520863 () Bool)

(assert (=> b!520863 (= e!312180 0)))

(declare-fun b!520864 () Bool)

(assert (=> b!520864 (= e!312180 (+ 1 (size!3928 (t!73414 list!41))))))

(assert (= (and d!185959 c!100644) b!520863))

(assert (= (and d!185959 (not c!100644)) b!520864))

(assert (=> b!520864 m!767389))

(assert (=> b!520831 d!185959))

(declare-fun d!185963 () Bool)

(declare-fun lt!217037 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!877 (List!4824) (InoxSet B!1173))

(assert (=> d!185963 (= lt!217037 (select (content!877 acc!308) (h!10215 list!41)))))

(declare-fun e!312191 () Bool)

(assert (=> d!185963 (= lt!217037 e!312191)))

(declare-fun res!221230 () Bool)

(assert (=> d!185963 (=> (not res!221230) (not e!312191))))

(assert (=> d!185963 (= res!221230 ((_ is Cons!4814) acc!308))))

(assert (=> d!185963 (= (contains!1162 acc!308 (h!10215 list!41)) lt!217037)))

(declare-fun b!520875 () Bool)

(declare-fun e!312192 () Bool)

(assert (=> b!520875 (= e!312191 e!312192)))

(declare-fun res!221231 () Bool)

(assert (=> b!520875 (=> res!221231 e!312192)))

(assert (=> b!520875 (= res!221231 (= (h!10215 acc!308) (h!10215 list!41)))))

(declare-fun b!520876 () Bool)

(assert (=> b!520876 (= e!312192 (contains!1162 (t!73414 acc!308) (h!10215 list!41)))))

(assert (= (and d!185963 res!221230) b!520875))

(assert (= (and b!520875 (not res!221231)) b!520876))

(declare-fun m!767419 () Bool)

(assert (=> d!185963 m!767419))

(declare-fun m!767421 () Bool)

(assert (=> d!185963 m!767421))

(declare-fun m!767423 () Bool)

(assert (=> b!520876 m!767423))

(assert (=> b!520833 d!185963))

(declare-fun b!520887 () Bool)

(declare-fun e!312199 () Bool)

(declare-fun tp!162024 () Bool)

(assert (=> b!520887 (= e!312199 (and tp_is_empty!2769 tp!162024))))

(assert (=> b!520830 (= tp!162018 e!312199)))

(assert (= (and b!520830 ((_ is Cons!4814) (t!73414 list!41))) b!520887))

(declare-fun b!520888 () Bool)

(declare-fun e!312200 () Bool)

(declare-fun tp!162025 () Bool)

(assert (=> b!520888 (= e!312200 (and tp_is_empty!2769 tp!162025))))

(assert (=> b!520832 (= tp!162019 e!312200)))

(assert (= (and b!520832 ((_ is Cons!4814) (t!73414 acc!308))) b!520888))

(check-sat (not d!185963) (not b!520864) (not b!520848) (not b!520844) (not b!520887) (not b!520847) (not b!520876) (not b!520860) (not b!520888) (not b!520843) tp_is_empty!2769)
(check-sat)
