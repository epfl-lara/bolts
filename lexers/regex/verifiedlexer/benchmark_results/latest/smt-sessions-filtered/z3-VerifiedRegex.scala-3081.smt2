; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!183226 () Bool)

(assert start!183226)

(declare-fun b!1840578 () Bool)

(declare-fun e!1176239 () Bool)

(declare-fun e!1176236 () Bool)

(assert (=> b!1840578 (= e!1176239 e!1176236)))

(declare-fun res!827216 () Bool)

(assert (=> b!1840578 (=> (not res!827216) (not e!1176236))))

(declare-fun lt!714167 () Int)

(declare-datatypes ((B!1577 0))(
  ( (B!1578 (val!5736 Int)) )
))
(declare-datatypes ((List!20336 0))(
  ( (Nil!20266) (Cons!20266 (h!25667 B!1577) (t!171765 List!20336)) )
))
(declare-fun lt!714165 () List!20336)

(declare-fun size!16066 (List!20336) Int)

(assert (=> b!1840578 (= res!827216 (<= (+ 1 lt!714167) (size!16066 lt!714165)))))

(declare-fun p!2031 () List!20336)

(assert (=> b!1840578 (= lt!714167 (size!16066 (t!171765 p!2031)))))

(declare-fun b!1840579 () Bool)

(declare-fun e!1176238 () Bool)

(declare-fun tp_is_empty!8325 () Bool)

(declare-fun tp!520430 () Bool)

(assert (=> b!1840579 (= e!1176238 (and tp_is_empty!8325 tp!520430))))

(declare-fun b!1840580 () Bool)

(declare-fun res!827214 () Bool)

(declare-fun e!1176240 () Bool)

(assert (=> b!1840580 (=> (not res!827214) (not e!1176240))))

(get-info :version)

(assert (=> b!1840580 (= res!827214 ((_ is Cons!20266) p!2031))))

(declare-fun b!1840581 () Bool)

(assert (=> b!1840581 (= e!1176240 e!1176239)))

(declare-fun res!827215 () Bool)

(assert (=> b!1840581 (=> (not res!827215) (not e!1176239))))

(declare-fun isPrefix!1875 (List!20336 List!20336) Bool)

(assert (=> b!1840581 (= res!827215 (isPrefix!1875 (t!171765 p!2031) lt!714165))))

(declare-fun l!3477 () List!20336)

(declare-fun tail!2783 (List!20336) List!20336)

(assert (=> b!1840581 (= lt!714165 (tail!2783 l!3477))))

(declare-fun b!1840582 () Bool)

(declare-fun e!1176235 () Bool)

(declare-fun tp!520429 () Bool)

(assert (=> b!1840582 (= e!1176235 (and tp_is_empty!8325 tp!520429))))

(declare-fun b!1840583 () Bool)

(declare-fun e!1176237 () Bool)

(assert (=> b!1840583 (= e!1176237 e!1176240)))

(declare-fun res!827212 () Bool)

(assert (=> b!1840583 (=> (not res!827212) (not e!1176240))))

(declare-fun lt!714166 () Int)

(assert (=> b!1840583 (= res!827212 (<= (+ 1 lt!714166) (size!16066 l!3477)))))

(assert (=> b!1840583 (= lt!714166 (size!16066 p!2031))))

(declare-fun b!1840584 () Bool)

(declare-fun head!4319 (List!20336) B!1577)

(declare-fun getSuffix!986 (List!20336 List!20336) List!20336)

(declare-fun apply!5447 (List!20336 Int) B!1577)

(assert (=> b!1840584 (= e!1176236 (not (= (head!4319 (getSuffix!986 l!3477 p!2031)) (apply!5447 l!3477 lt!714166))))))

(assert (=> b!1840584 (= (head!4319 (getSuffix!986 lt!714165 (t!171765 p!2031))) (apply!5447 lt!714165 lt!714167))))

(declare-datatypes ((Unit!34975 0))(
  ( (Unit!34976) )
))
(declare-fun lt!714168 () Unit!34975)

(declare-fun lemmaGetSuffixHeadApplyNPlusOne!10 (List!20336 List!20336) Unit!34975)

(assert (=> b!1840584 (= lt!714168 (lemmaGetSuffixHeadApplyNPlusOne!10 lt!714165 (t!171765 p!2031)))))

(declare-fun res!827213 () Bool)

(assert (=> start!183226 (=> (not res!827213) (not e!1176237))))

(assert (=> start!183226 (= res!827213 (isPrefix!1875 p!2031 l!3477))))

(assert (=> start!183226 e!1176237))

(assert (=> start!183226 e!1176235))

(assert (=> start!183226 e!1176238))

(assert (= (and start!183226 res!827213) b!1840583))

(assert (= (and b!1840583 res!827212) b!1840580))

(assert (= (and b!1840580 res!827214) b!1840581))

(assert (= (and b!1840581 res!827215) b!1840578))

(assert (= (and b!1840578 res!827216) b!1840584))

(assert (= (and start!183226 ((_ is Cons!20266) p!2031)) b!1840582))

(assert (= (and start!183226 ((_ is Cons!20266) l!3477)) b!1840579))

(declare-fun m!2268049 () Bool)

(assert (=> b!1840584 m!2268049))

(declare-fun m!2268051 () Bool)

(assert (=> b!1840584 m!2268051))

(declare-fun m!2268053 () Bool)

(assert (=> b!1840584 m!2268053))

(declare-fun m!2268055 () Bool)

(assert (=> b!1840584 m!2268055))

(assert (=> b!1840584 m!2268053))

(declare-fun m!2268057 () Bool)

(assert (=> b!1840584 m!2268057))

(declare-fun m!2268059 () Bool)

(assert (=> b!1840584 m!2268059))

(assert (=> b!1840584 m!2268059))

(declare-fun m!2268061 () Bool)

(assert (=> b!1840584 m!2268061))

(declare-fun m!2268063 () Bool)

(assert (=> start!183226 m!2268063))

(declare-fun m!2268065 () Bool)

(assert (=> b!1840578 m!2268065))

(declare-fun m!2268067 () Bool)

(assert (=> b!1840578 m!2268067))

(declare-fun m!2268069 () Bool)

(assert (=> b!1840581 m!2268069))

(declare-fun m!2268071 () Bool)

(assert (=> b!1840581 m!2268071))

(declare-fun m!2268073 () Bool)

(assert (=> b!1840583 m!2268073))

(declare-fun m!2268075 () Bool)

(assert (=> b!1840583 m!2268075))

(check-sat (not b!1840582) tp_is_empty!8325 (not start!183226) (not b!1840579) (not b!1840578) (not b!1840584) (not b!1840581) (not b!1840583))
(check-sat)
(get-model)

(declare-fun b!1840599 () Bool)

(declare-fun e!1176251 () Bool)

(declare-fun e!1176250 () Bool)

(assert (=> b!1840599 (= e!1176251 e!1176250)))

(declare-fun res!827225 () Bool)

(assert (=> b!1840599 (=> (not res!827225) (not e!1176250))))

(assert (=> b!1840599 (= res!827225 (not ((_ is Nil!20266) lt!714165)))))

(declare-fun b!1840602 () Bool)

(declare-fun e!1176252 () Bool)

(assert (=> b!1840602 (= e!1176252 (>= (size!16066 lt!714165) (size!16066 (t!171765 p!2031))))))

(declare-fun b!1840601 () Bool)

(assert (=> b!1840601 (= e!1176250 (isPrefix!1875 (tail!2783 (t!171765 p!2031)) (tail!2783 lt!714165)))))

(declare-fun b!1840600 () Bool)

(declare-fun res!827227 () Bool)

(assert (=> b!1840600 (=> (not res!827227) (not e!1176250))))

(assert (=> b!1840600 (= res!827227 (= (head!4319 (t!171765 p!2031)) (head!4319 lt!714165)))))

(declare-fun d!562822 () Bool)

(assert (=> d!562822 e!1176252))

(declare-fun res!827226 () Bool)

(assert (=> d!562822 (=> res!827226 e!1176252)))

(declare-fun lt!714174 () Bool)

(assert (=> d!562822 (= res!827226 (not lt!714174))))

(assert (=> d!562822 (= lt!714174 e!1176251)))

(declare-fun res!827228 () Bool)

(assert (=> d!562822 (=> res!827228 e!1176251)))

(assert (=> d!562822 (= res!827228 ((_ is Nil!20266) (t!171765 p!2031)))))

(assert (=> d!562822 (= (isPrefix!1875 (t!171765 p!2031) lt!714165) lt!714174)))

(assert (= (and d!562822 (not res!827228)) b!1840599))

(assert (= (and b!1840599 res!827225) b!1840600))

(assert (= (and b!1840600 res!827227) b!1840601))

(assert (= (and d!562822 (not res!827226)) b!1840602))

(assert (=> b!1840602 m!2268065))

(assert (=> b!1840602 m!2268067))

(declare-fun m!2268081 () Bool)

(assert (=> b!1840601 m!2268081))

(declare-fun m!2268083 () Bool)

(assert (=> b!1840601 m!2268083))

(assert (=> b!1840601 m!2268081))

(assert (=> b!1840601 m!2268083))

(declare-fun m!2268085 () Bool)

(assert (=> b!1840601 m!2268085))

(declare-fun m!2268087 () Bool)

(assert (=> b!1840600 m!2268087))

(declare-fun m!2268089 () Bool)

(assert (=> b!1840600 m!2268089))

(assert (=> b!1840581 d!562822))

(declare-fun d!562826 () Bool)

(assert (=> d!562826 (= (tail!2783 l!3477) (t!171765 l!3477))))

(assert (=> b!1840581 d!562826))

(declare-fun d!562828 () Bool)

(declare-fun lt!714180 () Int)

(assert (=> d!562828 (>= lt!714180 0)))

(declare-fun e!1176261 () Int)

(assert (=> d!562828 (= lt!714180 e!1176261)))

(declare-fun c!300396 () Bool)

(assert (=> d!562828 (= c!300396 ((_ is Nil!20266) lt!714165))))

(assert (=> d!562828 (= (size!16066 lt!714165) lt!714180)))

(declare-fun b!1840616 () Bool)

(assert (=> b!1840616 (= e!1176261 0)))

(declare-fun b!1840617 () Bool)

(assert (=> b!1840617 (= e!1176261 (+ 1 (size!16066 (t!171765 lt!714165))))))

(assert (= (and d!562828 c!300396) b!1840616))

(assert (= (and d!562828 (not c!300396)) b!1840617))

(declare-fun m!2268099 () Bool)

(assert (=> b!1840617 m!2268099))

(assert (=> b!1840578 d!562828))

(declare-fun d!562834 () Bool)

(declare-fun lt!714182 () Int)

(assert (=> d!562834 (>= lt!714182 0)))

(declare-fun e!1176263 () Int)

(assert (=> d!562834 (= lt!714182 e!1176263)))

(declare-fun c!300398 () Bool)

(assert (=> d!562834 (= c!300398 ((_ is Nil!20266) (t!171765 p!2031)))))

(assert (=> d!562834 (= (size!16066 (t!171765 p!2031)) lt!714182)))

(declare-fun b!1840620 () Bool)

(assert (=> b!1840620 (= e!1176263 0)))

(declare-fun b!1840621 () Bool)

(assert (=> b!1840621 (= e!1176263 (+ 1 (size!16066 (t!171765 (t!171765 p!2031)))))))

(assert (= (and d!562834 c!300398) b!1840620))

(assert (= (and d!562834 (not c!300398)) b!1840621))

(declare-fun m!2268105 () Bool)

(assert (=> b!1840621 m!2268105))

(assert (=> b!1840578 d!562834))

(declare-fun d!562838 () Bool)

(declare-fun lt!714183 () Int)

(assert (=> d!562838 (>= lt!714183 0)))

(declare-fun e!1176264 () Int)

(assert (=> d!562838 (= lt!714183 e!1176264)))

(declare-fun c!300399 () Bool)

(assert (=> d!562838 (= c!300399 ((_ is Nil!20266) l!3477))))

(assert (=> d!562838 (= (size!16066 l!3477) lt!714183)))

(declare-fun b!1840622 () Bool)

(assert (=> b!1840622 (= e!1176264 0)))

(declare-fun b!1840623 () Bool)

(assert (=> b!1840623 (= e!1176264 (+ 1 (size!16066 (t!171765 l!3477))))))

(assert (= (and d!562838 c!300399) b!1840622))

(assert (= (and d!562838 (not c!300399)) b!1840623))

(declare-fun m!2268107 () Bool)

(assert (=> b!1840623 m!2268107))

(assert (=> b!1840583 d!562838))

(declare-fun d!562842 () Bool)

(declare-fun lt!714184 () Int)

(assert (=> d!562842 (>= lt!714184 0)))

(declare-fun e!1176265 () Int)

(assert (=> d!562842 (= lt!714184 e!1176265)))

(declare-fun c!300400 () Bool)

(assert (=> d!562842 (= c!300400 ((_ is Nil!20266) p!2031))))

(assert (=> d!562842 (= (size!16066 p!2031) lt!714184)))

(declare-fun b!1840624 () Bool)

(assert (=> b!1840624 (= e!1176265 0)))

(declare-fun b!1840625 () Bool)

(assert (=> b!1840625 (= e!1176265 (+ 1 (size!16066 (t!171765 p!2031))))))

(assert (= (and d!562842 c!300400) b!1840624))

(assert (= (and d!562842 (not c!300400)) b!1840625))

(assert (=> b!1840625 m!2268067))

(assert (=> b!1840583 d!562842))

(declare-fun d!562844 () Bool)

(declare-fun lt!714191 () List!20336)

(declare-fun ++!5505 (List!20336 List!20336) List!20336)

(assert (=> d!562844 (= (++!5505 p!2031 lt!714191) l!3477)))

(declare-fun e!1176270 () List!20336)

(assert (=> d!562844 (= lt!714191 e!1176270)))

(declare-fun c!300404 () Bool)

(assert (=> d!562844 (= c!300404 ((_ is Cons!20266) p!2031))))

(assert (=> d!562844 (>= (size!16066 l!3477) (size!16066 p!2031))))

(assert (=> d!562844 (= (getSuffix!986 l!3477 p!2031) lt!714191)))

(declare-fun b!1840633 () Bool)

(assert (=> b!1840633 (= e!1176270 (getSuffix!986 (tail!2783 l!3477) (t!171765 p!2031)))))

(declare-fun b!1840634 () Bool)

(assert (=> b!1840634 (= e!1176270 l!3477)))

(assert (= (and d!562844 c!300404) b!1840633))

(assert (= (and d!562844 (not c!300404)) b!1840634))

(declare-fun m!2268119 () Bool)

(assert (=> d!562844 m!2268119))

(assert (=> d!562844 m!2268073))

(assert (=> d!562844 m!2268075))

(assert (=> b!1840633 m!2268071))

(assert (=> b!1840633 m!2268071))

(declare-fun m!2268121 () Bool)

(assert (=> b!1840633 m!2268121))

(assert (=> b!1840584 d!562844))

(declare-fun d!562850 () Bool)

(assert (=> d!562850 (= (head!4319 (getSuffix!986 lt!714165 (t!171765 p!2031))) (h!25667 (getSuffix!986 lt!714165 (t!171765 p!2031))))))

(assert (=> b!1840584 d!562850))

(declare-fun d!562852 () Bool)

(assert (=> d!562852 (= (head!4319 (getSuffix!986 lt!714165 (t!171765 p!2031))) (apply!5447 lt!714165 (size!16066 (t!171765 p!2031))))))

(declare-fun lt!714196 () Unit!34975)

(declare-fun choose!11577 (List!20336 List!20336) Unit!34975)

(assert (=> d!562852 (= lt!714196 (choose!11577 lt!714165 (t!171765 p!2031)))))

(assert (=> d!562852 (isPrefix!1875 (t!171765 p!2031) lt!714165)))

(assert (=> d!562852 (= (lemmaGetSuffixHeadApplyNPlusOne!10 lt!714165 (t!171765 p!2031)) lt!714196)))

(declare-fun bs!408579 () Bool)

(assert (= bs!408579 d!562852))

(assert (=> bs!408579 m!2268069))

(declare-fun m!2268123 () Bool)

(assert (=> bs!408579 m!2268123))

(assert (=> bs!408579 m!2268059))

(assert (=> bs!408579 m!2268067))

(assert (=> bs!408579 m!2268059))

(assert (=> bs!408579 m!2268061))

(assert (=> bs!408579 m!2268067))

(declare-fun m!2268125 () Bool)

(assert (=> bs!408579 m!2268125))

(assert (=> b!1840584 d!562852))

(declare-fun d!562854 () Bool)

(declare-fun lt!714204 () B!1577)

(declare-fun contains!3739 (List!20336 B!1577) Bool)

(assert (=> d!562854 (contains!3739 lt!714165 lt!714204)))

(declare-fun e!1176291 () B!1577)

(assert (=> d!562854 (= lt!714204 e!1176291)))

(declare-fun c!300410 () Bool)

(assert (=> d!562854 (= c!300410 (= lt!714167 0))))

(declare-fun e!1176290 () Bool)

(assert (=> d!562854 e!1176290))

(declare-fun res!827251 () Bool)

(assert (=> d!562854 (=> (not res!827251) (not e!1176290))))

(assert (=> d!562854 (= res!827251 (<= 0 lt!714167))))

(assert (=> d!562854 (= (apply!5447 lt!714165 lt!714167) lt!714204)))

(declare-fun b!1840663 () Bool)

(assert (=> b!1840663 (= e!1176290 (< lt!714167 (size!16066 lt!714165)))))

(declare-fun b!1840664 () Bool)

(assert (=> b!1840664 (= e!1176291 (head!4319 lt!714165))))

(declare-fun b!1840665 () Bool)

(assert (=> b!1840665 (= e!1176291 (apply!5447 (tail!2783 lt!714165) (- lt!714167 1)))))

(assert (= (and d!562854 res!827251) b!1840663))

(assert (= (and d!562854 c!300410) b!1840664))

(assert (= (and d!562854 (not c!300410)) b!1840665))

(declare-fun m!2268143 () Bool)

(assert (=> d!562854 m!2268143))

(assert (=> b!1840663 m!2268065))

(assert (=> b!1840664 m!2268089))

(assert (=> b!1840665 m!2268083))

(assert (=> b!1840665 m!2268083))

(declare-fun m!2268145 () Bool)

(assert (=> b!1840665 m!2268145))

(assert (=> b!1840584 d!562854))

(declare-fun d!562866 () Bool)

(assert (=> d!562866 (= (head!4319 (getSuffix!986 l!3477 p!2031)) (h!25667 (getSuffix!986 l!3477 p!2031)))))

(assert (=> b!1840584 d!562866))

(declare-fun d!562870 () Bool)

(declare-fun lt!714208 () List!20336)

(assert (=> d!562870 (= (++!5505 (t!171765 p!2031) lt!714208) lt!714165)))

(declare-fun e!1176295 () List!20336)

(assert (=> d!562870 (= lt!714208 e!1176295)))

(declare-fun c!300414 () Bool)

(assert (=> d!562870 (= c!300414 ((_ is Cons!20266) (t!171765 p!2031)))))

(assert (=> d!562870 (>= (size!16066 lt!714165) (size!16066 (t!171765 p!2031)))))

(assert (=> d!562870 (= (getSuffix!986 lt!714165 (t!171765 p!2031)) lt!714208)))

(declare-fun b!1840672 () Bool)

(assert (=> b!1840672 (= e!1176295 (getSuffix!986 (tail!2783 lt!714165) (t!171765 (t!171765 p!2031))))))

(declare-fun b!1840673 () Bool)

(assert (=> b!1840673 (= e!1176295 lt!714165)))

(assert (= (and d!562870 c!300414) b!1840672))

(assert (= (and d!562870 (not c!300414)) b!1840673))

(declare-fun m!2268149 () Bool)

(assert (=> d!562870 m!2268149))

(assert (=> d!562870 m!2268065))

(assert (=> d!562870 m!2268067))

(assert (=> b!1840672 m!2268083))

(assert (=> b!1840672 m!2268083))

(declare-fun m!2268151 () Bool)

(assert (=> b!1840672 m!2268151))

(assert (=> b!1840584 d!562870))

(declare-fun d!562872 () Bool)

(declare-fun lt!714209 () B!1577)

(assert (=> d!562872 (contains!3739 l!3477 lt!714209)))

(declare-fun e!1176299 () B!1577)

(assert (=> d!562872 (= lt!714209 e!1176299)))

(declare-fun c!300415 () Bool)

(assert (=> d!562872 (= c!300415 (= lt!714166 0))))

(declare-fun e!1176298 () Bool)

(assert (=> d!562872 e!1176298))

(declare-fun res!827252 () Bool)

(assert (=> d!562872 (=> (not res!827252) (not e!1176298))))

(assert (=> d!562872 (= res!827252 (<= 0 lt!714166))))

(assert (=> d!562872 (= (apply!5447 l!3477 lt!714166) lt!714209)))

(declare-fun b!1840678 () Bool)

(assert (=> b!1840678 (= e!1176298 (< lt!714166 (size!16066 l!3477)))))

(declare-fun b!1840679 () Bool)

(assert (=> b!1840679 (= e!1176299 (head!4319 l!3477))))

(declare-fun b!1840680 () Bool)

(assert (=> b!1840680 (= e!1176299 (apply!5447 (tail!2783 l!3477) (- lt!714166 1)))))

(assert (= (and d!562872 res!827252) b!1840678))

(assert (= (and d!562872 c!300415) b!1840679))

(assert (= (and d!562872 (not c!300415)) b!1840680))

(declare-fun m!2268153 () Bool)

(assert (=> d!562872 m!2268153))

(assert (=> b!1840678 m!2268073))

(declare-fun m!2268155 () Bool)

(assert (=> b!1840679 m!2268155))

(assert (=> b!1840680 m!2268071))

(assert (=> b!1840680 m!2268071))

(declare-fun m!2268157 () Bool)

(assert (=> b!1840680 m!2268157))

(assert (=> b!1840584 d!562872))

(declare-fun b!1840683 () Bool)

(declare-fun e!1176303 () Bool)

(declare-fun e!1176302 () Bool)

(assert (=> b!1840683 (= e!1176303 e!1176302)))

(declare-fun res!827253 () Bool)

(assert (=> b!1840683 (=> (not res!827253) (not e!1176302))))

(assert (=> b!1840683 (= res!827253 (not ((_ is Nil!20266) l!3477)))))

(declare-fun b!1840686 () Bool)

(declare-fun e!1176304 () Bool)

(assert (=> b!1840686 (= e!1176304 (>= (size!16066 l!3477) (size!16066 p!2031)))))

(declare-fun b!1840685 () Bool)

(assert (=> b!1840685 (= e!1176302 (isPrefix!1875 (tail!2783 p!2031) (tail!2783 l!3477)))))

(declare-fun b!1840684 () Bool)

(declare-fun res!827255 () Bool)

(assert (=> b!1840684 (=> (not res!827255) (not e!1176302))))

(assert (=> b!1840684 (= res!827255 (= (head!4319 p!2031) (head!4319 l!3477)))))

(declare-fun d!562874 () Bool)

(assert (=> d!562874 e!1176304))

(declare-fun res!827254 () Bool)

(assert (=> d!562874 (=> res!827254 e!1176304)))

(declare-fun lt!714210 () Bool)

(assert (=> d!562874 (= res!827254 (not lt!714210))))

(assert (=> d!562874 (= lt!714210 e!1176303)))

(declare-fun res!827256 () Bool)

(assert (=> d!562874 (=> res!827256 e!1176303)))

(assert (=> d!562874 (= res!827256 ((_ is Nil!20266) p!2031))))

(assert (=> d!562874 (= (isPrefix!1875 p!2031 l!3477) lt!714210)))

(assert (= (and d!562874 (not res!827256)) b!1840683))

(assert (= (and b!1840683 res!827253) b!1840684))

(assert (= (and b!1840684 res!827255) b!1840685))

(assert (= (and d!562874 (not res!827254)) b!1840686))

(assert (=> b!1840686 m!2268073))

(assert (=> b!1840686 m!2268075))

(declare-fun m!2268159 () Bool)

(assert (=> b!1840685 m!2268159))

(assert (=> b!1840685 m!2268071))

(assert (=> b!1840685 m!2268159))

(assert (=> b!1840685 m!2268071))

(declare-fun m!2268161 () Bool)

(assert (=> b!1840685 m!2268161))

(declare-fun m!2268163 () Bool)

(assert (=> b!1840684 m!2268163))

(assert (=> b!1840684 m!2268155))

(assert (=> start!183226 d!562874))

(declare-fun b!1840691 () Bool)

(declare-fun e!1176307 () Bool)

(declare-fun tp!520437 () Bool)

(assert (=> b!1840691 (= e!1176307 (and tp_is_empty!8325 tp!520437))))

(assert (=> b!1840582 (= tp!520429 e!1176307)))

(assert (= (and b!1840582 ((_ is Cons!20266) (t!171765 p!2031))) b!1840691))

(declare-fun b!1840692 () Bool)

(declare-fun e!1176308 () Bool)

(declare-fun tp!520438 () Bool)

(assert (=> b!1840692 (= e!1176308 (and tp_is_empty!8325 tp!520438))))

(assert (=> b!1840579 (= tp!520430 e!1176308)))

(assert (= (and b!1840579 ((_ is Cons!20266) (t!171765 l!3477))) b!1840692))

(check-sat (not b!1840679) (not b!1840625) (not d!562854) (not b!1840621) tp_is_empty!8325 (not b!1840685) (not d!562870) (not b!1840691) (not d!562852) (not b!1840623) (not b!1840692) (not b!1840684) (not b!1840686) (not b!1840602) (not b!1840617) (not b!1840633) (not d!562844) (not b!1840665) (not b!1840601) (not b!1840680) (not b!1840678) (not b!1840664) (not b!1840600) (not b!1840672) (not d!562872) (not b!1840663))
(check-sat)
