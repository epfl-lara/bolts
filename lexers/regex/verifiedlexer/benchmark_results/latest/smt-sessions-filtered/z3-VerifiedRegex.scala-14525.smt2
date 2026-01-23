; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!754784 () Bool)

(assert start!754784)

(declare-fun b!8019212 () Bool)

(declare-fun res!3170776 () Bool)

(declare-fun e!4723878 () Bool)

(assert (=> b!8019212 (=> (not res!3170776) (not e!4723878))))

(declare-datatypes ((B!4117 0))(
  ( (B!4118 (val!32448 Int)) )
))
(declare-datatypes ((List!74960 0))(
  ( (Nil!74836) (Cons!74836 (h!81284 B!4117) (t!390703 List!74960)) )
))
(declare-fun p!2009 () List!74960)

(get-info :version)

(assert (=> b!8019212 (= res!3170776 ((_ is Cons!74836) p!2009))))

(declare-fun b!8019213 () Bool)

(declare-fun e!4723877 () Bool)

(assert (=> b!8019213 (= e!4723878 e!4723877)))

(declare-fun res!3170772 () Bool)

(assert (=> b!8019213 (=> (not res!3170772) (not e!4723877))))

(declare-fun lt!2719500 () List!74960)

(declare-fun isPrefix!6783 (List!74960 List!74960) Bool)

(assert (=> b!8019213 (= res!3170772 (isPrefix!6783 (t!390703 p!2009) lt!2719500))))

(declare-fun l!3435 () List!74960)

(declare-fun tail!15921 (List!74960) List!74960)

(assert (=> b!8019213 (= lt!2719500 (tail!15921 l!3435))))

(declare-fun b!8019214 () Bool)

(declare-fun ++!18526 (List!74960 List!74960) List!74960)

(declare-fun head!16394 (List!74960) B!4117)

(declare-fun getSuffix!3948 (List!74960 List!74960) List!74960)

(assert (=> b!8019214 (= e!4723877 (not (isPrefix!6783 (++!18526 p!2009 (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836)) l!3435)))))

(assert (=> b!8019214 (isPrefix!6783 (++!18526 (t!390703 p!2009) (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836)) lt!2719500)))

(declare-datatypes ((Unit!170916 0))(
  ( (Unit!170917) )
))
(declare-fun lt!2719501 () Unit!170916)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1424 (List!74960 List!74960) Unit!170916)

(assert (=> b!8019214 (= lt!2719501 (lemmaAddHeadSuffixToPrefixStillPrefix!1424 (t!390703 p!2009) lt!2719500))))

(declare-fun b!8019215 () Bool)

(declare-fun e!4723879 () Bool)

(declare-fun tp_is_empty!54005 () Bool)

(declare-fun tp!2400226 () Bool)

(assert (=> b!8019215 (= e!4723879 (and tp_is_empty!54005 tp!2400226))))

(declare-fun b!8019216 () Bool)

(declare-fun e!4723876 () Bool)

(declare-fun tp!2400225 () Bool)

(assert (=> b!8019216 (= e!4723876 (and tp_is_empty!54005 tp!2400225))))

(declare-fun b!8019217 () Bool)

(declare-fun res!3170774 () Bool)

(assert (=> b!8019217 (=> (not res!3170774) (not e!4723877))))

(declare-fun size!43627 (List!74960) Int)

(assert (=> b!8019217 (= res!3170774 (< (size!43627 (t!390703 p!2009)) (size!43627 lt!2719500)))))

(declare-fun res!3170773 () Bool)

(assert (=> start!754784 (=> (not res!3170773) (not e!4723878))))

(assert (=> start!754784 (= res!3170773 (isPrefix!6783 p!2009 l!3435))))

(assert (=> start!754784 e!4723878))

(assert (=> start!754784 e!4723876))

(assert (=> start!754784 e!4723879))

(declare-fun b!8019218 () Bool)

(declare-fun res!3170775 () Bool)

(assert (=> b!8019218 (=> (not res!3170775) (not e!4723878))))

(assert (=> b!8019218 (= res!3170775 (< (size!43627 p!2009) (size!43627 l!3435)))))

(assert (= (and start!754784 res!3170773) b!8019218))

(assert (= (and b!8019218 res!3170775) b!8019212))

(assert (= (and b!8019212 res!3170776) b!8019213))

(assert (= (and b!8019213 res!3170772) b!8019217))

(assert (= (and b!8019217 res!3170774) b!8019214))

(assert (= (and start!754784 ((_ is Cons!74836) p!2009)) b!8019216))

(assert (= (and start!754784 ((_ is Cons!74836) l!3435)) b!8019215))

(declare-fun m!8382128 () Bool)

(assert (=> b!8019213 m!8382128))

(declare-fun m!8382130 () Bool)

(assert (=> b!8019213 m!8382130))

(declare-fun m!8382132 () Bool)

(assert (=> b!8019218 m!8382132))

(declare-fun m!8382134 () Bool)

(assert (=> b!8019218 m!8382134))

(declare-fun m!8382136 () Bool)

(assert (=> b!8019217 m!8382136))

(declare-fun m!8382138 () Bool)

(assert (=> b!8019217 m!8382138))

(declare-fun m!8382140 () Bool)

(assert (=> b!8019214 m!8382140))

(declare-fun m!8382142 () Bool)

(assert (=> b!8019214 m!8382142))

(assert (=> b!8019214 m!8382140))

(declare-fun m!8382144 () Bool)

(assert (=> b!8019214 m!8382144))

(declare-fun m!8382146 () Bool)

(assert (=> b!8019214 m!8382146))

(assert (=> b!8019214 m!8382142))

(declare-fun m!8382148 () Bool)

(assert (=> b!8019214 m!8382148))

(declare-fun m!8382150 () Bool)

(assert (=> b!8019214 m!8382150))

(declare-fun m!8382152 () Bool)

(assert (=> b!8019214 m!8382152))

(declare-fun m!8382154 () Bool)

(assert (=> b!8019214 m!8382154))

(assert (=> b!8019214 m!8382154))

(declare-fun m!8382156 () Bool)

(assert (=> b!8019214 m!8382156))

(assert (=> b!8019214 m!8382150))

(declare-fun m!8382158 () Bool)

(assert (=> start!754784 m!8382158))

(check-sat (not b!8019216) (not start!754784) (not b!8019213) (not b!8019218) tp_is_empty!54005 (not b!8019215) (not b!8019217) (not b!8019214))
(check-sat)
(get-model)

(declare-fun d!2391062 () Bool)

(declare-fun lt!2719508 () Int)

(assert (=> d!2391062 (>= lt!2719508 0)))

(declare-fun e!4723886 () Int)

(assert (=> d!2391062 (= lt!2719508 e!4723886)))

(declare-fun c!1471805 () Bool)

(assert (=> d!2391062 (= c!1471805 ((_ is Nil!74836) (t!390703 p!2009)))))

(assert (=> d!2391062 (= (size!43627 (t!390703 p!2009)) lt!2719508)))

(declare-fun b!8019231 () Bool)

(assert (=> b!8019231 (= e!4723886 0)))

(declare-fun b!8019232 () Bool)

(assert (=> b!8019232 (= e!4723886 (+ 1 (size!43627 (t!390703 (t!390703 p!2009)))))))

(assert (= (and d!2391062 c!1471805) b!8019231))

(assert (= (and d!2391062 (not c!1471805)) b!8019232))

(declare-fun m!8382164 () Bool)

(assert (=> b!8019232 m!8382164))

(assert (=> b!8019217 d!2391062))

(declare-fun d!2391070 () Bool)

(declare-fun lt!2719509 () Int)

(assert (=> d!2391070 (>= lt!2719509 0)))

(declare-fun e!4723887 () Int)

(assert (=> d!2391070 (= lt!2719509 e!4723887)))

(declare-fun c!1471806 () Bool)

(assert (=> d!2391070 (= c!1471806 ((_ is Nil!74836) lt!2719500))))

(assert (=> d!2391070 (= (size!43627 lt!2719500) lt!2719509)))

(declare-fun b!8019233 () Bool)

(assert (=> b!8019233 (= e!4723887 0)))

(declare-fun b!8019234 () Bool)

(assert (=> b!8019234 (= e!4723887 (+ 1 (size!43627 (t!390703 lt!2719500))))))

(assert (= (and d!2391070 c!1471806) b!8019233))

(assert (= (and d!2391070 (not c!1471806)) b!8019234))

(declare-fun m!8382166 () Bool)

(assert (=> b!8019234 m!8382166))

(assert (=> b!8019217 d!2391070))

(declare-fun b!8019252 () Bool)

(declare-fun e!4723899 () Bool)

(assert (=> b!8019252 (= e!4723899 (>= (size!43627 l!3435) (size!43627 p!2009)))))

(declare-fun d!2391072 () Bool)

(assert (=> d!2391072 e!4723899))

(declare-fun res!3170785 () Bool)

(assert (=> d!2391072 (=> res!3170785 e!4723899)))

(declare-fun lt!2719515 () Bool)

(assert (=> d!2391072 (= res!3170785 (not lt!2719515))))

(declare-fun e!4723898 () Bool)

(assert (=> d!2391072 (= lt!2719515 e!4723898)))

(declare-fun res!3170788 () Bool)

(assert (=> d!2391072 (=> res!3170788 e!4723898)))

(assert (=> d!2391072 (= res!3170788 ((_ is Nil!74836) p!2009))))

(assert (=> d!2391072 (= (isPrefix!6783 p!2009 l!3435) lt!2719515)))

(declare-fun b!8019250 () Bool)

(declare-fun res!3170786 () Bool)

(declare-fun e!4723897 () Bool)

(assert (=> b!8019250 (=> (not res!3170786) (not e!4723897))))

(assert (=> b!8019250 (= res!3170786 (= (head!16394 p!2009) (head!16394 l!3435)))))

(declare-fun b!8019251 () Bool)

(assert (=> b!8019251 (= e!4723897 (isPrefix!6783 (tail!15921 p!2009) (tail!15921 l!3435)))))

(declare-fun b!8019249 () Bool)

(assert (=> b!8019249 (= e!4723898 e!4723897)))

(declare-fun res!3170787 () Bool)

(assert (=> b!8019249 (=> (not res!3170787) (not e!4723897))))

(assert (=> b!8019249 (= res!3170787 (not ((_ is Nil!74836) l!3435)))))

(assert (= (and d!2391072 (not res!3170788)) b!8019249))

(assert (= (and b!8019249 res!3170787) b!8019250))

(assert (= (and b!8019250 res!3170786) b!8019251))

(assert (= (and d!2391072 (not res!3170785)) b!8019252))

(assert (=> b!8019252 m!8382134))

(assert (=> b!8019252 m!8382132))

(declare-fun m!8382172 () Bool)

(assert (=> b!8019250 m!8382172))

(declare-fun m!8382174 () Bool)

(assert (=> b!8019250 m!8382174))

(declare-fun m!8382176 () Bool)

(assert (=> b!8019251 m!8382176))

(assert (=> b!8019251 m!8382130))

(assert (=> b!8019251 m!8382176))

(assert (=> b!8019251 m!8382130))

(declare-fun m!8382178 () Bool)

(assert (=> b!8019251 m!8382178))

(assert (=> start!754784 d!2391072))

(declare-fun d!2391078 () Bool)

(assert (=> d!2391078 (= (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) (h!81284 (getSuffix!3948 lt!2719500 (t!390703 p!2009))))))

(assert (=> b!8019214 d!2391078))

(declare-fun d!2391080 () Bool)

(assert (=> d!2391080 (isPrefix!6783 (++!18526 (t!390703 p!2009) (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836)) lt!2719500)))

(declare-fun lt!2719521 () Unit!170916)

(declare-fun choose!60434 (List!74960 List!74960) Unit!170916)

(assert (=> d!2391080 (= lt!2719521 (choose!60434 (t!390703 p!2009) lt!2719500))))

(assert (=> d!2391080 (isPrefix!6783 (t!390703 p!2009) lt!2719500)))

(assert (=> d!2391080 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1424 (t!390703 p!2009) lt!2719500) lt!2719521)))

(declare-fun bs!1971137 () Bool)

(assert (= bs!1971137 d!2391080))

(declare-fun m!8382182 () Bool)

(assert (=> bs!1971137 m!8382182))

(assert (=> bs!1971137 m!8382154))

(assert (=> bs!1971137 m!8382140))

(assert (=> bs!1971137 m!8382154))

(assert (=> bs!1971137 m!8382156))

(assert (=> bs!1971137 m!8382128))

(assert (=> bs!1971137 m!8382140))

(assert (=> bs!1971137 m!8382144))

(assert (=> b!8019214 d!2391080))

(declare-fun d!2391084 () Bool)

(assert (=> d!2391084 (= (head!16394 (getSuffix!3948 l!3435 p!2009)) (h!81284 (getSuffix!3948 l!3435 p!2009)))))

(assert (=> b!8019214 d!2391084))

(declare-fun b!8019268 () Bool)

(declare-fun e!4723908 () Bool)

(assert (=> b!8019268 (= e!4723908 (>= (size!43627 l!3435) (size!43627 (++!18526 p!2009 (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836)))))))

(declare-fun d!2391086 () Bool)

(assert (=> d!2391086 e!4723908))

(declare-fun res!3170795 () Bool)

(assert (=> d!2391086 (=> res!3170795 e!4723908)))

(declare-fun lt!2719522 () Bool)

(assert (=> d!2391086 (= res!3170795 (not lt!2719522))))

(declare-fun e!4723907 () Bool)

(assert (=> d!2391086 (= lt!2719522 e!4723907)))

(declare-fun res!3170798 () Bool)

(assert (=> d!2391086 (=> res!3170798 e!4723907)))

(assert (=> d!2391086 (= res!3170798 ((_ is Nil!74836) (++!18526 p!2009 (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836))))))

(assert (=> d!2391086 (= (isPrefix!6783 (++!18526 p!2009 (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836)) l!3435) lt!2719522)))

(declare-fun b!8019266 () Bool)

(declare-fun res!3170796 () Bool)

(declare-fun e!4723906 () Bool)

(assert (=> b!8019266 (=> (not res!3170796) (not e!4723906))))

(assert (=> b!8019266 (= res!3170796 (= (head!16394 (++!18526 p!2009 (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836))) (head!16394 l!3435)))))

(declare-fun b!8019267 () Bool)

(assert (=> b!8019267 (= e!4723906 (isPrefix!6783 (tail!15921 (++!18526 p!2009 (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836))) (tail!15921 l!3435)))))

(declare-fun b!8019265 () Bool)

(assert (=> b!8019265 (= e!4723907 e!4723906)))

(declare-fun res!3170797 () Bool)

(assert (=> b!8019265 (=> (not res!3170797) (not e!4723906))))

(assert (=> b!8019265 (= res!3170797 (not ((_ is Nil!74836) l!3435)))))

(assert (= (and d!2391086 (not res!3170798)) b!8019265))

(assert (= (and b!8019265 res!3170797) b!8019266))

(assert (= (and b!8019266 res!3170796) b!8019267))

(assert (= (and d!2391086 (not res!3170795)) b!8019268))

(assert (=> b!8019268 m!8382134))

(assert (=> b!8019268 m!8382150))

(declare-fun m!8382194 () Bool)

(assert (=> b!8019268 m!8382194))

(assert (=> b!8019266 m!8382150))

(declare-fun m!8382196 () Bool)

(assert (=> b!8019266 m!8382196))

(assert (=> b!8019266 m!8382174))

(assert (=> b!8019267 m!8382150))

(declare-fun m!8382198 () Bool)

(assert (=> b!8019267 m!8382198))

(assert (=> b!8019267 m!8382130))

(assert (=> b!8019267 m!8382198))

(assert (=> b!8019267 m!8382130))

(declare-fun m!8382200 () Bool)

(assert (=> b!8019267 m!8382200))

(assert (=> b!8019214 d!2391086))

(declare-fun b!8019279 () Bool)

(declare-fun res!3170804 () Bool)

(declare-fun e!4723913 () Bool)

(assert (=> b!8019279 (=> (not res!3170804) (not e!4723913))))

(declare-fun lt!2719528 () List!74960)

(assert (=> b!8019279 (= res!3170804 (= (size!43627 lt!2719528) (+ (size!43627 (t!390703 p!2009)) (size!43627 (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836)))))))

(declare-fun b!8019277 () Bool)

(declare-fun e!4723914 () List!74960)

(assert (=> b!8019277 (= e!4723914 (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836))))

(declare-fun d!2391088 () Bool)

(assert (=> d!2391088 e!4723913))

(declare-fun res!3170803 () Bool)

(assert (=> d!2391088 (=> (not res!3170803) (not e!4723913))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15926 (List!74960) (InoxSet B!4117))

(assert (=> d!2391088 (= res!3170803 (= (content!15926 lt!2719528) ((_ map or) (content!15926 (t!390703 p!2009)) (content!15926 (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836)))))))

(assert (=> d!2391088 (= lt!2719528 e!4723914)))

(declare-fun c!1471815 () Bool)

(assert (=> d!2391088 (= c!1471815 ((_ is Nil!74836) (t!390703 p!2009)))))

(assert (=> d!2391088 (= (++!18526 (t!390703 p!2009) (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836)) lt!2719528)))

(declare-fun b!8019278 () Bool)

(assert (=> b!8019278 (= e!4723914 (Cons!74836 (h!81284 (t!390703 p!2009)) (++!18526 (t!390703 (t!390703 p!2009)) (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836))))))

(declare-fun b!8019280 () Bool)

(assert (=> b!8019280 (= e!4723913 (or (not (= (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836) Nil!74836)) (= lt!2719528 (t!390703 p!2009))))))

(assert (= (and d!2391088 c!1471815) b!8019277))

(assert (= (and d!2391088 (not c!1471815)) b!8019278))

(assert (= (and d!2391088 res!3170803) b!8019279))

(assert (= (and b!8019279 res!3170804) b!8019280))

(declare-fun m!8382204 () Bool)

(assert (=> b!8019279 m!8382204))

(assert (=> b!8019279 m!8382136))

(declare-fun m!8382206 () Bool)

(assert (=> b!8019279 m!8382206))

(declare-fun m!8382208 () Bool)

(assert (=> d!2391088 m!8382208))

(declare-fun m!8382210 () Bool)

(assert (=> d!2391088 m!8382210))

(declare-fun m!8382212 () Bool)

(assert (=> d!2391088 m!8382212))

(declare-fun m!8382214 () Bool)

(assert (=> b!8019278 m!8382214))

(assert (=> b!8019214 d!2391088))

(declare-fun b!8019292 () Bool)

(declare-fun e!4723923 () Bool)

(assert (=> b!8019292 (= e!4723923 (>= (size!43627 lt!2719500) (size!43627 (++!18526 (t!390703 p!2009) (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836)))))))

(declare-fun d!2391092 () Bool)

(assert (=> d!2391092 e!4723923))

(declare-fun res!3170813 () Bool)

(assert (=> d!2391092 (=> res!3170813 e!4723923)))

(declare-fun lt!2719531 () Bool)

(assert (=> d!2391092 (= res!3170813 (not lt!2719531))))

(declare-fun e!4723922 () Bool)

(assert (=> d!2391092 (= lt!2719531 e!4723922)))

(declare-fun res!3170816 () Bool)

(assert (=> d!2391092 (=> res!3170816 e!4723922)))

(assert (=> d!2391092 (= res!3170816 ((_ is Nil!74836) (++!18526 (t!390703 p!2009) (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836))))))

(assert (=> d!2391092 (= (isPrefix!6783 (++!18526 (t!390703 p!2009) (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836)) lt!2719500) lt!2719531)))

(declare-fun b!8019290 () Bool)

(declare-fun res!3170814 () Bool)

(declare-fun e!4723921 () Bool)

(assert (=> b!8019290 (=> (not res!3170814) (not e!4723921))))

(assert (=> b!8019290 (= res!3170814 (= (head!16394 (++!18526 (t!390703 p!2009) (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836))) (head!16394 lt!2719500)))))

(declare-fun b!8019291 () Bool)

(assert (=> b!8019291 (= e!4723921 (isPrefix!6783 (tail!15921 (++!18526 (t!390703 p!2009) (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836))) (tail!15921 lt!2719500)))))

(declare-fun b!8019289 () Bool)

(assert (=> b!8019289 (= e!4723922 e!4723921)))

(declare-fun res!3170815 () Bool)

(assert (=> b!8019289 (=> (not res!3170815) (not e!4723921))))

(assert (=> b!8019289 (= res!3170815 (not ((_ is Nil!74836) lt!2719500)))))

(assert (= (and d!2391092 (not res!3170816)) b!8019289))

(assert (= (and b!8019289 res!3170815) b!8019290))

(assert (= (and b!8019290 res!3170814) b!8019291))

(assert (= (and d!2391092 (not res!3170813)) b!8019292))

(assert (=> b!8019292 m!8382138))

(assert (=> b!8019292 m!8382154))

(declare-fun m!8382216 () Bool)

(assert (=> b!8019292 m!8382216))

(assert (=> b!8019290 m!8382154))

(declare-fun m!8382218 () Bool)

(assert (=> b!8019290 m!8382218))

(declare-fun m!8382220 () Bool)

(assert (=> b!8019290 m!8382220))

(assert (=> b!8019291 m!8382154))

(declare-fun m!8382222 () Bool)

(assert (=> b!8019291 m!8382222))

(declare-fun m!8382224 () Bool)

(assert (=> b!8019291 m!8382224))

(assert (=> b!8019291 m!8382222))

(assert (=> b!8019291 m!8382224))

(declare-fun m!8382226 () Bool)

(assert (=> b!8019291 m!8382226))

(assert (=> b!8019214 d!2391092))

(declare-fun d!2391094 () Bool)

(declare-fun lt!2719538 () List!74960)

(assert (=> d!2391094 (= (++!18526 p!2009 lt!2719538) l!3435)))

(declare-fun e!4723936 () List!74960)

(assert (=> d!2391094 (= lt!2719538 e!4723936)))

(declare-fun c!1471820 () Bool)

(assert (=> d!2391094 (= c!1471820 ((_ is Cons!74836) p!2009))))

(assert (=> d!2391094 (>= (size!43627 l!3435) (size!43627 p!2009))))

(assert (=> d!2391094 (= (getSuffix!3948 l!3435 p!2009) lt!2719538)))

(declare-fun b!8019311 () Bool)

(assert (=> b!8019311 (= e!4723936 (getSuffix!3948 (tail!15921 l!3435) (t!390703 p!2009)))))

(declare-fun b!8019312 () Bool)

(assert (=> b!8019312 (= e!4723936 l!3435)))

(assert (= (and d!2391094 c!1471820) b!8019311))

(assert (= (and d!2391094 (not c!1471820)) b!8019312))

(declare-fun m!8382266 () Bool)

(assert (=> d!2391094 m!8382266))

(assert (=> d!2391094 m!8382134))

(assert (=> d!2391094 m!8382132))

(assert (=> b!8019311 m!8382130))

(assert (=> b!8019311 m!8382130))

(declare-fun m!8382270 () Bool)

(assert (=> b!8019311 m!8382270))

(assert (=> b!8019214 d!2391094))

(declare-fun b!8019319 () Bool)

(declare-fun res!3170832 () Bool)

(declare-fun e!4723939 () Bool)

(assert (=> b!8019319 (=> (not res!3170832) (not e!4723939))))

(declare-fun lt!2719540 () List!74960)

(assert (=> b!8019319 (= res!3170832 (= (size!43627 lt!2719540) (+ (size!43627 p!2009) (size!43627 (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836)))))))

(declare-fun b!8019317 () Bool)

(declare-fun e!4723940 () List!74960)

(assert (=> b!8019317 (= e!4723940 (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836))))

(declare-fun d!2391106 () Bool)

(assert (=> d!2391106 e!4723939))

(declare-fun res!3170831 () Bool)

(assert (=> d!2391106 (=> (not res!3170831) (not e!4723939))))

(assert (=> d!2391106 (= res!3170831 (= (content!15926 lt!2719540) ((_ map or) (content!15926 p!2009) (content!15926 (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836)))))))

(assert (=> d!2391106 (= lt!2719540 e!4723940)))

(declare-fun c!1471821 () Bool)

(assert (=> d!2391106 (= c!1471821 ((_ is Nil!74836) p!2009))))

(assert (=> d!2391106 (= (++!18526 p!2009 (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836)) lt!2719540)))

(declare-fun b!8019318 () Bool)

(assert (=> b!8019318 (= e!4723940 (Cons!74836 (h!81284 p!2009) (++!18526 (t!390703 p!2009) (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836))))))

(declare-fun b!8019320 () Bool)

(assert (=> b!8019320 (= e!4723939 (or (not (= (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836) Nil!74836)) (= lt!2719540 p!2009)))))

(assert (= (and d!2391106 c!1471821) b!8019317))

(assert (= (and d!2391106 (not c!1471821)) b!8019318))

(assert (= (and d!2391106 res!3170831) b!8019319))

(assert (= (and b!8019319 res!3170832) b!8019320))

(declare-fun m!8382276 () Bool)

(assert (=> b!8019319 m!8382276))

(assert (=> b!8019319 m!8382132))

(declare-fun m!8382278 () Bool)

(assert (=> b!8019319 m!8382278))

(declare-fun m!8382280 () Bool)

(assert (=> d!2391106 m!8382280))

(declare-fun m!8382282 () Bool)

(assert (=> d!2391106 m!8382282))

(declare-fun m!8382284 () Bool)

(assert (=> d!2391106 m!8382284))

(declare-fun m!8382286 () Bool)

(assert (=> b!8019318 m!8382286))

(assert (=> b!8019214 d!2391106))

(declare-fun d!2391112 () Bool)

(declare-fun lt!2719542 () List!74960)

(assert (=> d!2391112 (= (++!18526 (t!390703 p!2009) lt!2719542) lt!2719500)))

(declare-fun e!4723944 () List!74960)

(assert (=> d!2391112 (= lt!2719542 e!4723944)))

(declare-fun c!1471822 () Bool)

(assert (=> d!2391112 (= c!1471822 ((_ is Cons!74836) (t!390703 p!2009)))))

(assert (=> d!2391112 (>= (size!43627 lt!2719500) (size!43627 (t!390703 p!2009)))))

(assert (=> d!2391112 (= (getSuffix!3948 lt!2719500 (t!390703 p!2009)) lt!2719542)))

(declare-fun b!8019325 () Bool)

(assert (=> b!8019325 (= e!4723944 (getSuffix!3948 (tail!15921 lt!2719500) (t!390703 (t!390703 p!2009))))))

(declare-fun b!8019326 () Bool)

(assert (=> b!8019326 (= e!4723944 lt!2719500)))

(assert (= (and d!2391112 c!1471822) b!8019325))

(assert (= (and d!2391112 (not c!1471822)) b!8019326))

(declare-fun m!8382290 () Bool)

(assert (=> d!2391112 m!8382290))

(assert (=> d!2391112 m!8382138))

(assert (=> d!2391112 m!8382136))

(assert (=> b!8019325 m!8382224))

(assert (=> b!8019325 m!8382224))

(declare-fun m!8382296 () Bool)

(assert (=> b!8019325 m!8382296))

(assert (=> b!8019214 d!2391112))

(declare-fun b!8019332 () Bool)

(declare-fun e!4723948 () Bool)

(assert (=> b!8019332 (= e!4723948 (>= (size!43627 lt!2719500) (size!43627 (t!390703 p!2009))))))

(declare-fun d!2391116 () Bool)

(assert (=> d!2391116 e!4723948))

(declare-fun res!3170837 () Bool)

(assert (=> d!2391116 (=> res!3170837 e!4723948)))

(declare-fun lt!2719544 () Bool)

(assert (=> d!2391116 (= res!3170837 (not lt!2719544))))

(declare-fun e!4723947 () Bool)

(assert (=> d!2391116 (= lt!2719544 e!4723947)))

(declare-fun res!3170840 () Bool)

(assert (=> d!2391116 (=> res!3170840 e!4723947)))

(assert (=> d!2391116 (= res!3170840 ((_ is Nil!74836) (t!390703 p!2009)))))

(assert (=> d!2391116 (= (isPrefix!6783 (t!390703 p!2009) lt!2719500) lt!2719544)))

(declare-fun b!8019330 () Bool)

(declare-fun res!3170838 () Bool)

(declare-fun e!4723946 () Bool)

(assert (=> b!8019330 (=> (not res!3170838) (not e!4723946))))

(assert (=> b!8019330 (= res!3170838 (= (head!16394 (t!390703 p!2009)) (head!16394 lt!2719500)))))

(declare-fun b!8019331 () Bool)

(assert (=> b!8019331 (= e!4723946 (isPrefix!6783 (tail!15921 (t!390703 p!2009)) (tail!15921 lt!2719500)))))

(declare-fun b!8019329 () Bool)

(assert (=> b!8019329 (= e!4723947 e!4723946)))

(declare-fun res!3170839 () Bool)

(assert (=> b!8019329 (=> (not res!3170839) (not e!4723946))))

(assert (=> b!8019329 (= res!3170839 (not ((_ is Nil!74836) lt!2719500)))))

(assert (= (and d!2391116 (not res!3170840)) b!8019329))

(assert (= (and b!8019329 res!3170839) b!8019330))

(assert (= (and b!8019330 res!3170838) b!8019331))

(assert (= (and d!2391116 (not res!3170837)) b!8019332))

(assert (=> b!8019332 m!8382138))

(assert (=> b!8019332 m!8382136))

(declare-fun m!8382300 () Bool)

(assert (=> b!8019330 m!8382300))

(assert (=> b!8019330 m!8382220))

(declare-fun m!8382302 () Bool)

(assert (=> b!8019331 m!8382302))

(assert (=> b!8019331 m!8382224))

(assert (=> b!8019331 m!8382302))

(assert (=> b!8019331 m!8382224))

(declare-fun m!8382304 () Bool)

(assert (=> b!8019331 m!8382304))

(assert (=> b!8019213 d!2391116))

(declare-fun d!2391120 () Bool)

(assert (=> d!2391120 (= (tail!15921 l!3435) (t!390703 l!3435))))

(assert (=> b!8019213 d!2391120))

(declare-fun d!2391122 () Bool)

(declare-fun lt!2719546 () Int)

(assert (=> d!2391122 (>= lt!2719546 0)))

(declare-fun e!4723954 () Int)

(assert (=> d!2391122 (= lt!2719546 e!4723954)))

(declare-fun c!1471825 () Bool)

(assert (=> d!2391122 (= c!1471825 ((_ is Nil!74836) p!2009))))

(assert (=> d!2391122 (= (size!43627 p!2009) lt!2719546)))

(declare-fun b!8019341 () Bool)

(assert (=> b!8019341 (= e!4723954 0)))

(declare-fun b!8019342 () Bool)

(assert (=> b!8019342 (= e!4723954 (+ 1 (size!43627 (t!390703 p!2009))))))

(assert (= (and d!2391122 c!1471825) b!8019341))

(assert (= (and d!2391122 (not c!1471825)) b!8019342))

(assert (=> b!8019342 m!8382136))

(assert (=> b!8019218 d!2391122))

(declare-fun d!2391124 () Bool)

(declare-fun lt!2719547 () Int)

(assert (=> d!2391124 (>= lt!2719547 0)))

(declare-fun e!4723955 () Int)

(assert (=> d!2391124 (= lt!2719547 e!4723955)))

(declare-fun c!1471826 () Bool)

(assert (=> d!2391124 (= c!1471826 ((_ is Nil!74836) l!3435))))

(assert (=> d!2391124 (= (size!43627 l!3435) lt!2719547)))

(declare-fun b!8019343 () Bool)

(assert (=> b!8019343 (= e!4723955 0)))

(declare-fun b!8019344 () Bool)

(assert (=> b!8019344 (= e!4723955 (+ 1 (size!43627 (t!390703 l!3435))))))

(assert (= (and d!2391124 c!1471826) b!8019343))

(assert (= (and d!2391124 (not c!1471826)) b!8019344))

(declare-fun m!8382306 () Bool)

(assert (=> b!8019344 m!8382306))

(assert (=> b!8019218 d!2391124))

(declare-fun b!8019349 () Bool)

(declare-fun e!4723958 () Bool)

(declare-fun tp!2400233 () Bool)

(assert (=> b!8019349 (= e!4723958 (and tp_is_empty!54005 tp!2400233))))

(assert (=> b!8019216 (= tp!2400225 e!4723958)))

(assert (= (and b!8019216 ((_ is Cons!74836) (t!390703 p!2009))) b!8019349))

(declare-fun b!8019350 () Bool)

(declare-fun e!4723959 () Bool)

(declare-fun tp!2400234 () Bool)

(assert (=> b!8019350 (= e!4723959 (and tp_is_empty!54005 tp!2400234))))

(assert (=> b!8019215 (= tp!2400226 e!4723959)))

(assert (= (and b!8019215 ((_ is Cons!74836) (t!390703 l!3435))) b!8019350))

(check-sat (not b!8019319) (not b!8019330) (not b!8019279) (not b!8019292) (not b!8019267) (not b!8019318) (not b!8019251) (not b!8019268) (not b!8019350) (not b!8019342) (not b!8019290) (not b!8019325) (not b!8019331) (not b!8019332) (not b!8019344) tp_is_empty!54005 (not b!8019252) (not b!8019250) (not b!8019291) (not b!8019349) (not b!8019278) (not d!2391112) (not d!2391088) (not d!2391094) (not b!8019266) (not d!2391080) (not b!8019311) (not b!8019232) (not b!8019234) (not d!2391106))
(check-sat)
(get-model)

(assert (=> b!8019332 d!2391070))

(assert (=> b!8019332 d!2391062))

(declare-fun d!2391126 () Bool)

(declare-fun lt!2719548 () Int)

(assert (=> d!2391126 (>= lt!2719548 0)))

(declare-fun e!4723960 () Int)

(assert (=> d!2391126 (= lt!2719548 e!4723960)))

(declare-fun c!1471827 () Bool)

(assert (=> d!2391126 (= c!1471827 ((_ is Nil!74836) lt!2719528))))

(assert (=> d!2391126 (= (size!43627 lt!2719528) lt!2719548)))

(declare-fun b!8019351 () Bool)

(assert (=> b!8019351 (= e!4723960 0)))

(declare-fun b!8019352 () Bool)

(assert (=> b!8019352 (= e!4723960 (+ 1 (size!43627 (t!390703 lt!2719528))))))

(assert (= (and d!2391126 c!1471827) b!8019351))

(assert (= (and d!2391126 (not c!1471827)) b!8019352))

(declare-fun m!8382308 () Bool)

(assert (=> b!8019352 m!8382308))

(assert (=> b!8019279 d!2391126))

(assert (=> b!8019279 d!2391062))

(declare-fun d!2391128 () Bool)

(declare-fun lt!2719549 () Int)

(assert (=> d!2391128 (>= lt!2719549 0)))

(declare-fun e!4723961 () Int)

(assert (=> d!2391128 (= lt!2719549 e!4723961)))

(declare-fun c!1471828 () Bool)

(assert (=> d!2391128 (= c!1471828 ((_ is Nil!74836) (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836)))))

(assert (=> d!2391128 (= (size!43627 (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836)) lt!2719549)))

(declare-fun b!8019353 () Bool)

(assert (=> b!8019353 (= e!4723961 0)))

(declare-fun b!8019354 () Bool)

(assert (=> b!8019354 (= e!4723961 (+ 1 (size!43627 (t!390703 (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836)))))))

(assert (= (and d!2391128 c!1471828) b!8019353))

(assert (= (and d!2391128 (not c!1471828)) b!8019354))

(declare-fun m!8382310 () Bool)

(assert (=> b!8019354 m!8382310))

(assert (=> b!8019279 d!2391128))

(declare-fun b!8019358 () Bool)

(declare-fun e!4723964 () Bool)

(assert (=> b!8019358 (= e!4723964 (>= (size!43627 (tail!15921 lt!2719500)) (size!43627 (tail!15921 (t!390703 p!2009)))))))

(declare-fun d!2391130 () Bool)

(assert (=> d!2391130 e!4723964))

(declare-fun res!3170841 () Bool)

(assert (=> d!2391130 (=> res!3170841 e!4723964)))

(declare-fun lt!2719550 () Bool)

(assert (=> d!2391130 (= res!3170841 (not lt!2719550))))

(declare-fun e!4723963 () Bool)

(assert (=> d!2391130 (= lt!2719550 e!4723963)))

(declare-fun res!3170844 () Bool)

(assert (=> d!2391130 (=> res!3170844 e!4723963)))

(assert (=> d!2391130 (= res!3170844 ((_ is Nil!74836) (tail!15921 (t!390703 p!2009))))))

(assert (=> d!2391130 (= (isPrefix!6783 (tail!15921 (t!390703 p!2009)) (tail!15921 lt!2719500)) lt!2719550)))

(declare-fun b!8019356 () Bool)

(declare-fun res!3170842 () Bool)

(declare-fun e!4723962 () Bool)

(assert (=> b!8019356 (=> (not res!3170842) (not e!4723962))))

(assert (=> b!8019356 (= res!3170842 (= (head!16394 (tail!15921 (t!390703 p!2009))) (head!16394 (tail!15921 lt!2719500))))))

(declare-fun b!8019357 () Bool)

(assert (=> b!8019357 (= e!4723962 (isPrefix!6783 (tail!15921 (tail!15921 (t!390703 p!2009))) (tail!15921 (tail!15921 lt!2719500))))))

(declare-fun b!8019355 () Bool)

(assert (=> b!8019355 (= e!4723963 e!4723962)))

(declare-fun res!3170843 () Bool)

(assert (=> b!8019355 (=> (not res!3170843) (not e!4723962))))

(assert (=> b!8019355 (= res!3170843 (not ((_ is Nil!74836) (tail!15921 lt!2719500))))))

(assert (= (and d!2391130 (not res!3170844)) b!8019355))

(assert (= (and b!8019355 res!3170843) b!8019356))

(assert (= (and b!8019356 res!3170842) b!8019357))

(assert (= (and d!2391130 (not res!3170841)) b!8019358))

(assert (=> b!8019358 m!8382224))

(declare-fun m!8382312 () Bool)

(assert (=> b!8019358 m!8382312))

(assert (=> b!8019358 m!8382302))

(declare-fun m!8382314 () Bool)

(assert (=> b!8019358 m!8382314))

(assert (=> b!8019356 m!8382302))

(declare-fun m!8382316 () Bool)

(assert (=> b!8019356 m!8382316))

(assert (=> b!8019356 m!8382224))

(declare-fun m!8382318 () Bool)

(assert (=> b!8019356 m!8382318))

(assert (=> b!8019357 m!8382302))

(declare-fun m!8382320 () Bool)

(assert (=> b!8019357 m!8382320))

(assert (=> b!8019357 m!8382224))

(declare-fun m!8382322 () Bool)

(assert (=> b!8019357 m!8382322))

(assert (=> b!8019357 m!8382320))

(assert (=> b!8019357 m!8382322))

(declare-fun m!8382324 () Bool)

(assert (=> b!8019357 m!8382324))

(assert (=> b!8019331 d!2391130))

(declare-fun d!2391132 () Bool)

(assert (=> d!2391132 (= (tail!15921 (t!390703 p!2009)) (t!390703 (t!390703 p!2009)))))

(assert (=> b!8019331 d!2391132))

(declare-fun d!2391134 () Bool)

(assert (=> d!2391134 (= (tail!15921 lt!2719500) (t!390703 lt!2719500))))

(assert (=> b!8019331 d!2391134))

(assert (=> d!2391080 d!2391092))

(assert (=> d!2391080 d!2391078))

(assert (=> d!2391080 d!2391112))

(assert (=> d!2391080 d!2391116))

(declare-fun d!2391136 () Bool)

(assert (=> d!2391136 (isPrefix!6783 (++!18526 (t!390703 p!2009) (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836)) lt!2719500)))

(assert (=> d!2391136 true))

(declare-fun _$65!2039 () Unit!170916)

(assert (=> d!2391136 (= (choose!60434 (t!390703 p!2009) lt!2719500) _$65!2039)))

(declare-fun bs!1971139 () Bool)

(assert (= bs!1971139 d!2391136))

(assert (=> bs!1971139 m!8382140))

(assert (=> bs!1971139 m!8382140))

(assert (=> bs!1971139 m!8382144))

(assert (=> bs!1971139 m!8382154))

(assert (=> bs!1971139 m!8382154))

(assert (=> bs!1971139 m!8382156))

(assert (=> d!2391080 d!2391136))

(assert (=> d!2391080 d!2391088))

(declare-fun b!8019361 () Bool)

(declare-fun res!3170846 () Bool)

(declare-fun e!4723965 () Bool)

(assert (=> b!8019361 (=> (not res!3170846) (not e!4723965))))

(declare-fun lt!2719551 () List!74960)

(assert (=> b!8019361 (= res!3170846 (= (size!43627 lt!2719551) (+ (size!43627 (t!390703 (t!390703 p!2009))) (size!43627 (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836)))))))

(declare-fun b!8019359 () Bool)

(declare-fun e!4723966 () List!74960)

(assert (=> b!8019359 (= e!4723966 (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836))))

(declare-fun d!2391138 () Bool)

(assert (=> d!2391138 e!4723965))

(declare-fun res!3170845 () Bool)

(assert (=> d!2391138 (=> (not res!3170845) (not e!4723965))))

(assert (=> d!2391138 (= res!3170845 (= (content!15926 lt!2719551) ((_ map or) (content!15926 (t!390703 (t!390703 p!2009))) (content!15926 (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836)))))))

(assert (=> d!2391138 (= lt!2719551 e!4723966)))

(declare-fun c!1471829 () Bool)

(assert (=> d!2391138 (= c!1471829 ((_ is Nil!74836) (t!390703 (t!390703 p!2009))))))

(assert (=> d!2391138 (= (++!18526 (t!390703 (t!390703 p!2009)) (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836)) lt!2719551)))

(declare-fun b!8019360 () Bool)

(assert (=> b!8019360 (= e!4723966 (Cons!74836 (h!81284 (t!390703 (t!390703 p!2009))) (++!18526 (t!390703 (t!390703 (t!390703 p!2009))) (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836))))))

(declare-fun b!8019362 () Bool)

(assert (=> b!8019362 (= e!4723965 (or (not (= (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836) Nil!74836)) (= lt!2719551 (t!390703 (t!390703 p!2009)))))))

(assert (= (and d!2391138 c!1471829) b!8019359))

(assert (= (and d!2391138 (not c!1471829)) b!8019360))

(assert (= (and d!2391138 res!3170845) b!8019361))

(assert (= (and b!8019361 res!3170846) b!8019362))

(declare-fun m!8382326 () Bool)

(assert (=> b!8019361 m!8382326))

(assert (=> b!8019361 m!8382164))

(assert (=> b!8019361 m!8382206))

(declare-fun m!8382328 () Bool)

(assert (=> d!2391138 m!8382328))

(declare-fun m!8382330 () Bool)

(assert (=> d!2391138 m!8382330))

(assert (=> d!2391138 m!8382212))

(declare-fun m!8382332 () Bool)

(assert (=> b!8019360 m!8382332))

(assert (=> b!8019278 d!2391138))

(declare-fun d!2391140 () Bool)

(assert (=> d!2391140 (= (head!16394 (t!390703 p!2009)) (h!81284 (t!390703 p!2009)))))

(assert (=> b!8019330 d!2391140))

(declare-fun d!2391142 () Bool)

(assert (=> d!2391142 (= (head!16394 lt!2719500) (h!81284 lt!2719500))))

(assert (=> b!8019330 d!2391142))

(declare-fun d!2391144 () Bool)

(declare-fun c!1471832 () Bool)

(assert (=> d!2391144 (= c!1471832 ((_ is Nil!74836) lt!2719528))))

(declare-fun e!4723969 () (InoxSet B!4117))

(assert (=> d!2391144 (= (content!15926 lt!2719528) e!4723969)))

(declare-fun b!8019367 () Bool)

(assert (=> b!8019367 (= e!4723969 ((as const (Array B!4117 Bool)) false))))

(declare-fun b!8019368 () Bool)

(assert (=> b!8019368 (= e!4723969 ((_ map or) (store ((as const (Array B!4117 Bool)) false) (h!81284 lt!2719528) true) (content!15926 (t!390703 lt!2719528))))))

(assert (= (and d!2391144 c!1471832) b!8019367))

(assert (= (and d!2391144 (not c!1471832)) b!8019368))

(declare-fun m!8382334 () Bool)

(assert (=> b!8019368 m!8382334))

(declare-fun m!8382336 () Bool)

(assert (=> b!8019368 m!8382336))

(assert (=> d!2391088 d!2391144))

(declare-fun d!2391146 () Bool)

(declare-fun c!1471833 () Bool)

(assert (=> d!2391146 (= c!1471833 ((_ is Nil!74836) (t!390703 p!2009)))))

(declare-fun e!4723970 () (InoxSet B!4117))

(assert (=> d!2391146 (= (content!15926 (t!390703 p!2009)) e!4723970)))

(declare-fun b!8019369 () Bool)

(assert (=> b!8019369 (= e!4723970 ((as const (Array B!4117 Bool)) false))))

(declare-fun b!8019370 () Bool)

(assert (=> b!8019370 (= e!4723970 ((_ map or) (store ((as const (Array B!4117 Bool)) false) (h!81284 (t!390703 p!2009)) true) (content!15926 (t!390703 (t!390703 p!2009)))))))

(assert (= (and d!2391146 c!1471833) b!8019369))

(assert (= (and d!2391146 (not c!1471833)) b!8019370))

(declare-fun m!8382338 () Bool)

(assert (=> b!8019370 m!8382338))

(assert (=> b!8019370 m!8382330))

(assert (=> d!2391088 d!2391146))

(declare-fun d!2391148 () Bool)

(declare-fun c!1471834 () Bool)

(assert (=> d!2391148 (= c!1471834 ((_ is Nil!74836) (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836)))))

(declare-fun e!4723971 () (InoxSet B!4117))

(assert (=> d!2391148 (= (content!15926 (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836)) e!4723971)))

(declare-fun b!8019371 () Bool)

(assert (=> b!8019371 (= e!4723971 ((as const (Array B!4117 Bool)) false))))

(declare-fun b!8019372 () Bool)

(assert (=> b!8019372 (= e!4723971 ((_ map or) (store ((as const (Array B!4117 Bool)) false) (h!81284 (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836)) true) (content!15926 (t!390703 (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836)))))))

(assert (= (and d!2391148 c!1471834) b!8019371))

(assert (= (and d!2391148 (not c!1471834)) b!8019372))

(declare-fun m!8382340 () Bool)

(assert (=> b!8019372 m!8382340))

(declare-fun m!8382342 () Bool)

(assert (=> b!8019372 m!8382342))

(assert (=> d!2391088 d!2391148))

(declare-fun d!2391150 () Bool)

(declare-fun lt!2719552 () Int)

(assert (=> d!2391150 (>= lt!2719552 0)))

(declare-fun e!4723972 () Int)

(assert (=> d!2391150 (= lt!2719552 e!4723972)))

(declare-fun c!1471835 () Bool)

(assert (=> d!2391150 (= c!1471835 ((_ is Nil!74836) lt!2719540))))

(assert (=> d!2391150 (= (size!43627 lt!2719540) lt!2719552)))

(declare-fun b!8019373 () Bool)

(assert (=> b!8019373 (= e!4723972 0)))

(declare-fun b!8019374 () Bool)

(assert (=> b!8019374 (= e!4723972 (+ 1 (size!43627 (t!390703 lt!2719540))))))

(assert (= (and d!2391150 c!1471835) b!8019373))

(assert (= (and d!2391150 (not c!1471835)) b!8019374))

(declare-fun m!8382344 () Bool)

(assert (=> b!8019374 m!8382344))

(assert (=> b!8019319 d!2391150))

(assert (=> b!8019319 d!2391122))

(declare-fun d!2391152 () Bool)

(declare-fun lt!2719553 () Int)

(assert (=> d!2391152 (>= lt!2719553 0)))

(declare-fun e!4723973 () Int)

(assert (=> d!2391152 (= lt!2719553 e!4723973)))

(declare-fun c!1471836 () Bool)

(assert (=> d!2391152 (= c!1471836 ((_ is Nil!74836) (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836)))))

(assert (=> d!2391152 (= (size!43627 (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836)) lt!2719553)))

(declare-fun b!8019375 () Bool)

(assert (=> b!8019375 (= e!4723973 0)))

(declare-fun b!8019376 () Bool)

(assert (=> b!8019376 (= e!4723973 (+ 1 (size!43627 (t!390703 (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836)))))))

(assert (= (and d!2391152 c!1471836) b!8019375))

(assert (= (and d!2391152 (not c!1471836)) b!8019376))

(declare-fun m!8382346 () Bool)

(assert (=> b!8019376 m!8382346))

(assert (=> b!8019319 d!2391152))

(declare-fun b!8019379 () Bool)

(declare-fun res!3170848 () Bool)

(declare-fun e!4723974 () Bool)

(assert (=> b!8019379 (=> (not res!3170848) (not e!4723974))))

(declare-fun lt!2719554 () List!74960)

(assert (=> b!8019379 (= res!3170848 (= (size!43627 lt!2719554) (+ (size!43627 (t!390703 p!2009)) (size!43627 (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836)))))))

(declare-fun b!8019377 () Bool)

(declare-fun e!4723975 () List!74960)

(assert (=> b!8019377 (= e!4723975 (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836))))

(declare-fun d!2391154 () Bool)

(assert (=> d!2391154 e!4723974))

(declare-fun res!3170847 () Bool)

(assert (=> d!2391154 (=> (not res!3170847) (not e!4723974))))

(assert (=> d!2391154 (= res!3170847 (= (content!15926 lt!2719554) ((_ map or) (content!15926 (t!390703 p!2009)) (content!15926 (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836)))))))

(assert (=> d!2391154 (= lt!2719554 e!4723975)))

(declare-fun c!1471837 () Bool)

(assert (=> d!2391154 (= c!1471837 ((_ is Nil!74836) (t!390703 p!2009)))))

(assert (=> d!2391154 (= (++!18526 (t!390703 p!2009) (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836)) lt!2719554)))

(declare-fun b!8019378 () Bool)

(assert (=> b!8019378 (= e!4723975 (Cons!74836 (h!81284 (t!390703 p!2009)) (++!18526 (t!390703 (t!390703 p!2009)) (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836))))))

(declare-fun b!8019380 () Bool)

(assert (=> b!8019380 (= e!4723974 (or (not (= (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836) Nil!74836)) (= lt!2719554 (t!390703 p!2009))))))

(assert (= (and d!2391154 c!1471837) b!8019377))

(assert (= (and d!2391154 (not c!1471837)) b!8019378))

(assert (= (and d!2391154 res!3170847) b!8019379))

(assert (= (and b!8019379 res!3170848) b!8019380))

(declare-fun m!8382348 () Bool)

(assert (=> b!8019379 m!8382348))

(assert (=> b!8019379 m!8382136))

(assert (=> b!8019379 m!8382278))

(declare-fun m!8382350 () Bool)

(assert (=> d!2391154 m!8382350))

(assert (=> d!2391154 m!8382210))

(assert (=> d!2391154 m!8382284))

(declare-fun m!8382352 () Bool)

(assert (=> b!8019378 m!8382352))

(assert (=> b!8019318 d!2391154))

(declare-fun d!2391156 () Bool)

(declare-fun lt!2719555 () Int)

(assert (=> d!2391156 (>= lt!2719555 0)))

(declare-fun e!4723976 () Int)

(assert (=> d!2391156 (= lt!2719555 e!4723976)))

(declare-fun c!1471838 () Bool)

(assert (=> d!2391156 (= c!1471838 ((_ is Nil!74836) (t!390703 lt!2719500)))))

(assert (=> d!2391156 (= (size!43627 (t!390703 lt!2719500)) lt!2719555)))

(declare-fun b!8019381 () Bool)

(assert (=> b!8019381 (= e!4723976 0)))

(declare-fun b!8019382 () Bool)

(assert (=> b!8019382 (= e!4723976 (+ 1 (size!43627 (t!390703 (t!390703 lt!2719500)))))))

(assert (= (and d!2391156 c!1471838) b!8019381))

(assert (= (and d!2391156 (not c!1471838)) b!8019382))

(declare-fun m!8382354 () Bool)

(assert (=> b!8019382 m!8382354))

(assert (=> b!8019234 d!2391156))

(assert (=> b!8019292 d!2391070))

(declare-fun d!2391158 () Bool)

(declare-fun lt!2719556 () Int)

(assert (=> d!2391158 (>= lt!2719556 0)))

(declare-fun e!4723977 () Int)

(assert (=> d!2391158 (= lt!2719556 e!4723977)))

(declare-fun c!1471839 () Bool)

(assert (=> d!2391158 (= c!1471839 ((_ is Nil!74836) (++!18526 (t!390703 p!2009) (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836))))))

(assert (=> d!2391158 (= (size!43627 (++!18526 (t!390703 p!2009) (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836))) lt!2719556)))

(declare-fun b!8019383 () Bool)

(assert (=> b!8019383 (= e!4723977 0)))

(declare-fun b!8019384 () Bool)

(assert (=> b!8019384 (= e!4723977 (+ 1 (size!43627 (t!390703 (++!18526 (t!390703 p!2009) (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836))))))))

(assert (= (and d!2391158 c!1471839) b!8019383))

(assert (= (and d!2391158 (not c!1471839)) b!8019384))

(declare-fun m!8382356 () Bool)

(assert (=> b!8019384 m!8382356))

(assert (=> b!8019292 d!2391158))

(declare-fun b!8019388 () Bool)

(declare-fun e!4723980 () Bool)

(assert (=> b!8019388 (= e!4723980 (>= (size!43627 (tail!15921 lt!2719500)) (size!43627 (tail!15921 (++!18526 (t!390703 p!2009) (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836))))))))

(declare-fun d!2391160 () Bool)

(assert (=> d!2391160 e!4723980))

(declare-fun res!3170849 () Bool)

(assert (=> d!2391160 (=> res!3170849 e!4723980)))

(declare-fun lt!2719557 () Bool)

(assert (=> d!2391160 (= res!3170849 (not lt!2719557))))

(declare-fun e!4723979 () Bool)

(assert (=> d!2391160 (= lt!2719557 e!4723979)))

(declare-fun res!3170852 () Bool)

(assert (=> d!2391160 (=> res!3170852 e!4723979)))

(assert (=> d!2391160 (= res!3170852 ((_ is Nil!74836) (tail!15921 (++!18526 (t!390703 p!2009) (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836)))))))

(assert (=> d!2391160 (= (isPrefix!6783 (tail!15921 (++!18526 (t!390703 p!2009) (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836))) (tail!15921 lt!2719500)) lt!2719557)))

(declare-fun b!8019386 () Bool)

(declare-fun res!3170850 () Bool)

(declare-fun e!4723978 () Bool)

(assert (=> b!8019386 (=> (not res!3170850) (not e!4723978))))

(assert (=> b!8019386 (= res!3170850 (= (head!16394 (tail!15921 (++!18526 (t!390703 p!2009) (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836)))) (head!16394 (tail!15921 lt!2719500))))))

(declare-fun b!8019387 () Bool)

(assert (=> b!8019387 (= e!4723978 (isPrefix!6783 (tail!15921 (tail!15921 (++!18526 (t!390703 p!2009) (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836)))) (tail!15921 (tail!15921 lt!2719500))))))

(declare-fun b!8019385 () Bool)

(assert (=> b!8019385 (= e!4723979 e!4723978)))

(declare-fun res!3170851 () Bool)

(assert (=> b!8019385 (=> (not res!3170851) (not e!4723978))))

(assert (=> b!8019385 (= res!3170851 (not ((_ is Nil!74836) (tail!15921 lt!2719500))))))

(assert (= (and d!2391160 (not res!3170852)) b!8019385))

(assert (= (and b!8019385 res!3170851) b!8019386))

(assert (= (and b!8019386 res!3170850) b!8019387))

(assert (= (and d!2391160 (not res!3170849)) b!8019388))

(assert (=> b!8019388 m!8382224))

(assert (=> b!8019388 m!8382312))

(assert (=> b!8019388 m!8382222))

(declare-fun m!8382358 () Bool)

(assert (=> b!8019388 m!8382358))

(assert (=> b!8019386 m!8382222))

(declare-fun m!8382360 () Bool)

(assert (=> b!8019386 m!8382360))

(assert (=> b!8019386 m!8382224))

(assert (=> b!8019386 m!8382318))

(assert (=> b!8019387 m!8382222))

(declare-fun m!8382362 () Bool)

(assert (=> b!8019387 m!8382362))

(assert (=> b!8019387 m!8382224))

(assert (=> b!8019387 m!8382322))

(assert (=> b!8019387 m!8382362))

(assert (=> b!8019387 m!8382322))

(declare-fun m!8382364 () Bool)

(assert (=> b!8019387 m!8382364))

(assert (=> b!8019291 d!2391160))

(declare-fun d!2391162 () Bool)

(assert (=> d!2391162 (= (tail!15921 (++!18526 (t!390703 p!2009) (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836))) (t!390703 (++!18526 (t!390703 p!2009) (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836))))))

(assert (=> b!8019291 d!2391162))

(assert (=> b!8019291 d!2391134))

(declare-fun d!2391164 () Bool)

(declare-fun lt!2719558 () List!74960)

(assert (=> d!2391164 (= (++!18526 (t!390703 (t!390703 p!2009)) lt!2719558) (tail!15921 lt!2719500))))

(declare-fun e!4723981 () List!74960)

(assert (=> d!2391164 (= lt!2719558 e!4723981)))

(declare-fun c!1471840 () Bool)

(assert (=> d!2391164 (= c!1471840 ((_ is Cons!74836) (t!390703 (t!390703 p!2009))))))

(assert (=> d!2391164 (>= (size!43627 (tail!15921 lt!2719500)) (size!43627 (t!390703 (t!390703 p!2009))))))

(assert (=> d!2391164 (= (getSuffix!3948 (tail!15921 lt!2719500) (t!390703 (t!390703 p!2009))) lt!2719558)))

(declare-fun b!8019389 () Bool)

(assert (=> b!8019389 (= e!4723981 (getSuffix!3948 (tail!15921 (tail!15921 lt!2719500)) (t!390703 (t!390703 (t!390703 p!2009)))))))

(declare-fun b!8019390 () Bool)

(assert (=> b!8019390 (= e!4723981 (tail!15921 lt!2719500))))

(assert (= (and d!2391164 c!1471840) b!8019389))

(assert (= (and d!2391164 (not c!1471840)) b!8019390))

(declare-fun m!8382366 () Bool)

(assert (=> d!2391164 m!8382366))

(assert (=> d!2391164 m!8382224))

(assert (=> d!2391164 m!8382312))

(assert (=> d!2391164 m!8382164))

(assert (=> b!8019389 m!8382224))

(assert (=> b!8019389 m!8382322))

(assert (=> b!8019389 m!8382322))

(declare-fun m!8382368 () Bool)

(assert (=> b!8019389 m!8382368))

(assert (=> b!8019325 d!2391164))

(assert (=> b!8019325 d!2391134))

(declare-fun d!2391166 () Bool)

(assert (=> d!2391166 (= (head!16394 (++!18526 (t!390703 p!2009) (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836))) (h!81284 (++!18526 (t!390703 p!2009) (Cons!74836 (head!16394 (getSuffix!3948 lt!2719500 (t!390703 p!2009))) Nil!74836))))))

(assert (=> b!8019290 d!2391166))

(assert (=> b!8019290 d!2391142))

(declare-fun d!2391168 () Bool)

(declare-fun lt!2719559 () Int)

(assert (=> d!2391168 (>= lt!2719559 0)))

(declare-fun e!4723982 () Int)

(assert (=> d!2391168 (= lt!2719559 e!4723982)))

(declare-fun c!1471841 () Bool)

(assert (=> d!2391168 (= c!1471841 ((_ is Nil!74836) (t!390703 l!3435)))))

(assert (=> d!2391168 (= (size!43627 (t!390703 l!3435)) lt!2719559)))

(declare-fun b!8019391 () Bool)

(assert (=> b!8019391 (= e!4723982 0)))

(declare-fun b!8019392 () Bool)

(assert (=> b!8019392 (= e!4723982 (+ 1 (size!43627 (t!390703 (t!390703 l!3435)))))))

(assert (= (and d!2391168 c!1471841) b!8019391))

(assert (= (and d!2391168 (not c!1471841)) b!8019392))

(declare-fun m!8382370 () Bool)

(assert (=> b!8019392 m!8382370))

(assert (=> b!8019344 d!2391168))

(assert (=> b!8019268 d!2391124))

(declare-fun d!2391170 () Bool)

(declare-fun lt!2719560 () Int)

(assert (=> d!2391170 (>= lt!2719560 0)))

(declare-fun e!4723983 () Int)

(assert (=> d!2391170 (= lt!2719560 e!4723983)))

(declare-fun c!1471842 () Bool)

(assert (=> d!2391170 (= c!1471842 ((_ is Nil!74836) (++!18526 p!2009 (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836))))))

(assert (=> d!2391170 (= (size!43627 (++!18526 p!2009 (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836))) lt!2719560)))

(declare-fun b!8019393 () Bool)

(assert (=> b!8019393 (= e!4723983 0)))

(declare-fun b!8019394 () Bool)

(assert (=> b!8019394 (= e!4723983 (+ 1 (size!43627 (t!390703 (++!18526 p!2009 (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836))))))))

(assert (= (and d!2391170 c!1471842) b!8019393))

(assert (= (and d!2391170 (not c!1471842)) b!8019394))

(declare-fun m!8382372 () Bool)

(assert (=> b!8019394 m!8382372))

(assert (=> b!8019268 d!2391170))

(declare-fun b!8019398 () Bool)

(declare-fun e!4723986 () Bool)

(assert (=> b!8019398 (= e!4723986 (>= (size!43627 (tail!15921 l!3435)) (size!43627 (tail!15921 (++!18526 p!2009 (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836))))))))

(declare-fun d!2391172 () Bool)

(assert (=> d!2391172 e!4723986))

(declare-fun res!3170853 () Bool)

(assert (=> d!2391172 (=> res!3170853 e!4723986)))

(declare-fun lt!2719561 () Bool)

(assert (=> d!2391172 (= res!3170853 (not lt!2719561))))

(declare-fun e!4723985 () Bool)

(assert (=> d!2391172 (= lt!2719561 e!4723985)))

(declare-fun res!3170856 () Bool)

(assert (=> d!2391172 (=> res!3170856 e!4723985)))

(assert (=> d!2391172 (= res!3170856 ((_ is Nil!74836) (tail!15921 (++!18526 p!2009 (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836)))))))

(assert (=> d!2391172 (= (isPrefix!6783 (tail!15921 (++!18526 p!2009 (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836))) (tail!15921 l!3435)) lt!2719561)))

(declare-fun b!8019396 () Bool)

(declare-fun res!3170854 () Bool)

(declare-fun e!4723984 () Bool)

(assert (=> b!8019396 (=> (not res!3170854) (not e!4723984))))

(assert (=> b!8019396 (= res!3170854 (= (head!16394 (tail!15921 (++!18526 p!2009 (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836)))) (head!16394 (tail!15921 l!3435))))))

(declare-fun b!8019397 () Bool)

(assert (=> b!8019397 (= e!4723984 (isPrefix!6783 (tail!15921 (tail!15921 (++!18526 p!2009 (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836)))) (tail!15921 (tail!15921 l!3435))))))

(declare-fun b!8019395 () Bool)

(assert (=> b!8019395 (= e!4723985 e!4723984)))

(declare-fun res!3170855 () Bool)

(assert (=> b!8019395 (=> (not res!3170855) (not e!4723984))))

(assert (=> b!8019395 (= res!3170855 (not ((_ is Nil!74836) (tail!15921 l!3435))))))

(assert (= (and d!2391172 (not res!3170856)) b!8019395))

(assert (= (and b!8019395 res!3170855) b!8019396))

(assert (= (and b!8019396 res!3170854) b!8019397))

(assert (= (and d!2391172 (not res!3170853)) b!8019398))

(assert (=> b!8019398 m!8382130))

(declare-fun m!8382374 () Bool)

(assert (=> b!8019398 m!8382374))

(assert (=> b!8019398 m!8382198))

(declare-fun m!8382376 () Bool)

(assert (=> b!8019398 m!8382376))

(assert (=> b!8019396 m!8382198))

(declare-fun m!8382378 () Bool)

(assert (=> b!8019396 m!8382378))

(assert (=> b!8019396 m!8382130))

(declare-fun m!8382380 () Bool)

(assert (=> b!8019396 m!8382380))

(assert (=> b!8019397 m!8382198))

(declare-fun m!8382382 () Bool)

(assert (=> b!8019397 m!8382382))

(assert (=> b!8019397 m!8382130))

(declare-fun m!8382384 () Bool)

(assert (=> b!8019397 m!8382384))

(assert (=> b!8019397 m!8382382))

(assert (=> b!8019397 m!8382384))

(declare-fun m!8382386 () Bool)

(assert (=> b!8019397 m!8382386))

(assert (=> b!8019267 d!2391172))

(declare-fun d!2391174 () Bool)

(assert (=> d!2391174 (= (tail!15921 (++!18526 p!2009 (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836))) (t!390703 (++!18526 p!2009 (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836))))))

(assert (=> b!8019267 d!2391174))

(assert (=> b!8019267 d!2391120))

(declare-fun d!2391176 () Bool)

(declare-fun lt!2719562 () List!74960)

(assert (=> d!2391176 (= (++!18526 (t!390703 p!2009) lt!2719562) (tail!15921 l!3435))))

(declare-fun e!4723987 () List!74960)

(assert (=> d!2391176 (= lt!2719562 e!4723987)))

(declare-fun c!1471843 () Bool)

(assert (=> d!2391176 (= c!1471843 ((_ is Cons!74836) (t!390703 p!2009)))))

(assert (=> d!2391176 (>= (size!43627 (tail!15921 l!3435)) (size!43627 (t!390703 p!2009)))))

(assert (=> d!2391176 (= (getSuffix!3948 (tail!15921 l!3435) (t!390703 p!2009)) lt!2719562)))

(declare-fun b!8019399 () Bool)

(assert (=> b!8019399 (= e!4723987 (getSuffix!3948 (tail!15921 (tail!15921 l!3435)) (t!390703 (t!390703 p!2009))))))

(declare-fun b!8019400 () Bool)

(assert (=> b!8019400 (= e!4723987 (tail!15921 l!3435))))

(assert (= (and d!2391176 c!1471843) b!8019399))

(assert (= (and d!2391176 (not c!1471843)) b!8019400))

(declare-fun m!8382388 () Bool)

(assert (=> d!2391176 m!8382388))

(assert (=> d!2391176 m!8382130))

(assert (=> d!2391176 m!8382374))

(assert (=> d!2391176 m!8382136))

(assert (=> b!8019399 m!8382130))

(assert (=> b!8019399 m!8382384))

(assert (=> b!8019399 m!8382384))

(declare-fun m!8382390 () Bool)

(assert (=> b!8019399 m!8382390))

(assert (=> b!8019311 d!2391176))

(assert (=> b!8019311 d!2391120))

(declare-fun d!2391178 () Bool)

(assert (=> d!2391178 (= (head!16394 (++!18526 p!2009 (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836))) (h!81284 (++!18526 p!2009 (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836))))))

(assert (=> b!8019266 d!2391178))

(declare-fun d!2391180 () Bool)

(assert (=> d!2391180 (= (head!16394 l!3435) (h!81284 l!3435))))

(assert (=> b!8019266 d!2391180))

(declare-fun b!8019403 () Bool)

(declare-fun res!3170858 () Bool)

(declare-fun e!4723988 () Bool)

(assert (=> b!8019403 (=> (not res!3170858) (not e!4723988))))

(declare-fun lt!2719563 () List!74960)

(assert (=> b!8019403 (= res!3170858 (= (size!43627 lt!2719563) (+ (size!43627 (t!390703 p!2009)) (size!43627 lt!2719542))))))

(declare-fun b!8019401 () Bool)

(declare-fun e!4723989 () List!74960)

(assert (=> b!8019401 (= e!4723989 lt!2719542)))

(declare-fun d!2391182 () Bool)

(assert (=> d!2391182 e!4723988))

(declare-fun res!3170857 () Bool)

(assert (=> d!2391182 (=> (not res!3170857) (not e!4723988))))

(assert (=> d!2391182 (= res!3170857 (= (content!15926 lt!2719563) ((_ map or) (content!15926 (t!390703 p!2009)) (content!15926 lt!2719542))))))

(assert (=> d!2391182 (= lt!2719563 e!4723989)))

(declare-fun c!1471844 () Bool)

(assert (=> d!2391182 (= c!1471844 ((_ is Nil!74836) (t!390703 p!2009)))))

(assert (=> d!2391182 (= (++!18526 (t!390703 p!2009) lt!2719542) lt!2719563)))

(declare-fun b!8019402 () Bool)

(assert (=> b!8019402 (= e!4723989 (Cons!74836 (h!81284 (t!390703 p!2009)) (++!18526 (t!390703 (t!390703 p!2009)) lt!2719542)))))

(declare-fun b!8019404 () Bool)

(assert (=> b!8019404 (= e!4723988 (or (not (= lt!2719542 Nil!74836)) (= lt!2719563 (t!390703 p!2009))))))

(assert (= (and d!2391182 c!1471844) b!8019401))

(assert (= (and d!2391182 (not c!1471844)) b!8019402))

(assert (= (and d!2391182 res!3170857) b!8019403))

(assert (= (and b!8019403 res!3170858) b!8019404))

(declare-fun m!8382392 () Bool)

(assert (=> b!8019403 m!8382392))

(assert (=> b!8019403 m!8382136))

(declare-fun m!8382394 () Bool)

(assert (=> b!8019403 m!8382394))

(declare-fun m!8382396 () Bool)

(assert (=> d!2391182 m!8382396))

(assert (=> d!2391182 m!8382210))

(declare-fun m!8382398 () Bool)

(assert (=> d!2391182 m!8382398))

(declare-fun m!8382400 () Bool)

(assert (=> b!8019402 m!8382400))

(assert (=> d!2391112 d!2391182))

(assert (=> d!2391112 d!2391070))

(assert (=> d!2391112 d!2391062))

(assert (=> b!8019252 d!2391124))

(assert (=> b!8019252 d!2391122))

(declare-fun d!2391184 () Bool)

(declare-fun c!1471845 () Bool)

(assert (=> d!2391184 (= c!1471845 ((_ is Nil!74836) lt!2719540))))

(declare-fun e!4723990 () (InoxSet B!4117))

(assert (=> d!2391184 (= (content!15926 lt!2719540) e!4723990)))

(declare-fun b!8019405 () Bool)

(assert (=> b!8019405 (= e!4723990 ((as const (Array B!4117 Bool)) false))))

(declare-fun b!8019406 () Bool)

(assert (=> b!8019406 (= e!4723990 ((_ map or) (store ((as const (Array B!4117 Bool)) false) (h!81284 lt!2719540) true) (content!15926 (t!390703 lt!2719540))))))

(assert (= (and d!2391184 c!1471845) b!8019405))

(assert (= (and d!2391184 (not c!1471845)) b!8019406))

(declare-fun m!8382402 () Bool)

(assert (=> b!8019406 m!8382402))

(declare-fun m!8382404 () Bool)

(assert (=> b!8019406 m!8382404))

(assert (=> d!2391106 d!2391184))

(declare-fun d!2391186 () Bool)

(declare-fun c!1471846 () Bool)

(assert (=> d!2391186 (= c!1471846 ((_ is Nil!74836) p!2009))))

(declare-fun e!4723991 () (InoxSet B!4117))

(assert (=> d!2391186 (= (content!15926 p!2009) e!4723991)))

(declare-fun b!8019407 () Bool)

(assert (=> b!8019407 (= e!4723991 ((as const (Array B!4117 Bool)) false))))

(declare-fun b!8019408 () Bool)

(assert (=> b!8019408 (= e!4723991 ((_ map or) (store ((as const (Array B!4117 Bool)) false) (h!81284 p!2009) true) (content!15926 (t!390703 p!2009))))))

(assert (= (and d!2391186 c!1471846) b!8019407))

(assert (= (and d!2391186 (not c!1471846)) b!8019408))

(declare-fun m!8382406 () Bool)

(assert (=> b!8019408 m!8382406))

(assert (=> b!8019408 m!8382210))

(assert (=> d!2391106 d!2391186))

(declare-fun d!2391188 () Bool)

(declare-fun c!1471847 () Bool)

(assert (=> d!2391188 (= c!1471847 ((_ is Nil!74836) (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836)))))

(declare-fun e!4723992 () (InoxSet B!4117))

(assert (=> d!2391188 (= (content!15926 (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836)) e!4723992)))

(declare-fun b!8019409 () Bool)

(assert (=> b!8019409 (= e!4723992 ((as const (Array B!4117 Bool)) false))))

(declare-fun b!8019410 () Bool)

(assert (=> b!8019410 (= e!4723992 ((_ map or) (store ((as const (Array B!4117 Bool)) false) (h!81284 (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836)) true) (content!15926 (t!390703 (Cons!74836 (head!16394 (getSuffix!3948 l!3435 p!2009)) Nil!74836)))))))

(assert (= (and d!2391188 c!1471847) b!8019409))

(assert (= (and d!2391188 (not c!1471847)) b!8019410))

(declare-fun m!8382408 () Bool)

(assert (=> b!8019410 m!8382408))

(declare-fun m!8382410 () Bool)

(assert (=> b!8019410 m!8382410))

(assert (=> d!2391106 d!2391188))

(declare-fun b!8019413 () Bool)

(declare-fun res!3170860 () Bool)

(declare-fun e!4723993 () Bool)

(assert (=> b!8019413 (=> (not res!3170860) (not e!4723993))))

(declare-fun lt!2719564 () List!74960)

(assert (=> b!8019413 (= res!3170860 (= (size!43627 lt!2719564) (+ (size!43627 p!2009) (size!43627 lt!2719538))))))

(declare-fun b!8019411 () Bool)

(declare-fun e!4723994 () List!74960)

(assert (=> b!8019411 (= e!4723994 lt!2719538)))

(declare-fun d!2391190 () Bool)

(assert (=> d!2391190 e!4723993))

(declare-fun res!3170859 () Bool)

(assert (=> d!2391190 (=> (not res!3170859) (not e!4723993))))

(assert (=> d!2391190 (= res!3170859 (= (content!15926 lt!2719564) ((_ map or) (content!15926 p!2009) (content!15926 lt!2719538))))))

(assert (=> d!2391190 (= lt!2719564 e!4723994)))

(declare-fun c!1471848 () Bool)

(assert (=> d!2391190 (= c!1471848 ((_ is Nil!74836) p!2009))))

(assert (=> d!2391190 (= (++!18526 p!2009 lt!2719538) lt!2719564)))

(declare-fun b!8019412 () Bool)

(assert (=> b!8019412 (= e!4723994 (Cons!74836 (h!81284 p!2009) (++!18526 (t!390703 p!2009) lt!2719538)))))

(declare-fun b!8019414 () Bool)

(assert (=> b!8019414 (= e!4723993 (or (not (= lt!2719538 Nil!74836)) (= lt!2719564 p!2009)))))

(assert (= (and d!2391190 c!1471848) b!8019411))

(assert (= (and d!2391190 (not c!1471848)) b!8019412))

(assert (= (and d!2391190 res!3170859) b!8019413))

(assert (= (and b!8019413 res!3170860) b!8019414))

(declare-fun m!8382412 () Bool)

(assert (=> b!8019413 m!8382412))

(assert (=> b!8019413 m!8382132))

(declare-fun m!8382414 () Bool)

(assert (=> b!8019413 m!8382414))

(declare-fun m!8382416 () Bool)

(assert (=> d!2391190 m!8382416))

(assert (=> d!2391190 m!8382282))

(declare-fun m!8382418 () Bool)

(assert (=> d!2391190 m!8382418))

(declare-fun m!8382420 () Bool)

(assert (=> b!8019412 m!8382420))

(assert (=> d!2391094 d!2391190))

(assert (=> d!2391094 d!2391124))

(assert (=> d!2391094 d!2391122))

(declare-fun b!8019418 () Bool)

(declare-fun e!4723997 () Bool)

(assert (=> b!8019418 (= e!4723997 (>= (size!43627 (tail!15921 l!3435)) (size!43627 (tail!15921 p!2009))))))

(declare-fun d!2391192 () Bool)

(assert (=> d!2391192 e!4723997))

(declare-fun res!3170861 () Bool)

(assert (=> d!2391192 (=> res!3170861 e!4723997)))

(declare-fun lt!2719565 () Bool)

(assert (=> d!2391192 (= res!3170861 (not lt!2719565))))

(declare-fun e!4723996 () Bool)

(assert (=> d!2391192 (= lt!2719565 e!4723996)))

(declare-fun res!3170864 () Bool)

(assert (=> d!2391192 (=> res!3170864 e!4723996)))

(assert (=> d!2391192 (= res!3170864 ((_ is Nil!74836) (tail!15921 p!2009)))))

(assert (=> d!2391192 (= (isPrefix!6783 (tail!15921 p!2009) (tail!15921 l!3435)) lt!2719565)))

(declare-fun b!8019416 () Bool)

(declare-fun res!3170862 () Bool)

(declare-fun e!4723995 () Bool)

(assert (=> b!8019416 (=> (not res!3170862) (not e!4723995))))

(assert (=> b!8019416 (= res!3170862 (= (head!16394 (tail!15921 p!2009)) (head!16394 (tail!15921 l!3435))))))

(declare-fun b!8019417 () Bool)

(assert (=> b!8019417 (= e!4723995 (isPrefix!6783 (tail!15921 (tail!15921 p!2009)) (tail!15921 (tail!15921 l!3435))))))

(declare-fun b!8019415 () Bool)

(assert (=> b!8019415 (= e!4723996 e!4723995)))

(declare-fun res!3170863 () Bool)

(assert (=> b!8019415 (=> (not res!3170863) (not e!4723995))))

(assert (=> b!8019415 (= res!3170863 (not ((_ is Nil!74836) (tail!15921 l!3435))))))

(assert (= (and d!2391192 (not res!3170864)) b!8019415))

(assert (= (and b!8019415 res!3170863) b!8019416))

(assert (= (and b!8019416 res!3170862) b!8019417))

(assert (= (and d!2391192 (not res!3170861)) b!8019418))

(assert (=> b!8019418 m!8382130))

(assert (=> b!8019418 m!8382374))

(assert (=> b!8019418 m!8382176))

(declare-fun m!8382422 () Bool)

(assert (=> b!8019418 m!8382422))

(assert (=> b!8019416 m!8382176))

(declare-fun m!8382424 () Bool)

(assert (=> b!8019416 m!8382424))

(assert (=> b!8019416 m!8382130))

(assert (=> b!8019416 m!8382380))

(assert (=> b!8019417 m!8382176))

(declare-fun m!8382426 () Bool)

(assert (=> b!8019417 m!8382426))

(assert (=> b!8019417 m!8382130))

(assert (=> b!8019417 m!8382384))

(assert (=> b!8019417 m!8382426))

(assert (=> b!8019417 m!8382384))

(declare-fun m!8382428 () Bool)

(assert (=> b!8019417 m!8382428))

(assert (=> b!8019251 d!2391192))

(declare-fun d!2391194 () Bool)

(assert (=> d!2391194 (= (tail!15921 p!2009) (t!390703 p!2009))))

(assert (=> b!8019251 d!2391194))

(assert (=> b!8019251 d!2391120))

(declare-fun d!2391196 () Bool)

(declare-fun lt!2719566 () Int)

(assert (=> d!2391196 (>= lt!2719566 0)))

(declare-fun e!4723998 () Int)

(assert (=> d!2391196 (= lt!2719566 e!4723998)))

(declare-fun c!1471849 () Bool)

(assert (=> d!2391196 (= c!1471849 ((_ is Nil!74836) (t!390703 (t!390703 p!2009))))))

(assert (=> d!2391196 (= (size!43627 (t!390703 (t!390703 p!2009))) lt!2719566)))

(declare-fun b!8019419 () Bool)

(assert (=> b!8019419 (= e!4723998 0)))

(declare-fun b!8019420 () Bool)

(assert (=> b!8019420 (= e!4723998 (+ 1 (size!43627 (t!390703 (t!390703 (t!390703 p!2009))))))))

(assert (= (and d!2391196 c!1471849) b!8019419))

(assert (= (and d!2391196 (not c!1471849)) b!8019420))

(declare-fun m!8382430 () Bool)

(assert (=> b!8019420 m!8382430))

(assert (=> b!8019232 d!2391196))

(declare-fun d!2391198 () Bool)

(assert (=> d!2391198 (= (head!16394 p!2009) (h!81284 p!2009))))

(assert (=> b!8019250 d!2391198))

(assert (=> b!8019250 d!2391180))

(assert (=> b!8019342 d!2391062))

(declare-fun b!8019421 () Bool)

(declare-fun e!4723999 () Bool)

(declare-fun tp!2400235 () Bool)

(assert (=> b!8019421 (= e!4723999 (and tp_is_empty!54005 tp!2400235))))

(assert (=> b!8019349 (= tp!2400233 e!4723999)))

(assert (= (and b!8019349 ((_ is Cons!74836) (t!390703 (t!390703 p!2009)))) b!8019421))

(declare-fun b!8019422 () Bool)

(declare-fun e!4724000 () Bool)

(declare-fun tp!2400236 () Bool)

(assert (=> b!8019422 (= e!4724000 (and tp_is_empty!54005 tp!2400236))))

(assert (=> b!8019350 (= tp!2400234 e!4724000)))

(assert (= (and b!8019350 ((_ is Cons!74836) (t!390703 (t!390703 l!3435)))) b!8019422))

(check-sat (not b!8019397) (not b!8019412) (not b!8019368) (not b!8019352) (not b!8019394) (not b!8019398) (not b!8019408) (not b!8019406) (not b!8019361) (not d!2391136) (not b!8019370) (not d!2391154) (not b!8019399) (not b!8019374) (not d!2391138) (not b!8019418) tp_is_empty!54005 (not b!8019392) (not b!8019403) (not d!2391176) (not b!8019382) (not d!2391182) (not b!8019378) (not b!8019388) (not b!8019379) (not b!8019416) (not b!8019387) (not d!2391190) (not b!8019420) (not b!8019389) (not b!8019357) (not b!8019372) (not b!8019421) (not b!8019402) (not b!8019413) (not b!8019360) (not b!8019417) (not b!8019358) (not b!8019410) (not d!2391164) (not b!8019376) (not b!8019356) (not b!8019384) (not b!8019396) (not b!8019386) (not b!8019422) (not b!8019354))
(check-sat)
