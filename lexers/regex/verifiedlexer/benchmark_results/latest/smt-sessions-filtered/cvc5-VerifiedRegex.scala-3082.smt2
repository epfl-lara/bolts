; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!183256 () Bool)

(assert start!183256)

(declare-fun b!1840703 () Bool)

(declare-fun e!1176317 () Bool)

(declare-fun tp_is_empty!8327 () Bool)

(declare-fun tp!520443 () Bool)

(assert (=> b!1840703 (= e!1176317 (and tp_is_empty!8327 tp!520443))))

(declare-fun b!1840704 () Bool)

(declare-fun res!827265 () Bool)

(declare-fun e!1176319 () Bool)

(assert (=> b!1840704 (=> (not res!827265) (not e!1176319))))

(declare-datatypes ((B!1579 0))(
  ( (B!1580 (val!5737 Int)) )
))
(declare-datatypes ((List!20337 0))(
  ( (Nil!20267) (Cons!20267 (h!25668 B!1579) (t!171766 List!20337)) )
))
(declare-fun p!2031 () List!20337)

(assert (=> b!1840704 (= res!827265 (not (is-Cons!20267 p!2031)))))

(declare-fun b!1840706 () Bool)

(declare-fun e!1176318 () Bool)

(declare-fun tp!520444 () Bool)

(assert (=> b!1840706 (= e!1176318 (and tp_is_empty!8327 tp!520444))))

(declare-fun b!1840707 () Bool)

(declare-fun e!1176320 () Bool)

(assert (=> b!1840707 (= e!1176320 e!1176319)))

(declare-fun res!827264 () Bool)

(assert (=> b!1840707 (=> (not res!827264) (not e!1176319))))

(declare-fun lt!714213 () Int)

(declare-fun l!3477 () List!20337)

(declare-fun size!16067 (List!20337) Int)

(assert (=> b!1840707 (= res!827264 (<= (+ 1 lt!714213) (size!16067 l!3477)))))

(assert (=> b!1840707 (= lt!714213 (size!16067 p!2031))))

(declare-fun b!1840705 () Bool)

(declare-fun head!4320 (List!20337) B!1579)

(declare-fun getSuffix!987 (List!20337 List!20337) List!20337)

(declare-fun apply!5448 (List!20337 Int) B!1579)

(assert (=> b!1840705 (= e!1176319 (not (= (head!4320 (getSuffix!987 l!3477 p!2031)) (apply!5448 l!3477 lt!714213))))))

(declare-fun res!827263 () Bool)

(assert (=> start!183256 (=> (not res!827263) (not e!1176320))))

(declare-fun isPrefix!1876 (List!20337 List!20337) Bool)

(assert (=> start!183256 (= res!827263 (isPrefix!1876 p!2031 l!3477))))

(assert (=> start!183256 e!1176320))

(assert (=> start!183256 e!1176318))

(assert (=> start!183256 e!1176317))

(assert (= (and start!183256 res!827263) b!1840707))

(assert (= (and b!1840707 res!827264) b!1840704))

(assert (= (and b!1840704 res!827265) b!1840705))

(assert (= (and start!183256 (is-Cons!20267 p!2031)) b!1840706))

(assert (= (and start!183256 (is-Cons!20267 l!3477)) b!1840703))

(declare-fun m!2268165 () Bool)

(assert (=> b!1840707 m!2268165))

(declare-fun m!2268167 () Bool)

(assert (=> b!1840707 m!2268167))

(declare-fun m!2268169 () Bool)

(assert (=> b!1840705 m!2268169))

(assert (=> b!1840705 m!2268169))

(declare-fun m!2268171 () Bool)

(assert (=> b!1840705 m!2268171))

(declare-fun m!2268173 () Bool)

(assert (=> b!1840705 m!2268173))

(declare-fun m!2268175 () Bool)

(assert (=> start!183256 m!2268175))

(push 1)

(assert (not b!1840707))

(assert (not b!1840703))

(assert (not b!1840706))

(assert (not b!1840705))

(assert (not start!183256))

(assert tp_is_empty!8327)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!562877 () Bool)

(assert (=> d!562877 (= (head!4320 (getSuffix!987 l!3477 p!2031)) (h!25668 (getSuffix!987 l!3477 p!2031)))))

(assert (=> b!1840705 d!562877))

(declare-fun d!562879 () Bool)

(declare-fun lt!714219 () List!20337)

(declare-fun ++!5506 (List!20337 List!20337) List!20337)

(assert (=> d!562879 (= (++!5506 p!2031 lt!714219) l!3477)))

(declare-fun e!1176335 () List!20337)

(assert (=> d!562879 (= lt!714219 e!1176335)))

(declare-fun c!300418 () Bool)

(assert (=> d!562879 (= c!300418 (is-Cons!20267 p!2031))))

(assert (=> d!562879 (>= (size!16067 l!3477) (size!16067 p!2031))))

(assert (=> d!562879 (= (getSuffix!987 l!3477 p!2031) lt!714219)))

(declare-fun b!1840727 () Bool)

(declare-fun tail!2784 (List!20337) List!20337)

(assert (=> b!1840727 (= e!1176335 (getSuffix!987 (tail!2784 l!3477) (t!171766 p!2031)))))

(declare-fun b!1840728 () Bool)

(assert (=> b!1840728 (= e!1176335 l!3477)))

(assert (= (and d!562879 c!300418) b!1840727))

(assert (= (and d!562879 (not c!300418)) b!1840728))

(declare-fun m!2268189 () Bool)

(assert (=> d!562879 m!2268189))

(assert (=> d!562879 m!2268165))

(assert (=> d!562879 m!2268167))

(declare-fun m!2268191 () Bool)

(assert (=> b!1840727 m!2268191))

(assert (=> b!1840727 m!2268191))

(declare-fun m!2268193 () Bool)

(assert (=> b!1840727 m!2268193))

(assert (=> b!1840705 d!562879))

(declare-fun d!562881 () Bool)

(declare-fun lt!714222 () B!1579)

(declare-fun contains!3740 (List!20337 B!1579) Bool)

(assert (=> d!562881 (contains!3740 l!3477 lt!714222)))

(declare-fun e!1176340 () B!1579)

(assert (=> d!562881 (= lt!714222 e!1176340)))

(declare-fun c!300421 () Bool)

(assert (=> d!562881 (= c!300421 (= lt!714213 0))))

(declare-fun e!1176341 () Bool)

(assert (=> d!562881 e!1176341))

(declare-fun res!827277 () Bool)

(assert (=> d!562881 (=> (not res!827277) (not e!1176341))))

(assert (=> d!562881 (= res!827277 (<= 0 lt!714213))))

(assert (=> d!562881 (= (apply!5448 l!3477 lt!714213) lt!714222)))

(declare-fun b!1840735 () Bool)

(assert (=> b!1840735 (= e!1176341 (< lt!714213 (size!16067 l!3477)))))

(declare-fun b!1840736 () Bool)

(assert (=> b!1840736 (= e!1176340 (head!4320 l!3477))))

(declare-fun b!1840737 () Bool)

(assert (=> b!1840737 (= e!1176340 (apply!5448 (tail!2784 l!3477) (- lt!714213 1)))))

(assert (= (and d!562881 res!827277) b!1840735))

(assert (= (and d!562881 c!300421) b!1840736))

(assert (= (and d!562881 (not c!300421)) b!1840737))

(declare-fun m!2268195 () Bool)

(assert (=> d!562881 m!2268195))

(assert (=> b!1840735 m!2268165))

(declare-fun m!2268197 () Bool)

(assert (=> b!1840736 m!2268197))

(assert (=> b!1840737 m!2268191))

(assert (=> b!1840737 m!2268191))

(declare-fun m!2268199 () Bool)

(assert (=> b!1840737 m!2268199))

(assert (=> b!1840705 d!562881))

(declare-fun d!562887 () Bool)

(declare-fun lt!714225 () Int)

(assert (=> d!562887 (>= lt!714225 0)))

(declare-fun e!1176344 () Int)

(assert (=> d!562887 (= lt!714225 e!1176344)))

(declare-fun c!300424 () Bool)

(assert (=> d!562887 (= c!300424 (is-Nil!20267 l!3477))))

(assert (=> d!562887 (= (size!16067 l!3477) lt!714225)))

(declare-fun b!1840742 () Bool)

(assert (=> b!1840742 (= e!1176344 0)))

(declare-fun b!1840743 () Bool)

(assert (=> b!1840743 (= e!1176344 (+ 1 (size!16067 (t!171766 l!3477))))))

(assert (= (and d!562887 c!300424) b!1840742))

(assert (= (and d!562887 (not c!300424)) b!1840743))

(declare-fun m!2268201 () Bool)

(assert (=> b!1840743 m!2268201))

(assert (=> b!1840707 d!562887))

(declare-fun d!562889 () Bool)

(declare-fun lt!714226 () Int)

(assert (=> d!562889 (>= lt!714226 0)))

(declare-fun e!1176345 () Int)

(assert (=> d!562889 (= lt!714226 e!1176345)))

(declare-fun c!300425 () Bool)

(assert (=> d!562889 (= c!300425 (is-Nil!20267 p!2031))))

(assert (=> d!562889 (= (size!16067 p!2031) lt!714226)))

(declare-fun b!1840744 () Bool)

(assert (=> b!1840744 (= e!1176345 0)))

(declare-fun b!1840745 () Bool)

(assert (=> b!1840745 (= e!1176345 (+ 1 (size!16067 (t!171766 p!2031))))))

(assert (= (and d!562889 c!300425) b!1840744))

(assert (= (and d!562889 (not c!300425)) b!1840745))

(declare-fun m!2268203 () Bool)

(assert (=> b!1840745 m!2268203))

(assert (=> b!1840707 d!562889))

(declare-fun b!1840758 () Bool)

(declare-fun e!1176355 () Bool)

(declare-fun e!1176356 () Bool)

(assert (=> b!1840758 (= e!1176355 e!1176356)))

(declare-fun res!827286 () Bool)

(assert (=> b!1840758 (=> (not res!827286) (not e!1176356))))

(assert (=> b!1840758 (= res!827286 (not (is-Nil!20267 l!3477)))))

(declare-fun b!1840761 () Bool)

(declare-fun e!1176354 () Bool)

(assert (=> b!1840761 (= e!1176354 (>= (size!16067 l!3477) (size!16067 p!2031)))))

(declare-fun d!562891 () Bool)

(assert (=> d!562891 e!1176354))

(declare-fun res!827289 () Bool)

(assert (=> d!562891 (=> res!827289 e!1176354)))

(declare-fun lt!714231 () Bool)

(assert (=> d!562891 (= res!827289 (not lt!714231))))

(assert (=> d!562891 (= lt!714231 e!1176355)))

(declare-fun res!827287 () Bool)

(assert (=> d!562891 (=> res!827287 e!1176355)))

(assert (=> d!562891 (= res!827287 (is-Nil!20267 p!2031))))

(assert (=> d!562891 (= (isPrefix!1876 p!2031 l!3477) lt!714231)))

(declare-fun b!1840760 () Bool)

(assert (=> b!1840760 (= e!1176356 (isPrefix!1876 (tail!2784 p!2031) (tail!2784 l!3477)))))

(declare-fun b!1840759 () Bool)

(declare-fun res!827288 () Bool)

(assert (=> b!1840759 (=> (not res!827288) (not e!1176356))))

(assert (=> b!1840759 (= res!827288 (= (head!4320 p!2031) (head!4320 l!3477)))))

(assert (= (and d!562891 (not res!827287)) b!1840758))

(assert (= (and b!1840758 res!827286) b!1840759))

(assert (= (and b!1840759 res!827288) b!1840760))

(assert (= (and d!562891 (not res!827289)) b!1840761))

(assert (=> b!1840761 m!2268165))

(assert (=> b!1840761 m!2268167))

(declare-fun m!2268205 () Bool)

(assert (=> b!1840760 m!2268205))

(assert (=> b!1840760 m!2268191))

(assert (=> b!1840760 m!2268205))

(assert (=> b!1840760 m!2268191))

(declare-fun m!2268207 () Bool)

(assert (=> b!1840760 m!2268207))

(declare-fun m!2268209 () Bool)

(assert (=> b!1840759 m!2268209))

(assert (=> b!1840759 m!2268197))

(assert (=> start!183256 d!562891))

(declare-fun b!1840768 () Bool)

(declare-fun e!1176360 () Bool)

(declare-fun tp!520453 () Bool)

(assert (=> b!1840768 (= e!1176360 (and tp_is_empty!8327 tp!520453))))

(assert (=> b!1840706 (= tp!520444 e!1176360)))

(assert (= (and b!1840706 (is-Cons!20267 (t!171766 p!2031))) b!1840768))

(declare-fun b!1840769 () Bool)

(declare-fun e!1176361 () Bool)

(declare-fun tp!520454 () Bool)

(assert (=> b!1840769 (= e!1176361 (and tp_is_empty!8327 tp!520454))))

(assert (=> b!1840703 (= tp!520443 e!1176361)))

(assert (= (and b!1840703 (is-Cons!20267 (t!171766 l!3477))) b!1840769))

(push 1)

(assert (not d!562879))

(assert (not b!1840727))

(assert (not b!1840735))

(assert (not b!1840745))

(assert (not b!1840736))

(assert (not b!1840760))

(assert (not b!1840769))

(assert tp_is_empty!8327)

(assert (not b!1840761))

(assert (not b!1840737))

(assert (not b!1840743))

(assert (not b!1840768))

(assert (not d!562881))

(assert (not b!1840759))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

