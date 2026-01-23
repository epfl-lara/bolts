; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47658 () Bool)

(assert start!47658)

(declare-fun res!221018 () Bool)

(declare-fun e!311936 () Bool)

(assert (=> start!47658 (=> (not res!221018) (not e!311936))))

(declare-datatypes ((B!1161 0))(
  ( (B!1162 (val!1870 Int)) )
))
(declare-datatypes ((List!4818 0))(
  ( (Nil!4808) (Cons!4808 (h!10209 B!1161) (t!73408 List!4818)) )
))
(declare-fun acc!308 () List!4818)

(declare-fun noDuplicate!159 (List!4818) Bool)

(assert (=> start!47658 (= res!221018 (noDuplicate!159 acc!308))))

(assert (=> start!47658 e!311936))

(declare-fun e!311935 () Bool)

(assert (=> start!47658 e!311935))

(declare-fun e!311934 () Bool)

(assert (=> start!47658 e!311934))

(declare-fun b!520520 () Bool)

(declare-fun tp_is_empty!2757 () Bool)

(declare-fun tp!161958 () Bool)

(assert (=> b!520520 (= e!311935 (and tp_is_empty!2757 tp!161958))))

(declare-fun b!520521 () Bool)

(declare-fun res!221019 () Bool)

(assert (=> b!520521 (=> (not res!221019) (not e!311936))))

(declare-fun list!41 () List!4818)

(declare-fun contains!1156 (List!4818 B!1161) Bool)

(assert (=> b!520521 (= res!221019 (contains!1156 acc!308 (h!10209 list!41)))))

(declare-fun b!520522 () Bool)

(declare-fun size!3924 (List!4818) Int)

(assert (=> b!520522 (= e!311936 (>= (size!3924 (t!73408 list!41)) (size!3924 list!41)))))

(declare-fun b!520523 () Bool)

(declare-fun res!221017 () Bool)

(assert (=> b!520523 (=> (not res!221017) (not e!311936))))

(get-info :version)

(assert (=> b!520523 (= res!221017 ((_ is Cons!4808) list!41))))

(declare-fun b!520524 () Bool)

(declare-fun tp!161959 () Bool)

(assert (=> b!520524 (= e!311934 (and tp_is_empty!2757 tp!161959))))

(assert (= (and start!47658 res!221018) b!520523))

(assert (= (and b!520523 res!221017) b!520521))

(assert (= (and b!520521 res!221019) b!520522))

(assert (= (and start!47658 ((_ is Cons!4808) acc!308)) b!520520))

(assert (= (and start!47658 ((_ is Cons!4808) list!41)) b!520524))

(declare-fun m!767165 () Bool)

(assert (=> start!47658 m!767165))

(declare-fun m!767167 () Bool)

(assert (=> b!520521 m!767167))

(declare-fun m!767169 () Bool)

(assert (=> b!520522 m!767169))

(declare-fun m!767171 () Bool)

(assert (=> b!520522 m!767171))

(check-sat (not start!47658) (not b!520522) (not b!520521) tp_is_empty!2757 (not b!520524) (not b!520520))
(check-sat)
(get-model)

(declare-fun d!185882 () Bool)

(declare-fun lt!216974 () Int)

(assert (=> d!185882 (>= lt!216974 0)))

(declare-fun e!311945 () Int)

(assert (=> d!185882 (= lt!216974 e!311945)))

(declare-fun c!100613 () Bool)

(assert (=> d!185882 (= c!100613 ((_ is Nil!4808) (t!73408 list!41)))))

(assert (=> d!185882 (= (size!3924 (t!73408 list!41)) lt!216974)))

(declare-fun b!520535 () Bool)

(assert (=> b!520535 (= e!311945 0)))

(declare-fun b!520536 () Bool)

(assert (=> b!520536 (= e!311945 (+ 1 (size!3924 (t!73408 (t!73408 list!41)))))))

(assert (= (and d!185882 c!100613) b!520535))

(assert (= (and d!185882 (not c!100613)) b!520536))

(declare-fun m!767177 () Bool)

(assert (=> b!520536 m!767177))

(assert (=> b!520522 d!185882))

(declare-fun d!185886 () Bool)

(declare-fun lt!216977 () Int)

(assert (=> d!185886 (>= lt!216977 0)))

(declare-fun e!311948 () Int)

(assert (=> d!185886 (= lt!216977 e!311948)))

(declare-fun c!100616 () Bool)

(assert (=> d!185886 (= c!100616 ((_ is Nil!4808) list!41))))

(assert (=> d!185886 (= (size!3924 list!41) lt!216977)))

(declare-fun b!520541 () Bool)

(assert (=> b!520541 (= e!311948 0)))

(declare-fun b!520542 () Bool)

(assert (=> b!520542 (= e!311948 (+ 1 (size!3924 (t!73408 list!41))))))

(assert (= (and d!185886 c!100616) b!520541))

(assert (= (and d!185886 (not c!100616)) b!520542))

(assert (=> b!520542 m!767169))

(assert (=> b!520522 d!185886))

(declare-fun d!185888 () Bool)

(declare-fun res!221030 () Bool)

(declare-fun e!311955 () Bool)

(assert (=> d!185888 (=> res!221030 e!311955)))

(assert (=> d!185888 (= res!221030 ((_ is Nil!4808) acc!308))))

(assert (=> d!185888 (= (noDuplicate!159 acc!308) e!311955)))

(declare-fun b!520551 () Bool)

(declare-fun e!311956 () Bool)

(assert (=> b!520551 (= e!311955 e!311956)))

(declare-fun res!221031 () Bool)

(assert (=> b!520551 (=> (not res!221031) (not e!311956))))

(assert (=> b!520551 (= res!221031 (not (contains!1156 (t!73408 acc!308) (h!10209 acc!308))))))

(declare-fun b!520552 () Bool)

(assert (=> b!520552 (= e!311956 (noDuplicate!159 (t!73408 acc!308)))))

(assert (= (and d!185888 (not res!221030)) b!520551))

(assert (= (and b!520551 res!221031) b!520552))

(declare-fun m!767181 () Bool)

(assert (=> b!520551 m!767181))

(declare-fun m!767183 () Bool)

(assert (=> b!520552 m!767183))

(assert (=> start!47658 d!185888))

(declare-fun d!185894 () Bool)

(declare-fun lt!216985 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!871 (List!4818) (InoxSet B!1161))

(assert (=> d!185894 (= lt!216985 (select (content!871 acc!308) (h!10209 list!41)))))

(declare-fun e!311971 () Bool)

(assert (=> d!185894 (= lt!216985 e!311971)))

(declare-fun res!221043 () Bool)

(assert (=> d!185894 (=> (not res!221043) (not e!311971))))

(assert (=> d!185894 (= res!221043 ((_ is Cons!4808) acc!308))))

(assert (=> d!185894 (= (contains!1156 acc!308 (h!10209 list!41)) lt!216985)))

(declare-fun b!520569 () Bool)

(declare-fun e!311972 () Bool)

(assert (=> b!520569 (= e!311971 e!311972)))

(declare-fun res!221042 () Bool)

(assert (=> b!520569 (=> res!221042 e!311972)))

(assert (=> b!520569 (= res!221042 (= (h!10209 acc!308) (h!10209 list!41)))))

(declare-fun b!520570 () Bool)

(assert (=> b!520570 (= e!311972 (contains!1156 (t!73408 acc!308) (h!10209 list!41)))))

(assert (= (and d!185894 res!221043) b!520569))

(assert (= (and b!520569 (not res!221042)) b!520570))

(declare-fun m!767191 () Bool)

(assert (=> d!185894 m!767191))

(declare-fun m!767193 () Bool)

(assert (=> d!185894 m!767193))

(declare-fun m!767195 () Bool)

(assert (=> b!520570 m!767195))

(assert (=> b!520521 d!185894))

(declare-fun b!520575 () Bool)

(declare-fun e!311975 () Bool)

(declare-fun tp!161966 () Bool)

(assert (=> b!520575 (= e!311975 (and tp_is_empty!2757 tp!161966))))

(assert (=> b!520520 (= tp!161958 e!311975)))

(assert (= (and b!520520 ((_ is Cons!4808) (t!73408 acc!308))) b!520575))

(declare-fun b!520576 () Bool)

(declare-fun e!311976 () Bool)

(declare-fun tp!161967 () Bool)

(assert (=> b!520576 (= e!311976 (and tp_is_empty!2757 tp!161967))))

(assert (=> b!520524 (= tp!161959 e!311976)))

(assert (= (and b!520524 ((_ is Cons!4808) (t!73408 list!41))) b!520576))

(check-sat (not b!520536) (not d!185894) (not b!520542) tp_is_empty!2757 (not b!520575) (not b!520570) (not b!520576) (not b!520552) (not b!520551))
(check-sat)
