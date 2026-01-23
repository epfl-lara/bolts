; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396218 () Bool)

(assert start!396218)

(declare-fun b!4159129 () Bool)

(declare-fun e!2581257 () Bool)

(declare-fun e!2581258 () Bool)

(assert (=> b!4159129 (= e!2581257 (not e!2581258))))

(declare-fun res!1703617 () Bool)

(assert (=> b!4159129 (=> res!1703617 e!2581258)))

(declare-datatypes ((B!2689 0))(
  ( (B!2690 (val!14636 Int)) )
))
(declare-datatypes ((List!45513 0))(
  ( (Nil!45389) (Cons!45389 (h!50809 B!2689) (t!343544 List!45513)) )
))
(declare-fun l!3062 () List!45513)

(declare-fun e1!32 () B!2689)

(declare-fun contains!9247 (List!45513 B!2689) Bool)

(assert (=> b!4159129 (= res!1703617 (not (contains!9247 (t!343544 l!3062) e1!32)))))

(declare-fun lt!1482566 () Int)

(declare-fun lt!1482567 () List!45513)

(declare-fun e2!32 () B!2689)

(declare-fun getIndex!868 (List!45513 B!2689) Int)

(assert (=> b!4159129 (= lt!1482566 (+ 1 (getIndex!868 lt!1482567 e2!32)))))

(declare-datatypes ((Unit!64563 0))(
  ( (Unit!64564) )
))
(declare-fun lt!1482563 () Unit!64563)

(declare-fun lemmaNotHeadSoGetIndexTailIsMinusOne!20 (List!45513 B!2689) Unit!64563)

(assert (=> b!4159129 (= lt!1482563 (lemmaNotHeadSoGetIndexTailIsMinusOne!20 l!3062 e2!32))))

(declare-fun lt!1482568 () Int)

(assert (=> b!4159129 (= lt!1482568 (+ 1 (getIndex!868 lt!1482567 e1!32)))))

(declare-fun lt!1482565 () Unit!64563)

(assert (=> b!4159129 (= lt!1482565 (lemmaNotHeadSoGetIndexTailIsMinusOne!20 l!3062 e1!32))))

(assert (=> b!4159129 (contains!9247 lt!1482567 e1!32)))

(declare-fun tail!6673 (List!45513) List!45513)

(assert (=> b!4159129 (= lt!1482567 (tail!6673 l!3062))))

(declare-fun lt!1482564 () Unit!64563)

(declare-fun lemmaContainsAndNotHdThenTlContains!24 (List!45513 B!2689) Unit!64563)

(assert (=> b!4159129 (= lt!1482564 (lemmaContainsAndNotHdThenTlContains!24 l!3062 e1!32))))

(declare-fun b!4159130 () Bool)

(declare-fun res!1703615 () Bool)

(assert (=> b!4159130 (=> res!1703615 e!2581258)))

(assert (=> b!4159130 (= res!1703615 (not (contains!9247 (t!343544 l!3062) e2!32)))))

(declare-fun b!4159131 () Bool)

(declare-fun size!33454 (List!45513) Int)

(assert (=> b!4159131 (= e!2581258 (< (size!33454 (t!343544 l!3062)) (size!33454 l!3062)))))

(declare-fun b!4159132 () Bool)

(declare-fun e!2581260 () Bool)

(declare-fun tp_is_empty!21737 () Bool)

(declare-fun tp!1268996 () Bool)

(assert (=> b!4159132 (= e!2581260 (and tp_is_empty!21737 tp!1268996))))

(declare-fun b!4159133 () Bool)

(declare-fun e!2581259 () Bool)

(assert (=> b!4159133 (= e!2581259 e!2581257)))

(declare-fun res!1703619 () Bool)

(assert (=> b!4159133 (=> (not res!1703619) (not e!2581257))))

(get-info :version)

(assert (=> b!4159133 (= res!1703619 (and (< lt!1482568 lt!1482566) (or (not ((_ is Cons!45389) l!3062)) (not (= (h!50809 l!3062) e1!32))) ((_ is Cons!45389) l!3062) (not (= (h!50809 l!3062) e1!32))))))

(assert (=> b!4159133 (= lt!1482566 (getIndex!868 l!3062 e2!32))))

(assert (=> b!4159133 (= lt!1482568 (getIndex!868 l!3062 e1!32))))

(declare-fun b!4159134 () Bool)

(declare-fun res!1703618 () Bool)

(assert (=> b!4159134 (=> res!1703618 e!2581258)))

(assert (=> b!4159134 (= res!1703618 (>= (getIndex!868 (t!343544 l!3062) e1!32) (getIndex!868 (t!343544 l!3062) e2!32)))))

(declare-fun b!4159135 () Bool)

(declare-fun res!1703614 () Bool)

(assert (=> b!4159135 (=> (not res!1703614) (not e!2581259))))

(assert (=> b!4159135 (= res!1703614 (contains!9247 l!3062 e2!32))))

(declare-fun b!4159136 () Bool)

(declare-fun res!1703620 () Bool)

(assert (=> b!4159136 (=> (not res!1703620) (not e!2581259))))

(assert (=> b!4159136 (= res!1703620 (not (= e1!32 e2!32)))))

(declare-fun res!1703616 () Bool)

(assert (=> start!396218 (=> (not res!1703616) (not e!2581259))))

(assert (=> start!396218 (= res!1703616 (contains!9247 l!3062 e1!32))))

(assert (=> start!396218 e!2581259))

(assert (=> start!396218 e!2581260))

(assert (=> start!396218 tp_is_empty!21737))

(assert (= (and start!396218 res!1703616) b!4159135))

(assert (= (and b!4159135 res!1703614) b!4159136))

(assert (= (and b!4159136 res!1703620) b!4159133))

(assert (= (and b!4159133 res!1703619) b!4159129))

(assert (= (and b!4159129 (not res!1703617)) b!4159130))

(assert (= (and b!4159130 (not res!1703615)) b!4159134))

(assert (= (and b!4159134 (not res!1703618)) b!4159131))

(assert (= (and start!396218 ((_ is Cons!45389) l!3062)) b!4159132))

(declare-fun m!4752911 () Bool)

(assert (=> b!4159130 m!4752911))

(declare-fun m!4752913 () Bool)

(assert (=> b!4159134 m!4752913))

(declare-fun m!4752915 () Bool)

(assert (=> b!4159134 m!4752915))

(declare-fun m!4752917 () Bool)

(assert (=> b!4159133 m!4752917))

(declare-fun m!4752919 () Bool)

(assert (=> b!4159133 m!4752919))

(declare-fun m!4752921 () Bool)

(assert (=> b!4159135 m!4752921))

(declare-fun m!4752923 () Bool)

(assert (=> start!396218 m!4752923))

(declare-fun m!4752925 () Bool)

(assert (=> b!4159129 m!4752925))

(declare-fun m!4752927 () Bool)

(assert (=> b!4159129 m!4752927))

(declare-fun m!4752929 () Bool)

(assert (=> b!4159129 m!4752929))

(declare-fun m!4752931 () Bool)

(assert (=> b!4159129 m!4752931))

(declare-fun m!4752933 () Bool)

(assert (=> b!4159129 m!4752933))

(declare-fun m!4752935 () Bool)

(assert (=> b!4159129 m!4752935))

(declare-fun m!4752937 () Bool)

(assert (=> b!4159129 m!4752937))

(declare-fun m!4752939 () Bool)

(assert (=> b!4159129 m!4752939))

(declare-fun m!4752941 () Bool)

(assert (=> b!4159131 m!4752941))

(declare-fun m!4752943 () Bool)

(assert (=> b!4159131 m!4752943))

(check-sat (not b!4159129) (not b!4159131) (not b!4159134) (not b!4159135) (not b!4159132) (not b!4159130) (not start!396218) (not b!4159133) tp_is_empty!21737)
(check-sat)
(get-model)

(declare-fun b!4159154 () Bool)

(declare-fun e!2581275 () Int)

(declare-fun e!2581274 () Int)

(assert (=> b!4159154 (= e!2581275 e!2581274)))

(declare-fun c!711785 () Bool)

(assert (=> b!4159154 (= c!711785 (and ((_ is Cons!45389) l!3062) (not (= (h!50809 l!3062) e2!32))))))

(declare-fun d!1229755 () Bool)

(declare-fun lt!1482575 () Int)

(assert (=> d!1229755 (>= lt!1482575 0)))

(assert (=> d!1229755 (= lt!1482575 e!2581275)))

(declare-fun c!711784 () Bool)

(assert (=> d!1229755 (= c!711784 (and ((_ is Cons!45389) l!3062) (= (h!50809 l!3062) e2!32)))))

(assert (=> d!1229755 (contains!9247 l!3062 e2!32)))

(assert (=> d!1229755 (= (getIndex!868 l!3062 e2!32) lt!1482575)))

(declare-fun b!4159153 () Bool)

(assert (=> b!4159153 (= e!2581275 0)))

(declare-fun b!4159155 () Bool)

(assert (=> b!4159155 (= e!2581274 (+ 1 (getIndex!868 (t!343544 l!3062) e2!32)))))

(declare-fun b!4159156 () Bool)

(assert (=> b!4159156 (= e!2581274 (- 1))))

(assert (= (and d!1229755 c!711784) b!4159153))

(assert (= (and d!1229755 (not c!711784)) b!4159154))

(assert (= (and b!4159154 c!711785) b!4159155))

(assert (= (and b!4159154 (not c!711785)) b!4159156))

(assert (=> d!1229755 m!4752921))

(assert (=> b!4159155 m!4752915))

(assert (=> b!4159133 d!1229755))

(declare-fun b!4159158 () Bool)

(declare-fun e!2581277 () Int)

(declare-fun e!2581276 () Int)

(assert (=> b!4159158 (= e!2581277 e!2581276)))

(declare-fun c!711787 () Bool)

(assert (=> b!4159158 (= c!711787 (and ((_ is Cons!45389) l!3062) (not (= (h!50809 l!3062) e1!32))))))

(declare-fun d!1229763 () Bool)

(declare-fun lt!1482576 () Int)

(assert (=> d!1229763 (>= lt!1482576 0)))

(assert (=> d!1229763 (= lt!1482576 e!2581277)))

(declare-fun c!711786 () Bool)

(assert (=> d!1229763 (= c!711786 (and ((_ is Cons!45389) l!3062) (= (h!50809 l!3062) e1!32)))))

(assert (=> d!1229763 (contains!9247 l!3062 e1!32)))

(assert (=> d!1229763 (= (getIndex!868 l!3062 e1!32) lt!1482576)))

(declare-fun b!4159157 () Bool)

(assert (=> b!4159157 (= e!2581277 0)))

(declare-fun b!4159159 () Bool)

(assert (=> b!4159159 (= e!2581276 (+ 1 (getIndex!868 (t!343544 l!3062) e1!32)))))

(declare-fun b!4159160 () Bool)

(assert (=> b!4159160 (= e!2581276 (- 1))))

(assert (= (and d!1229763 c!711786) b!4159157))

(assert (= (and d!1229763 (not c!711786)) b!4159158))

(assert (= (and b!4159158 c!711787) b!4159159))

(assert (= (and b!4159158 (not c!711787)) b!4159160))

(assert (=> d!1229763 m!4752923))

(assert (=> b!4159159 m!4752913))

(assert (=> b!4159133 d!1229763))

(declare-fun d!1229765 () Bool)

(declare-fun lt!1482582 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7036 (List!45513) (InoxSet B!2689))

(assert (=> d!1229765 (= lt!1482582 (select (content!7036 l!3062) e2!32))))

(declare-fun e!2581289 () Bool)

(assert (=> d!1229765 (= lt!1482582 e!2581289)))

(declare-fun res!1703634 () Bool)

(assert (=> d!1229765 (=> (not res!1703634) (not e!2581289))))

(assert (=> d!1229765 (= res!1703634 ((_ is Cons!45389) l!3062))))

(assert (=> d!1229765 (= (contains!9247 l!3062 e2!32) lt!1482582)))

(declare-fun b!4159177 () Bool)

(declare-fun e!2581290 () Bool)

(assert (=> b!4159177 (= e!2581289 e!2581290)))

(declare-fun res!1703633 () Bool)

(assert (=> b!4159177 (=> res!1703633 e!2581290)))

(assert (=> b!4159177 (= res!1703633 (= (h!50809 l!3062) e2!32))))

(declare-fun b!4159178 () Bool)

(assert (=> b!4159178 (= e!2581290 (contains!9247 (t!343544 l!3062) e2!32))))

(assert (= (and d!1229765 res!1703634) b!4159177))

(assert (= (and b!4159177 (not res!1703633)) b!4159178))

(declare-fun m!4752957 () Bool)

(assert (=> d!1229765 m!4752957))

(declare-fun m!4752959 () Bool)

(assert (=> d!1229765 m!4752959))

(assert (=> b!4159178 m!4752911))

(assert (=> b!4159135 d!1229765))

(declare-fun d!1229769 () Bool)

(assert (=> d!1229769 (contains!9247 (tail!6673 l!3062) e1!32)))

(declare-fun lt!1482588 () Unit!64563)

(declare-fun choose!25481 (List!45513 B!2689) Unit!64563)

(assert (=> d!1229769 (= lt!1482588 (choose!25481 l!3062 e1!32))))

(assert (=> d!1229769 (contains!9247 l!3062 e1!32)))

(assert (=> d!1229769 (= (lemmaContainsAndNotHdThenTlContains!24 l!3062 e1!32) lt!1482588)))

(declare-fun bs!595611 () Bool)

(assert (= bs!595611 d!1229769))

(assert (=> bs!595611 m!4752935))

(assert (=> bs!595611 m!4752935))

(declare-fun m!4752965 () Bool)

(assert (=> bs!595611 m!4752965))

(declare-fun m!4752967 () Bool)

(assert (=> bs!595611 m!4752967))

(assert (=> bs!595611 m!4752923))

(assert (=> b!4159129 d!1229769))

(declare-fun b!4159184 () Bool)

(declare-fun e!2581296 () Int)

(declare-fun e!2581295 () Int)

(assert (=> b!4159184 (= e!2581296 e!2581295)))

(declare-fun c!711797 () Bool)

(assert (=> b!4159184 (= c!711797 (and ((_ is Cons!45389) lt!1482567) (not (= (h!50809 lt!1482567) e1!32))))))

(declare-fun d!1229773 () Bool)

(declare-fun lt!1482590 () Int)

(assert (=> d!1229773 (>= lt!1482590 0)))

(assert (=> d!1229773 (= lt!1482590 e!2581296)))

(declare-fun c!711796 () Bool)

(assert (=> d!1229773 (= c!711796 (and ((_ is Cons!45389) lt!1482567) (= (h!50809 lt!1482567) e1!32)))))

(assert (=> d!1229773 (contains!9247 lt!1482567 e1!32)))

(assert (=> d!1229773 (= (getIndex!868 lt!1482567 e1!32) lt!1482590)))

(declare-fun b!4159183 () Bool)

(assert (=> b!4159183 (= e!2581296 0)))

(declare-fun b!4159185 () Bool)

(assert (=> b!4159185 (= e!2581295 (+ 1 (getIndex!868 (t!343544 lt!1482567) e1!32)))))

(declare-fun b!4159186 () Bool)

(assert (=> b!4159186 (= e!2581295 (- 1))))

(assert (= (and d!1229773 c!711796) b!4159183))

(assert (= (and d!1229773 (not c!711796)) b!4159184))

(assert (= (and b!4159184 c!711797) b!4159185))

(assert (= (and b!4159184 (not c!711797)) b!4159186))

(assert (=> d!1229773 m!4752929))

(declare-fun m!4752973 () Bool)

(assert (=> b!4159185 m!4752973))

(assert (=> b!4159129 d!1229773))

(declare-fun d!1229777 () Bool)

(assert (=> d!1229777 (= (getIndex!868 l!3062 e2!32) (+ (getIndex!868 (tail!6673 l!3062) e2!32) 1))))

(declare-fun lt!1482596 () Unit!64563)

(declare-fun choose!25482 (List!45513 B!2689) Unit!64563)

(assert (=> d!1229777 (= lt!1482596 (choose!25482 l!3062 e2!32))))

(assert (=> d!1229777 (contains!9247 l!3062 e2!32)))

(assert (=> d!1229777 (= (lemmaNotHeadSoGetIndexTailIsMinusOne!20 l!3062 e2!32) lt!1482596)))

(declare-fun bs!595613 () Bool)

(assert (= bs!595613 d!1229777))

(assert (=> bs!595613 m!4752917))

(assert (=> bs!595613 m!4752921))

(assert (=> bs!595613 m!4752935))

(declare-fun m!4752979 () Bool)

(assert (=> bs!595613 m!4752979))

(assert (=> bs!595613 m!4752935))

(declare-fun m!4752981 () Bool)

(assert (=> bs!595613 m!4752981))

(assert (=> b!4159129 d!1229777))

(declare-fun d!1229781 () Bool)

(declare-fun lt!1482598 () Bool)

(assert (=> d!1229781 (= lt!1482598 (select (content!7036 (t!343544 l!3062)) e1!32))))

(declare-fun e!2581301 () Bool)

(assert (=> d!1229781 (= lt!1482598 e!2581301)))

(declare-fun res!1703638 () Bool)

(assert (=> d!1229781 (=> (not res!1703638) (not e!2581301))))

(assert (=> d!1229781 (= res!1703638 ((_ is Cons!45389) (t!343544 l!3062)))))

(assert (=> d!1229781 (= (contains!9247 (t!343544 l!3062) e1!32) lt!1482598)))

(declare-fun b!4159189 () Bool)

(declare-fun e!2581302 () Bool)

(assert (=> b!4159189 (= e!2581301 e!2581302)))

(declare-fun res!1703637 () Bool)

(assert (=> b!4159189 (=> res!1703637 e!2581302)))

(assert (=> b!4159189 (= res!1703637 (= (h!50809 (t!343544 l!3062)) e1!32))))

(declare-fun b!4159190 () Bool)

(assert (=> b!4159190 (= e!2581302 (contains!9247 (t!343544 (t!343544 l!3062)) e1!32))))

(assert (= (and d!1229781 res!1703638) b!4159189))

(assert (= (and b!4159189 (not res!1703637)) b!4159190))

(declare-fun m!4752989 () Bool)

(assert (=> d!1229781 m!4752989))

(declare-fun m!4752991 () Bool)

(assert (=> d!1229781 m!4752991))

(declare-fun m!4752993 () Bool)

(assert (=> b!4159190 m!4752993))

(assert (=> b!4159129 d!1229781))

(declare-fun d!1229785 () Bool)

(declare-fun lt!1482599 () Bool)

(assert (=> d!1229785 (= lt!1482599 (select (content!7036 lt!1482567) e1!32))))

(declare-fun e!2581303 () Bool)

(assert (=> d!1229785 (= lt!1482599 e!2581303)))

(declare-fun res!1703640 () Bool)

(assert (=> d!1229785 (=> (not res!1703640) (not e!2581303))))

(assert (=> d!1229785 (= res!1703640 ((_ is Cons!45389) lt!1482567))))

(assert (=> d!1229785 (= (contains!9247 lt!1482567 e1!32) lt!1482599)))

(declare-fun b!4159191 () Bool)

(declare-fun e!2581304 () Bool)

(assert (=> b!4159191 (= e!2581303 e!2581304)))

(declare-fun res!1703639 () Bool)

(assert (=> b!4159191 (=> res!1703639 e!2581304)))

(assert (=> b!4159191 (= res!1703639 (= (h!50809 lt!1482567) e1!32))))

(declare-fun b!4159192 () Bool)

(assert (=> b!4159192 (= e!2581304 (contains!9247 (t!343544 lt!1482567) e1!32))))

(assert (= (and d!1229785 res!1703640) b!4159191))

(assert (= (and b!4159191 (not res!1703639)) b!4159192))

(declare-fun m!4752995 () Bool)

(assert (=> d!1229785 m!4752995))

(declare-fun m!4752997 () Bool)

(assert (=> d!1229785 m!4752997))

(declare-fun m!4752999 () Bool)

(assert (=> b!4159192 m!4752999))

(assert (=> b!4159129 d!1229785))

(declare-fun b!4159194 () Bool)

(declare-fun e!2581306 () Int)

(declare-fun e!2581305 () Int)

(assert (=> b!4159194 (= e!2581306 e!2581305)))

(declare-fun c!711799 () Bool)

(assert (=> b!4159194 (= c!711799 (and ((_ is Cons!45389) lt!1482567) (not (= (h!50809 lt!1482567) e2!32))))))

(declare-fun d!1229787 () Bool)

(declare-fun lt!1482600 () Int)

(assert (=> d!1229787 (>= lt!1482600 0)))

(assert (=> d!1229787 (= lt!1482600 e!2581306)))

(declare-fun c!711798 () Bool)

(assert (=> d!1229787 (= c!711798 (and ((_ is Cons!45389) lt!1482567) (= (h!50809 lt!1482567) e2!32)))))

(assert (=> d!1229787 (contains!9247 lt!1482567 e2!32)))

(assert (=> d!1229787 (= (getIndex!868 lt!1482567 e2!32) lt!1482600)))

(declare-fun b!4159193 () Bool)

(assert (=> b!4159193 (= e!2581306 0)))

(declare-fun b!4159195 () Bool)

(assert (=> b!4159195 (= e!2581305 (+ 1 (getIndex!868 (t!343544 lt!1482567) e2!32)))))

(declare-fun b!4159196 () Bool)

(assert (=> b!4159196 (= e!2581305 (- 1))))

(assert (= (and d!1229787 c!711798) b!4159193))

(assert (= (and d!1229787 (not c!711798)) b!4159194))

(assert (= (and b!4159194 c!711799) b!4159195))

(assert (= (and b!4159194 (not c!711799)) b!4159196))

(declare-fun m!4753005 () Bool)

(assert (=> d!1229787 m!4753005))

(declare-fun m!4753007 () Bool)

(assert (=> b!4159195 m!4753007))

(assert (=> b!4159129 d!1229787))

(declare-fun d!1229793 () Bool)

(assert (=> d!1229793 (= (tail!6673 l!3062) (t!343544 l!3062))))

(assert (=> b!4159129 d!1229793))

(declare-fun d!1229797 () Bool)

(assert (=> d!1229797 (= (getIndex!868 l!3062 e1!32) (+ (getIndex!868 (tail!6673 l!3062) e1!32) 1))))

(declare-fun lt!1482603 () Unit!64563)

(assert (=> d!1229797 (= lt!1482603 (choose!25482 l!3062 e1!32))))

(assert (=> d!1229797 (contains!9247 l!3062 e1!32)))

(assert (=> d!1229797 (= (lemmaNotHeadSoGetIndexTailIsMinusOne!20 l!3062 e1!32) lt!1482603)))

(declare-fun bs!595615 () Bool)

(assert (= bs!595615 d!1229797))

(assert (=> bs!595615 m!4752919))

(assert (=> bs!595615 m!4752923))

(assert (=> bs!595615 m!4752935))

(declare-fun m!4753011 () Bool)

(assert (=> bs!595615 m!4753011))

(assert (=> bs!595615 m!4752935))

(declare-fun m!4753013 () Bool)

(assert (=> bs!595615 m!4753013))

(assert (=> b!4159129 d!1229797))

(declare-fun b!4159200 () Bool)

(declare-fun e!2581310 () Int)

(declare-fun e!2581309 () Int)

(assert (=> b!4159200 (= e!2581310 e!2581309)))

(declare-fun c!711801 () Bool)

(assert (=> b!4159200 (= c!711801 (and ((_ is Cons!45389) (t!343544 l!3062)) (not (= (h!50809 (t!343544 l!3062)) e1!32))))))

(declare-fun d!1229799 () Bool)

(declare-fun lt!1482604 () Int)

(assert (=> d!1229799 (>= lt!1482604 0)))

(assert (=> d!1229799 (= lt!1482604 e!2581310)))

(declare-fun c!711800 () Bool)

(assert (=> d!1229799 (= c!711800 (and ((_ is Cons!45389) (t!343544 l!3062)) (= (h!50809 (t!343544 l!3062)) e1!32)))))

(assert (=> d!1229799 (contains!9247 (t!343544 l!3062) e1!32)))

(assert (=> d!1229799 (= (getIndex!868 (t!343544 l!3062) e1!32) lt!1482604)))

(declare-fun b!4159199 () Bool)

(assert (=> b!4159199 (= e!2581310 0)))

(declare-fun b!4159201 () Bool)

(assert (=> b!4159201 (= e!2581309 (+ 1 (getIndex!868 (t!343544 (t!343544 l!3062)) e1!32)))))

(declare-fun b!4159202 () Bool)

(assert (=> b!4159202 (= e!2581309 (- 1))))

(assert (= (and d!1229799 c!711800) b!4159199))

(assert (= (and d!1229799 (not c!711800)) b!4159200))

(assert (= (and b!4159200 c!711801) b!4159201))

(assert (= (and b!4159200 (not c!711801)) b!4159202))

(assert (=> d!1229799 m!4752925))

(declare-fun m!4753015 () Bool)

(assert (=> b!4159201 m!4753015))

(assert (=> b!4159134 d!1229799))

(declare-fun b!4159204 () Bool)

(declare-fun e!2581312 () Int)

(declare-fun e!2581311 () Int)

(assert (=> b!4159204 (= e!2581312 e!2581311)))

(declare-fun c!711803 () Bool)

(assert (=> b!4159204 (= c!711803 (and ((_ is Cons!45389) (t!343544 l!3062)) (not (= (h!50809 (t!343544 l!3062)) e2!32))))))

(declare-fun d!1229801 () Bool)

(declare-fun lt!1482605 () Int)

(assert (=> d!1229801 (>= lt!1482605 0)))

(assert (=> d!1229801 (= lt!1482605 e!2581312)))

(declare-fun c!711802 () Bool)

(assert (=> d!1229801 (= c!711802 (and ((_ is Cons!45389) (t!343544 l!3062)) (= (h!50809 (t!343544 l!3062)) e2!32)))))

(assert (=> d!1229801 (contains!9247 (t!343544 l!3062) e2!32)))

(assert (=> d!1229801 (= (getIndex!868 (t!343544 l!3062) e2!32) lt!1482605)))

(declare-fun b!4159203 () Bool)

(assert (=> b!4159203 (= e!2581312 0)))

(declare-fun b!4159205 () Bool)

(assert (=> b!4159205 (= e!2581311 (+ 1 (getIndex!868 (t!343544 (t!343544 l!3062)) e2!32)))))

(declare-fun b!4159206 () Bool)

(assert (=> b!4159206 (= e!2581311 (- 1))))

(assert (= (and d!1229801 c!711802) b!4159203))

(assert (= (and d!1229801 (not c!711802)) b!4159204))

(assert (= (and b!4159204 c!711803) b!4159205))

(assert (= (and b!4159204 (not c!711803)) b!4159206))

(assert (=> d!1229801 m!4752911))

(declare-fun m!4753017 () Bool)

(assert (=> b!4159205 m!4753017))

(assert (=> b!4159134 d!1229801))

(declare-fun d!1229803 () Bool)

(declare-fun lt!1482615 () Int)

(assert (=> d!1229803 (>= lt!1482615 0)))

(declare-fun e!2581325 () Int)

(assert (=> d!1229803 (= lt!1482615 e!2581325)))

(declare-fun c!711814 () Bool)

(assert (=> d!1229803 (= c!711814 ((_ is Nil!45389) (t!343544 l!3062)))))

(assert (=> d!1229803 (= (size!33454 (t!343544 l!3062)) lt!1482615)))

(declare-fun b!4159229 () Bool)

(assert (=> b!4159229 (= e!2581325 0)))

(declare-fun b!4159230 () Bool)

(assert (=> b!4159230 (= e!2581325 (+ 1 (size!33454 (t!343544 (t!343544 l!3062)))))))

(assert (= (and d!1229803 c!711814) b!4159229))

(assert (= (and d!1229803 (not c!711814)) b!4159230))

(declare-fun m!4753027 () Bool)

(assert (=> b!4159230 m!4753027))

(assert (=> b!4159131 d!1229803))

(declare-fun d!1229815 () Bool)

(declare-fun lt!1482617 () Int)

(assert (=> d!1229815 (>= lt!1482617 0)))

(declare-fun e!2581328 () Int)

(assert (=> d!1229815 (= lt!1482617 e!2581328)))

(declare-fun c!711817 () Bool)

(assert (=> d!1229815 (= c!711817 ((_ is Nil!45389) l!3062))))

(assert (=> d!1229815 (= (size!33454 l!3062) lt!1482617)))

(declare-fun b!4159235 () Bool)

(assert (=> b!4159235 (= e!2581328 0)))

(declare-fun b!4159236 () Bool)

(assert (=> b!4159236 (= e!2581328 (+ 1 (size!33454 (t!343544 l!3062))))))

(assert (= (and d!1229815 c!711817) b!4159235))

(assert (= (and d!1229815 (not c!711817)) b!4159236))

(assert (=> b!4159236 m!4752941))

(assert (=> b!4159131 d!1229815))

(declare-fun d!1229817 () Bool)

(declare-fun lt!1482618 () Bool)

(assert (=> d!1229817 (= lt!1482618 (select (content!7036 l!3062) e1!32))))

(declare-fun e!2581329 () Bool)

(assert (=> d!1229817 (= lt!1482618 e!2581329)))

(declare-fun res!1703646 () Bool)

(assert (=> d!1229817 (=> (not res!1703646) (not e!2581329))))

(assert (=> d!1229817 (= res!1703646 ((_ is Cons!45389) l!3062))))

(assert (=> d!1229817 (= (contains!9247 l!3062 e1!32) lt!1482618)))

(declare-fun b!4159237 () Bool)

(declare-fun e!2581330 () Bool)

(assert (=> b!4159237 (= e!2581329 e!2581330)))

(declare-fun res!1703645 () Bool)

(assert (=> b!4159237 (=> res!1703645 e!2581330)))

(assert (=> b!4159237 (= res!1703645 (= (h!50809 l!3062) e1!32))))

(declare-fun b!4159238 () Bool)

(assert (=> b!4159238 (= e!2581330 (contains!9247 (t!343544 l!3062) e1!32))))

(assert (= (and d!1229817 res!1703646) b!4159237))

(assert (= (and b!4159237 (not res!1703645)) b!4159238))

(assert (=> d!1229817 m!4752957))

(declare-fun m!4753031 () Bool)

(assert (=> d!1229817 m!4753031))

(assert (=> b!4159238 m!4752925))

(assert (=> start!396218 d!1229817))

(declare-fun d!1229821 () Bool)

(declare-fun lt!1482620 () Bool)

(assert (=> d!1229821 (= lt!1482620 (select (content!7036 (t!343544 l!3062)) e2!32))))

(declare-fun e!2581333 () Bool)

(assert (=> d!1229821 (= lt!1482620 e!2581333)))

(declare-fun res!1703648 () Bool)

(assert (=> d!1229821 (=> (not res!1703648) (not e!2581333))))

(assert (=> d!1229821 (= res!1703648 ((_ is Cons!45389) (t!343544 l!3062)))))

(assert (=> d!1229821 (= (contains!9247 (t!343544 l!3062) e2!32) lt!1482620)))

(declare-fun b!4159243 () Bool)

(declare-fun e!2581334 () Bool)

(assert (=> b!4159243 (= e!2581333 e!2581334)))

(declare-fun res!1703647 () Bool)

(assert (=> b!4159243 (=> res!1703647 e!2581334)))

(assert (=> b!4159243 (= res!1703647 (= (h!50809 (t!343544 l!3062)) e2!32))))

(declare-fun b!4159244 () Bool)

(assert (=> b!4159244 (= e!2581334 (contains!9247 (t!343544 (t!343544 l!3062)) e2!32))))

(assert (= (and d!1229821 res!1703648) b!4159243))

(assert (= (and b!4159243 (not res!1703647)) b!4159244))

(assert (=> d!1229821 m!4752989))

(declare-fun m!4753033 () Bool)

(assert (=> d!1229821 m!4753033))

(declare-fun m!4753035 () Bool)

(assert (=> b!4159244 m!4753035))

(assert (=> b!4159130 d!1229821))

(declare-fun b!4159254 () Bool)

(declare-fun e!2581340 () Bool)

(declare-fun tp!1269002 () Bool)

(assert (=> b!4159254 (= e!2581340 (and tp_is_empty!21737 tp!1269002))))

(assert (=> b!4159132 (= tp!1268996 e!2581340)))

(assert (= (and b!4159132 ((_ is Cons!45389) (t!343544 l!3062))) b!4159254))

(check-sat (not d!1229773) (not b!4159254) (not b!4159178) (not d!1229763) (not d!1229817) (not b!4159185) (not d!1229765) (not b!4159159) (not b!4159190) (not d!1229801) (not d!1229821) (not d!1229787) (not d!1229781) (not d!1229769) (not d!1229797) (not b!4159238) (not b!4159205) (not b!4159192) (not d!1229777) (not b!4159244) (not d!1229785) (not d!1229799) (not b!4159236) (not b!4159201) (not b!4159155) (not d!1229755) (not b!4159230) tp_is_empty!21737 (not b!4159195))
(check-sat)
