; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!229730 () Bool)

(assert start!229730)

(declare-fun b!2327115 () Bool)

(declare-fun e!1490971 () Bool)

(declare-fun tp_is_empty!10901 () Bool)

(declare-fun tp!737239 () Bool)

(assert (=> b!2327115 (= e!1490971 (and tp_is_empty!10901 tp!737239))))

(declare-fun b!2327112 () Bool)

(declare-fun e!1490972 () Bool)

(declare-fun e!1490970 () Bool)

(assert (=> b!2327112 (= e!1490972 e!1490970)))

(declare-fun res!993741 () Bool)

(assert (=> b!2327112 (=> (not res!993741) (not e!1490970))))

(declare-datatypes ((T!44174 0))(
  ( (T!44175 (val!8018 Int)) )
))
(declare-datatypes ((List!27804 0))(
  ( (Nil!27706) (Cons!27706 (h!33107 T!44174) (t!207506 List!27804)) )
))
(declare-fun l!2797 () List!27804)

(declare-fun i!741 () Int)

(declare-fun lt!861835 () Int)

(get-info :version)

(assert (=> b!2327112 (= res!993741 (and (<= i!741 lt!861835) (not ((_ is Nil!27706) l!2797)) (not (= i!741 0)) (> i!741 0)))))

(declare-fun size!21982 (List!27804) Int)

(assert (=> b!2327112 (= lt!861835 (size!21982 l!2797))))

(declare-fun b!2327113 () Bool)

(declare-fun e!1490973 () Bool)

(assert (=> b!2327113 (= e!1490970 (not e!1490973))))

(declare-fun res!993740 () Bool)

(assert (=> b!2327113 (=> res!993740 e!1490973)))

(declare-fun lt!861834 () List!27804)

(declare-fun lt!861833 () List!27804)

(assert (=> b!2327113 (= res!993740 (not (= lt!861834 lt!861833)))))

(declare-fun slice!735 (List!27804 Int Int) List!27804)

(assert (=> b!2327113 (= lt!861833 (slice!735 l!2797 0 i!741))))

(declare-fun lt!861836 () List!27804)

(declare-fun ++!6850 (List!27804 List!27804) List!27804)

(assert (=> b!2327113 (= lt!861834 (++!6850 (Cons!27706 (h!33107 l!2797) Nil!27706) lt!861836))))

(assert (=> b!2327113 (= (++!6850 lt!861836 (slice!735 (t!207506 l!2797) (- i!741 1) (size!21982 (t!207506 l!2797)))) (t!207506 l!2797))))

(assert (=> b!2327113 (= lt!861836 (slice!735 (t!207506 l!2797) 0 (- i!741 1)))))

(declare-datatypes ((Unit!40554 0))(
  ( (Unit!40555) )
))
(declare-fun lt!861837 () Unit!40554)

(declare-fun sliceSplit!36 (List!27804 Int) Unit!40554)

(assert (=> b!2327113 (= lt!861837 (sliceSplit!36 (t!207506 l!2797) (- i!741 1)))))

(declare-fun b!2327114 () Bool)

(assert (=> b!2327114 (= e!1490973 (= (++!6850 lt!861833 (slice!735 l!2797 i!741 lt!861835)) l!2797))))

(declare-fun res!993742 () Bool)

(assert (=> start!229730 (=> (not res!993742) (not e!1490972))))

(assert (=> start!229730 (= res!993742 (<= 0 i!741))))

(assert (=> start!229730 e!1490972))

(assert (=> start!229730 true))

(assert (=> start!229730 e!1490971))

(assert (= (and start!229730 res!993742) b!2327112))

(assert (= (and b!2327112 res!993741) b!2327113))

(assert (= (and b!2327113 (not res!993740)) b!2327114))

(assert (= (and start!229730 ((_ is Cons!27706) l!2797)) b!2327115))

(declare-fun m!2758035 () Bool)

(assert (=> b!2327112 m!2758035))

(declare-fun m!2758037 () Bool)

(assert (=> b!2327113 m!2758037))

(declare-fun m!2758039 () Bool)

(assert (=> b!2327113 m!2758039))

(declare-fun m!2758041 () Bool)

(assert (=> b!2327113 m!2758041))

(declare-fun m!2758043 () Bool)

(assert (=> b!2327113 m!2758043))

(declare-fun m!2758045 () Bool)

(assert (=> b!2327113 m!2758045))

(declare-fun m!2758047 () Bool)

(assert (=> b!2327113 m!2758047))

(assert (=> b!2327113 m!2758037))

(assert (=> b!2327113 m!2758043))

(declare-fun m!2758049 () Bool)

(assert (=> b!2327113 m!2758049))

(declare-fun m!2758051 () Bool)

(assert (=> b!2327114 m!2758051))

(assert (=> b!2327114 m!2758051))

(declare-fun m!2758053 () Bool)

(assert (=> b!2327114 m!2758053))

(check-sat tp_is_empty!10901 (not b!2327112) (not b!2327114) (not b!2327113) (not b!2327115))
(check-sat)
(get-model)

(declare-fun b!2327132 () Bool)

(declare-fun res!993747 () Bool)

(declare-fun e!1490982 () Bool)

(assert (=> b!2327132 (=> (not res!993747) (not e!1490982))))

(declare-fun lt!861843 () List!27804)

(assert (=> b!2327132 (= res!993747 (= (size!21982 lt!861843) (+ (size!21982 lt!861836) (size!21982 (slice!735 (t!207506 l!2797) (- i!741 1) (size!21982 (t!207506 l!2797)))))))))

(declare-fun b!2327133 () Bool)

(assert (=> b!2327133 (= e!1490982 (or (not (= (slice!735 (t!207506 l!2797) (- i!741 1) (size!21982 (t!207506 l!2797))) Nil!27706)) (= lt!861843 lt!861836)))))

(declare-fun b!2327130 () Bool)

(declare-fun e!1490981 () List!27804)

(assert (=> b!2327130 (= e!1490981 (slice!735 (t!207506 l!2797) (- i!741 1) (size!21982 (t!207506 l!2797))))))

(declare-fun b!2327131 () Bool)

(assert (=> b!2327131 (= e!1490981 (Cons!27706 (h!33107 lt!861836) (++!6850 (t!207506 lt!861836) (slice!735 (t!207506 l!2797) (- i!741 1) (size!21982 (t!207506 l!2797))))))))

(declare-fun d!689085 () Bool)

(assert (=> d!689085 e!1490982))

(declare-fun res!993748 () Bool)

(assert (=> d!689085 (=> (not res!993748) (not e!1490982))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3759 (List!27804) (InoxSet T!44174))

(assert (=> d!689085 (= res!993748 (= (content!3759 lt!861843) ((_ map or) (content!3759 lt!861836) (content!3759 (slice!735 (t!207506 l!2797) (- i!741 1) (size!21982 (t!207506 l!2797)))))))))

(assert (=> d!689085 (= lt!861843 e!1490981)))

(declare-fun c!369677 () Bool)

(assert (=> d!689085 (= c!369677 ((_ is Nil!27706) lt!861836))))

(assert (=> d!689085 (= (++!6850 lt!861836 (slice!735 (t!207506 l!2797) (- i!741 1) (size!21982 (t!207506 l!2797)))) lt!861843)))

(assert (= (and d!689085 c!369677) b!2327130))

(assert (= (and d!689085 (not c!369677)) b!2327131))

(assert (= (and d!689085 res!993748) b!2327132))

(assert (= (and b!2327132 res!993747) b!2327133))

(declare-fun m!2758055 () Bool)

(assert (=> b!2327132 m!2758055))

(declare-fun m!2758057 () Bool)

(assert (=> b!2327132 m!2758057))

(assert (=> b!2327132 m!2758043))

(declare-fun m!2758059 () Bool)

(assert (=> b!2327132 m!2758059))

(assert (=> b!2327131 m!2758043))

(declare-fun m!2758061 () Bool)

(assert (=> b!2327131 m!2758061))

(declare-fun m!2758063 () Bool)

(assert (=> d!689085 m!2758063))

(declare-fun m!2758065 () Bool)

(assert (=> d!689085 m!2758065))

(assert (=> d!689085 m!2758043))

(declare-fun m!2758067 () Bool)

(assert (=> d!689085 m!2758067))

(assert (=> b!2327113 d!689085))

(declare-fun d!689091 () Bool)

(declare-fun take!501 (List!27804 Int) List!27804)

(declare-fun drop!1522 (List!27804 Int) List!27804)

(assert (=> d!689091 (= (slice!735 (t!207506 l!2797) 0 (- i!741 1)) (take!501 (drop!1522 (t!207506 l!2797) 0) (- (- i!741 1) 0)))))

(declare-fun bs!459309 () Bool)

(assert (= bs!459309 d!689091))

(declare-fun m!2758073 () Bool)

(assert (=> bs!459309 m!2758073))

(assert (=> bs!459309 m!2758073))

(declare-fun m!2758075 () Bool)

(assert (=> bs!459309 m!2758075))

(assert (=> b!2327113 d!689091))

(declare-fun d!689095 () Bool)

(assert (=> d!689095 (= (++!6850 (slice!735 (t!207506 l!2797) 0 (- i!741 1)) (slice!735 (t!207506 l!2797) (- i!741 1) (size!21982 (t!207506 l!2797)))) (t!207506 l!2797))))

(declare-fun lt!861848 () Unit!40554)

(declare-fun choose!13621 (List!27804 Int) Unit!40554)

(assert (=> d!689095 (= lt!861848 (choose!13621 (t!207506 l!2797) (- i!741 1)))))

(assert (=> d!689095 (= (sliceSplit!36 (t!207506 l!2797) (- i!741 1)) lt!861848)))

(declare-fun bs!459310 () Bool)

(assert (= bs!459310 d!689095))

(assert (=> bs!459310 m!2758049))

(assert (=> bs!459310 m!2758037))

(assert (=> bs!459310 m!2758049))

(assert (=> bs!459310 m!2758043))

(declare-fun m!2758077 () Bool)

(assert (=> bs!459310 m!2758077))

(assert (=> bs!459310 m!2758037))

(assert (=> bs!459310 m!2758043))

(declare-fun m!2758079 () Bool)

(assert (=> bs!459310 m!2758079))

(assert (=> b!2327113 d!689095))

(declare-fun d!689097 () Bool)

(declare-fun lt!861853 () Int)

(assert (=> d!689097 (>= lt!861853 0)))

(declare-fun e!1490993 () Int)

(assert (=> d!689097 (= lt!861853 e!1490993)))

(declare-fun c!369684 () Bool)

(assert (=> d!689097 (= c!369684 ((_ is Nil!27706) (t!207506 l!2797)))))

(assert (=> d!689097 (= (size!21982 (t!207506 l!2797)) lt!861853)))

(declare-fun b!2327154 () Bool)

(assert (=> b!2327154 (= e!1490993 0)))

(declare-fun b!2327155 () Bool)

(assert (=> b!2327155 (= e!1490993 (+ 1 (size!21982 (t!207506 (t!207506 l!2797)))))))

(assert (= (and d!689097 c!369684) b!2327154))

(assert (= (and d!689097 (not c!369684)) b!2327155))

(declare-fun m!2758109 () Bool)

(assert (=> b!2327155 m!2758109))

(assert (=> b!2327113 d!689097))

(declare-fun d!689105 () Bool)

(assert (=> d!689105 (= (slice!735 l!2797 0 i!741) (take!501 (drop!1522 l!2797 0) (- i!741 0)))))

(declare-fun bs!459312 () Bool)

(assert (= bs!459312 d!689105))

(declare-fun m!2758111 () Bool)

(assert (=> bs!459312 m!2758111))

(assert (=> bs!459312 m!2758111))

(declare-fun m!2758113 () Bool)

(assert (=> bs!459312 m!2758113))

(assert (=> b!2327113 d!689105))

(declare-fun b!2327158 () Bool)

(declare-fun res!993757 () Bool)

(declare-fun e!1490995 () Bool)

(assert (=> b!2327158 (=> (not res!993757) (not e!1490995))))

(declare-fun lt!861854 () List!27804)

(assert (=> b!2327158 (= res!993757 (= (size!21982 lt!861854) (+ (size!21982 (Cons!27706 (h!33107 l!2797) Nil!27706)) (size!21982 lt!861836))))))

(declare-fun b!2327159 () Bool)

(assert (=> b!2327159 (= e!1490995 (or (not (= lt!861836 Nil!27706)) (= lt!861854 (Cons!27706 (h!33107 l!2797) Nil!27706))))))

(declare-fun b!2327156 () Bool)

(declare-fun e!1490994 () List!27804)

(assert (=> b!2327156 (= e!1490994 lt!861836)))

(declare-fun b!2327157 () Bool)

(assert (=> b!2327157 (= e!1490994 (Cons!27706 (h!33107 (Cons!27706 (h!33107 l!2797) Nil!27706)) (++!6850 (t!207506 (Cons!27706 (h!33107 l!2797) Nil!27706)) lt!861836)))))

(declare-fun d!689107 () Bool)

(assert (=> d!689107 e!1490995))

(declare-fun res!993758 () Bool)

(assert (=> d!689107 (=> (not res!993758) (not e!1490995))))

(assert (=> d!689107 (= res!993758 (= (content!3759 lt!861854) ((_ map or) (content!3759 (Cons!27706 (h!33107 l!2797) Nil!27706)) (content!3759 lt!861836))))))

(assert (=> d!689107 (= lt!861854 e!1490994)))

(declare-fun c!369685 () Bool)

(assert (=> d!689107 (= c!369685 ((_ is Nil!27706) (Cons!27706 (h!33107 l!2797) Nil!27706)))))

(assert (=> d!689107 (= (++!6850 (Cons!27706 (h!33107 l!2797) Nil!27706) lt!861836) lt!861854)))

(assert (= (and d!689107 c!369685) b!2327156))

(assert (= (and d!689107 (not c!369685)) b!2327157))

(assert (= (and d!689107 res!993758) b!2327158))

(assert (= (and b!2327158 res!993757) b!2327159))

(declare-fun m!2758115 () Bool)

(assert (=> b!2327158 m!2758115))

(declare-fun m!2758117 () Bool)

(assert (=> b!2327158 m!2758117))

(assert (=> b!2327158 m!2758057))

(declare-fun m!2758119 () Bool)

(assert (=> b!2327157 m!2758119))

(declare-fun m!2758121 () Bool)

(assert (=> d!689107 m!2758121))

(declare-fun m!2758123 () Bool)

(assert (=> d!689107 m!2758123))

(assert (=> d!689107 m!2758065))

(assert (=> b!2327113 d!689107))

(declare-fun d!689109 () Bool)

(assert (=> d!689109 (= (slice!735 (t!207506 l!2797) (- i!741 1) (size!21982 (t!207506 l!2797))) (take!501 (drop!1522 (t!207506 l!2797) (- i!741 1)) (- (size!21982 (t!207506 l!2797)) (- i!741 1))))))

(declare-fun bs!459313 () Bool)

(assert (= bs!459313 d!689109))

(declare-fun m!2758125 () Bool)

(assert (=> bs!459313 m!2758125))

(assert (=> bs!459313 m!2758125))

(declare-fun m!2758127 () Bool)

(assert (=> bs!459313 m!2758127))

(assert (=> b!2327113 d!689109))

(declare-fun b!2327162 () Bool)

(declare-fun res!993759 () Bool)

(declare-fun e!1490997 () Bool)

(assert (=> b!2327162 (=> (not res!993759) (not e!1490997))))

(declare-fun lt!861855 () List!27804)

(assert (=> b!2327162 (= res!993759 (= (size!21982 lt!861855) (+ (size!21982 lt!861833) (size!21982 (slice!735 l!2797 i!741 lt!861835)))))))

(declare-fun b!2327163 () Bool)

(assert (=> b!2327163 (= e!1490997 (or (not (= (slice!735 l!2797 i!741 lt!861835) Nil!27706)) (= lt!861855 lt!861833)))))

(declare-fun b!2327160 () Bool)

(declare-fun e!1490996 () List!27804)

(assert (=> b!2327160 (= e!1490996 (slice!735 l!2797 i!741 lt!861835))))

(declare-fun b!2327161 () Bool)

(assert (=> b!2327161 (= e!1490996 (Cons!27706 (h!33107 lt!861833) (++!6850 (t!207506 lt!861833) (slice!735 l!2797 i!741 lt!861835))))))

(declare-fun d!689111 () Bool)

(assert (=> d!689111 e!1490997))

(declare-fun res!993760 () Bool)

(assert (=> d!689111 (=> (not res!993760) (not e!1490997))))

(assert (=> d!689111 (= res!993760 (= (content!3759 lt!861855) ((_ map or) (content!3759 lt!861833) (content!3759 (slice!735 l!2797 i!741 lt!861835)))))))

(assert (=> d!689111 (= lt!861855 e!1490996)))

(declare-fun c!369686 () Bool)

(assert (=> d!689111 (= c!369686 ((_ is Nil!27706) lt!861833))))

(assert (=> d!689111 (= (++!6850 lt!861833 (slice!735 l!2797 i!741 lt!861835)) lt!861855)))

(assert (= (and d!689111 c!369686) b!2327160))

(assert (= (and d!689111 (not c!369686)) b!2327161))

(assert (= (and d!689111 res!993760) b!2327162))

(assert (= (and b!2327162 res!993759) b!2327163))

(declare-fun m!2758129 () Bool)

(assert (=> b!2327162 m!2758129))

(declare-fun m!2758131 () Bool)

(assert (=> b!2327162 m!2758131))

(assert (=> b!2327162 m!2758051))

(declare-fun m!2758133 () Bool)

(assert (=> b!2327162 m!2758133))

(assert (=> b!2327161 m!2758051))

(declare-fun m!2758135 () Bool)

(assert (=> b!2327161 m!2758135))

(declare-fun m!2758137 () Bool)

(assert (=> d!689111 m!2758137))

(declare-fun m!2758139 () Bool)

(assert (=> d!689111 m!2758139))

(assert (=> d!689111 m!2758051))

(declare-fun m!2758141 () Bool)

(assert (=> d!689111 m!2758141))

(assert (=> b!2327114 d!689111))

(declare-fun d!689113 () Bool)

(assert (=> d!689113 (= (slice!735 l!2797 i!741 lt!861835) (take!501 (drop!1522 l!2797 i!741) (- lt!861835 i!741)))))

(declare-fun bs!459314 () Bool)

(assert (= bs!459314 d!689113))

(declare-fun m!2758143 () Bool)

(assert (=> bs!459314 m!2758143))

(assert (=> bs!459314 m!2758143))

(declare-fun m!2758145 () Bool)

(assert (=> bs!459314 m!2758145))

(assert (=> b!2327114 d!689113))

(declare-fun d!689115 () Bool)

(declare-fun lt!861858 () Int)

(assert (=> d!689115 (>= lt!861858 0)))

(declare-fun e!1490998 () Int)

(assert (=> d!689115 (= lt!861858 e!1490998)))

(declare-fun c!369687 () Bool)

(assert (=> d!689115 (= c!369687 ((_ is Nil!27706) l!2797))))

(assert (=> d!689115 (= (size!21982 l!2797) lt!861858)))

(declare-fun b!2327164 () Bool)

(assert (=> b!2327164 (= e!1490998 0)))

(declare-fun b!2327165 () Bool)

(assert (=> b!2327165 (= e!1490998 (+ 1 (size!21982 (t!207506 l!2797))))))

(assert (= (and d!689115 c!369687) b!2327164))

(assert (= (and d!689115 (not c!369687)) b!2327165))

(assert (=> b!2327165 m!2758037))

(assert (=> b!2327112 d!689115))

(declare-fun b!2327172 () Bool)

(declare-fun e!1491002 () Bool)

(declare-fun tp!737242 () Bool)

(assert (=> b!2327172 (= e!1491002 (and tp_is_empty!10901 tp!737242))))

(assert (=> b!2327115 (= tp!737239 e!1491002)))

(assert (= (and b!2327115 ((_ is Cons!27706) (t!207506 l!2797))) b!2327172))

(check-sat (not d!689095) (not d!689085) (not b!2327161) (not b!2327165) (not d!689107) (not b!2327155) (not d!689091) tp_is_empty!10901 (not b!2327158) (not d!689105) (not b!2327162) (not d!689113) (not b!2327172) (not d!689111) (not b!2327157) (not b!2327131) (not b!2327132) (not d!689109))
(check-sat)
(get-model)

(declare-fun d!689125 () Bool)

(declare-fun c!369692 () Bool)

(assert (=> d!689125 (= c!369692 ((_ is Nil!27706) lt!861843))))

(declare-fun e!1491010 () (InoxSet T!44174))

(assert (=> d!689125 (= (content!3759 lt!861843) e!1491010)))

(declare-fun b!2327186 () Bool)

(assert (=> b!2327186 (= e!1491010 ((as const (Array T!44174 Bool)) false))))

(declare-fun b!2327187 () Bool)

(assert (=> b!2327187 (= e!1491010 ((_ map or) (store ((as const (Array T!44174 Bool)) false) (h!33107 lt!861843) true) (content!3759 (t!207506 lt!861843))))))

(assert (= (and d!689125 c!369692) b!2327186))

(assert (= (and d!689125 (not c!369692)) b!2327187))

(declare-fun m!2758175 () Bool)

(assert (=> b!2327187 m!2758175))

(declare-fun m!2758177 () Bool)

(assert (=> b!2327187 m!2758177))

(assert (=> d!689085 d!689125))

(declare-fun d!689127 () Bool)

(declare-fun c!369693 () Bool)

(assert (=> d!689127 (= c!369693 ((_ is Nil!27706) lt!861836))))

(declare-fun e!1491011 () (InoxSet T!44174))

(assert (=> d!689127 (= (content!3759 lt!861836) e!1491011)))

(declare-fun b!2327188 () Bool)

(assert (=> b!2327188 (= e!1491011 ((as const (Array T!44174 Bool)) false))))

(declare-fun b!2327189 () Bool)

(assert (=> b!2327189 (= e!1491011 ((_ map or) (store ((as const (Array T!44174 Bool)) false) (h!33107 lt!861836) true) (content!3759 (t!207506 lt!861836))))))

(assert (= (and d!689127 c!369693) b!2327188))

(assert (= (and d!689127 (not c!369693)) b!2327189))

(declare-fun m!2758179 () Bool)

(assert (=> b!2327189 m!2758179))

(declare-fun m!2758181 () Bool)

(assert (=> b!2327189 m!2758181))

(assert (=> d!689085 d!689127))

(declare-fun d!689129 () Bool)

(declare-fun c!369694 () Bool)

(assert (=> d!689129 (= c!369694 ((_ is Nil!27706) (slice!735 (t!207506 l!2797) (- i!741 1) (size!21982 (t!207506 l!2797)))))))

(declare-fun e!1491012 () (InoxSet T!44174))

(assert (=> d!689129 (= (content!3759 (slice!735 (t!207506 l!2797) (- i!741 1) (size!21982 (t!207506 l!2797)))) e!1491012)))

(declare-fun b!2327190 () Bool)

(assert (=> b!2327190 (= e!1491012 ((as const (Array T!44174 Bool)) false))))

(declare-fun b!2327191 () Bool)

(assert (=> b!2327191 (= e!1491012 ((_ map or) (store ((as const (Array T!44174 Bool)) false) (h!33107 (slice!735 (t!207506 l!2797) (- i!741 1) (size!21982 (t!207506 l!2797)))) true) (content!3759 (t!207506 (slice!735 (t!207506 l!2797) (- i!741 1) (size!21982 (t!207506 l!2797)))))))))

(assert (= (and d!689129 c!369694) b!2327190))

(assert (= (and d!689129 (not c!369694)) b!2327191))

(declare-fun m!2758183 () Bool)

(assert (=> b!2327191 m!2758183))

(declare-fun m!2758185 () Bool)

(assert (=> b!2327191 m!2758185))

(assert (=> d!689085 d!689129))

(assert (=> d!689095 d!689109))

(assert (=> d!689095 d!689091))

(assert (=> d!689095 d!689097))

(declare-fun d!689131 () Bool)

(assert (=> d!689131 (= (++!6850 (slice!735 (t!207506 l!2797) 0 (- i!741 1)) (slice!735 (t!207506 l!2797) (- i!741 1) (size!21982 (t!207506 l!2797)))) (t!207506 l!2797))))

(assert (=> d!689131 true))

(declare-fun _$14!687 () Unit!40554)

(assert (=> d!689131 (= (choose!13621 (t!207506 l!2797) (- i!741 1)) _$14!687)))

(declare-fun bs!459318 () Bool)

(assert (= bs!459318 d!689131))

(assert (=> bs!459318 m!2758049))

(assert (=> bs!459318 m!2758037))

(assert (=> bs!459318 m!2758037))

(assert (=> bs!459318 m!2758043))

(assert (=> bs!459318 m!2758049))

(assert (=> bs!459318 m!2758043))

(assert (=> bs!459318 m!2758077))

(assert (=> d!689095 d!689131))

(declare-fun b!2327194 () Bool)

(declare-fun res!993763 () Bool)

(declare-fun e!1491014 () Bool)

(assert (=> b!2327194 (=> (not res!993763) (not e!1491014))))

(declare-fun lt!861862 () List!27804)

(assert (=> b!2327194 (= res!993763 (= (size!21982 lt!861862) (+ (size!21982 (slice!735 (t!207506 l!2797) 0 (- i!741 1))) (size!21982 (slice!735 (t!207506 l!2797) (- i!741 1) (size!21982 (t!207506 l!2797)))))))))

(declare-fun b!2327195 () Bool)

(assert (=> b!2327195 (= e!1491014 (or (not (= (slice!735 (t!207506 l!2797) (- i!741 1) (size!21982 (t!207506 l!2797))) Nil!27706)) (= lt!861862 (slice!735 (t!207506 l!2797) 0 (- i!741 1)))))))

(declare-fun b!2327192 () Bool)

(declare-fun e!1491013 () List!27804)

(assert (=> b!2327192 (= e!1491013 (slice!735 (t!207506 l!2797) (- i!741 1) (size!21982 (t!207506 l!2797))))))

(declare-fun b!2327193 () Bool)

(assert (=> b!2327193 (= e!1491013 (Cons!27706 (h!33107 (slice!735 (t!207506 l!2797) 0 (- i!741 1))) (++!6850 (t!207506 (slice!735 (t!207506 l!2797) 0 (- i!741 1))) (slice!735 (t!207506 l!2797) (- i!741 1) (size!21982 (t!207506 l!2797))))))))

(declare-fun d!689133 () Bool)

(assert (=> d!689133 e!1491014))

(declare-fun res!993764 () Bool)

(assert (=> d!689133 (=> (not res!993764) (not e!1491014))))

(assert (=> d!689133 (= res!993764 (= (content!3759 lt!861862) ((_ map or) (content!3759 (slice!735 (t!207506 l!2797) 0 (- i!741 1))) (content!3759 (slice!735 (t!207506 l!2797) (- i!741 1) (size!21982 (t!207506 l!2797)))))))))

(assert (=> d!689133 (= lt!861862 e!1491013)))

(declare-fun c!369695 () Bool)

(assert (=> d!689133 (= c!369695 ((_ is Nil!27706) (slice!735 (t!207506 l!2797) 0 (- i!741 1))))))

(assert (=> d!689133 (= (++!6850 (slice!735 (t!207506 l!2797) 0 (- i!741 1)) (slice!735 (t!207506 l!2797) (- i!741 1) (size!21982 (t!207506 l!2797)))) lt!861862)))

(assert (= (and d!689133 c!369695) b!2327192))

(assert (= (and d!689133 (not c!369695)) b!2327193))

(assert (= (and d!689133 res!993764) b!2327194))

(assert (= (and b!2327194 res!993763) b!2327195))

(declare-fun m!2758187 () Bool)

(assert (=> b!2327194 m!2758187))

(assert (=> b!2327194 m!2758049))

(declare-fun m!2758189 () Bool)

(assert (=> b!2327194 m!2758189))

(assert (=> b!2327194 m!2758043))

(assert (=> b!2327194 m!2758059))

(assert (=> b!2327193 m!2758043))

(declare-fun m!2758191 () Bool)

(assert (=> b!2327193 m!2758191))

(declare-fun m!2758193 () Bool)

(assert (=> d!689133 m!2758193))

(assert (=> d!689133 m!2758049))

(declare-fun m!2758195 () Bool)

(assert (=> d!689133 m!2758195))

(assert (=> d!689133 m!2758043))

(assert (=> d!689133 m!2758067))

(assert (=> d!689095 d!689133))

(declare-fun d!689135 () Bool)

(declare-fun lt!861863 () Int)

(assert (=> d!689135 (>= lt!861863 0)))

(declare-fun e!1491015 () Int)

(assert (=> d!689135 (= lt!861863 e!1491015)))

(declare-fun c!369696 () Bool)

(assert (=> d!689135 (= c!369696 ((_ is Nil!27706) lt!861855))))

(assert (=> d!689135 (= (size!21982 lt!861855) lt!861863)))

(declare-fun b!2327196 () Bool)

(assert (=> b!2327196 (= e!1491015 0)))

(declare-fun b!2327197 () Bool)

(assert (=> b!2327197 (= e!1491015 (+ 1 (size!21982 (t!207506 lt!861855))))))

(assert (= (and d!689135 c!369696) b!2327196))

(assert (= (and d!689135 (not c!369696)) b!2327197))

(declare-fun m!2758197 () Bool)

(assert (=> b!2327197 m!2758197))

(assert (=> b!2327162 d!689135))

(declare-fun d!689137 () Bool)

(declare-fun lt!861864 () Int)

(assert (=> d!689137 (>= lt!861864 0)))

(declare-fun e!1491016 () Int)

(assert (=> d!689137 (= lt!861864 e!1491016)))

(declare-fun c!369697 () Bool)

(assert (=> d!689137 (= c!369697 ((_ is Nil!27706) lt!861833))))

(assert (=> d!689137 (= (size!21982 lt!861833) lt!861864)))

(declare-fun b!2327198 () Bool)

(assert (=> b!2327198 (= e!1491016 0)))

(declare-fun b!2327199 () Bool)

(assert (=> b!2327199 (= e!1491016 (+ 1 (size!21982 (t!207506 lt!861833))))))

(assert (= (and d!689137 c!369697) b!2327198))

(assert (= (and d!689137 (not c!369697)) b!2327199))

(declare-fun m!2758199 () Bool)

(assert (=> b!2327199 m!2758199))

(assert (=> b!2327162 d!689137))

(declare-fun d!689139 () Bool)

(declare-fun lt!861865 () Int)

(assert (=> d!689139 (>= lt!861865 0)))

(declare-fun e!1491017 () Int)

(assert (=> d!689139 (= lt!861865 e!1491017)))

(declare-fun c!369698 () Bool)

(assert (=> d!689139 (= c!369698 ((_ is Nil!27706) (slice!735 l!2797 i!741 lt!861835)))))

(assert (=> d!689139 (= (size!21982 (slice!735 l!2797 i!741 lt!861835)) lt!861865)))

(declare-fun b!2327200 () Bool)

(assert (=> b!2327200 (= e!1491017 0)))

(declare-fun b!2327201 () Bool)

(assert (=> b!2327201 (= e!1491017 (+ 1 (size!21982 (t!207506 (slice!735 l!2797 i!741 lt!861835)))))))

(assert (= (and d!689139 c!369698) b!2327200))

(assert (= (and d!689139 (not c!369698)) b!2327201))

(declare-fun m!2758201 () Bool)

(assert (=> b!2327201 m!2758201))

(assert (=> b!2327162 d!689139))

(declare-fun b!2327204 () Bool)

(declare-fun res!993765 () Bool)

(declare-fun e!1491019 () Bool)

(assert (=> b!2327204 (=> (not res!993765) (not e!1491019))))

(declare-fun lt!861866 () List!27804)

(assert (=> b!2327204 (= res!993765 (= (size!21982 lt!861866) (+ (size!21982 (t!207506 lt!861836)) (size!21982 (slice!735 (t!207506 l!2797) (- i!741 1) (size!21982 (t!207506 l!2797)))))))))

(declare-fun b!2327205 () Bool)

(assert (=> b!2327205 (= e!1491019 (or (not (= (slice!735 (t!207506 l!2797) (- i!741 1) (size!21982 (t!207506 l!2797))) Nil!27706)) (= lt!861866 (t!207506 lt!861836))))))

(declare-fun b!2327202 () Bool)

(declare-fun e!1491018 () List!27804)

(assert (=> b!2327202 (= e!1491018 (slice!735 (t!207506 l!2797) (- i!741 1) (size!21982 (t!207506 l!2797))))))

(declare-fun b!2327203 () Bool)

(assert (=> b!2327203 (= e!1491018 (Cons!27706 (h!33107 (t!207506 lt!861836)) (++!6850 (t!207506 (t!207506 lt!861836)) (slice!735 (t!207506 l!2797) (- i!741 1) (size!21982 (t!207506 l!2797))))))))

(declare-fun d!689141 () Bool)

(assert (=> d!689141 e!1491019))

(declare-fun res!993766 () Bool)

(assert (=> d!689141 (=> (not res!993766) (not e!1491019))))

(assert (=> d!689141 (= res!993766 (= (content!3759 lt!861866) ((_ map or) (content!3759 (t!207506 lt!861836)) (content!3759 (slice!735 (t!207506 l!2797) (- i!741 1) (size!21982 (t!207506 l!2797)))))))))

(assert (=> d!689141 (= lt!861866 e!1491018)))

(declare-fun c!369699 () Bool)

(assert (=> d!689141 (= c!369699 ((_ is Nil!27706) (t!207506 lt!861836)))))

(assert (=> d!689141 (= (++!6850 (t!207506 lt!861836) (slice!735 (t!207506 l!2797) (- i!741 1) (size!21982 (t!207506 l!2797)))) lt!861866)))

(assert (= (and d!689141 c!369699) b!2327202))

(assert (= (and d!689141 (not c!369699)) b!2327203))

(assert (= (and d!689141 res!993766) b!2327204))

(assert (= (and b!2327204 res!993765) b!2327205))

(declare-fun m!2758203 () Bool)

(assert (=> b!2327204 m!2758203))

(declare-fun m!2758205 () Bool)

(assert (=> b!2327204 m!2758205))

(assert (=> b!2327204 m!2758043))

(assert (=> b!2327204 m!2758059))

(assert (=> b!2327203 m!2758043))

(declare-fun m!2758207 () Bool)

(assert (=> b!2327203 m!2758207))

(declare-fun m!2758209 () Bool)

(assert (=> d!689141 m!2758209))

(assert (=> d!689141 m!2758181))

(assert (=> d!689141 m!2758043))

(assert (=> d!689141 m!2758067))

(assert (=> b!2327131 d!689141))

(declare-fun d!689143 () Bool)

(declare-fun lt!861867 () Int)

(assert (=> d!689143 (>= lt!861867 0)))

(declare-fun e!1491020 () Int)

(assert (=> d!689143 (= lt!861867 e!1491020)))

(declare-fun c!369700 () Bool)

(assert (=> d!689143 (= c!369700 ((_ is Nil!27706) lt!861843))))

(assert (=> d!689143 (= (size!21982 lt!861843) lt!861867)))

(declare-fun b!2327206 () Bool)

(assert (=> b!2327206 (= e!1491020 0)))

(declare-fun b!2327207 () Bool)

(assert (=> b!2327207 (= e!1491020 (+ 1 (size!21982 (t!207506 lt!861843))))))

(assert (= (and d!689143 c!369700) b!2327206))

(assert (= (and d!689143 (not c!369700)) b!2327207))

(declare-fun m!2758211 () Bool)

(assert (=> b!2327207 m!2758211))

(assert (=> b!2327132 d!689143))

(declare-fun d!689145 () Bool)

(declare-fun lt!861868 () Int)

(assert (=> d!689145 (>= lt!861868 0)))

(declare-fun e!1491021 () Int)

(assert (=> d!689145 (= lt!861868 e!1491021)))

(declare-fun c!369701 () Bool)

(assert (=> d!689145 (= c!369701 ((_ is Nil!27706) lt!861836))))

(assert (=> d!689145 (= (size!21982 lt!861836) lt!861868)))

(declare-fun b!2327208 () Bool)

(assert (=> b!2327208 (= e!1491021 0)))

(declare-fun b!2327209 () Bool)

(assert (=> b!2327209 (= e!1491021 (+ 1 (size!21982 (t!207506 lt!861836))))))

(assert (= (and d!689145 c!369701) b!2327208))

(assert (= (and d!689145 (not c!369701)) b!2327209))

(assert (=> b!2327209 m!2758205))

(assert (=> b!2327132 d!689145))

(declare-fun d!689147 () Bool)

(declare-fun lt!861869 () Int)

(assert (=> d!689147 (>= lt!861869 0)))

(declare-fun e!1491022 () Int)

(assert (=> d!689147 (= lt!861869 e!1491022)))

(declare-fun c!369702 () Bool)

(assert (=> d!689147 (= c!369702 ((_ is Nil!27706) (slice!735 (t!207506 l!2797) (- i!741 1) (size!21982 (t!207506 l!2797)))))))

(assert (=> d!689147 (= (size!21982 (slice!735 (t!207506 l!2797) (- i!741 1) (size!21982 (t!207506 l!2797)))) lt!861869)))

(declare-fun b!2327210 () Bool)

(assert (=> b!2327210 (= e!1491022 0)))

(declare-fun b!2327211 () Bool)

(assert (=> b!2327211 (= e!1491022 (+ 1 (size!21982 (t!207506 (slice!735 (t!207506 l!2797) (- i!741 1) (size!21982 (t!207506 l!2797)))))))))

(assert (= (and d!689147 c!369702) b!2327210))

(assert (= (and d!689147 (not c!369702)) b!2327211))

(declare-fun m!2758213 () Bool)

(assert (=> b!2327211 m!2758213))

(assert (=> b!2327132 d!689147))

(declare-fun d!689149 () Bool)

(declare-fun c!369703 () Bool)

(assert (=> d!689149 (= c!369703 ((_ is Nil!27706) lt!861855))))

(declare-fun e!1491023 () (InoxSet T!44174))

(assert (=> d!689149 (= (content!3759 lt!861855) e!1491023)))

(declare-fun b!2327212 () Bool)

(assert (=> b!2327212 (= e!1491023 ((as const (Array T!44174 Bool)) false))))

(declare-fun b!2327213 () Bool)

(assert (=> b!2327213 (= e!1491023 ((_ map or) (store ((as const (Array T!44174 Bool)) false) (h!33107 lt!861855) true) (content!3759 (t!207506 lt!861855))))))

(assert (= (and d!689149 c!369703) b!2327212))

(assert (= (and d!689149 (not c!369703)) b!2327213))

(declare-fun m!2758215 () Bool)

(assert (=> b!2327213 m!2758215))

(declare-fun m!2758217 () Bool)

(assert (=> b!2327213 m!2758217))

(assert (=> d!689111 d!689149))

(declare-fun d!689151 () Bool)

(declare-fun c!369704 () Bool)

(assert (=> d!689151 (= c!369704 ((_ is Nil!27706) lt!861833))))

(declare-fun e!1491024 () (InoxSet T!44174))

(assert (=> d!689151 (= (content!3759 lt!861833) e!1491024)))

(declare-fun b!2327214 () Bool)

(assert (=> b!2327214 (= e!1491024 ((as const (Array T!44174 Bool)) false))))

(declare-fun b!2327215 () Bool)

(assert (=> b!2327215 (= e!1491024 ((_ map or) (store ((as const (Array T!44174 Bool)) false) (h!33107 lt!861833) true) (content!3759 (t!207506 lt!861833))))))

(assert (= (and d!689151 c!369704) b!2327214))

(assert (= (and d!689151 (not c!369704)) b!2327215))

(declare-fun m!2758219 () Bool)

(assert (=> b!2327215 m!2758219))

(declare-fun m!2758221 () Bool)

(assert (=> b!2327215 m!2758221))

(assert (=> d!689111 d!689151))

(declare-fun c!369705 () Bool)

(declare-fun d!689153 () Bool)

(assert (=> d!689153 (= c!369705 ((_ is Nil!27706) (slice!735 l!2797 i!741 lt!861835)))))

(declare-fun e!1491025 () (InoxSet T!44174))

(assert (=> d!689153 (= (content!3759 (slice!735 l!2797 i!741 lt!861835)) e!1491025)))

(declare-fun b!2327216 () Bool)

(assert (=> b!2327216 (= e!1491025 ((as const (Array T!44174 Bool)) false))))

(declare-fun b!2327217 () Bool)

(assert (=> b!2327217 (= e!1491025 ((_ map or) (store ((as const (Array T!44174 Bool)) false) (h!33107 (slice!735 l!2797 i!741 lt!861835)) true) (content!3759 (t!207506 (slice!735 l!2797 i!741 lt!861835)))))))

(assert (= (and d!689153 c!369705) b!2327216))

(assert (= (and d!689153 (not c!369705)) b!2327217))

(declare-fun m!2758223 () Bool)

(assert (=> b!2327217 m!2758223))

(declare-fun m!2758225 () Bool)

(assert (=> b!2327217 m!2758225))

(assert (=> d!689111 d!689153))

(declare-fun e!1491036 () List!27804)

(declare-fun b!2327232 () Bool)

(assert (=> b!2327232 (= e!1491036 (Cons!27706 (h!33107 (drop!1522 l!2797 i!741)) (take!501 (t!207506 (drop!1522 l!2797 i!741)) (- (- lt!861835 i!741) 1))))))

(declare-fun d!689155 () Bool)

(declare-fun e!1491037 () Bool)

(assert (=> d!689155 e!1491037))

(declare-fun res!993769 () Bool)

(assert (=> d!689155 (=> (not res!993769) (not e!1491037))))

(declare-fun lt!861872 () List!27804)

(assert (=> d!689155 (= res!993769 (= ((_ map implies) (content!3759 lt!861872) (content!3759 (drop!1522 l!2797 i!741))) ((as const (InoxSet T!44174)) true)))))

(assert (=> d!689155 (= lt!861872 e!1491036)))

(declare-fun c!369713 () Bool)

(assert (=> d!689155 (= c!369713 (or ((_ is Nil!27706) (drop!1522 l!2797 i!741)) (<= (- lt!861835 i!741) 0)))))

(assert (=> d!689155 (= (take!501 (drop!1522 l!2797 i!741) (- lt!861835 i!741)) lt!861872)))

(declare-fun b!2327233 () Bool)

(declare-fun e!1491035 () Int)

(assert (=> b!2327233 (= e!1491035 0)))

(declare-fun b!2327234 () Bool)

(declare-fun e!1491034 () Int)

(assert (=> b!2327234 (= e!1491034 (- lt!861835 i!741))))

(declare-fun b!2327235 () Bool)

(assert (=> b!2327235 (= e!1491037 (= (size!21982 lt!861872) e!1491035))))

(declare-fun c!369714 () Bool)

(assert (=> b!2327235 (= c!369714 (<= (- lt!861835 i!741) 0))))

(declare-fun b!2327236 () Bool)

(assert (=> b!2327236 (= e!1491034 (size!21982 (drop!1522 l!2797 i!741)))))

(declare-fun b!2327237 () Bool)

(assert (=> b!2327237 (= e!1491036 Nil!27706)))

(declare-fun b!2327238 () Bool)

(assert (=> b!2327238 (= e!1491035 e!1491034)))

(declare-fun c!369712 () Bool)

(assert (=> b!2327238 (= c!369712 (>= (- lt!861835 i!741) (size!21982 (drop!1522 l!2797 i!741))))))

(assert (= (and d!689155 c!369713) b!2327237))

(assert (= (and d!689155 (not c!369713)) b!2327232))

(assert (= (and d!689155 res!993769) b!2327235))

(assert (= (and b!2327235 c!369714) b!2327233))

(assert (= (and b!2327235 (not c!369714)) b!2327238))

(assert (= (and b!2327238 c!369712) b!2327236))

(assert (= (and b!2327238 (not c!369712)) b!2327234))

(declare-fun m!2758227 () Bool)

(assert (=> b!2327232 m!2758227))

(assert (=> b!2327238 m!2758143))

(declare-fun m!2758229 () Bool)

(assert (=> b!2327238 m!2758229))

(assert (=> b!2327236 m!2758143))

(assert (=> b!2327236 m!2758229))

(declare-fun m!2758231 () Bool)

(assert (=> b!2327235 m!2758231))

(declare-fun m!2758233 () Bool)

(assert (=> d!689155 m!2758233))

(assert (=> d!689155 m!2758143))

(declare-fun m!2758235 () Bool)

(assert (=> d!689155 m!2758235))

(assert (=> d!689113 d!689155))

(declare-fun b!2327261 () Bool)

(declare-fun e!1491052 () Int)

(declare-fun call!138965 () Int)

(assert (=> b!2327261 (= e!1491052 call!138965)))

(declare-fun d!689157 () Bool)

(declare-fun e!1491054 () Bool)

(assert (=> d!689157 e!1491054))

(declare-fun res!993774 () Bool)

(assert (=> d!689157 (=> (not res!993774) (not e!1491054))))

(declare-fun lt!861876 () List!27804)

(assert (=> d!689157 (= res!993774 (= ((_ map implies) (content!3759 lt!861876) (content!3759 l!2797)) ((as const (InoxSet T!44174)) true)))))

(declare-fun e!1491050 () List!27804)

(assert (=> d!689157 (= lt!861876 e!1491050)))

(declare-fun c!369725 () Bool)

(assert (=> d!689157 (= c!369725 ((_ is Nil!27706) l!2797))))

(assert (=> d!689157 (= (drop!1522 l!2797 i!741) lt!861876)))

(declare-fun b!2327262 () Bool)

(assert (=> b!2327262 (= e!1491050 Nil!27706)))

(declare-fun b!2327263 () Bool)

(declare-fun e!1491053 () List!27804)

(assert (=> b!2327263 (= e!1491053 l!2797)))

(declare-fun b!2327264 () Bool)

(declare-fun e!1491051 () Int)

(assert (=> b!2327264 (= e!1491052 e!1491051)))

(declare-fun c!369726 () Bool)

(assert (=> b!2327264 (= c!369726 (>= i!741 call!138965))))

(declare-fun b!2327265 () Bool)

(assert (=> b!2327265 (= e!1491050 e!1491053)))

(declare-fun c!369727 () Bool)

(assert (=> b!2327265 (= c!369727 (<= i!741 0))))

(declare-fun b!2327266 () Bool)

(assert (=> b!2327266 (= e!1491051 (- call!138965 i!741))))

(declare-fun b!2327267 () Bool)

(assert (=> b!2327267 (= e!1491054 (= (size!21982 lt!861876) e!1491052))))

(declare-fun c!369724 () Bool)

(assert (=> b!2327267 (= c!369724 (<= i!741 0))))

(declare-fun b!2327268 () Bool)

(assert (=> b!2327268 (= e!1491051 0)))

(declare-fun bm!138960 () Bool)

(assert (=> bm!138960 (= call!138965 (size!21982 l!2797))))

(declare-fun b!2327269 () Bool)

(assert (=> b!2327269 (= e!1491053 (drop!1522 (t!207506 l!2797) (- i!741 1)))))

(assert (= (and d!689157 c!369725) b!2327262))

(assert (= (and d!689157 (not c!369725)) b!2327265))

(assert (= (and b!2327265 c!369727) b!2327263))

(assert (= (and b!2327265 (not c!369727)) b!2327269))

(assert (= (and d!689157 res!993774) b!2327267))

(assert (= (and b!2327267 c!369724) b!2327261))

(assert (= (and b!2327267 (not c!369724)) b!2327264))

(assert (= (and b!2327264 c!369726) b!2327268))

(assert (= (and b!2327264 (not c!369726)) b!2327266))

(assert (= (or b!2327261 b!2327264 b!2327266) bm!138960))

(declare-fun m!2758247 () Bool)

(assert (=> d!689157 m!2758247))

(declare-fun m!2758249 () Bool)

(assert (=> d!689157 m!2758249))

(declare-fun m!2758251 () Bool)

(assert (=> b!2327267 m!2758251))

(assert (=> bm!138960 m!2758035))

(assert (=> b!2327269 m!2758125))

(assert (=> d!689113 d!689157))

(declare-fun b!2327276 () Bool)

(declare-fun res!993775 () Bool)

(declare-fun e!1491057 () Bool)

(assert (=> b!2327276 (=> (not res!993775) (not e!1491057))))

(declare-fun lt!861877 () List!27804)

(assert (=> b!2327276 (= res!993775 (= (size!21982 lt!861877) (+ (size!21982 (t!207506 (Cons!27706 (h!33107 l!2797) Nil!27706))) (size!21982 lt!861836))))))

(declare-fun b!2327277 () Bool)

(assert (=> b!2327277 (= e!1491057 (or (not (= lt!861836 Nil!27706)) (= lt!861877 (t!207506 (Cons!27706 (h!33107 l!2797) Nil!27706)))))))

(declare-fun b!2327274 () Bool)

(declare-fun e!1491056 () List!27804)

(assert (=> b!2327274 (= e!1491056 lt!861836)))

(declare-fun b!2327275 () Bool)

(assert (=> b!2327275 (= e!1491056 (Cons!27706 (h!33107 (t!207506 (Cons!27706 (h!33107 l!2797) Nil!27706))) (++!6850 (t!207506 (t!207506 (Cons!27706 (h!33107 l!2797) Nil!27706))) lt!861836)))))

(declare-fun d!689165 () Bool)

(assert (=> d!689165 e!1491057))

(declare-fun res!993776 () Bool)

(assert (=> d!689165 (=> (not res!993776) (not e!1491057))))

(assert (=> d!689165 (= res!993776 (= (content!3759 lt!861877) ((_ map or) (content!3759 (t!207506 (Cons!27706 (h!33107 l!2797) Nil!27706))) (content!3759 lt!861836))))))

(assert (=> d!689165 (= lt!861877 e!1491056)))

(declare-fun c!369729 () Bool)

(assert (=> d!689165 (= c!369729 ((_ is Nil!27706) (t!207506 (Cons!27706 (h!33107 l!2797) Nil!27706))))))

(assert (=> d!689165 (= (++!6850 (t!207506 (Cons!27706 (h!33107 l!2797) Nil!27706)) lt!861836) lt!861877)))

(assert (= (and d!689165 c!369729) b!2327274))

(assert (= (and d!689165 (not c!369729)) b!2327275))

(assert (= (and d!689165 res!993776) b!2327276))

(assert (= (and b!2327276 res!993775) b!2327277))

(declare-fun m!2758253 () Bool)

(assert (=> b!2327276 m!2758253))

(declare-fun m!2758255 () Bool)

(assert (=> b!2327276 m!2758255))

(assert (=> b!2327276 m!2758057))

(declare-fun m!2758257 () Bool)

(assert (=> b!2327275 m!2758257))

(declare-fun m!2758259 () Bool)

(assert (=> d!689165 m!2758259))

(declare-fun m!2758261 () Bool)

(assert (=> d!689165 m!2758261))

(assert (=> d!689165 m!2758065))

(assert (=> b!2327157 d!689165))

(declare-fun d!689167 () Bool)

(declare-fun lt!861878 () Int)

(assert (=> d!689167 (>= lt!861878 0)))

(declare-fun e!1491059 () Int)

(assert (=> d!689167 (= lt!861878 e!1491059)))

(declare-fun c!369731 () Bool)

(assert (=> d!689167 (= c!369731 ((_ is Nil!27706) lt!861854))))

(assert (=> d!689167 (= (size!21982 lt!861854) lt!861878)))

(declare-fun b!2327278 () Bool)

(assert (=> b!2327278 (= e!1491059 0)))

(declare-fun b!2327279 () Bool)

(assert (=> b!2327279 (= e!1491059 (+ 1 (size!21982 (t!207506 lt!861854))))))

(assert (= (and d!689167 c!369731) b!2327278))

(assert (= (and d!689167 (not c!369731)) b!2327279))

(declare-fun m!2758263 () Bool)

(assert (=> b!2327279 m!2758263))

(assert (=> b!2327158 d!689167))

(declare-fun d!689169 () Bool)

(declare-fun lt!861879 () Int)

(assert (=> d!689169 (>= lt!861879 0)))

(declare-fun e!1491060 () Int)

(assert (=> d!689169 (= lt!861879 e!1491060)))

(declare-fun c!369732 () Bool)

(assert (=> d!689169 (= c!369732 ((_ is Nil!27706) (Cons!27706 (h!33107 l!2797) Nil!27706)))))

(assert (=> d!689169 (= (size!21982 (Cons!27706 (h!33107 l!2797) Nil!27706)) lt!861879)))

(declare-fun b!2327280 () Bool)

(assert (=> b!2327280 (= e!1491060 0)))

(declare-fun b!2327281 () Bool)

(assert (=> b!2327281 (= e!1491060 (+ 1 (size!21982 (t!207506 (Cons!27706 (h!33107 l!2797) Nil!27706)))))))

(assert (= (and d!689169 c!369732) b!2327280))

(assert (= (and d!689169 (not c!369732)) b!2327281))

(assert (=> b!2327281 m!2758255))

(assert (=> b!2327158 d!689169))

(assert (=> b!2327158 d!689145))

(assert (=> b!2327165 d!689097))

(declare-fun d!689171 () Bool)

(declare-fun lt!861880 () Int)

(assert (=> d!689171 (>= lt!861880 0)))

(declare-fun e!1491062 () Int)

(assert (=> d!689171 (= lt!861880 e!1491062)))

(declare-fun c!369734 () Bool)

(assert (=> d!689171 (= c!369734 ((_ is Nil!27706) (t!207506 (t!207506 l!2797))))))

(assert (=> d!689171 (= (size!21982 (t!207506 (t!207506 l!2797))) lt!861880)))

(declare-fun b!2327284 () Bool)

(assert (=> b!2327284 (= e!1491062 0)))

(declare-fun b!2327285 () Bool)

(assert (=> b!2327285 (= e!1491062 (+ 1 (size!21982 (t!207506 (t!207506 (t!207506 l!2797))))))))

(assert (= (and d!689171 c!369734) b!2327284))

(assert (= (and d!689171 (not c!369734)) b!2327285))

(declare-fun m!2758265 () Bool)

(assert (=> b!2327285 m!2758265))

(assert (=> b!2327155 d!689171))

(declare-fun b!2327286 () Bool)

(declare-fun e!1491065 () List!27804)

(assert (=> b!2327286 (= e!1491065 (Cons!27706 (h!33107 (drop!1522 (t!207506 l!2797) 0)) (take!501 (t!207506 (drop!1522 (t!207506 l!2797) 0)) (- (- (- i!741 1) 0) 1))))))

(declare-fun d!689173 () Bool)

(declare-fun e!1491066 () Bool)

(assert (=> d!689173 e!1491066))

(declare-fun res!993777 () Bool)

(assert (=> d!689173 (=> (not res!993777) (not e!1491066))))

(declare-fun lt!861881 () List!27804)

(assert (=> d!689173 (= res!993777 (= ((_ map implies) (content!3759 lt!861881) (content!3759 (drop!1522 (t!207506 l!2797) 0))) ((as const (InoxSet T!44174)) true)))))

(assert (=> d!689173 (= lt!861881 e!1491065)))

(declare-fun c!369736 () Bool)

(assert (=> d!689173 (= c!369736 (or ((_ is Nil!27706) (drop!1522 (t!207506 l!2797) 0)) (<= (- (- i!741 1) 0) 0)))))

(assert (=> d!689173 (= (take!501 (drop!1522 (t!207506 l!2797) 0) (- (- i!741 1) 0)) lt!861881)))

(declare-fun b!2327287 () Bool)

(declare-fun e!1491064 () Int)

(assert (=> b!2327287 (= e!1491064 0)))

(declare-fun b!2327288 () Bool)

(declare-fun e!1491063 () Int)

(assert (=> b!2327288 (= e!1491063 (- (- i!741 1) 0))))

(declare-fun b!2327290 () Bool)

(assert (=> b!2327290 (= e!1491066 (= (size!21982 lt!861881) e!1491064))))

(declare-fun c!369737 () Bool)

(assert (=> b!2327290 (= c!369737 (<= (- (- i!741 1) 0) 0))))

(declare-fun b!2327292 () Bool)

(assert (=> b!2327292 (= e!1491063 (size!21982 (drop!1522 (t!207506 l!2797) 0)))))

(declare-fun b!2327293 () Bool)

(assert (=> b!2327293 (= e!1491065 Nil!27706)))

(declare-fun b!2327294 () Bool)

(assert (=> b!2327294 (= e!1491064 e!1491063)))

(declare-fun c!369735 () Bool)

(assert (=> b!2327294 (= c!369735 (>= (- (- i!741 1) 0) (size!21982 (drop!1522 (t!207506 l!2797) 0))))))

(assert (= (and d!689173 c!369736) b!2327293))

(assert (= (and d!689173 (not c!369736)) b!2327286))

(assert (= (and d!689173 res!993777) b!2327290))

(assert (= (and b!2327290 c!369737) b!2327287))

(assert (= (and b!2327290 (not c!369737)) b!2327294))

(assert (= (and b!2327294 c!369735) b!2327292))

(assert (= (and b!2327294 (not c!369735)) b!2327288))

(declare-fun m!2758279 () Bool)

(assert (=> b!2327286 m!2758279))

(assert (=> b!2327294 m!2758073))

(declare-fun m!2758281 () Bool)

(assert (=> b!2327294 m!2758281))

(assert (=> b!2327292 m!2758073))

(assert (=> b!2327292 m!2758281))

(declare-fun m!2758283 () Bool)

(assert (=> b!2327290 m!2758283))

(declare-fun m!2758285 () Bool)

(assert (=> d!689173 m!2758285))

(assert (=> d!689173 m!2758073))

(declare-fun m!2758289 () Bool)

(assert (=> d!689173 m!2758289))

(assert (=> d!689091 d!689173))

(declare-fun b!2327301 () Bool)

(declare-fun e!1491073 () Int)

(declare-fun call!138966 () Int)

(assert (=> b!2327301 (= e!1491073 call!138966)))

(declare-fun d!689183 () Bool)

(declare-fun e!1491075 () Bool)

(assert (=> d!689183 e!1491075))

(declare-fun res!993778 () Bool)

(assert (=> d!689183 (=> (not res!993778) (not e!1491075))))

(declare-fun lt!861882 () List!27804)

(assert (=> d!689183 (= res!993778 (= ((_ map implies) (content!3759 lt!861882) (content!3759 (t!207506 l!2797))) ((as const (InoxSet T!44174)) true)))))

(declare-fun e!1491071 () List!27804)

(assert (=> d!689183 (= lt!861882 e!1491071)))

(declare-fun c!369743 () Bool)

(assert (=> d!689183 (= c!369743 ((_ is Nil!27706) (t!207506 l!2797)))))

(assert (=> d!689183 (= (drop!1522 (t!207506 l!2797) 0) lt!861882)))

(declare-fun b!2327302 () Bool)

(assert (=> b!2327302 (= e!1491071 Nil!27706)))

(declare-fun b!2327303 () Bool)

(declare-fun e!1491074 () List!27804)

(assert (=> b!2327303 (= e!1491074 (t!207506 l!2797))))

(declare-fun b!2327304 () Bool)

(declare-fun e!1491072 () Int)

(assert (=> b!2327304 (= e!1491073 e!1491072)))

(declare-fun c!369744 () Bool)

(assert (=> b!2327304 (= c!369744 (>= 0 call!138966))))

(declare-fun b!2327305 () Bool)

(assert (=> b!2327305 (= e!1491071 e!1491074)))

(declare-fun c!369745 () Bool)

(assert (=> b!2327305 (= c!369745 (<= 0 0))))

(declare-fun b!2327306 () Bool)

(assert (=> b!2327306 (= e!1491072 (- call!138966 0))))

(declare-fun b!2327307 () Bool)

(assert (=> b!2327307 (= e!1491075 (= (size!21982 lt!861882) e!1491073))))

(declare-fun c!369742 () Bool)

(assert (=> b!2327307 (= c!369742 (<= 0 0))))

(declare-fun b!2327308 () Bool)

(assert (=> b!2327308 (= e!1491072 0)))

(declare-fun bm!138961 () Bool)

(assert (=> bm!138961 (= call!138966 (size!21982 (t!207506 l!2797)))))

(declare-fun b!2327309 () Bool)

(assert (=> b!2327309 (= e!1491074 (drop!1522 (t!207506 (t!207506 l!2797)) (- 0 1)))))

(assert (= (and d!689183 c!369743) b!2327302))

(assert (= (and d!689183 (not c!369743)) b!2327305))

(assert (= (and b!2327305 c!369745) b!2327303))

(assert (= (and b!2327305 (not c!369745)) b!2327309))

(assert (= (and d!689183 res!993778) b!2327307))

(assert (= (and b!2327307 c!369742) b!2327301))

(assert (= (and b!2327307 (not c!369742)) b!2327304))

(assert (= (and b!2327304 c!369744) b!2327308))

(assert (= (and b!2327304 (not c!369744)) b!2327306))

(assert (= (or b!2327301 b!2327304 b!2327306) bm!138961))

(declare-fun m!2758301 () Bool)

(assert (=> d!689183 m!2758301))

(declare-fun m!2758303 () Bool)

(assert (=> d!689183 m!2758303))

(declare-fun m!2758305 () Bool)

(assert (=> b!2327307 m!2758305))

(assert (=> bm!138961 m!2758037))

(declare-fun m!2758307 () Bool)

(assert (=> b!2327309 m!2758307))

(assert (=> d!689091 d!689183))

(declare-fun d!689189 () Bool)

(declare-fun c!369748 () Bool)

(assert (=> d!689189 (= c!369748 ((_ is Nil!27706) lt!861854))))

(declare-fun e!1491079 () (InoxSet T!44174))

(assert (=> d!689189 (= (content!3759 lt!861854) e!1491079)))

(declare-fun b!2327316 () Bool)

(assert (=> b!2327316 (= e!1491079 ((as const (Array T!44174 Bool)) false))))

(declare-fun b!2327317 () Bool)

(assert (=> b!2327317 (= e!1491079 ((_ map or) (store ((as const (Array T!44174 Bool)) false) (h!33107 lt!861854) true) (content!3759 (t!207506 lt!861854))))))

(assert (= (and d!689189 c!369748) b!2327316))

(assert (= (and d!689189 (not c!369748)) b!2327317))

(declare-fun m!2758309 () Bool)

(assert (=> b!2327317 m!2758309))

(declare-fun m!2758311 () Bool)

(assert (=> b!2327317 m!2758311))

(assert (=> d!689107 d!689189))

(declare-fun d!689191 () Bool)

(declare-fun c!369749 () Bool)

(assert (=> d!689191 (= c!369749 ((_ is Nil!27706) (Cons!27706 (h!33107 l!2797) Nil!27706)))))

(declare-fun e!1491080 () (InoxSet T!44174))

(assert (=> d!689191 (= (content!3759 (Cons!27706 (h!33107 l!2797) Nil!27706)) e!1491080)))

(declare-fun b!2327318 () Bool)

(assert (=> b!2327318 (= e!1491080 ((as const (Array T!44174 Bool)) false))))

(declare-fun b!2327319 () Bool)

(assert (=> b!2327319 (= e!1491080 ((_ map or) (store ((as const (Array T!44174 Bool)) false) (h!33107 (Cons!27706 (h!33107 l!2797) Nil!27706)) true) (content!3759 (t!207506 (Cons!27706 (h!33107 l!2797) Nil!27706)))))))

(assert (= (and d!689191 c!369749) b!2327318))

(assert (= (and d!689191 (not c!369749)) b!2327319))

(declare-fun m!2758321 () Bool)

(assert (=> b!2327319 m!2758321))

(assert (=> b!2327319 m!2758261))

(assert (=> d!689107 d!689191))

(assert (=> d!689107 d!689127))

(declare-fun b!2327322 () Bool)

(declare-fun e!1491084 () List!27804)

(assert (=> b!2327322 (= e!1491084 (Cons!27706 (h!33107 (drop!1522 (t!207506 l!2797) (- i!741 1))) (take!501 (t!207506 (drop!1522 (t!207506 l!2797) (- i!741 1))) (- (- (size!21982 (t!207506 l!2797)) (- i!741 1)) 1))))))

(declare-fun d!689195 () Bool)

(declare-fun e!1491085 () Bool)

(assert (=> d!689195 e!1491085))

(declare-fun res!993781 () Bool)

(assert (=> d!689195 (=> (not res!993781) (not e!1491085))))

(declare-fun lt!861885 () List!27804)

(assert (=> d!689195 (= res!993781 (= ((_ map implies) (content!3759 lt!861885) (content!3759 (drop!1522 (t!207506 l!2797) (- i!741 1)))) ((as const (InoxSet T!44174)) true)))))

(assert (=> d!689195 (= lt!861885 e!1491084)))

(declare-fun c!369752 () Bool)

(assert (=> d!689195 (= c!369752 (or ((_ is Nil!27706) (drop!1522 (t!207506 l!2797) (- i!741 1))) (<= (- (size!21982 (t!207506 l!2797)) (- i!741 1)) 0)))))

(assert (=> d!689195 (= (take!501 (drop!1522 (t!207506 l!2797) (- i!741 1)) (- (size!21982 (t!207506 l!2797)) (- i!741 1))) lt!861885)))

(declare-fun b!2327323 () Bool)

(declare-fun e!1491083 () Int)

(assert (=> b!2327323 (= e!1491083 0)))

(declare-fun b!2327324 () Bool)

(declare-fun e!1491082 () Int)

(assert (=> b!2327324 (= e!1491082 (- (size!21982 (t!207506 l!2797)) (- i!741 1)))))

(declare-fun b!2327325 () Bool)

(assert (=> b!2327325 (= e!1491085 (= (size!21982 lt!861885) e!1491083))))

(declare-fun c!369753 () Bool)

(assert (=> b!2327325 (= c!369753 (<= (- (size!21982 (t!207506 l!2797)) (- i!741 1)) 0))))

(declare-fun b!2327326 () Bool)

(assert (=> b!2327326 (= e!1491082 (size!21982 (drop!1522 (t!207506 l!2797) (- i!741 1))))))

(declare-fun b!2327327 () Bool)

(assert (=> b!2327327 (= e!1491084 Nil!27706)))

(declare-fun b!2327328 () Bool)

(assert (=> b!2327328 (= e!1491083 e!1491082)))

(declare-fun c!369751 () Bool)

(assert (=> b!2327328 (= c!369751 (>= (- (size!21982 (t!207506 l!2797)) (- i!741 1)) (size!21982 (drop!1522 (t!207506 l!2797) (- i!741 1)))))))

(assert (= (and d!689195 c!369752) b!2327327))

(assert (= (and d!689195 (not c!369752)) b!2327322))

(assert (= (and d!689195 res!993781) b!2327325))

(assert (= (and b!2327325 c!369753) b!2327323))

(assert (= (and b!2327325 (not c!369753)) b!2327328))

(assert (= (and b!2327328 c!369751) b!2327326))

(assert (= (and b!2327328 (not c!369751)) b!2327324))

(declare-fun m!2758327 () Bool)

(assert (=> b!2327322 m!2758327))

(assert (=> b!2327328 m!2758125))

(declare-fun m!2758329 () Bool)

(assert (=> b!2327328 m!2758329))

(assert (=> b!2327326 m!2758125))

(assert (=> b!2327326 m!2758329))

(declare-fun m!2758331 () Bool)

(assert (=> b!2327325 m!2758331))

(declare-fun m!2758333 () Bool)

(assert (=> d!689195 m!2758333))

(assert (=> d!689195 m!2758125))

(declare-fun m!2758335 () Bool)

(assert (=> d!689195 m!2758335))

(assert (=> d!689109 d!689195))

(declare-fun b!2327333 () Bool)

(declare-fun e!1491090 () Int)

(declare-fun call!138967 () Int)

(assert (=> b!2327333 (= e!1491090 call!138967)))

(declare-fun d!689203 () Bool)

(declare-fun e!1491092 () Bool)

(assert (=> d!689203 e!1491092))

(declare-fun res!993782 () Bool)

(assert (=> d!689203 (=> (not res!993782) (not e!1491092))))

(declare-fun lt!861888 () List!27804)

(assert (=> d!689203 (= res!993782 (= ((_ map implies) (content!3759 lt!861888) (content!3759 (t!207506 l!2797))) ((as const (InoxSet T!44174)) true)))))

(declare-fun e!1491088 () List!27804)

(assert (=> d!689203 (= lt!861888 e!1491088)))

(declare-fun c!369757 () Bool)

(assert (=> d!689203 (= c!369757 ((_ is Nil!27706) (t!207506 l!2797)))))

(assert (=> d!689203 (= (drop!1522 (t!207506 l!2797) (- i!741 1)) lt!861888)))

(declare-fun b!2327334 () Bool)

(assert (=> b!2327334 (= e!1491088 Nil!27706)))

(declare-fun b!2327335 () Bool)

(declare-fun e!1491091 () List!27804)

(assert (=> b!2327335 (= e!1491091 (t!207506 l!2797))))

(declare-fun b!2327336 () Bool)

(declare-fun e!1491089 () Int)

(assert (=> b!2327336 (= e!1491090 e!1491089)))

(declare-fun c!369758 () Bool)

(assert (=> b!2327336 (= c!369758 (>= (- i!741 1) call!138967))))

(declare-fun b!2327337 () Bool)

(assert (=> b!2327337 (= e!1491088 e!1491091)))

(declare-fun c!369759 () Bool)

(assert (=> b!2327337 (= c!369759 (<= (- i!741 1) 0))))

(declare-fun b!2327338 () Bool)

(assert (=> b!2327338 (= e!1491089 (- call!138967 (- i!741 1)))))

(declare-fun b!2327339 () Bool)

(assert (=> b!2327339 (= e!1491092 (= (size!21982 lt!861888) e!1491090))))

(declare-fun c!369756 () Bool)

(assert (=> b!2327339 (= c!369756 (<= (- i!741 1) 0))))

(declare-fun b!2327340 () Bool)

(assert (=> b!2327340 (= e!1491089 0)))

(declare-fun bm!138962 () Bool)

(assert (=> bm!138962 (= call!138967 (size!21982 (t!207506 l!2797)))))

(declare-fun b!2327341 () Bool)

(assert (=> b!2327341 (= e!1491091 (drop!1522 (t!207506 (t!207506 l!2797)) (- (- i!741 1) 1)))))

(assert (= (and d!689203 c!369757) b!2327334))

(assert (= (and d!689203 (not c!369757)) b!2327337))

(assert (= (and b!2327337 c!369759) b!2327335))

(assert (= (and b!2327337 (not c!369759)) b!2327341))

(assert (= (and d!689203 res!993782) b!2327339))

(assert (= (and b!2327339 c!369756) b!2327333))

(assert (= (and b!2327339 (not c!369756)) b!2327336))

(assert (= (and b!2327336 c!369758) b!2327340))

(assert (= (and b!2327336 (not c!369758)) b!2327338))

(assert (= (or b!2327333 b!2327336 b!2327338) bm!138962))

(declare-fun m!2758337 () Bool)

(assert (=> d!689203 m!2758337))

(assert (=> d!689203 m!2758303))

(declare-fun m!2758339 () Bool)

(assert (=> b!2327339 m!2758339))

(assert (=> bm!138962 m!2758037))

(declare-fun m!2758341 () Bool)

(assert (=> b!2327341 m!2758341))

(assert (=> d!689109 d!689203))

(declare-fun b!2327342 () Bool)

(declare-fun e!1491095 () List!27804)

(assert (=> b!2327342 (= e!1491095 (Cons!27706 (h!33107 (drop!1522 l!2797 0)) (take!501 (t!207506 (drop!1522 l!2797 0)) (- (- i!741 0) 1))))))

(declare-fun d!689205 () Bool)

(declare-fun e!1491096 () Bool)

(assert (=> d!689205 e!1491096))

(declare-fun res!993783 () Bool)

(assert (=> d!689205 (=> (not res!993783) (not e!1491096))))

(declare-fun lt!861889 () List!27804)

(assert (=> d!689205 (= res!993783 (= ((_ map implies) (content!3759 lt!861889) (content!3759 (drop!1522 l!2797 0))) ((as const (InoxSet T!44174)) true)))))

(assert (=> d!689205 (= lt!861889 e!1491095)))

(declare-fun c!369761 () Bool)

(assert (=> d!689205 (= c!369761 (or ((_ is Nil!27706) (drop!1522 l!2797 0)) (<= (- i!741 0) 0)))))

(assert (=> d!689205 (= (take!501 (drop!1522 l!2797 0) (- i!741 0)) lt!861889)))

(declare-fun b!2327343 () Bool)

(declare-fun e!1491094 () Int)

(assert (=> b!2327343 (= e!1491094 0)))

(declare-fun b!2327344 () Bool)

(declare-fun e!1491093 () Int)

(assert (=> b!2327344 (= e!1491093 (- i!741 0))))

(declare-fun b!2327345 () Bool)

(assert (=> b!2327345 (= e!1491096 (= (size!21982 lt!861889) e!1491094))))

(declare-fun c!369762 () Bool)

(assert (=> b!2327345 (= c!369762 (<= (- i!741 0) 0))))

(declare-fun b!2327346 () Bool)

(assert (=> b!2327346 (= e!1491093 (size!21982 (drop!1522 l!2797 0)))))

(declare-fun b!2327347 () Bool)

(assert (=> b!2327347 (= e!1491095 Nil!27706)))

(declare-fun b!2327348 () Bool)

(assert (=> b!2327348 (= e!1491094 e!1491093)))

(declare-fun c!369760 () Bool)

(assert (=> b!2327348 (= c!369760 (>= (- i!741 0) (size!21982 (drop!1522 l!2797 0))))))

(assert (= (and d!689205 c!369761) b!2327347))

(assert (= (and d!689205 (not c!369761)) b!2327342))

(assert (= (and d!689205 res!993783) b!2327345))

(assert (= (and b!2327345 c!369762) b!2327343))

(assert (= (and b!2327345 (not c!369762)) b!2327348))

(assert (= (and b!2327348 c!369760) b!2327346))

(assert (= (and b!2327348 (not c!369760)) b!2327344))

(declare-fun m!2758343 () Bool)

(assert (=> b!2327342 m!2758343))

(assert (=> b!2327348 m!2758111))

(declare-fun m!2758345 () Bool)

(assert (=> b!2327348 m!2758345))

(assert (=> b!2327346 m!2758111))

(assert (=> b!2327346 m!2758345))

(declare-fun m!2758347 () Bool)

(assert (=> b!2327345 m!2758347))

(declare-fun m!2758349 () Bool)

(assert (=> d!689205 m!2758349))

(assert (=> d!689205 m!2758111))

(declare-fun m!2758351 () Bool)

(assert (=> d!689205 m!2758351))

(assert (=> d!689105 d!689205))

(declare-fun b!2327349 () Bool)

(declare-fun e!1491099 () Int)

(declare-fun call!138968 () Int)

(assert (=> b!2327349 (= e!1491099 call!138968)))

(declare-fun d!689207 () Bool)

(declare-fun e!1491101 () Bool)

(assert (=> d!689207 e!1491101))

(declare-fun res!993784 () Bool)

(assert (=> d!689207 (=> (not res!993784) (not e!1491101))))

(declare-fun lt!861890 () List!27804)

(assert (=> d!689207 (= res!993784 (= ((_ map implies) (content!3759 lt!861890) (content!3759 l!2797)) ((as const (InoxSet T!44174)) true)))))

(declare-fun e!1491097 () List!27804)

(assert (=> d!689207 (= lt!861890 e!1491097)))

(declare-fun c!369764 () Bool)

(assert (=> d!689207 (= c!369764 ((_ is Nil!27706) l!2797))))

(assert (=> d!689207 (= (drop!1522 l!2797 0) lt!861890)))

(declare-fun b!2327350 () Bool)

(assert (=> b!2327350 (= e!1491097 Nil!27706)))

(declare-fun b!2327351 () Bool)

(declare-fun e!1491100 () List!27804)

(assert (=> b!2327351 (= e!1491100 l!2797)))

(declare-fun b!2327352 () Bool)

(declare-fun e!1491098 () Int)

(assert (=> b!2327352 (= e!1491099 e!1491098)))

(declare-fun c!369765 () Bool)

(assert (=> b!2327352 (= c!369765 (>= 0 call!138968))))

(declare-fun b!2327353 () Bool)

(assert (=> b!2327353 (= e!1491097 e!1491100)))

(declare-fun c!369766 () Bool)

(assert (=> b!2327353 (= c!369766 (<= 0 0))))

(declare-fun b!2327354 () Bool)

(assert (=> b!2327354 (= e!1491098 (- call!138968 0))))

(declare-fun b!2327355 () Bool)

(assert (=> b!2327355 (= e!1491101 (= (size!21982 lt!861890) e!1491099))))

(declare-fun c!369763 () Bool)

(assert (=> b!2327355 (= c!369763 (<= 0 0))))

(declare-fun b!2327356 () Bool)

(assert (=> b!2327356 (= e!1491098 0)))

(declare-fun bm!138963 () Bool)

(assert (=> bm!138963 (= call!138968 (size!21982 l!2797))))

(declare-fun b!2327357 () Bool)

(assert (=> b!2327357 (= e!1491100 (drop!1522 (t!207506 l!2797) (- 0 1)))))

(assert (= (and d!689207 c!369764) b!2327350))

(assert (= (and d!689207 (not c!369764)) b!2327353))

(assert (= (and b!2327353 c!369766) b!2327351))

(assert (= (and b!2327353 (not c!369766)) b!2327357))

(assert (= (and d!689207 res!993784) b!2327355))

(assert (= (and b!2327355 c!369763) b!2327349))

(assert (= (and b!2327355 (not c!369763)) b!2327352))

(assert (= (and b!2327352 c!369765) b!2327356))

(assert (= (and b!2327352 (not c!369765)) b!2327354))

(assert (= (or b!2327349 b!2327352 b!2327354) bm!138963))

(declare-fun m!2758353 () Bool)

(assert (=> d!689207 m!2758353))

(assert (=> d!689207 m!2758249))

(declare-fun m!2758355 () Bool)

(assert (=> b!2327355 m!2758355))

(assert (=> bm!138963 m!2758035))

(declare-fun m!2758357 () Bool)

(assert (=> b!2327357 m!2758357))

(assert (=> d!689105 d!689207))

(declare-fun b!2327360 () Bool)

(declare-fun res!993785 () Bool)

(declare-fun e!1491103 () Bool)

(assert (=> b!2327360 (=> (not res!993785) (not e!1491103))))

(declare-fun lt!861891 () List!27804)

(assert (=> b!2327360 (= res!993785 (= (size!21982 lt!861891) (+ (size!21982 (t!207506 lt!861833)) (size!21982 (slice!735 l!2797 i!741 lt!861835)))))))

(declare-fun b!2327361 () Bool)

(assert (=> b!2327361 (= e!1491103 (or (not (= (slice!735 l!2797 i!741 lt!861835) Nil!27706)) (= lt!861891 (t!207506 lt!861833))))))

(declare-fun b!2327358 () Bool)

(declare-fun e!1491102 () List!27804)

(assert (=> b!2327358 (= e!1491102 (slice!735 l!2797 i!741 lt!861835))))

(declare-fun b!2327359 () Bool)

(assert (=> b!2327359 (= e!1491102 (Cons!27706 (h!33107 (t!207506 lt!861833)) (++!6850 (t!207506 (t!207506 lt!861833)) (slice!735 l!2797 i!741 lt!861835))))))

(declare-fun d!689209 () Bool)

(assert (=> d!689209 e!1491103))

(declare-fun res!993786 () Bool)

(assert (=> d!689209 (=> (not res!993786) (not e!1491103))))

(assert (=> d!689209 (= res!993786 (= (content!3759 lt!861891) ((_ map or) (content!3759 (t!207506 lt!861833)) (content!3759 (slice!735 l!2797 i!741 lt!861835)))))))

(assert (=> d!689209 (= lt!861891 e!1491102)))

(declare-fun c!369767 () Bool)

(assert (=> d!689209 (= c!369767 ((_ is Nil!27706) (t!207506 lt!861833)))))

(assert (=> d!689209 (= (++!6850 (t!207506 lt!861833) (slice!735 l!2797 i!741 lt!861835)) lt!861891)))

(assert (= (and d!689209 c!369767) b!2327358))

(assert (= (and d!689209 (not c!369767)) b!2327359))

(assert (= (and d!689209 res!993786) b!2327360))

(assert (= (and b!2327360 res!993785) b!2327361))

(declare-fun m!2758359 () Bool)

(assert (=> b!2327360 m!2758359))

(assert (=> b!2327360 m!2758199))

(assert (=> b!2327360 m!2758051))

(assert (=> b!2327360 m!2758133))

(assert (=> b!2327359 m!2758051))

(declare-fun m!2758361 () Bool)

(assert (=> b!2327359 m!2758361))

(declare-fun m!2758363 () Bool)

(assert (=> d!689209 m!2758363))

(assert (=> d!689209 m!2758221))

(assert (=> d!689209 m!2758051))

(assert (=> d!689209 m!2758141))

(assert (=> b!2327161 d!689209))

(declare-fun b!2327362 () Bool)

(declare-fun e!1491104 () Bool)

(declare-fun tp!737246 () Bool)

(assert (=> b!2327362 (= e!1491104 (and tp_is_empty!10901 tp!737246))))

(assert (=> b!2327172 (= tp!737242 e!1491104)))

(assert (= (and b!2327172 ((_ is Cons!27706) (t!207506 (t!207506 l!2797)))) b!2327362))

(check-sat (not d!689209) (not d!689133) (not b!2327213) (not b!2327317) (not d!689205) (not b!2327319) (not d!689203) (not d!689157) (not b!2327346) (not b!2327362) tp_is_empty!10901 (not b!2327197) (not d!689207) (not b!2327328) (not b!2327360) (not bm!138960) (not b!2327238) (not b!2327348) (not b!2327285) (not b!2327211) (not b!2327236) (not b!2327326) (not b!2327341) (not b!2327204) (not b!2327194) (not b!2327201) (not b!2327187) (not b!2327279) (not b!2327209) (not b!2327232) (not d!689155) (not b!2327276) (not d!689131) (not b!2327322) (not b!2327345) (not b!2327325) (not b!2327342) (not b!2327292) (not b!2327290) (not b!2327203) (not b!2327189) (not b!2327281) (not b!2327193) (not bm!138962) (not b!2327191) (not b!2327286) (not b!2327275) (not d!689173) (not bm!138963) (not d!689195) (not b!2327235) (not b!2327357) (not b!2327207) (not b!2327309) (not b!2327307) (not d!689141) (not b!2327355) (not b!2327215) (not d!689165) (not bm!138961) (not d!689183) (not b!2327339) (not b!2327269) (not b!2327267) (not b!2327217) (not b!2327359) (not b!2327294) (not b!2327199))
(check-sat)
