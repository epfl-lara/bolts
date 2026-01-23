; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!754608 () Bool)

(assert start!754608)

(declare-fun b!8018100 () Bool)

(declare-fun e!4723167 () Bool)

(declare-fun e!4723168 () Bool)

(assert (=> b!8018100 (= e!4723167 e!4723168)))

(declare-fun res!3170213 () Bool)

(assert (=> b!8018100 (=> (not res!3170213) (not e!4723168))))

(declare-datatypes ((B!4069 0))(
  ( (B!4070 (val!32424 Int)) )
))
(declare-datatypes ((List!74936 0))(
  ( (Nil!74812) (Cons!74812 (h!81260 B!4069) (t!390679 List!74936)) )
))
(declare-fun lt!2719173 () List!74936)

(declare-fun lt!2719174 () List!74936)

(declare-fun isPrefix!6759 (List!74936 List!74936) Bool)

(assert (=> b!8018100 (= res!3170213 (isPrefix!6759 lt!2719173 lt!2719174))))

(declare-fun l!3425 () List!74936)

(declare-fun tail!15900 (List!74936) List!74936)

(assert (=> b!8018100 (= lt!2719174 (tail!15900 l!3425))))

(declare-fun p!2003 () List!74936)

(assert (=> b!8018100 (= lt!2719173 (tail!15900 p!2003))))

(declare-fun res!3170214 () Bool)

(assert (=> start!754608 (=> (not res!3170214) (not e!4723167))))

(assert (=> start!754608 (= res!3170214 (isPrefix!6759 p!2003 l!3425))))

(assert (=> start!754608 e!4723167))

(declare-fun e!4723166 () Bool)

(assert (=> start!754608 e!4723166))

(declare-fun e!4723169 () Bool)

(assert (=> start!754608 e!4723169))

(declare-fun b!8018101 () Bool)

(declare-fun res!3170212 () Bool)

(assert (=> b!8018101 (=> (not res!3170212) (not e!4723167))))

(get-info :version)

(assert (=> b!8018101 (= res!3170212 (and (not ((_ is Nil!74812) p!2003)) (not ((_ is Nil!74812) l!3425))))))

(declare-fun b!8018102 () Bool)

(declare-fun tp_is_empty!53957 () Bool)

(declare-fun tp!2400010 () Bool)

(assert (=> b!8018102 (= e!4723166 (and tp_is_empty!53957 tp!2400010))))

(declare-fun b!8018103 () Bool)

(declare-fun size!43603 (List!74936) Int)

(assert (=> b!8018103 (= e!4723168 (not (<= (size!43603 p!2003) (size!43603 l!3425))))))

(assert (=> b!8018103 (<= (size!43603 lt!2719173) (size!43603 lt!2719174))))

(declare-datatypes ((Unit!170900 0))(
  ( (Unit!170901) )
))
(declare-fun lt!2719175 () Unit!170900)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1228 (List!74936 List!74936) Unit!170900)

(assert (=> b!8018103 (= lt!2719175 (lemmaIsPrefixThenSmallerEqSize!1228 lt!2719173 lt!2719174))))

(declare-fun b!8018104 () Bool)

(declare-fun tp!2400009 () Bool)

(assert (=> b!8018104 (= e!4723169 (and tp_is_empty!53957 tp!2400009))))

(assert (= (and start!754608 res!3170214) b!8018101))

(assert (= (and b!8018101 res!3170212) b!8018100))

(assert (= (and b!8018100 res!3170213) b!8018103))

(assert (= (and start!754608 ((_ is Cons!74812) p!2003)) b!8018102))

(assert (= (and start!754608 ((_ is Cons!74812) l!3425)) b!8018104))

(declare-fun m!8381116 () Bool)

(assert (=> b!8018100 m!8381116))

(declare-fun m!8381118 () Bool)

(assert (=> b!8018100 m!8381118))

(declare-fun m!8381120 () Bool)

(assert (=> b!8018100 m!8381120))

(declare-fun m!8381122 () Bool)

(assert (=> start!754608 m!8381122))

(declare-fun m!8381124 () Bool)

(assert (=> b!8018103 m!8381124))

(declare-fun m!8381126 () Bool)

(assert (=> b!8018103 m!8381126))

(declare-fun m!8381128 () Bool)

(assert (=> b!8018103 m!8381128))

(declare-fun m!8381130 () Bool)

(assert (=> b!8018103 m!8381130))

(declare-fun m!8381132 () Bool)

(assert (=> b!8018103 m!8381132))

(check-sat tp_is_empty!53957 (not b!8018104) (not b!8018102) (not b!8018100) (not b!8018103) (not start!754608))
(check-sat)
(get-model)

(declare-fun b!8018128 () Bool)

(declare-fun e!4723184 () Bool)

(assert (=> b!8018128 (= e!4723184 (>= (size!43603 lt!2719174) (size!43603 lt!2719173)))))

(declare-fun d!2390680 () Bool)

(assert (=> d!2390680 e!4723184))

(declare-fun res!3170223 () Bool)

(assert (=> d!2390680 (=> res!3170223 e!4723184)))

(declare-fun lt!2719187 () Bool)

(assert (=> d!2390680 (= res!3170223 (not lt!2719187))))

(declare-fun e!4723183 () Bool)

(assert (=> d!2390680 (= lt!2719187 e!4723183)))

(declare-fun res!3170224 () Bool)

(assert (=> d!2390680 (=> res!3170224 e!4723183)))

(assert (=> d!2390680 (= res!3170224 ((_ is Nil!74812) lt!2719173))))

(assert (=> d!2390680 (= (isPrefix!6759 lt!2719173 lt!2719174) lt!2719187)))

(declare-fun b!8018125 () Bool)

(declare-fun e!4723182 () Bool)

(assert (=> b!8018125 (= e!4723183 e!4723182)))

(declare-fun res!3170226 () Bool)

(assert (=> b!8018125 (=> (not res!3170226) (not e!4723182))))

(assert (=> b!8018125 (= res!3170226 (not ((_ is Nil!74812) lt!2719174)))))

(declare-fun b!8018127 () Bool)

(assert (=> b!8018127 (= e!4723182 (isPrefix!6759 (tail!15900 lt!2719173) (tail!15900 lt!2719174)))))

(declare-fun b!8018126 () Bool)

(declare-fun res!3170225 () Bool)

(assert (=> b!8018126 (=> (not res!3170225) (not e!4723182))))

(declare-fun head!16374 (List!74936) B!4069)

(assert (=> b!8018126 (= res!3170225 (= (head!16374 lt!2719173) (head!16374 lt!2719174)))))

(assert (= (and d!2390680 (not res!3170224)) b!8018125))

(assert (= (and b!8018125 res!3170226) b!8018126))

(assert (= (and b!8018126 res!3170225) b!8018127))

(assert (= (and d!2390680 (not res!3170223)) b!8018128))

(assert (=> b!8018128 m!8381124))

(assert (=> b!8018128 m!8381132))

(declare-fun m!8381144 () Bool)

(assert (=> b!8018127 m!8381144))

(declare-fun m!8381146 () Bool)

(assert (=> b!8018127 m!8381146))

(assert (=> b!8018127 m!8381144))

(assert (=> b!8018127 m!8381146))

(declare-fun m!8381148 () Bool)

(assert (=> b!8018127 m!8381148))

(declare-fun m!8381150 () Bool)

(assert (=> b!8018126 m!8381150))

(declare-fun m!8381152 () Bool)

(assert (=> b!8018126 m!8381152))

(assert (=> b!8018100 d!2390680))

(declare-fun d!2390692 () Bool)

(assert (=> d!2390692 (= (tail!15900 l!3425) (t!390679 l!3425))))

(assert (=> b!8018100 d!2390692))

(declare-fun d!2390694 () Bool)

(assert (=> d!2390694 (= (tail!15900 p!2003) (t!390679 p!2003))))

(assert (=> b!8018100 d!2390694))

(declare-fun b!8018132 () Bool)

(declare-fun e!4723187 () Bool)

(assert (=> b!8018132 (= e!4723187 (>= (size!43603 l!3425) (size!43603 p!2003)))))

(declare-fun d!2390696 () Bool)

(assert (=> d!2390696 e!4723187))

(declare-fun res!3170227 () Bool)

(assert (=> d!2390696 (=> res!3170227 e!4723187)))

(declare-fun lt!2719188 () Bool)

(assert (=> d!2390696 (= res!3170227 (not lt!2719188))))

(declare-fun e!4723186 () Bool)

(assert (=> d!2390696 (= lt!2719188 e!4723186)))

(declare-fun res!3170228 () Bool)

(assert (=> d!2390696 (=> res!3170228 e!4723186)))

(assert (=> d!2390696 (= res!3170228 ((_ is Nil!74812) p!2003))))

(assert (=> d!2390696 (= (isPrefix!6759 p!2003 l!3425) lt!2719188)))

(declare-fun b!8018129 () Bool)

(declare-fun e!4723185 () Bool)

(assert (=> b!8018129 (= e!4723186 e!4723185)))

(declare-fun res!3170230 () Bool)

(assert (=> b!8018129 (=> (not res!3170230) (not e!4723185))))

(assert (=> b!8018129 (= res!3170230 (not ((_ is Nil!74812) l!3425)))))

(declare-fun b!8018131 () Bool)

(assert (=> b!8018131 (= e!4723185 (isPrefix!6759 (tail!15900 p!2003) (tail!15900 l!3425)))))

(declare-fun b!8018130 () Bool)

(declare-fun res!3170229 () Bool)

(assert (=> b!8018130 (=> (not res!3170229) (not e!4723185))))

(assert (=> b!8018130 (= res!3170229 (= (head!16374 p!2003) (head!16374 l!3425)))))

(assert (= (and d!2390696 (not res!3170228)) b!8018129))

(assert (= (and b!8018129 res!3170230) b!8018130))

(assert (= (and b!8018130 res!3170229) b!8018131))

(assert (= (and d!2390696 (not res!3170227)) b!8018132))

(assert (=> b!8018132 m!8381126))

(assert (=> b!8018132 m!8381130))

(assert (=> b!8018131 m!8381120))

(assert (=> b!8018131 m!8381118))

(assert (=> b!8018131 m!8381120))

(assert (=> b!8018131 m!8381118))

(declare-fun m!8381154 () Bool)

(assert (=> b!8018131 m!8381154))

(declare-fun m!8381156 () Bool)

(assert (=> b!8018130 m!8381156))

(declare-fun m!8381158 () Bool)

(assert (=> b!8018130 m!8381158))

(assert (=> start!754608 d!2390696))

(declare-fun d!2390698 () Bool)

(declare-fun lt!2719193 () Int)

(assert (=> d!2390698 (>= lt!2719193 0)))

(declare-fun e!4723196 () Int)

(assert (=> d!2390698 (= lt!2719193 e!4723196)))

(declare-fun c!1471655 () Bool)

(assert (=> d!2390698 (= c!1471655 ((_ is Nil!74812) p!2003))))

(assert (=> d!2390698 (= (size!43603 p!2003) lt!2719193)))

(declare-fun b!8018145 () Bool)

(assert (=> b!8018145 (= e!4723196 0)))

(declare-fun b!8018146 () Bool)

(assert (=> b!8018146 (= e!4723196 (+ 1 (size!43603 (t!390679 p!2003))))))

(assert (= (and d!2390698 c!1471655) b!8018145))

(assert (= (and d!2390698 (not c!1471655)) b!8018146))

(declare-fun m!8381160 () Bool)

(assert (=> b!8018146 m!8381160))

(assert (=> b!8018103 d!2390698))

(declare-fun d!2390700 () Bool)

(assert (=> d!2390700 (<= (size!43603 lt!2719173) (size!43603 lt!2719174))))

(declare-fun lt!2719198 () Unit!170900)

(declare-fun choose!60431 (List!74936 List!74936) Unit!170900)

(assert (=> d!2390700 (= lt!2719198 (choose!60431 lt!2719173 lt!2719174))))

(assert (=> d!2390700 (isPrefix!6759 lt!2719173 lt!2719174)))

(assert (=> d!2390700 (= (lemmaIsPrefixThenSmallerEqSize!1228 lt!2719173 lt!2719174) lt!2719198)))

(declare-fun bs!1971108 () Bool)

(assert (= bs!1971108 d!2390700))

(assert (=> bs!1971108 m!8381132))

(assert (=> bs!1971108 m!8381124))

(declare-fun m!8381178 () Bool)

(assert (=> bs!1971108 m!8381178))

(assert (=> bs!1971108 m!8381116))

(assert (=> b!8018103 d!2390700))

(declare-fun d!2390708 () Bool)

(declare-fun lt!2719199 () Int)

(assert (=> d!2390708 (>= lt!2719199 0)))

(declare-fun e!4723205 () Int)

(assert (=> d!2390708 (= lt!2719199 e!4723205)))

(declare-fun c!1471656 () Bool)

(assert (=> d!2390708 (= c!1471656 ((_ is Nil!74812) lt!2719174))))

(assert (=> d!2390708 (= (size!43603 lt!2719174) lt!2719199)))

(declare-fun b!8018159 () Bool)

(assert (=> b!8018159 (= e!4723205 0)))

(declare-fun b!8018160 () Bool)

(assert (=> b!8018160 (= e!4723205 (+ 1 (size!43603 (t!390679 lt!2719174))))))

(assert (= (and d!2390708 c!1471656) b!8018159))

(assert (= (and d!2390708 (not c!1471656)) b!8018160))

(declare-fun m!8381180 () Bool)

(assert (=> b!8018160 m!8381180))

(assert (=> b!8018103 d!2390708))

(declare-fun d!2390710 () Bool)

(declare-fun lt!2719200 () Int)

(assert (=> d!2390710 (>= lt!2719200 0)))

(declare-fun e!4723207 () Int)

(assert (=> d!2390710 (= lt!2719200 e!4723207)))

(declare-fun c!1471657 () Bool)

(assert (=> d!2390710 (= c!1471657 ((_ is Nil!74812) lt!2719173))))

(assert (=> d!2390710 (= (size!43603 lt!2719173) lt!2719200)))

(declare-fun b!8018162 () Bool)

(assert (=> b!8018162 (= e!4723207 0)))

(declare-fun b!8018163 () Bool)

(assert (=> b!8018163 (= e!4723207 (+ 1 (size!43603 (t!390679 lt!2719173))))))

(assert (= (and d!2390710 c!1471657) b!8018162))

(assert (= (and d!2390710 (not c!1471657)) b!8018163))

(declare-fun m!8381182 () Bool)

(assert (=> b!8018163 m!8381182))

(assert (=> b!8018103 d!2390710))

(declare-fun d!2390712 () Bool)

(declare-fun lt!2719201 () Int)

(assert (=> d!2390712 (>= lt!2719201 0)))

(declare-fun e!4723209 () Int)

(assert (=> d!2390712 (= lt!2719201 e!4723209)))

(declare-fun c!1471658 () Bool)

(assert (=> d!2390712 (= c!1471658 ((_ is Nil!74812) l!3425))))

(assert (=> d!2390712 (= (size!43603 l!3425) lt!2719201)))

(declare-fun b!8018165 () Bool)

(assert (=> b!8018165 (= e!4723209 0)))

(declare-fun b!8018166 () Bool)

(assert (=> b!8018166 (= e!4723209 (+ 1 (size!43603 (t!390679 l!3425))))))

(assert (= (and d!2390712 c!1471658) b!8018165))

(assert (= (and d!2390712 (not c!1471658)) b!8018166))

(declare-fun m!8381184 () Bool)

(assert (=> b!8018166 m!8381184))

(assert (=> b!8018103 d!2390712))

(declare-fun b!8018171 () Bool)

(declare-fun e!4723212 () Bool)

(declare-fun tp!2400017 () Bool)

(assert (=> b!8018171 (= e!4723212 (and tp_is_empty!53957 tp!2400017))))

(assert (=> b!8018104 (= tp!2400009 e!4723212)))

(assert (= (and b!8018104 ((_ is Cons!74812) (t!390679 l!3425))) b!8018171))

(declare-fun b!8018172 () Bool)

(declare-fun e!4723213 () Bool)

(declare-fun tp!2400018 () Bool)

(assert (=> b!8018172 (= e!4723213 (and tp_is_empty!53957 tp!2400018))))

(assert (=> b!8018102 (= tp!2400010 e!4723213)))

(assert (= (and b!8018102 ((_ is Cons!74812) (t!390679 p!2003))) b!8018172))

(check-sat (not b!8018126) (not b!8018171) tp_is_empty!53957 (not b!8018172) (not b!8018146) (not d!2390700) (not b!8018130) (not b!8018132) (not b!8018128) (not b!8018163) (not b!8018131) (not b!8018127) (not b!8018160) (not b!8018166))
(check-sat)
