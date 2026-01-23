; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!695060 () Bool)

(assert start!695060)

(declare-fun res!2910853 () Bool)

(declare-fun e!4287396 () Bool)

(assert (=> start!695060 (=> (not res!2910853) (not e!4287396))))

(declare-datatypes ((B!3421 0))(
  ( (B!3422 (val!28182 Int)) )
))
(declare-datatypes ((List!69275 0))(
  ( (Nil!69151) (Cons!69151 (h!75599 B!3421) (t!383292 List!69275)) )
))
(declare-fun l1!1513 () List!69275)

(get-info :version)

(assert (=> start!695060 (= res!2910853 ((_ is Cons!69151) l1!1513))))

(assert (=> start!695060 e!4287396))

(declare-fun e!4287394 () Bool)

(assert (=> start!695060 e!4287394))

(declare-fun e!4287395 () Bool)

(assert (=> start!695060 e!4287395))

(declare-fun b!7133857 () Bool)

(declare-fun l2!1482 () List!69275)

(declare-fun subseq!771 (List!69275 List!69275) Bool)

(declare-fun ++!16241 (List!69275 List!69275) List!69275)

(assert (=> b!7133857 (= e!4287396 (not (subseq!771 l2!1482 (++!16241 l1!1513 l2!1482))))))

(assert (=> b!7133857 (subseq!771 l2!1482 (++!16241 (t!383292 l1!1513) l2!1482))))

(declare-datatypes ((Unit!163067 0))(
  ( (Unit!163068) )
))
(declare-fun lt!2565286 () Unit!163067)

(declare-fun lemmaConcatThenSecondSubseqOfTot!36 (List!69275 List!69275) Unit!163067)

(assert (=> b!7133857 (= lt!2565286 (lemmaConcatThenSecondSubseqOfTot!36 (t!383292 l1!1513) l2!1482))))

(declare-fun b!7133858 () Bool)

(declare-fun tp_is_empty!45843 () Bool)

(declare-fun tp!1966447 () Bool)

(assert (=> b!7133858 (= e!4287394 (and tp_is_empty!45843 tp!1966447))))

(declare-fun b!7133859 () Bool)

(declare-fun tp!1966446 () Bool)

(assert (=> b!7133859 (= e!4287395 (and tp_is_empty!45843 tp!1966446))))

(assert (= (and start!695060 res!2910853) b!7133857))

(assert (= (and start!695060 ((_ is Cons!69151) l1!1513)) b!7133858))

(assert (= (and start!695060 ((_ is Cons!69151) l2!1482)) b!7133859))

(declare-fun m!7850800 () Bool)

(assert (=> b!7133857 m!7850800))

(declare-fun m!7850802 () Bool)

(assert (=> b!7133857 m!7850802))

(assert (=> b!7133857 m!7850800))

(declare-fun m!7850804 () Bool)

(assert (=> b!7133857 m!7850804))

(declare-fun m!7850806 () Bool)

(assert (=> b!7133857 m!7850806))

(assert (=> b!7133857 m!7850804))

(declare-fun m!7850808 () Bool)

(assert (=> b!7133857 m!7850808))

(check-sat (not b!7133857) (not b!7133859) (not b!7133858) tp_is_empty!45843)
(check-sat)
(get-model)

(declare-fun b!7133882 () Bool)

(declare-fun res!2910864 () Bool)

(declare-fun e!4287405 () Bool)

(assert (=> b!7133882 (=> (not res!2910864) (not e!4287405))))

(declare-fun lt!2565292 () List!69275)

(declare-fun size!41500 (List!69275) Int)

(assert (=> b!7133882 (= res!2910864 (= (size!41500 lt!2565292) (+ (size!41500 l1!1513) (size!41500 l2!1482))))))

(declare-fun b!7133881 () Bool)

(declare-fun e!4287408 () List!69275)

(assert (=> b!7133881 (= e!4287408 (Cons!69151 (h!75599 l1!1513) (++!16241 (t!383292 l1!1513) l2!1482)))))

(declare-fun d!2226057 () Bool)

(assert (=> d!2226057 e!4287405))

(declare-fun res!2910865 () Bool)

(assert (=> d!2226057 (=> (not res!2910865) (not e!4287405))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!14151 (List!69275) (InoxSet B!3421))

(assert (=> d!2226057 (= res!2910865 (= (content!14151 lt!2565292) ((_ map or) (content!14151 l1!1513) (content!14151 l2!1482))))))

(assert (=> d!2226057 (= lt!2565292 e!4287408)))

(declare-fun c!1330468 () Bool)

(assert (=> d!2226057 (= c!1330468 ((_ is Nil!69151) l1!1513))))

(assert (=> d!2226057 (= (++!16241 l1!1513 l2!1482) lt!2565292)))

(declare-fun b!7133883 () Bool)

(assert (=> b!7133883 (= e!4287405 (or (not (= l2!1482 Nil!69151)) (= lt!2565292 l1!1513)))))

(declare-fun b!7133880 () Bool)

(assert (=> b!7133880 (= e!4287408 l2!1482)))

(assert (= (and d!2226057 c!1330468) b!7133880))

(assert (= (and d!2226057 (not c!1330468)) b!7133881))

(assert (= (and d!2226057 res!2910865) b!7133882))

(assert (= (and b!7133882 res!2910864) b!7133883))

(declare-fun m!7850811 () Bool)

(assert (=> b!7133882 m!7850811))

(declare-fun m!7850814 () Bool)

(assert (=> b!7133882 m!7850814))

(declare-fun m!7850818 () Bool)

(assert (=> b!7133882 m!7850818))

(assert (=> b!7133881 m!7850800))

(declare-fun m!7850826 () Bool)

(assert (=> d!2226057 m!7850826))

(declare-fun m!7850830 () Bool)

(assert (=> d!2226057 m!7850830))

(declare-fun m!7850832 () Bool)

(assert (=> d!2226057 m!7850832))

(assert (=> b!7133857 d!2226057))

(declare-fun b!7133889 () Bool)

(declare-fun res!2910868 () Bool)

(declare-fun e!4287409 () Bool)

(assert (=> b!7133889 (=> (not res!2910868) (not e!4287409))))

(declare-fun lt!2565293 () List!69275)

(assert (=> b!7133889 (= res!2910868 (= (size!41500 lt!2565293) (+ (size!41500 (t!383292 l1!1513)) (size!41500 l2!1482))))))

(declare-fun b!7133887 () Bool)

(declare-fun e!4287411 () List!69275)

(assert (=> b!7133887 (= e!4287411 (Cons!69151 (h!75599 (t!383292 l1!1513)) (++!16241 (t!383292 (t!383292 l1!1513)) l2!1482)))))

(declare-fun d!2226061 () Bool)

(assert (=> d!2226061 e!4287409))

(declare-fun res!2910869 () Bool)

(assert (=> d!2226061 (=> (not res!2910869) (not e!4287409))))

(assert (=> d!2226061 (= res!2910869 (= (content!14151 lt!2565293) ((_ map or) (content!14151 (t!383292 l1!1513)) (content!14151 l2!1482))))))

(assert (=> d!2226061 (= lt!2565293 e!4287411)))

(declare-fun c!1330470 () Bool)

(assert (=> d!2226061 (= c!1330470 ((_ is Nil!69151) (t!383292 l1!1513)))))

(assert (=> d!2226061 (= (++!16241 (t!383292 l1!1513) l2!1482) lt!2565293)))

(declare-fun b!7133891 () Bool)

(assert (=> b!7133891 (= e!4287409 (or (not (= l2!1482 Nil!69151)) (= lt!2565293 (t!383292 l1!1513))))))

(declare-fun b!7133885 () Bool)

(assert (=> b!7133885 (= e!4287411 l2!1482)))

(assert (= (and d!2226061 c!1330470) b!7133885))

(assert (= (and d!2226061 (not c!1330470)) b!7133887))

(assert (= (and d!2226061 res!2910869) b!7133889))

(assert (= (and b!7133889 res!2910868) b!7133891))

(declare-fun m!7850836 () Bool)

(assert (=> b!7133889 m!7850836))

(declare-fun m!7850840 () Bool)

(assert (=> b!7133889 m!7850840))

(assert (=> b!7133889 m!7850818))

(declare-fun m!7850844 () Bool)

(assert (=> b!7133887 m!7850844))

(declare-fun m!7850848 () Bool)

(assert (=> d!2226061 m!7850848))

(declare-fun m!7850850 () Bool)

(assert (=> d!2226061 m!7850850))

(assert (=> d!2226061 m!7850832))

(assert (=> b!7133857 d!2226061))

(declare-fun d!2226065 () Bool)

(assert (=> d!2226065 (subseq!771 l2!1482 (++!16241 (t!383292 l1!1513) l2!1482))))

(declare-fun lt!2565299 () Unit!163067)

(declare-fun choose!55139 (List!69275 List!69275) Unit!163067)

(assert (=> d!2226065 (= lt!2565299 (choose!55139 (t!383292 l1!1513) l2!1482))))

(assert (=> d!2226065 (= (lemmaConcatThenSecondSubseqOfTot!36 (t!383292 l1!1513) l2!1482) lt!2565299)))

(declare-fun bs!1887064 () Bool)

(assert (= bs!1887064 d!2226065))

(assert (=> bs!1887064 m!7850800))

(assert (=> bs!1887064 m!7850800))

(assert (=> bs!1887064 m!7850802))

(declare-fun m!7850854 () Bool)

(assert (=> bs!1887064 m!7850854))

(assert (=> b!7133857 d!2226065))

(declare-fun b!7133908 () Bool)

(declare-fun e!4287432 () Bool)

(declare-fun e!4287429 () Bool)

(assert (=> b!7133908 (= e!4287432 e!4287429)))

(declare-fun res!2910889 () Bool)

(assert (=> b!7133908 (=> (not res!2910889) (not e!4287429))))

(assert (=> b!7133908 (= res!2910889 ((_ is Cons!69151) (++!16241 l1!1513 l2!1482)))))

(declare-fun b!7133909 () Bool)

(declare-fun e!4287431 () Bool)

(assert (=> b!7133909 (= e!4287429 e!4287431)))

(declare-fun res!2910887 () Bool)

(assert (=> b!7133909 (=> res!2910887 e!4287431)))

(declare-fun e!4287430 () Bool)

(assert (=> b!7133909 (= res!2910887 e!4287430)))

(declare-fun res!2910886 () Bool)

(assert (=> b!7133909 (=> (not res!2910886) (not e!4287430))))

(assert (=> b!7133909 (= res!2910886 (= (h!75599 l2!1482) (h!75599 (++!16241 l1!1513 l2!1482))))))

(declare-fun d!2226067 () Bool)

(declare-fun res!2910888 () Bool)

(assert (=> d!2226067 (=> res!2910888 e!4287432)))

(assert (=> d!2226067 (= res!2910888 ((_ is Nil!69151) l2!1482))))

(assert (=> d!2226067 (= (subseq!771 l2!1482 (++!16241 l1!1513 l2!1482)) e!4287432)))

(declare-fun b!7133910 () Bool)

(assert (=> b!7133910 (= e!4287430 (subseq!771 (t!383292 l2!1482) (t!383292 (++!16241 l1!1513 l2!1482))))))

(declare-fun b!7133911 () Bool)

(assert (=> b!7133911 (= e!4287431 (subseq!771 l2!1482 (t!383292 (++!16241 l1!1513 l2!1482))))))

(assert (= (and d!2226067 (not res!2910888)) b!7133908))

(assert (= (and b!7133908 res!2910889) b!7133909))

(assert (= (and b!7133909 res!2910886) b!7133910))

(assert (= (and b!7133909 (not res!2910887)) b!7133911))

(declare-fun m!7850858 () Bool)

(assert (=> b!7133910 m!7850858))

(declare-fun m!7850860 () Bool)

(assert (=> b!7133911 m!7850860))

(assert (=> b!7133857 d!2226067))

(declare-fun b!7133916 () Bool)

(declare-fun e!4287440 () Bool)

(declare-fun e!4287437 () Bool)

(assert (=> b!7133916 (= e!4287440 e!4287437)))

(declare-fun res!2910897 () Bool)

(assert (=> b!7133916 (=> (not res!2910897) (not e!4287437))))

(assert (=> b!7133916 (= res!2910897 ((_ is Cons!69151) (++!16241 (t!383292 l1!1513) l2!1482)))))

(declare-fun b!7133917 () Bool)

(declare-fun e!4287439 () Bool)

(assert (=> b!7133917 (= e!4287437 e!4287439)))

(declare-fun res!2910895 () Bool)

(assert (=> b!7133917 (=> res!2910895 e!4287439)))

(declare-fun e!4287438 () Bool)

(assert (=> b!7133917 (= res!2910895 e!4287438)))

(declare-fun res!2910894 () Bool)

(assert (=> b!7133917 (=> (not res!2910894) (not e!4287438))))

(assert (=> b!7133917 (= res!2910894 (= (h!75599 l2!1482) (h!75599 (++!16241 (t!383292 l1!1513) l2!1482))))))

(declare-fun d!2226071 () Bool)

(declare-fun res!2910896 () Bool)

(assert (=> d!2226071 (=> res!2910896 e!4287440)))

(assert (=> d!2226071 (= res!2910896 ((_ is Nil!69151) l2!1482))))

(assert (=> d!2226071 (= (subseq!771 l2!1482 (++!16241 (t!383292 l1!1513) l2!1482)) e!4287440)))

(declare-fun b!7133918 () Bool)

(assert (=> b!7133918 (= e!4287438 (subseq!771 (t!383292 l2!1482) (t!383292 (++!16241 (t!383292 l1!1513) l2!1482))))))

(declare-fun b!7133919 () Bool)

(assert (=> b!7133919 (= e!4287439 (subseq!771 l2!1482 (t!383292 (++!16241 (t!383292 l1!1513) l2!1482))))))

(assert (= (and d!2226071 (not res!2910896)) b!7133916))

(assert (= (and b!7133916 res!2910897) b!7133917))

(assert (= (and b!7133917 res!2910894) b!7133918))

(assert (= (and b!7133917 (not res!2910895)) b!7133919))

(declare-fun m!7850866 () Bool)

(assert (=> b!7133918 m!7850866))

(declare-fun m!7850868 () Bool)

(assert (=> b!7133919 m!7850868))

(assert (=> b!7133857 d!2226071))

(declare-fun b!7133932 () Bool)

(declare-fun e!4287449 () Bool)

(declare-fun tp!1966452 () Bool)

(assert (=> b!7133932 (= e!4287449 (and tp_is_empty!45843 tp!1966452))))

(assert (=> b!7133859 (= tp!1966446 e!4287449)))

(assert (= (and b!7133859 ((_ is Cons!69151) (t!383292 l2!1482))) b!7133932))

(declare-fun b!7133934 () Bool)

(declare-fun e!4287451 () Bool)

(declare-fun tp!1966454 () Bool)

(assert (=> b!7133934 (= e!4287451 (and tp_is_empty!45843 tp!1966454))))

(assert (=> b!7133858 (= tp!1966447 e!4287451)))

(assert (= (and b!7133858 ((_ is Cons!69151) (t!383292 l1!1513))) b!7133934))

(check-sat (not b!7133911) (not d!2226061) (not b!7133887) (not b!7133932) (not b!7133919) (not b!7133918) (not b!7133889) (not b!7133934) tp_is_empty!45843 (not d!2226057) (not d!2226065) (not b!7133910) (not b!7133881) (not b!7133882))
(check-sat)
