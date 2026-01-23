; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13982 () Bool)

(assert start!13982)

(declare-fun res!62697 () Bool)

(declare-fun e!77704 () Bool)

(assert (=> start!13982 (=> (not res!62697) (not e!77704))))

(declare-datatypes ((B!813 0))(
  ( (B!814 (val!892 Int)) )
))
(declare-datatypes ((List!2210 0))(
  ( (Nil!2204) (Cons!2204 (h!7601 B!813) (t!22796 List!2210)) )
))
(declare-fun l!3288 () List!2210)

(declare-fun tot!41 () List!2210)

(declare-fun lt!40470 () List!2210)

(declare-fun isPrefix!197 (List!2210 List!2210) Bool)

(declare-fun ++!478 (List!2210 List!2210) List!2210)

(assert (=> start!13982 (= res!62697 (isPrefix!197 (++!478 l!3288 lt!40470) tot!41))))

(declare-fun elmt!148 () B!813)

(assert (=> start!13982 (= lt!40470 (Cons!2204 elmt!148 Nil!2204))))

(assert (=> start!13982 e!77704))

(declare-fun tp_is_empty!1457 () Bool)

(assert (=> start!13982 tp_is_empty!1457))

(declare-fun e!77706 () Bool)

(assert (=> start!13982 e!77706))

(declare-fun e!77707 () Bool)

(assert (=> start!13982 e!77707))

(declare-fun b!134144 () Bool)

(declare-fun e!77705 () Bool)

(assert (=> b!134144 (= e!77705 (not (isPrefix!197 l!3288 tot!41)))))

(declare-fun lt!40468 () List!2210)

(assert (=> b!134144 (isPrefix!197 (t!22796 l!3288) lt!40468)))

(declare-datatypes ((Unit!1760 0))(
  ( (Unit!1761) )
))
(declare-fun lt!40469 () Unit!1760)

(declare-fun lemmaRemoveLastConcatenatedPrefixStillPrefix!8 (List!2210 B!813 List!2210) Unit!1760)

(assert (=> b!134144 (= lt!40469 (lemmaRemoveLastConcatenatedPrefixStillPrefix!8 (t!22796 l!3288) elmt!148 lt!40468))))

(declare-fun b!134145 () Bool)

(declare-fun tp!70659 () Bool)

(assert (=> b!134145 (= e!77706 (and tp_is_empty!1457 tp!70659))))

(declare-fun b!134146 () Bool)

(assert (=> b!134146 (= e!77704 e!77705)))

(declare-fun res!62698 () Bool)

(assert (=> b!134146 (=> (not res!62698) (not e!77705))))

(assert (=> b!134146 (= res!62698 (isPrefix!197 (++!478 (t!22796 l!3288) lt!40470) lt!40468))))

(declare-fun tail!288 (List!2210) List!2210)

(assert (=> b!134146 (= lt!40468 (tail!288 tot!41))))

(declare-fun b!134147 () Bool)

(declare-fun res!62696 () Bool)

(assert (=> b!134147 (=> (not res!62696) (not e!77704))))

(get-info :version)

(assert (=> b!134147 (= res!62696 ((_ is Cons!2204) l!3288))))

(declare-fun b!134148 () Bool)

(declare-fun tp!70660 () Bool)

(assert (=> b!134148 (= e!77707 (and tp_is_empty!1457 tp!70660))))

(assert (= (and start!13982 res!62697) b!134147))

(assert (= (and b!134147 res!62696) b!134146))

(assert (= (and b!134146 res!62698) b!134144))

(assert (= (and start!13982 ((_ is Cons!2204) l!3288)) b!134145))

(assert (= (and start!13982 ((_ is Cons!2204) tot!41)) b!134148))

(declare-fun m!119161 () Bool)

(assert (=> start!13982 m!119161))

(assert (=> start!13982 m!119161))

(declare-fun m!119163 () Bool)

(assert (=> start!13982 m!119163))

(declare-fun m!119165 () Bool)

(assert (=> b!134144 m!119165))

(declare-fun m!119167 () Bool)

(assert (=> b!134144 m!119167))

(declare-fun m!119169 () Bool)

(assert (=> b!134144 m!119169))

(declare-fun m!119171 () Bool)

(assert (=> b!134146 m!119171))

(assert (=> b!134146 m!119171))

(declare-fun m!119173 () Bool)

(assert (=> b!134146 m!119173))

(declare-fun m!119175 () Bool)

(assert (=> b!134146 m!119175))

(check-sat (not b!134145) tp_is_empty!1457 (not b!134146) (not b!134148) (not b!134144) (not start!13982))
(check-sat)
(get-model)

(declare-fun e!77722 () Bool)

(declare-fun b!134167 () Bool)

(assert (=> b!134167 (= e!77722 (isPrefix!197 (tail!288 (++!478 (t!22796 l!3288) lt!40470)) (tail!288 lt!40468)))))

(declare-fun b!134166 () Bool)

(declare-fun res!62716 () Bool)

(assert (=> b!134166 (=> (not res!62716) (not e!77722))))

(declare-fun head!539 (List!2210) B!813)

(assert (=> b!134166 (= res!62716 (= (head!539 (++!478 (t!22796 l!3288) lt!40470)) (head!539 lt!40468)))))

(declare-fun d!32147 () Bool)

(declare-fun e!77721 () Bool)

(assert (=> d!32147 e!77721))

(declare-fun res!62717 () Bool)

(assert (=> d!32147 (=> res!62717 e!77721)))

(declare-fun lt!40475 () Bool)

(assert (=> d!32147 (= res!62717 (not lt!40475))))

(declare-fun e!77720 () Bool)

(assert (=> d!32147 (= lt!40475 e!77720)))

(declare-fun res!62715 () Bool)

(assert (=> d!32147 (=> res!62715 e!77720)))

(assert (=> d!32147 (= res!62715 ((_ is Nil!2204) (++!478 (t!22796 l!3288) lt!40470)))))

(assert (=> d!32147 (= (isPrefix!197 (++!478 (t!22796 l!3288) lt!40470) lt!40468) lt!40475)))

(declare-fun b!134165 () Bool)

(assert (=> b!134165 (= e!77720 e!77722)))

(declare-fun res!62718 () Bool)

(assert (=> b!134165 (=> (not res!62718) (not e!77722))))

(assert (=> b!134165 (= res!62718 (not ((_ is Nil!2204) lt!40468)))))

(declare-fun b!134168 () Bool)

(declare-fun size!2000 (List!2210) Int)

(assert (=> b!134168 (= e!77721 (>= (size!2000 lt!40468) (size!2000 (++!478 (t!22796 l!3288) lt!40470))))))

(assert (= (and d!32147 (not res!62715)) b!134165))

(assert (= (and b!134165 res!62718) b!134166))

(assert (= (and b!134166 res!62716) b!134167))

(assert (= (and d!32147 (not res!62717)) b!134168))

(assert (=> b!134167 m!119171))

(declare-fun m!119177 () Bool)

(assert (=> b!134167 m!119177))

(declare-fun m!119179 () Bool)

(assert (=> b!134167 m!119179))

(assert (=> b!134167 m!119177))

(assert (=> b!134167 m!119179))

(declare-fun m!119181 () Bool)

(assert (=> b!134167 m!119181))

(assert (=> b!134166 m!119171))

(declare-fun m!119183 () Bool)

(assert (=> b!134166 m!119183))

(declare-fun m!119185 () Bool)

(assert (=> b!134166 m!119185))

(declare-fun m!119187 () Bool)

(assert (=> b!134168 m!119187))

(assert (=> b!134168 m!119171))

(declare-fun m!119189 () Bool)

(assert (=> b!134168 m!119189))

(assert (=> b!134146 d!32147))

(declare-fun b!134191 () Bool)

(declare-fun res!62732 () Bool)

(declare-fun e!77735 () Bool)

(assert (=> b!134191 (=> (not res!62732) (not e!77735))))

(declare-fun lt!40481 () List!2210)

(assert (=> b!134191 (= res!62732 (= (size!2000 lt!40481) (+ (size!2000 (t!22796 l!3288)) (size!2000 lt!40470))))))

(declare-fun b!134190 () Bool)

(declare-fun e!77734 () List!2210)

(assert (=> b!134190 (= e!77734 (Cons!2204 (h!7601 (t!22796 l!3288)) (++!478 (t!22796 (t!22796 l!3288)) lt!40470)))))

(declare-fun b!134189 () Bool)

(assert (=> b!134189 (= e!77734 lt!40470)))

(declare-fun d!32151 () Bool)

(assert (=> d!32151 e!77735))

(declare-fun res!62731 () Bool)

(assert (=> d!32151 (=> (not res!62731) (not e!77735))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!312 (List!2210) (InoxSet B!813))

(assert (=> d!32151 (= res!62731 (= (content!312 lt!40481) ((_ map or) (content!312 (t!22796 l!3288)) (content!312 lt!40470))))))

(assert (=> d!32151 (= lt!40481 e!77734)))

(declare-fun c!28725 () Bool)

(assert (=> d!32151 (= c!28725 ((_ is Nil!2204) (t!22796 l!3288)))))

(assert (=> d!32151 (= (++!478 (t!22796 l!3288) lt!40470) lt!40481)))

(declare-fun b!134192 () Bool)

(assert (=> b!134192 (= e!77735 (or (not (= lt!40470 Nil!2204)) (= lt!40481 (t!22796 l!3288))))))

(assert (= (and d!32151 c!28725) b!134189))

(assert (= (and d!32151 (not c!28725)) b!134190))

(assert (= (and d!32151 res!62731) b!134191))

(assert (= (and b!134191 res!62732) b!134192))

(declare-fun m!119205 () Bool)

(assert (=> b!134191 m!119205))

(declare-fun m!119207 () Bool)

(assert (=> b!134191 m!119207))

(declare-fun m!119209 () Bool)

(assert (=> b!134191 m!119209))

(declare-fun m!119211 () Bool)

(assert (=> b!134190 m!119211))

(declare-fun m!119213 () Bool)

(assert (=> d!32151 m!119213))

(declare-fun m!119215 () Bool)

(assert (=> d!32151 m!119215))

(declare-fun m!119217 () Bool)

(assert (=> d!32151 m!119217))

(assert (=> b!134146 d!32151))

(declare-fun d!32155 () Bool)

(assert (=> d!32155 (= (tail!288 tot!41) (t!22796 tot!41))))

(assert (=> b!134146 d!32155))

(declare-fun e!77738 () Bool)

(declare-fun b!134195 () Bool)

(assert (=> b!134195 (= e!77738 (isPrefix!197 (tail!288 (++!478 l!3288 lt!40470)) (tail!288 tot!41)))))

(declare-fun b!134194 () Bool)

(declare-fun res!62734 () Bool)

(assert (=> b!134194 (=> (not res!62734) (not e!77738))))

(assert (=> b!134194 (= res!62734 (= (head!539 (++!478 l!3288 lt!40470)) (head!539 tot!41)))))

(declare-fun d!32157 () Bool)

(declare-fun e!77737 () Bool)

(assert (=> d!32157 e!77737))

(declare-fun res!62735 () Bool)

(assert (=> d!32157 (=> res!62735 e!77737)))

(declare-fun lt!40482 () Bool)

(assert (=> d!32157 (= res!62735 (not lt!40482))))

(declare-fun e!77736 () Bool)

(assert (=> d!32157 (= lt!40482 e!77736)))

(declare-fun res!62733 () Bool)

(assert (=> d!32157 (=> res!62733 e!77736)))

(assert (=> d!32157 (= res!62733 ((_ is Nil!2204) (++!478 l!3288 lt!40470)))))

(assert (=> d!32157 (= (isPrefix!197 (++!478 l!3288 lt!40470) tot!41) lt!40482)))

(declare-fun b!134193 () Bool)

(assert (=> b!134193 (= e!77736 e!77738)))

(declare-fun res!62736 () Bool)

(assert (=> b!134193 (=> (not res!62736) (not e!77738))))

(assert (=> b!134193 (= res!62736 (not ((_ is Nil!2204) tot!41)))))

(declare-fun b!134196 () Bool)

(assert (=> b!134196 (= e!77737 (>= (size!2000 tot!41) (size!2000 (++!478 l!3288 lt!40470))))))

(assert (= (and d!32157 (not res!62733)) b!134193))

(assert (= (and b!134193 res!62736) b!134194))

(assert (= (and b!134194 res!62734) b!134195))

(assert (= (and d!32157 (not res!62735)) b!134196))

(assert (=> b!134195 m!119161))

(declare-fun m!119219 () Bool)

(assert (=> b!134195 m!119219))

(assert (=> b!134195 m!119175))

(assert (=> b!134195 m!119219))

(assert (=> b!134195 m!119175))

(declare-fun m!119221 () Bool)

(assert (=> b!134195 m!119221))

(assert (=> b!134194 m!119161))

(declare-fun m!119223 () Bool)

(assert (=> b!134194 m!119223))

(declare-fun m!119225 () Bool)

(assert (=> b!134194 m!119225))

(declare-fun m!119227 () Bool)

(assert (=> b!134196 m!119227))

(assert (=> b!134196 m!119161))

(declare-fun m!119229 () Bool)

(assert (=> b!134196 m!119229))

(assert (=> start!13982 d!32157))

(declare-fun b!134203 () Bool)

(declare-fun res!62740 () Bool)

(declare-fun e!77742 () Bool)

(assert (=> b!134203 (=> (not res!62740) (not e!77742))))

(declare-fun lt!40484 () List!2210)

(assert (=> b!134203 (= res!62740 (= (size!2000 lt!40484) (+ (size!2000 l!3288) (size!2000 lt!40470))))))

(declare-fun b!134202 () Bool)

(declare-fun e!77741 () List!2210)

(assert (=> b!134202 (= e!77741 (Cons!2204 (h!7601 l!3288) (++!478 (t!22796 l!3288) lt!40470)))))

(declare-fun b!134201 () Bool)

(assert (=> b!134201 (= e!77741 lt!40470)))

(declare-fun d!32159 () Bool)

(assert (=> d!32159 e!77742))

(declare-fun res!62739 () Bool)

(assert (=> d!32159 (=> (not res!62739) (not e!77742))))

(assert (=> d!32159 (= res!62739 (= (content!312 lt!40484) ((_ map or) (content!312 l!3288) (content!312 lt!40470))))))

(assert (=> d!32159 (= lt!40484 e!77741)))

(declare-fun c!28727 () Bool)

(assert (=> d!32159 (= c!28727 ((_ is Nil!2204) l!3288))))

(assert (=> d!32159 (= (++!478 l!3288 lt!40470) lt!40484)))

(declare-fun b!134204 () Bool)

(assert (=> b!134204 (= e!77742 (or (not (= lt!40470 Nil!2204)) (= lt!40484 l!3288)))))

(assert (= (and d!32159 c!28727) b!134201))

(assert (= (and d!32159 (not c!28727)) b!134202))

(assert (= (and d!32159 res!62739) b!134203))

(assert (= (and b!134203 res!62740) b!134204))

(declare-fun m!119245 () Bool)

(assert (=> b!134203 m!119245))

(declare-fun m!119247 () Bool)

(assert (=> b!134203 m!119247))

(assert (=> b!134203 m!119209))

(assert (=> b!134202 m!119171))

(declare-fun m!119249 () Bool)

(assert (=> d!32159 m!119249))

(declare-fun m!119251 () Bool)

(assert (=> d!32159 m!119251))

(assert (=> d!32159 m!119217))

(assert (=> start!13982 d!32159))

(declare-fun b!134207 () Bool)

(declare-fun e!77745 () Bool)

(assert (=> b!134207 (= e!77745 (isPrefix!197 (tail!288 l!3288) (tail!288 tot!41)))))

(declare-fun b!134206 () Bool)

(declare-fun res!62742 () Bool)

(assert (=> b!134206 (=> (not res!62742) (not e!77745))))

(assert (=> b!134206 (= res!62742 (= (head!539 l!3288) (head!539 tot!41)))))

(declare-fun d!32163 () Bool)

(declare-fun e!77744 () Bool)

(assert (=> d!32163 e!77744))

(declare-fun res!62743 () Bool)

(assert (=> d!32163 (=> res!62743 e!77744)))

(declare-fun lt!40485 () Bool)

(assert (=> d!32163 (= res!62743 (not lt!40485))))

(declare-fun e!77743 () Bool)

(assert (=> d!32163 (= lt!40485 e!77743)))

(declare-fun res!62741 () Bool)

(assert (=> d!32163 (=> res!62741 e!77743)))

(assert (=> d!32163 (= res!62741 ((_ is Nil!2204) l!3288))))

(assert (=> d!32163 (= (isPrefix!197 l!3288 tot!41) lt!40485)))

(declare-fun b!134205 () Bool)

(assert (=> b!134205 (= e!77743 e!77745)))

(declare-fun res!62744 () Bool)

(assert (=> b!134205 (=> (not res!62744) (not e!77745))))

(assert (=> b!134205 (= res!62744 (not ((_ is Nil!2204) tot!41)))))

(declare-fun b!134208 () Bool)

(assert (=> b!134208 (= e!77744 (>= (size!2000 tot!41) (size!2000 l!3288)))))

(assert (= (and d!32163 (not res!62741)) b!134205))

(assert (= (and b!134205 res!62744) b!134206))

(assert (= (and b!134206 res!62742) b!134207))

(assert (= (and d!32163 (not res!62743)) b!134208))

(declare-fun m!119253 () Bool)

(assert (=> b!134207 m!119253))

(assert (=> b!134207 m!119175))

(assert (=> b!134207 m!119253))

(assert (=> b!134207 m!119175))

(declare-fun m!119255 () Bool)

(assert (=> b!134207 m!119255))

(declare-fun m!119257 () Bool)

(assert (=> b!134206 m!119257))

(assert (=> b!134206 m!119225))

(assert (=> b!134208 m!119227))

(assert (=> b!134208 m!119247))

(assert (=> b!134144 d!32163))

(declare-fun b!134215 () Bool)

(declare-fun e!77751 () Bool)

(assert (=> b!134215 (= e!77751 (isPrefix!197 (tail!288 (t!22796 l!3288)) (tail!288 lt!40468)))))

(declare-fun b!134214 () Bool)

(declare-fun res!62750 () Bool)

(assert (=> b!134214 (=> (not res!62750) (not e!77751))))

(assert (=> b!134214 (= res!62750 (= (head!539 (t!22796 l!3288)) (head!539 lt!40468)))))

(declare-fun d!32167 () Bool)

(declare-fun e!77750 () Bool)

(assert (=> d!32167 e!77750))

(declare-fun res!62751 () Bool)

(assert (=> d!32167 (=> res!62751 e!77750)))

(declare-fun lt!40487 () Bool)

(assert (=> d!32167 (= res!62751 (not lt!40487))))

(declare-fun e!77749 () Bool)

(assert (=> d!32167 (= lt!40487 e!77749)))

(declare-fun res!62749 () Bool)

(assert (=> d!32167 (=> res!62749 e!77749)))

(assert (=> d!32167 (= res!62749 ((_ is Nil!2204) (t!22796 l!3288)))))

(assert (=> d!32167 (= (isPrefix!197 (t!22796 l!3288) lt!40468) lt!40487)))

(declare-fun b!134213 () Bool)

(assert (=> b!134213 (= e!77749 e!77751)))

(declare-fun res!62752 () Bool)

(assert (=> b!134213 (=> (not res!62752) (not e!77751))))

(assert (=> b!134213 (= res!62752 (not ((_ is Nil!2204) lt!40468)))))

(declare-fun b!134216 () Bool)

(assert (=> b!134216 (= e!77750 (>= (size!2000 lt!40468) (size!2000 (t!22796 l!3288))))))

(assert (= (and d!32167 (not res!62749)) b!134213))

(assert (= (and b!134213 res!62752) b!134214))

(assert (= (and b!134214 res!62750) b!134215))

(assert (= (and d!32167 (not res!62751)) b!134216))

(declare-fun m!119261 () Bool)

(assert (=> b!134215 m!119261))

(assert (=> b!134215 m!119179))

(assert (=> b!134215 m!119261))

(assert (=> b!134215 m!119179))

(declare-fun m!119267 () Bool)

(assert (=> b!134215 m!119267))

(declare-fun m!119271 () Bool)

(assert (=> b!134214 m!119271))

(assert (=> b!134214 m!119185))

(assert (=> b!134216 m!119187))

(assert (=> b!134216 m!119207))

(assert (=> b!134144 d!32167))

(declare-fun d!32171 () Bool)

(assert (=> d!32171 (isPrefix!197 (t!22796 l!3288) lt!40468)))

(declare-fun lt!40493 () Unit!1760)

(declare-fun choose!1702 (List!2210 B!813 List!2210) Unit!1760)

(assert (=> d!32171 (= lt!40493 (choose!1702 (t!22796 l!3288) elmt!148 lt!40468))))

(assert (=> d!32171 (isPrefix!197 (++!478 (t!22796 l!3288) (Cons!2204 elmt!148 Nil!2204)) lt!40468)))

(assert (=> d!32171 (= (lemmaRemoveLastConcatenatedPrefixStillPrefix!8 (t!22796 l!3288) elmt!148 lt!40468) lt!40493)))

(declare-fun bs!12698 () Bool)

(assert (= bs!12698 d!32171))

(assert (=> bs!12698 m!119167))

(declare-fun m!119297 () Bool)

(assert (=> bs!12698 m!119297))

(declare-fun m!119299 () Bool)

(assert (=> bs!12698 m!119299))

(assert (=> bs!12698 m!119299))

(declare-fun m!119301 () Bool)

(assert (=> bs!12698 m!119301))

(assert (=> b!134144 d!32171))

(declare-fun b!134233 () Bool)

(declare-fun e!77762 () Bool)

(declare-fun tp!70663 () Bool)

(assert (=> b!134233 (= e!77762 (and tp_is_empty!1457 tp!70663))))

(assert (=> b!134148 (= tp!70660 e!77762)))

(assert (= (and b!134148 ((_ is Cons!2204) (t!22796 tot!41))) b!134233))

(declare-fun b!134234 () Bool)

(declare-fun e!77763 () Bool)

(declare-fun tp!70664 () Bool)

(assert (=> b!134234 (= e!77763 (and tp_is_empty!1457 tp!70664))))

(assert (=> b!134145 (= tp!70659 e!77763)))

(assert (= (and b!134145 ((_ is Cons!2204) (t!22796 l!3288))) b!134234))

(check-sat (not d!32151) (not b!134233) tp_is_empty!1457 (not b!134216) (not b!134168) (not b!134166) (not b!134195) (not b!134190) (not b!134202) (not b!134234) (not b!134194) (not b!134196) (not b!134208) (not d!32171) (not b!134207) (not b!134206) (not d!32159) (not b!134203) (not b!134167) (not b!134191) (not b!134215) (not b!134214))
(check-sat)
(get-model)

(declare-fun d!32179 () Bool)

(assert (=> d!32179 (= (head!539 l!3288) (h!7601 l!3288))))

(assert (=> b!134206 d!32179))

(declare-fun d!32181 () Bool)

(assert (=> d!32181 (= (head!539 tot!41) (h!7601 tot!41))))

(assert (=> b!134206 d!32181))

(declare-fun d!32183 () Bool)

(declare-fun lt!40499 () Int)

(assert (=> d!32183 (>= lt!40499 0)))

(declare-fun e!77770 () Int)

(assert (=> d!32183 (= lt!40499 e!77770)))

(declare-fun c!28731 () Bool)

(assert (=> d!32183 (= c!28731 ((_ is Nil!2204) tot!41))))

(assert (=> d!32183 (= (size!2000 tot!41) lt!40499)))

(declare-fun b!134245 () Bool)

(assert (=> b!134245 (= e!77770 0)))

(declare-fun b!134246 () Bool)

(assert (=> b!134246 (= e!77770 (+ 1 (size!2000 (t!22796 tot!41))))))

(assert (= (and d!32183 c!28731) b!134245))

(assert (= (and d!32183 (not c!28731)) b!134246))

(declare-fun m!119309 () Bool)

(assert (=> b!134246 m!119309))

(assert (=> b!134208 d!32183))

(declare-fun d!32185 () Bool)

(declare-fun lt!40500 () Int)

(assert (=> d!32185 (>= lt!40500 0)))

(declare-fun e!77771 () Int)

(assert (=> d!32185 (= lt!40500 e!77771)))

(declare-fun c!28732 () Bool)

(assert (=> d!32185 (= c!28732 ((_ is Nil!2204) l!3288))))

(assert (=> d!32185 (= (size!2000 l!3288) lt!40500)))

(declare-fun b!134247 () Bool)

(assert (=> b!134247 (= e!77771 0)))

(declare-fun b!134248 () Bool)

(assert (=> b!134248 (= e!77771 (+ 1 (size!2000 (t!22796 l!3288))))))

(assert (= (and d!32185 c!28732) b!134247))

(assert (= (and d!32185 (not c!28732)) b!134248))

(assert (=> b!134248 m!119207))

(assert (=> b!134208 d!32185))

(declare-fun b!134251 () Bool)

(declare-fun res!62764 () Bool)

(declare-fun e!77773 () Bool)

(assert (=> b!134251 (=> (not res!62764) (not e!77773))))

(declare-fun lt!40501 () List!2210)

(assert (=> b!134251 (= res!62764 (= (size!2000 lt!40501) (+ (size!2000 (t!22796 (t!22796 l!3288))) (size!2000 lt!40470))))))

(declare-fun b!134250 () Bool)

(declare-fun e!77772 () List!2210)

(assert (=> b!134250 (= e!77772 (Cons!2204 (h!7601 (t!22796 (t!22796 l!3288))) (++!478 (t!22796 (t!22796 (t!22796 l!3288))) lt!40470)))))

(declare-fun b!134249 () Bool)

(assert (=> b!134249 (= e!77772 lt!40470)))

(declare-fun d!32187 () Bool)

(assert (=> d!32187 e!77773))

(declare-fun res!62763 () Bool)

(assert (=> d!32187 (=> (not res!62763) (not e!77773))))

(assert (=> d!32187 (= res!62763 (= (content!312 lt!40501) ((_ map or) (content!312 (t!22796 (t!22796 l!3288))) (content!312 lt!40470))))))

(assert (=> d!32187 (= lt!40501 e!77772)))

(declare-fun c!28733 () Bool)

(assert (=> d!32187 (= c!28733 ((_ is Nil!2204) (t!22796 (t!22796 l!3288))))))

(assert (=> d!32187 (= (++!478 (t!22796 (t!22796 l!3288)) lt!40470) lt!40501)))

(declare-fun b!134252 () Bool)

(assert (=> b!134252 (= e!77773 (or (not (= lt!40470 Nil!2204)) (= lt!40501 (t!22796 (t!22796 l!3288)))))))

(assert (= (and d!32187 c!28733) b!134249))

(assert (= (and d!32187 (not c!28733)) b!134250))

(assert (= (and d!32187 res!62763) b!134251))

(assert (= (and b!134251 res!62764) b!134252))

(declare-fun m!119311 () Bool)

(assert (=> b!134251 m!119311))

(declare-fun m!119313 () Bool)

(assert (=> b!134251 m!119313))

(assert (=> b!134251 m!119209))

(declare-fun m!119315 () Bool)

(assert (=> b!134250 m!119315))

(declare-fun m!119317 () Bool)

(assert (=> d!32187 m!119317))

(declare-fun m!119319 () Bool)

(assert (=> d!32187 m!119319))

(assert (=> d!32187 m!119217))

(assert (=> b!134190 d!32187))

(declare-fun b!134255 () Bool)

(declare-fun e!77776 () Bool)

(assert (=> b!134255 (= e!77776 (isPrefix!197 (tail!288 (tail!288 l!3288)) (tail!288 (tail!288 tot!41))))))

(declare-fun b!134254 () Bool)

(declare-fun res!62766 () Bool)

(assert (=> b!134254 (=> (not res!62766) (not e!77776))))

(assert (=> b!134254 (= res!62766 (= (head!539 (tail!288 l!3288)) (head!539 (tail!288 tot!41))))))

(declare-fun d!32189 () Bool)

(declare-fun e!77775 () Bool)

(assert (=> d!32189 e!77775))

(declare-fun res!62767 () Bool)

(assert (=> d!32189 (=> res!62767 e!77775)))

(declare-fun lt!40502 () Bool)

(assert (=> d!32189 (= res!62767 (not lt!40502))))

(declare-fun e!77774 () Bool)

(assert (=> d!32189 (= lt!40502 e!77774)))

(declare-fun res!62765 () Bool)

(assert (=> d!32189 (=> res!62765 e!77774)))

(assert (=> d!32189 (= res!62765 ((_ is Nil!2204) (tail!288 l!3288)))))

(assert (=> d!32189 (= (isPrefix!197 (tail!288 l!3288) (tail!288 tot!41)) lt!40502)))

(declare-fun b!134253 () Bool)

(assert (=> b!134253 (= e!77774 e!77776)))

(declare-fun res!62768 () Bool)

(assert (=> b!134253 (=> (not res!62768) (not e!77776))))

(assert (=> b!134253 (= res!62768 (not ((_ is Nil!2204) (tail!288 tot!41))))))

(declare-fun b!134256 () Bool)

(assert (=> b!134256 (= e!77775 (>= (size!2000 (tail!288 tot!41)) (size!2000 (tail!288 l!3288))))))

(assert (= (and d!32189 (not res!62765)) b!134253))

(assert (= (and b!134253 res!62768) b!134254))

(assert (= (and b!134254 res!62766) b!134255))

(assert (= (and d!32189 (not res!62767)) b!134256))

(assert (=> b!134255 m!119253))

(declare-fun m!119321 () Bool)

(assert (=> b!134255 m!119321))

(assert (=> b!134255 m!119175))

(declare-fun m!119323 () Bool)

(assert (=> b!134255 m!119323))

(assert (=> b!134255 m!119321))

(assert (=> b!134255 m!119323))

(declare-fun m!119325 () Bool)

(assert (=> b!134255 m!119325))

(assert (=> b!134254 m!119253))

(declare-fun m!119327 () Bool)

(assert (=> b!134254 m!119327))

(assert (=> b!134254 m!119175))

(declare-fun m!119329 () Bool)

(assert (=> b!134254 m!119329))

(assert (=> b!134256 m!119175))

(declare-fun m!119331 () Bool)

(assert (=> b!134256 m!119331))

(assert (=> b!134256 m!119253))

(declare-fun m!119333 () Bool)

(assert (=> b!134256 m!119333))

(assert (=> b!134207 d!32189))

(declare-fun d!32191 () Bool)

(assert (=> d!32191 (= (tail!288 l!3288) (t!22796 l!3288))))

(assert (=> b!134207 d!32191))

(assert (=> b!134207 d!32155))

(declare-fun d!32193 () Bool)

(declare-fun lt!40503 () Int)

(assert (=> d!32193 (>= lt!40503 0)))

(declare-fun e!77777 () Int)

(assert (=> d!32193 (= lt!40503 e!77777)))

(declare-fun c!28734 () Bool)

(assert (=> d!32193 (= c!28734 ((_ is Nil!2204) lt!40468))))

(assert (=> d!32193 (= (size!2000 lt!40468) lt!40503)))

(declare-fun b!134257 () Bool)

(assert (=> b!134257 (= e!77777 0)))

(declare-fun b!134258 () Bool)

(assert (=> b!134258 (= e!77777 (+ 1 (size!2000 (t!22796 lt!40468))))))

(assert (= (and d!32193 c!28734) b!134257))

(assert (= (and d!32193 (not c!28734)) b!134258))

(declare-fun m!119335 () Bool)

(assert (=> b!134258 m!119335))

(assert (=> b!134168 d!32193))

(declare-fun d!32195 () Bool)

(declare-fun lt!40504 () Int)

(assert (=> d!32195 (>= lt!40504 0)))

(declare-fun e!77778 () Int)

(assert (=> d!32195 (= lt!40504 e!77778)))

(declare-fun c!28735 () Bool)

(assert (=> d!32195 (= c!28735 ((_ is Nil!2204) (++!478 (t!22796 l!3288) lt!40470)))))

(assert (=> d!32195 (= (size!2000 (++!478 (t!22796 l!3288) lt!40470)) lt!40504)))

(declare-fun b!134259 () Bool)

(assert (=> b!134259 (= e!77778 0)))

(declare-fun b!134260 () Bool)

(assert (=> b!134260 (= e!77778 (+ 1 (size!2000 (t!22796 (++!478 (t!22796 l!3288) lt!40470)))))))

(assert (= (and d!32195 c!28735) b!134259))

(assert (= (and d!32195 (not c!28735)) b!134260))

(declare-fun m!119337 () Bool)

(assert (=> b!134260 m!119337))

(assert (=> b!134168 d!32195))

(assert (=> d!32171 d!32167))

(declare-fun d!32197 () Bool)

(assert (=> d!32197 (isPrefix!197 (t!22796 l!3288) lt!40468)))

(assert (=> d!32197 true))

(declare-fun _$56!323 () Unit!1760)

(assert (=> d!32197 (= (choose!1702 (t!22796 l!3288) elmt!148 lt!40468) _$56!323)))

(declare-fun bs!12700 () Bool)

(assert (= bs!12700 d!32197))

(assert (=> bs!12700 m!119167))

(assert (=> d!32171 d!32197))

(declare-fun b!134263 () Bool)

(declare-fun e!77781 () Bool)

(assert (=> b!134263 (= e!77781 (isPrefix!197 (tail!288 (++!478 (t!22796 l!3288) (Cons!2204 elmt!148 Nil!2204))) (tail!288 lt!40468)))))

(declare-fun b!134262 () Bool)

(declare-fun res!62770 () Bool)

(assert (=> b!134262 (=> (not res!62770) (not e!77781))))

(assert (=> b!134262 (= res!62770 (= (head!539 (++!478 (t!22796 l!3288) (Cons!2204 elmt!148 Nil!2204))) (head!539 lt!40468)))))

(declare-fun d!32199 () Bool)

(declare-fun e!77780 () Bool)

(assert (=> d!32199 e!77780))

(declare-fun res!62771 () Bool)

(assert (=> d!32199 (=> res!62771 e!77780)))

(declare-fun lt!40505 () Bool)

(assert (=> d!32199 (= res!62771 (not lt!40505))))

(declare-fun e!77779 () Bool)

(assert (=> d!32199 (= lt!40505 e!77779)))

(declare-fun res!62769 () Bool)

(assert (=> d!32199 (=> res!62769 e!77779)))

(assert (=> d!32199 (= res!62769 ((_ is Nil!2204) (++!478 (t!22796 l!3288) (Cons!2204 elmt!148 Nil!2204))))))

(assert (=> d!32199 (= (isPrefix!197 (++!478 (t!22796 l!3288) (Cons!2204 elmt!148 Nil!2204)) lt!40468) lt!40505)))

(declare-fun b!134261 () Bool)

(assert (=> b!134261 (= e!77779 e!77781)))

(declare-fun res!62772 () Bool)

(assert (=> b!134261 (=> (not res!62772) (not e!77781))))

(assert (=> b!134261 (= res!62772 (not ((_ is Nil!2204) lt!40468)))))

(declare-fun b!134264 () Bool)

(assert (=> b!134264 (= e!77780 (>= (size!2000 lt!40468) (size!2000 (++!478 (t!22796 l!3288) (Cons!2204 elmt!148 Nil!2204)))))))

(assert (= (and d!32199 (not res!62769)) b!134261))

(assert (= (and b!134261 res!62772) b!134262))

(assert (= (and b!134262 res!62770) b!134263))

(assert (= (and d!32199 (not res!62771)) b!134264))

(assert (=> b!134263 m!119299))

(declare-fun m!119339 () Bool)

(assert (=> b!134263 m!119339))

(assert (=> b!134263 m!119179))

(assert (=> b!134263 m!119339))

(assert (=> b!134263 m!119179))

(declare-fun m!119341 () Bool)

(assert (=> b!134263 m!119341))

(assert (=> b!134262 m!119299))

(declare-fun m!119343 () Bool)

(assert (=> b!134262 m!119343))

(assert (=> b!134262 m!119185))

(assert (=> b!134264 m!119187))

(assert (=> b!134264 m!119299))

(declare-fun m!119345 () Bool)

(assert (=> b!134264 m!119345))

(assert (=> d!32171 d!32199))

(declare-fun b!134267 () Bool)

(declare-fun res!62774 () Bool)

(declare-fun e!77783 () Bool)

(assert (=> b!134267 (=> (not res!62774) (not e!77783))))

(declare-fun lt!40506 () List!2210)

(assert (=> b!134267 (= res!62774 (= (size!2000 lt!40506) (+ (size!2000 (t!22796 l!3288)) (size!2000 (Cons!2204 elmt!148 Nil!2204)))))))

(declare-fun b!134266 () Bool)

(declare-fun e!77782 () List!2210)

(assert (=> b!134266 (= e!77782 (Cons!2204 (h!7601 (t!22796 l!3288)) (++!478 (t!22796 (t!22796 l!3288)) (Cons!2204 elmt!148 Nil!2204))))))

(declare-fun b!134265 () Bool)

(assert (=> b!134265 (= e!77782 (Cons!2204 elmt!148 Nil!2204))))

(declare-fun d!32201 () Bool)

(assert (=> d!32201 e!77783))

(declare-fun res!62773 () Bool)

(assert (=> d!32201 (=> (not res!62773) (not e!77783))))

(assert (=> d!32201 (= res!62773 (= (content!312 lt!40506) ((_ map or) (content!312 (t!22796 l!3288)) (content!312 (Cons!2204 elmt!148 Nil!2204)))))))

(assert (=> d!32201 (= lt!40506 e!77782)))

(declare-fun c!28736 () Bool)

(assert (=> d!32201 (= c!28736 ((_ is Nil!2204) (t!22796 l!3288)))))

(assert (=> d!32201 (= (++!478 (t!22796 l!3288) (Cons!2204 elmt!148 Nil!2204)) lt!40506)))

(declare-fun b!134268 () Bool)

(assert (=> b!134268 (= e!77783 (or (not (= (Cons!2204 elmt!148 Nil!2204) Nil!2204)) (= lt!40506 (t!22796 l!3288))))))

(assert (= (and d!32201 c!28736) b!134265))

(assert (= (and d!32201 (not c!28736)) b!134266))

(assert (= (and d!32201 res!62773) b!134267))

(assert (= (and b!134267 res!62774) b!134268))

(declare-fun m!119347 () Bool)

(assert (=> b!134267 m!119347))

(assert (=> b!134267 m!119207))

(declare-fun m!119349 () Bool)

(assert (=> b!134267 m!119349))

(declare-fun m!119351 () Bool)

(assert (=> b!134266 m!119351))

(declare-fun m!119353 () Bool)

(assert (=> d!32201 m!119353))

(assert (=> d!32201 m!119215))

(declare-fun m!119355 () Bool)

(assert (=> d!32201 m!119355))

(assert (=> d!32171 d!32201))

(declare-fun b!134271 () Bool)

(declare-fun e!77786 () Bool)

(assert (=> b!134271 (= e!77786 (isPrefix!197 (tail!288 (tail!288 (t!22796 l!3288))) (tail!288 (tail!288 lt!40468))))))

(declare-fun b!134270 () Bool)

(declare-fun res!62776 () Bool)

(assert (=> b!134270 (=> (not res!62776) (not e!77786))))

(assert (=> b!134270 (= res!62776 (= (head!539 (tail!288 (t!22796 l!3288))) (head!539 (tail!288 lt!40468))))))

(declare-fun d!32203 () Bool)

(declare-fun e!77785 () Bool)

(assert (=> d!32203 e!77785))

(declare-fun res!62777 () Bool)

(assert (=> d!32203 (=> res!62777 e!77785)))

(declare-fun lt!40507 () Bool)

(assert (=> d!32203 (= res!62777 (not lt!40507))))

(declare-fun e!77784 () Bool)

(assert (=> d!32203 (= lt!40507 e!77784)))

(declare-fun res!62775 () Bool)

(assert (=> d!32203 (=> res!62775 e!77784)))

(assert (=> d!32203 (= res!62775 ((_ is Nil!2204) (tail!288 (t!22796 l!3288))))))

(assert (=> d!32203 (= (isPrefix!197 (tail!288 (t!22796 l!3288)) (tail!288 lt!40468)) lt!40507)))

(declare-fun b!134269 () Bool)

(assert (=> b!134269 (= e!77784 e!77786)))

(declare-fun res!62778 () Bool)

(assert (=> b!134269 (=> (not res!62778) (not e!77786))))

(assert (=> b!134269 (= res!62778 (not ((_ is Nil!2204) (tail!288 lt!40468))))))

(declare-fun b!134272 () Bool)

(assert (=> b!134272 (= e!77785 (>= (size!2000 (tail!288 lt!40468)) (size!2000 (tail!288 (t!22796 l!3288)))))))

(assert (= (and d!32203 (not res!62775)) b!134269))

(assert (= (and b!134269 res!62778) b!134270))

(assert (= (and b!134270 res!62776) b!134271))

(assert (= (and d!32203 (not res!62777)) b!134272))

(assert (=> b!134271 m!119261))

(declare-fun m!119357 () Bool)

(assert (=> b!134271 m!119357))

(assert (=> b!134271 m!119179))

(declare-fun m!119359 () Bool)

(assert (=> b!134271 m!119359))

(assert (=> b!134271 m!119357))

(assert (=> b!134271 m!119359))

(declare-fun m!119361 () Bool)

(assert (=> b!134271 m!119361))

(assert (=> b!134270 m!119261))

(declare-fun m!119363 () Bool)

(assert (=> b!134270 m!119363))

(assert (=> b!134270 m!119179))

(declare-fun m!119365 () Bool)

(assert (=> b!134270 m!119365))

(assert (=> b!134272 m!119179))

(declare-fun m!119367 () Bool)

(assert (=> b!134272 m!119367))

(assert (=> b!134272 m!119261))

(declare-fun m!119369 () Bool)

(assert (=> b!134272 m!119369))

(assert (=> b!134215 d!32203))

(declare-fun d!32205 () Bool)

(assert (=> d!32205 (= (tail!288 (t!22796 l!3288)) (t!22796 (t!22796 l!3288)))))

(assert (=> b!134215 d!32205))

(declare-fun d!32207 () Bool)

(assert (=> d!32207 (= (tail!288 lt!40468) (t!22796 lt!40468))))

(assert (=> b!134215 d!32207))

(declare-fun d!32209 () Bool)

(declare-fun lt!40508 () Int)

(assert (=> d!32209 (>= lt!40508 0)))

(declare-fun e!77787 () Int)

(assert (=> d!32209 (= lt!40508 e!77787)))

(declare-fun c!28737 () Bool)

(assert (=> d!32209 (= c!28737 ((_ is Nil!2204) lt!40484))))

(assert (=> d!32209 (= (size!2000 lt!40484) lt!40508)))

(declare-fun b!134273 () Bool)

(assert (=> b!134273 (= e!77787 0)))

(declare-fun b!134274 () Bool)

(assert (=> b!134274 (= e!77787 (+ 1 (size!2000 (t!22796 lt!40484))))))

(assert (= (and d!32209 c!28737) b!134273))

(assert (= (and d!32209 (not c!28737)) b!134274))

(declare-fun m!119371 () Bool)

(assert (=> b!134274 m!119371))

(assert (=> b!134203 d!32209))

(assert (=> b!134203 d!32185))

(declare-fun d!32211 () Bool)

(declare-fun lt!40509 () Int)

(assert (=> d!32211 (>= lt!40509 0)))

(declare-fun e!77788 () Int)

(assert (=> d!32211 (= lt!40509 e!77788)))

(declare-fun c!28738 () Bool)

(assert (=> d!32211 (= c!28738 ((_ is Nil!2204) lt!40470))))

(assert (=> d!32211 (= (size!2000 lt!40470) lt!40509)))

(declare-fun b!134275 () Bool)

(assert (=> b!134275 (= e!77788 0)))

(declare-fun b!134276 () Bool)

(assert (=> b!134276 (= e!77788 (+ 1 (size!2000 (t!22796 lt!40470))))))

(assert (= (and d!32211 c!28738) b!134275))

(assert (= (and d!32211 (not c!28738)) b!134276))

(declare-fun m!119373 () Bool)

(assert (=> b!134276 m!119373))

(assert (=> b!134203 d!32211))

(declare-fun d!32213 () Bool)

(assert (=> d!32213 (= (head!539 (t!22796 l!3288)) (h!7601 (t!22796 l!3288)))))

(assert (=> b!134214 d!32213))

(declare-fun d!32215 () Bool)

(assert (=> d!32215 (= (head!539 lt!40468) (h!7601 lt!40468))))

(assert (=> b!134214 d!32215))

(declare-fun d!32217 () Bool)

(declare-fun c!28741 () Bool)

(assert (=> d!32217 (= c!28741 ((_ is Nil!2204) lt!40484))))

(declare-fun e!77791 () (InoxSet B!813))

(assert (=> d!32217 (= (content!312 lt!40484) e!77791)))

(declare-fun b!134281 () Bool)

(assert (=> b!134281 (= e!77791 ((as const (Array B!813 Bool)) false))))

(declare-fun b!134282 () Bool)

(assert (=> b!134282 (= e!77791 ((_ map or) (store ((as const (Array B!813 Bool)) false) (h!7601 lt!40484) true) (content!312 (t!22796 lt!40484))))))

(assert (= (and d!32217 c!28741) b!134281))

(assert (= (and d!32217 (not c!28741)) b!134282))

(declare-fun m!119375 () Bool)

(assert (=> b!134282 m!119375))

(declare-fun m!119377 () Bool)

(assert (=> b!134282 m!119377))

(assert (=> d!32159 d!32217))

(declare-fun d!32219 () Bool)

(declare-fun c!28742 () Bool)

(assert (=> d!32219 (= c!28742 ((_ is Nil!2204) l!3288))))

(declare-fun e!77792 () (InoxSet B!813))

(assert (=> d!32219 (= (content!312 l!3288) e!77792)))

(declare-fun b!134283 () Bool)

(assert (=> b!134283 (= e!77792 ((as const (Array B!813 Bool)) false))))

(declare-fun b!134284 () Bool)

(assert (=> b!134284 (= e!77792 ((_ map or) (store ((as const (Array B!813 Bool)) false) (h!7601 l!3288) true) (content!312 (t!22796 l!3288))))))

(assert (= (and d!32219 c!28742) b!134283))

(assert (= (and d!32219 (not c!28742)) b!134284))

(declare-fun m!119379 () Bool)

(assert (=> b!134284 m!119379))

(assert (=> b!134284 m!119215))

(assert (=> d!32159 d!32219))

(declare-fun d!32221 () Bool)

(declare-fun c!28743 () Bool)

(assert (=> d!32221 (= c!28743 ((_ is Nil!2204) lt!40470))))

(declare-fun e!77793 () (InoxSet B!813))

(assert (=> d!32221 (= (content!312 lt!40470) e!77793)))

(declare-fun b!134285 () Bool)

(assert (=> b!134285 (= e!77793 ((as const (Array B!813 Bool)) false))))

(declare-fun b!134286 () Bool)

(assert (=> b!134286 (= e!77793 ((_ map or) (store ((as const (Array B!813 Bool)) false) (h!7601 lt!40470) true) (content!312 (t!22796 lt!40470))))))

(assert (= (and d!32221 c!28743) b!134285))

(assert (= (and d!32221 (not c!28743)) b!134286))

(declare-fun m!119381 () Bool)

(assert (=> b!134286 m!119381))

(declare-fun m!119383 () Bool)

(assert (=> b!134286 m!119383))

(assert (=> d!32159 d!32221))

(declare-fun e!77796 () Bool)

(declare-fun b!134289 () Bool)

(assert (=> b!134289 (= e!77796 (isPrefix!197 (tail!288 (tail!288 (++!478 (t!22796 l!3288) lt!40470))) (tail!288 (tail!288 lt!40468))))))

(declare-fun b!134288 () Bool)

(declare-fun res!62780 () Bool)

(assert (=> b!134288 (=> (not res!62780) (not e!77796))))

(assert (=> b!134288 (= res!62780 (= (head!539 (tail!288 (++!478 (t!22796 l!3288) lt!40470))) (head!539 (tail!288 lt!40468))))))

(declare-fun d!32223 () Bool)

(declare-fun e!77795 () Bool)

(assert (=> d!32223 e!77795))

(declare-fun res!62781 () Bool)

(assert (=> d!32223 (=> res!62781 e!77795)))

(declare-fun lt!40510 () Bool)

(assert (=> d!32223 (= res!62781 (not lt!40510))))

(declare-fun e!77794 () Bool)

(assert (=> d!32223 (= lt!40510 e!77794)))

(declare-fun res!62779 () Bool)

(assert (=> d!32223 (=> res!62779 e!77794)))

(assert (=> d!32223 (= res!62779 ((_ is Nil!2204) (tail!288 (++!478 (t!22796 l!3288) lt!40470))))))

(assert (=> d!32223 (= (isPrefix!197 (tail!288 (++!478 (t!22796 l!3288) lt!40470)) (tail!288 lt!40468)) lt!40510)))

(declare-fun b!134287 () Bool)

(assert (=> b!134287 (= e!77794 e!77796)))

(declare-fun res!62782 () Bool)

(assert (=> b!134287 (=> (not res!62782) (not e!77796))))

(assert (=> b!134287 (= res!62782 (not ((_ is Nil!2204) (tail!288 lt!40468))))))

(declare-fun b!134290 () Bool)

(assert (=> b!134290 (= e!77795 (>= (size!2000 (tail!288 lt!40468)) (size!2000 (tail!288 (++!478 (t!22796 l!3288) lt!40470)))))))

(assert (= (and d!32223 (not res!62779)) b!134287))

(assert (= (and b!134287 res!62782) b!134288))

(assert (= (and b!134288 res!62780) b!134289))

(assert (= (and d!32223 (not res!62781)) b!134290))

(assert (=> b!134289 m!119177))

(declare-fun m!119385 () Bool)

(assert (=> b!134289 m!119385))

(assert (=> b!134289 m!119179))

(assert (=> b!134289 m!119359))

(assert (=> b!134289 m!119385))

(assert (=> b!134289 m!119359))

(declare-fun m!119387 () Bool)

(assert (=> b!134289 m!119387))

(assert (=> b!134288 m!119177))

(declare-fun m!119389 () Bool)

(assert (=> b!134288 m!119389))

(assert (=> b!134288 m!119179))

(assert (=> b!134288 m!119365))

(assert (=> b!134290 m!119179))

(assert (=> b!134290 m!119367))

(assert (=> b!134290 m!119177))

(declare-fun m!119391 () Bool)

(assert (=> b!134290 m!119391))

(assert (=> b!134167 d!32223))

(declare-fun d!32225 () Bool)

(assert (=> d!32225 (= (tail!288 (++!478 (t!22796 l!3288) lt!40470)) (t!22796 (++!478 (t!22796 l!3288) lt!40470)))))

(assert (=> b!134167 d!32225))

(assert (=> b!134167 d!32207))

(assert (=> b!134216 d!32193))

(declare-fun d!32227 () Bool)

(declare-fun lt!40511 () Int)

(assert (=> d!32227 (>= lt!40511 0)))

(declare-fun e!77797 () Int)

(assert (=> d!32227 (= lt!40511 e!77797)))

(declare-fun c!28744 () Bool)

(assert (=> d!32227 (= c!28744 ((_ is Nil!2204) (t!22796 l!3288)))))

(assert (=> d!32227 (= (size!2000 (t!22796 l!3288)) lt!40511)))

(declare-fun b!134291 () Bool)

(assert (=> b!134291 (= e!77797 0)))

(declare-fun b!134292 () Bool)

(assert (=> b!134292 (= e!77797 (+ 1 (size!2000 (t!22796 (t!22796 l!3288)))))))

(assert (= (and d!32227 c!28744) b!134291))

(assert (= (and d!32227 (not c!28744)) b!134292))

(assert (=> b!134292 m!119313))

(assert (=> b!134216 d!32227))

(declare-fun d!32229 () Bool)

(assert (=> d!32229 (= (head!539 (++!478 (t!22796 l!3288) lt!40470)) (h!7601 (++!478 (t!22796 l!3288) lt!40470)))))

(assert (=> b!134166 d!32229))

(assert (=> b!134166 d!32215))

(declare-fun d!32231 () Bool)

(declare-fun c!28745 () Bool)

(assert (=> d!32231 (= c!28745 ((_ is Nil!2204) lt!40481))))

(declare-fun e!77798 () (InoxSet B!813))

(assert (=> d!32231 (= (content!312 lt!40481) e!77798)))

(declare-fun b!134293 () Bool)

(assert (=> b!134293 (= e!77798 ((as const (Array B!813 Bool)) false))))

(declare-fun b!134294 () Bool)

(assert (=> b!134294 (= e!77798 ((_ map or) (store ((as const (Array B!813 Bool)) false) (h!7601 lt!40481) true) (content!312 (t!22796 lt!40481))))))

(assert (= (and d!32231 c!28745) b!134293))

(assert (= (and d!32231 (not c!28745)) b!134294))

(declare-fun m!119393 () Bool)

(assert (=> b!134294 m!119393))

(declare-fun m!119395 () Bool)

(assert (=> b!134294 m!119395))

(assert (=> d!32151 d!32231))

(declare-fun d!32233 () Bool)

(declare-fun c!28746 () Bool)

(assert (=> d!32233 (= c!28746 ((_ is Nil!2204) (t!22796 l!3288)))))

(declare-fun e!77799 () (InoxSet B!813))

(assert (=> d!32233 (= (content!312 (t!22796 l!3288)) e!77799)))

(declare-fun b!134295 () Bool)

(assert (=> b!134295 (= e!77799 ((as const (Array B!813 Bool)) false))))

(declare-fun b!134296 () Bool)

(assert (=> b!134296 (= e!77799 ((_ map or) (store ((as const (Array B!813 Bool)) false) (h!7601 (t!22796 l!3288)) true) (content!312 (t!22796 (t!22796 l!3288)))))))

(assert (= (and d!32233 c!28746) b!134295))

(assert (= (and d!32233 (not c!28746)) b!134296))

(declare-fun m!119397 () Bool)

(assert (=> b!134296 m!119397))

(assert (=> b!134296 m!119319))

(assert (=> d!32151 d!32233))

(assert (=> d!32151 d!32221))

(declare-fun d!32235 () Bool)

(assert (=> d!32235 (= (head!539 (++!478 l!3288 lt!40470)) (h!7601 (++!478 l!3288 lt!40470)))))

(assert (=> b!134194 d!32235))

(assert (=> b!134194 d!32181))

(declare-fun d!32237 () Bool)

(declare-fun lt!40512 () Int)

(assert (=> d!32237 (>= lt!40512 0)))

(declare-fun e!77800 () Int)

(assert (=> d!32237 (= lt!40512 e!77800)))

(declare-fun c!28747 () Bool)

(assert (=> d!32237 (= c!28747 ((_ is Nil!2204) lt!40481))))

(assert (=> d!32237 (= (size!2000 lt!40481) lt!40512)))

(declare-fun b!134297 () Bool)

(assert (=> b!134297 (= e!77800 0)))

(declare-fun b!134298 () Bool)

(assert (=> b!134298 (= e!77800 (+ 1 (size!2000 (t!22796 lt!40481))))))

(assert (= (and d!32237 c!28747) b!134297))

(assert (= (and d!32237 (not c!28747)) b!134298))

(declare-fun m!119399 () Bool)

(assert (=> b!134298 m!119399))

(assert (=> b!134191 d!32237))

(assert (=> b!134191 d!32227))

(assert (=> b!134191 d!32211))

(assert (=> b!134202 d!32151))

(assert (=> b!134196 d!32183))

(declare-fun d!32239 () Bool)

(declare-fun lt!40513 () Int)

(assert (=> d!32239 (>= lt!40513 0)))

(declare-fun e!77801 () Int)

(assert (=> d!32239 (= lt!40513 e!77801)))

(declare-fun c!28748 () Bool)

(assert (=> d!32239 (= c!28748 ((_ is Nil!2204) (++!478 l!3288 lt!40470)))))

(assert (=> d!32239 (= (size!2000 (++!478 l!3288 lt!40470)) lt!40513)))

(declare-fun b!134299 () Bool)

(assert (=> b!134299 (= e!77801 0)))

(declare-fun b!134300 () Bool)

(assert (=> b!134300 (= e!77801 (+ 1 (size!2000 (t!22796 (++!478 l!3288 lt!40470)))))))

(assert (= (and d!32239 c!28748) b!134299))

(assert (= (and d!32239 (not c!28748)) b!134300))

(declare-fun m!119401 () Bool)

(assert (=> b!134300 m!119401))

(assert (=> b!134196 d!32239))

(declare-fun e!77804 () Bool)

(declare-fun b!134303 () Bool)

(assert (=> b!134303 (= e!77804 (isPrefix!197 (tail!288 (tail!288 (++!478 l!3288 lt!40470))) (tail!288 (tail!288 tot!41))))))

(declare-fun b!134302 () Bool)

(declare-fun res!62784 () Bool)

(assert (=> b!134302 (=> (not res!62784) (not e!77804))))

(assert (=> b!134302 (= res!62784 (= (head!539 (tail!288 (++!478 l!3288 lt!40470))) (head!539 (tail!288 tot!41))))))

(declare-fun d!32241 () Bool)

(declare-fun e!77803 () Bool)

(assert (=> d!32241 e!77803))

(declare-fun res!62785 () Bool)

(assert (=> d!32241 (=> res!62785 e!77803)))

(declare-fun lt!40514 () Bool)

(assert (=> d!32241 (= res!62785 (not lt!40514))))

(declare-fun e!77802 () Bool)

(assert (=> d!32241 (= lt!40514 e!77802)))

(declare-fun res!62783 () Bool)

(assert (=> d!32241 (=> res!62783 e!77802)))

(assert (=> d!32241 (= res!62783 ((_ is Nil!2204) (tail!288 (++!478 l!3288 lt!40470))))))

(assert (=> d!32241 (= (isPrefix!197 (tail!288 (++!478 l!3288 lt!40470)) (tail!288 tot!41)) lt!40514)))

(declare-fun b!134301 () Bool)

(assert (=> b!134301 (= e!77802 e!77804)))

(declare-fun res!62786 () Bool)

(assert (=> b!134301 (=> (not res!62786) (not e!77804))))

(assert (=> b!134301 (= res!62786 (not ((_ is Nil!2204) (tail!288 tot!41))))))

(declare-fun b!134304 () Bool)

(assert (=> b!134304 (= e!77803 (>= (size!2000 (tail!288 tot!41)) (size!2000 (tail!288 (++!478 l!3288 lt!40470)))))))

(assert (= (and d!32241 (not res!62783)) b!134301))

(assert (= (and b!134301 res!62786) b!134302))

(assert (= (and b!134302 res!62784) b!134303))

(assert (= (and d!32241 (not res!62785)) b!134304))

(assert (=> b!134303 m!119219))

(declare-fun m!119403 () Bool)

(assert (=> b!134303 m!119403))

(assert (=> b!134303 m!119175))

(assert (=> b!134303 m!119323))

(assert (=> b!134303 m!119403))

(assert (=> b!134303 m!119323))

(declare-fun m!119405 () Bool)

(assert (=> b!134303 m!119405))

(assert (=> b!134302 m!119219))

(declare-fun m!119407 () Bool)

(assert (=> b!134302 m!119407))

(assert (=> b!134302 m!119175))

(assert (=> b!134302 m!119329))

(assert (=> b!134304 m!119175))

(assert (=> b!134304 m!119331))

(assert (=> b!134304 m!119219))

(declare-fun m!119409 () Bool)

(assert (=> b!134304 m!119409))

(assert (=> b!134195 d!32241))

(declare-fun d!32243 () Bool)

(assert (=> d!32243 (= (tail!288 (++!478 l!3288 lt!40470)) (t!22796 (++!478 l!3288 lt!40470)))))

(assert (=> b!134195 d!32243))

(assert (=> b!134195 d!32155))

(declare-fun b!134305 () Bool)

(declare-fun e!77805 () Bool)

(declare-fun tp!70669 () Bool)

(assert (=> b!134305 (= e!77805 (and tp_is_empty!1457 tp!70669))))

(assert (=> b!134234 (= tp!70664 e!77805)))

(assert (= (and b!134234 ((_ is Cons!2204) (t!22796 (t!22796 l!3288)))) b!134305))

(declare-fun b!134306 () Bool)

(declare-fun e!77806 () Bool)

(declare-fun tp!70670 () Bool)

(assert (=> b!134306 (= e!77806 (and tp_is_empty!1457 tp!70670))))

(assert (=> b!134233 (= tp!70663 e!77806)))

(assert (= (and b!134233 ((_ is Cons!2204) (t!22796 (t!22796 tot!41)))) b!134306))

(check-sat (not b!134260) (not b!134264) tp_is_empty!1457 (not b!134262) (not b!134267) (not b!134290) (not b!134266) (not b!134248) (not b!134298) (not b!134288) (not b!134254) (not b!134251) (not b!134302) (not b!134270) (not b!134274) (not b!134255) (not d!32201) (not b!134284) (not b!134303) (not b!134305) (not b!134282) (not b!134289) (not b!134263) (not b!134250) (not b!134271) (not b!134300) (not b!134258) (not b!134306) (not b!134256) (not b!134294) (not b!134292) (not d!32197) (not b!134304) (not b!134286) (not b!134276) (not d!32187) (not b!134296) (not b!134246) (not b!134272))
(check-sat)
