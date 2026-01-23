; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!506328 () Bool)

(assert start!506328)

(declare-fun b!4851682 () Bool)

(declare-fun res!2070952 () Bool)

(declare-fun e!3032980 () Bool)

(assert (=> b!4851682 (=> (not res!2070952) (not e!3032980))))

(declare-datatypes ((K!17439 0))(
  ( (K!17440 (val!22257 Int)) )
))
(declare-datatypes ((V!17685 0))(
  ( (V!17686 (val!22258 Int)) )
))
(declare-datatypes ((tuple2!59364 0))(
  ( (tuple2!59365 (_1!32976 K!17439) (_2!32976 V!17685)) )
))
(declare-datatypes ((List!55739 0))(
  ( (Nil!55615) (Cons!55615 (h!62052 tuple2!59364) (t!363235 List!55739)) )
))
(declare-fun l!15167 () List!55739)

(declare-fun key!6935 () K!17439)

(declare-datatypes ((Option!13721 0))(
  ( (None!13720) (Some!13720 (v!49514 tuple2!59364)) )
))
(declare-fun isDefined!10811 (Option!13721) Bool)

(declare-fun getPair!1124 (List!55739 K!17439) Option!13721)

(assert (=> b!4851682 (= res!2070952 (isDefined!10811 (getPair!1124 l!15167 key!6935)))))

(declare-fun b!4851683 () Bool)

(declare-fun res!2070953 () Bool)

(assert (=> b!4851683 (=> (not res!2070953) (not e!3032980))))

(get-info :version)

(assert (=> b!4851683 (= res!2070953 (and (or (not ((_ is Cons!55615) l!15167)) (not (= (_1!32976 (h!62052 l!15167)) key!6935))) ((_ is Cons!55615) l!15167)))))

(declare-fun tp_is_empty!35307 () Bool)

(declare-fun e!3032979 () Bool)

(declare-fun tp!1364938 () Bool)

(declare-fun tp_is_empty!35305 () Bool)

(declare-fun b!4851685 () Bool)

(assert (=> b!4851685 (= e!3032979 (and tp_is_empty!35305 tp_is_empty!35307 tp!1364938))))

(declare-fun b!4851686 () Bool)

(declare-fun res!2070954 () Bool)

(assert (=> b!4851686 (=> (not res!2070954) (not e!3032980))))

(assert (=> b!4851686 (= res!2070954 (isDefined!10811 (getPair!1124 (t!363235 l!15167) key!6935)))))

(declare-fun b!4851687 () Bool)

(declare-fun ListPrimitiveSize!361 (List!55739) Int)

(assert (=> b!4851687 (= e!3032980 (>= (ListPrimitiveSize!361 (t!363235 l!15167)) (ListPrimitiveSize!361 l!15167)))))

(declare-fun res!2070955 () Bool)

(assert (=> start!506328 (=> (not res!2070955) (not e!3032980))))

(declare-fun noDuplicateKeys!2616 (List!55739) Bool)

(assert (=> start!506328 (= res!2070955 (noDuplicateKeys!2616 l!15167))))

(assert (=> start!506328 e!3032980))

(assert (=> start!506328 e!3032979))

(assert (=> start!506328 tp_is_empty!35305))

(declare-fun b!4851684 () Bool)

(declare-fun res!2070951 () Bool)

(assert (=> b!4851684 (=> (not res!2070951) (not e!3032980))))

(assert (=> b!4851684 (= res!2070951 (noDuplicateKeys!2616 (t!363235 l!15167)))))

(assert (= (and start!506328 res!2070955) b!4851682))

(assert (= (and b!4851682 res!2070952) b!4851683))

(assert (= (and b!4851683 res!2070953) b!4851684))

(assert (= (and b!4851684 res!2070951) b!4851686))

(assert (= (and b!4851686 res!2070954) b!4851687))

(assert (= (and start!506328 ((_ is Cons!55615) l!15167)) b!4851685))

(declare-fun m!5850116 () Bool)

(assert (=> b!4851686 m!5850116))

(assert (=> b!4851686 m!5850116))

(declare-fun m!5850118 () Bool)

(assert (=> b!4851686 m!5850118))

(declare-fun m!5850120 () Bool)

(assert (=> b!4851687 m!5850120))

(declare-fun m!5850122 () Bool)

(assert (=> b!4851687 m!5850122))

(declare-fun m!5850124 () Bool)

(assert (=> b!4851684 m!5850124))

(declare-fun m!5850126 () Bool)

(assert (=> start!506328 m!5850126))

(declare-fun m!5850128 () Bool)

(assert (=> b!4851682 m!5850128))

(assert (=> b!4851682 m!5850128))

(declare-fun m!5850130 () Bool)

(assert (=> b!4851682 m!5850130))

(check-sat (not b!4851682) (not b!4851684) tp_is_empty!35305 (not b!4851686) (not b!4851687) tp_is_empty!35307 (not start!506328) (not b!4851685))
(check-sat)
(get-model)

(declare-fun d!1557447 () Bool)

(declare-fun isEmpty!29765 (Option!13721) Bool)

(assert (=> d!1557447 (= (isDefined!10811 (getPair!1124 l!15167 key!6935)) (not (isEmpty!29765 (getPair!1124 l!15167 key!6935))))))

(declare-fun bs!1172997 () Bool)

(assert (= bs!1172997 d!1557447))

(assert (=> bs!1172997 m!5850128))

(declare-fun m!5850132 () Bool)

(assert (=> bs!1172997 m!5850132))

(assert (=> b!4851682 d!1557447))

(declare-fun b!4851720 () Bool)

(declare-fun e!3033007 () Option!13721)

(assert (=> b!4851720 (= e!3033007 (Some!13720 (h!62052 l!15167)))))

(declare-fun b!4851721 () Bool)

(declare-fun e!3033005 () Bool)

(declare-fun containsKey!4726 (List!55739 K!17439) Bool)

(assert (=> b!4851721 (= e!3033005 (not (containsKey!4726 l!15167 key!6935)))))

(declare-fun b!4851722 () Bool)

(declare-fun e!3033003 () Bool)

(declare-fun e!3033004 () Bool)

(assert (=> b!4851722 (= e!3033003 e!3033004)))

(declare-fun res!2070972 () Bool)

(assert (=> b!4851722 (=> (not res!2070972) (not e!3033004))))

(declare-fun lt!1990077 () Option!13721)

(assert (=> b!4851722 (= res!2070972 (isDefined!10811 lt!1990077))))

(declare-fun b!4851723 () Bool)

(declare-fun e!3033006 () Option!13721)

(assert (=> b!4851723 (= e!3033007 e!3033006)))

(declare-fun c!825616 () Bool)

(assert (=> b!4851723 (= c!825616 ((_ is Cons!55615) l!15167))))

(declare-fun b!4851724 () Bool)

(declare-fun res!2070974 () Bool)

(assert (=> b!4851724 (=> (not res!2070974) (not e!3033004))))

(declare-fun get!19089 (Option!13721) tuple2!59364)

(assert (=> b!4851724 (= res!2070974 (= (_1!32976 (get!19089 lt!1990077)) key!6935))))

(declare-fun d!1557451 () Bool)

(assert (=> d!1557451 e!3033003))

(declare-fun res!2070975 () Bool)

(assert (=> d!1557451 (=> res!2070975 e!3033003)))

(assert (=> d!1557451 (= res!2070975 e!3033005)))

(declare-fun res!2070973 () Bool)

(assert (=> d!1557451 (=> (not res!2070973) (not e!3033005))))

(assert (=> d!1557451 (= res!2070973 (isEmpty!29765 lt!1990077))))

(assert (=> d!1557451 (= lt!1990077 e!3033007)))

(declare-fun c!825615 () Bool)

(assert (=> d!1557451 (= c!825615 (and ((_ is Cons!55615) l!15167) (= (_1!32976 (h!62052 l!15167)) key!6935)))))

(assert (=> d!1557451 (noDuplicateKeys!2616 l!15167)))

(assert (=> d!1557451 (= (getPair!1124 l!15167 key!6935) lt!1990077)))

(declare-fun b!4851725 () Bool)

(assert (=> b!4851725 (= e!3033006 None!13720)))

(declare-fun b!4851726 () Bool)

(assert (=> b!4851726 (= e!3033006 (getPair!1124 (t!363235 l!15167) key!6935))))

(declare-fun b!4851727 () Bool)

(declare-fun contains!19282 (List!55739 tuple2!59364) Bool)

(assert (=> b!4851727 (= e!3033004 (contains!19282 l!15167 (get!19089 lt!1990077)))))

(assert (= (and d!1557451 c!825615) b!4851720))

(assert (= (and d!1557451 (not c!825615)) b!4851723))

(assert (= (and b!4851723 c!825616) b!4851726))

(assert (= (and b!4851723 (not c!825616)) b!4851725))

(assert (= (and d!1557451 res!2070973) b!4851721))

(assert (= (and d!1557451 (not res!2070975)) b!4851722))

(assert (= (and b!4851722 res!2070972) b!4851724))

(assert (= (and b!4851724 res!2070974) b!4851727))

(declare-fun m!5850142 () Bool)

(assert (=> d!1557451 m!5850142))

(assert (=> d!1557451 m!5850126))

(declare-fun m!5850144 () Bool)

(assert (=> b!4851727 m!5850144))

(assert (=> b!4851727 m!5850144))

(declare-fun m!5850146 () Bool)

(assert (=> b!4851727 m!5850146))

(assert (=> b!4851726 m!5850116))

(declare-fun m!5850148 () Bool)

(assert (=> b!4851722 m!5850148))

(assert (=> b!4851724 m!5850144))

(declare-fun m!5850150 () Bool)

(assert (=> b!4851721 m!5850150))

(assert (=> b!4851682 d!1557451))

(declare-fun d!1557459 () Bool)

(declare-fun lt!1990081 () Int)

(assert (=> d!1557459 (>= lt!1990081 0)))

(declare-fun e!3033021 () Int)

(assert (=> d!1557459 (= lt!1990081 e!3033021)))

(declare-fun c!825621 () Bool)

(assert (=> d!1557459 (= c!825621 ((_ is Nil!55615) (t!363235 l!15167)))))

(assert (=> d!1557459 (= (ListPrimitiveSize!361 (t!363235 l!15167)) lt!1990081)))

(declare-fun b!4851748 () Bool)

(assert (=> b!4851748 (= e!3033021 0)))

(declare-fun b!4851749 () Bool)

(assert (=> b!4851749 (= e!3033021 (+ 1 (ListPrimitiveSize!361 (t!363235 (t!363235 l!15167)))))))

(assert (= (and d!1557459 c!825621) b!4851748))

(assert (= (and d!1557459 (not c!825621)) b!4851749))

(declare-fun m!5850152 () Bool)

(assert (=> b!4851749 m!5850152))

(assert (=> b!4851687 d!1557459))

(declare-fun d!1557461 () Bool)

(declare-fun lt!1990082 () Int)

(assert (=> d!1557461 (>= lt!1990082 0)))

(declare-fun e!3033022 () Int)

(assert (=> d!1557461 (= lt!1990082 e!3033022)))

(declare-fun c!825622 () Bool)

(assert (=> d!1557461 (= c!825622 ((_ is Nil!55615) l!15167))))

(assert (=> d!1557461 (= (ListPrimitiveSize!361 l!15167) lt!1990082)))

(declare-fun b!4851750 () Bool)

(assert (=> b!4851750 (= e!3033022 0)))

(declare-fun b!4851751 () Bool)

(assert (=> b!4851751 (= e!3033022 (+ 1 (ListPrimitiveSize!361 (t!363235 l!15167))))))

(assert (= (and d!1557461 c!825622) b!4851750))

(assert (= (and d!1557461 (not c!825622)) b!4851751))

(assert (=> b!4851751 m!5850120))

(assert (=> b!4851687 d!1557461))

(declare-fun d!1557463 () Bool)

(assert (=> d!1557463 (= (isDefined!10811 (getPair!1124 (t!363235 l!15167) key!6935)) (not (isEmpty!29765 (getPair!1124 (t!363235 l!15167) key!6935))))))

(declare-fun bs!1172999 () Bool)

(assert (= bs!1172999 d!1557463))

(assert (=> bs!1172999 m!5850116))

(declare-fun m!5850160 () Bool)

(assert (=> bs!1172999 m!5850160))

(assert (=> b!4851686 d!1557463))

(declare-fun b!4851752 () Bool)

(declare-fun e!3033027 () Option!13721)

(assert (=> b!4851752 (= e!3033027 (Some!13720 (h!62052 (t!363235 l!15167))))))

(declare-fun b!4851753 () Bool)

(declare-fun e!3033025 () Bool)

(assert (=> b!4851753 (= e!3033025 (not (containsKey!4726 (t!363235 l!15167) key!6935)))))

(declare-fun b!4851754 () Bool)

(declare-fun e!3033023 () Bool)

(declare-fun e!3033024 () Bool)

(assert (=> b!4851754 (= e!3033023 e!3033024)))

(declare-fun res!2070988 () Bool)

(assert (=> b!4851754 (=> (not res!2070988) (not e!3033024))))

(declare-fun lt!1990083 () Option!13721)

(assert (=> b!4851754 (= res!2070988 (isDefined!10811 lt!1990083))))

(declare-fun b!4851755 () Bool)

(declare-fun e!3033026 () Option!13721)

(assert (=> b!4851755 (= e!3033027 e!3033026)))

(declare-fun c!825624 () Bool)

(assert (=> b!4851755 (= c!825624 ((_ is Cons!55615) (t!363235 l!15167)))))

(declare-fun b!4851756 () Bool)

(declare-fun res!2070990 () Bool)

(assert (=> b!4851756 (=> (not res!2070990) (not e!3033024))))

(assert (=> b!4851756 (= res!2070990 (= (_1!32976 (get!19089 lt!1990083)) key!6935))))

(declare-fun d!1557465 () Bool)

(assert (=> d!1557465 e!3033023))

(declare-fun res!2070991 () Bool)

(assert (=> d!1557465 (=> res!2070991 e!3033023)))

(assert (=> d!1557465 (= res!2070991 e!3033025)))

(declare-fun res!2070989 () Bool)

(assert (=> d!1557465 (=> (not res!2070989) (not e!3033025))))

(assert (=> d!1557465 (= res!2070989 (isEmpty!29765 lt!1990083))))

(assert (=> d!1557465 (= lt!1990083 e!3033027)))

(declare-fun c!825623 () Bool)

(assert (=> d!1557465 (= c!825623 (and ((_ is Cons!55615) (t!363235 l!15167)) (= (_1!32976 (h!62052 (t!363235 l!15167))) key!6935)))))

(assert (=> d!1557465 (noDuplicateKeys!2616 (t!363235 l!15167))))

(assert (=> d!1557465 (= (getPair!1124 (t!363235 l!15167) key!6935) lt!1990083)))

(declare-fun b!4851757 () Bool)

(assert (=> b!4851757 (= e!3033026 None!13720)))

(declare-fun b!4851758 () Bool)

(assert (=> b!4851758 (= e!3033026 (getPair!1124 (t!363235 (t!363235 l!15167)) key!6935))))

(declare-fun b!4851759 () Bool)

(assert (=> b!4851759 (= e!3033024 (contains!19282 (t!363235 l!15167) (get!19089 lt!1990083)))))

(assert (= (and d!1557465 c!825623) b!4851752))

(assert (= (and d!1557465 (not c!825623)) b!4851755))

(assert (= (and b!4851755 c!825624) b!4851758))

(assert (= (and b!4851755 (not c!825624)) b!4851757))

(assert (= (and d!1557465 res!2070989) b!4851753))

(assert (= (and d!1557465 (not res!2070991)) b!4851754))

(assert (= (and b!4851754 res!2070988) b!4851756))

(assert (= (and b!4851756 res!2070990) b!4851759))

(declare-fun m!5850166 () Bool)

(assert (=> d!1557465 m!5850166))

(assert (=> d!1557465 m!5850124))

(declare-fun m!5850168 () Bool)

(assert (=> b!4851759 m!5850168))

(assert (=> b!4851759 m!5850168))

(declare-fun m!5850170 () Bool)

(assert (=> b!4851759 m!5850170))

(declare-fun m!5850172 () Bool)

(assert (=> b!4851758 m!5850172))

(declare-fun m!5850174 () Bool)

(assert (=> b!4851754 m!5850174))

(assert (=> b!4851756 m!5850168))

(declare-fun m!5850176 () Bool)

(assert (=> b!4851753 m!5850176))

(assert (=> b!4851686 d!1557465))

(declare-fun d!1557469 () Bool)

(declare-fun res!2071000 () Bool)

(declare-fun e!3033041 () Bool)

(assert (=> d!1557469 (=> res!2071000 e!3033041)))

(assert (=> d!1557469 (= res!2071000 (not ((_ is Cons!55615) (t!363235 l!15167))))))

(assert (=> d!1557469 (= (noDuplicateKeys!2616 (t!363235 l!15167)) e!3033041)))

(declare-fun b!4851780 () Bool)

(declare-fun e!3033042 () Bool)

(assert (=> b!4851780 (= e!3033041 e!3033042)))

(declare-fun res!2071001 () Bool)

(assert (=> b!4851780 (=> (not res!2071001) (not e!3033042))))

(assert (=> b!4851780 (= res!2071001 (not (containsKey!4726 (t!363235 (t!363235 l!15167)) (_1!32976 (h!62052 (t!363235 l!15167))))))))

(declare-fun b!4851781 () Bool)

(assert (=> b!4851781 (= e!3033042 (noDuplicateKeys!2616 (t!363235 (t!363235 l!15167))))))

(assert (= (and d!1557469 (not res!2071000)) b!4851780))

(assert (= (and b!4851780 res!2071001) b!4851781))

(declare-fun m!5850182 () Bool)

(assert (=> b!4851780 m!5850182))

(declare-fun m!5850184 () Bool)

(assert (=> b!4851781 m!5850184))

(assert (=> b!4851684 d!1557469))

(declare-fun d!1557477 () Bool)

(declare-fun res!2071002 () Bool)

(declare-fun e!3033043 () Bool)

(assert (=> d!1557477 (=> res!2071002 e!3033043)))

(assert (=> d!1557477 (= res!2071002 (not ((_ is Cons!55615) l!15167)))))

(assert (=> d!1557477 (= (noDuplicateKeys!2616 l!15167) e!3033043)))

(declare-fun b!4851782 () Bool)

(declare-fun e!3033044 () Bool)

(assert (=> b!4851782 (= e!3033043 e!3033044)))

(declare-fun res!2071003 () Bool)

(assert (=> b!4851782 (=> (not res!2071003) (not e!3033044))))

(assert (=> b!4851782 (= res!2071003 (not (containsKey!4726 (t!363235 l!15167) (_1!32976 (h!62052 l!15167)))))))

(declare-fun b!4851783 () Bool)

(assert (=> b!4851783 (= e!3033044 (noDuplicateKeys!2616 (t!363235 l!15167)))))

(assert (= (and d!1557477 (not res!2071002)) b!4851782))

(assert (= (and b!4851782 res!2071003) b!4851783))

(declare-fun m!5850194 () Bool)

(assert (=> b!4851782 m!5850194))

(assert (=> b!4851783 m!5850124))

(assert (=> start!506328 d!1557477))

(declare-fun tp!1364944 () Bool)

(declare-fun b!4851793 () Bool)

(declare-fun e!3033050 () Bool)

(assert (=> b!4851793 (= e!3033050 (and tp_is_empty!35305 tp_is_empty!35307 tp!1364944))))

(assert (=> b!4851685 (= tp!1364938 e!3033050)))

(assert (= (and b!4851685 ((_ is Cons!55615) (t!363235 l!15167))) b!4851793))

(check-sat (not b!4851782) (not b!4851780) (not d!1557447) (not b!4851781) tp_is_empty!35307 (not b!4851749) (not b!4851724) (not b!4851726) (not d!1557463) tp_is_empty!35305 (not b!4851783) (not d!1557451) (not b!4851727) (not b!4851756) (not b!4851721) (not b!4851754) (not b!4851753) (not b!4851759) (not d!1557465) (not b!4851722) (not b!4851793) (not b!4851751) (not b!4851758))
(check-sat)
