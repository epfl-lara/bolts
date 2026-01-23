; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!183168 () Bool)

(assert start!183168)

(declare-fun b!1840201 () Bool)

(declare-fun e!1175988 () Bool)

(declare-datatypes ((B!1563 0))(
  ( (B!1564 (val!5729 Int)) )
))
(declare-datatypes ((List!20329 0))(
  ( (Nil!20259) (Cons!20259 (h!25660 B!1563) (t!171758 List!20329)) )
))
(declare-fun p!2031 () List!20329)

(declare-fun l!3477 () List!20329)

(declare-fun isPrefix!1868 (List!20329 List!20329) Bool)

(declare-fun tail!2776 (List!20329) List!20329)

(assert (=> b!1840201 (= e!1175988 (not (isPrefix!1868 (t!171758 p!2031) (tail!2776 l!3477))))))

(declare-fun b!1840202 () Bool)

(declare-fun e!1175989 () Bool)

(declare-fun tp_is_empty!8311 () Bool)

(declare-fun tp!520359 () Bool)

(assert (=> b!1840202 (= e!1175989 (and tp_is_empty!8311 tp!520359))))

(declare-fun b!1840203 () Bool)

(declare-fun e!1175987 () Bool)

(declare-fun tp!520360 () Bool)

(assert (=> b!1840203 (= e!1175987 (and tp_is_empty!8311 tp!520360))))

(declare-fun res!827009 () Bool)

(assert (=> start!183168 (=> (not res!827009) (not e!1175988))))

(assert (=> start!183168 (= res!827009 (isPrefix!1868 p!2031 l!3477))))

(assert (=> start!183168 e!1175988))

(assert (=> start!183168 e!1175987))

(assert (=> start!183168 e!1175989))

(declare-fun b!1840204 () Bool)

(declare-fun res!827011 () Bool)

(assert (=> b!1840204 (=> (not res!827011) (not e!1175988))))

(assert (=> b!1840204 (= res!827011 (is-Cons!20259 p!2031))))

(declare-fun b!1840205 () Bool)

(declare-fun res!827010 () Bool)

(assert (=> b!1840205 (=> (not res!827010) (not e!1175988))))

(declare-fun size!16059 (List!20329) Int)

(assert (=> b!1840205 (= res!827010 (<= (+ 1 (size!16059 p!2031)) (size!16059 l!3477)))))

(assert (= (and start!183168 res!827009) b!1840205))

(assert (= (and b!1840205 res!827010) b!1840204))

(assert (= (and b!1840204 res!827011) b!1840201))

(assert (= (and start!183168 (is-Cons!20259 p!2031)) b!1840203))

(assert (= (and start!183168 (is-Cons!20259 l!3477)) b!1840202))

(declare-fun m!2267733 () Bool)

(assert (=> b!1840201 m!2267733))

(assert (=> b!1840201 m!2267733))

(declare-fun m!2267735 () Bool)

(assert (=> b!1840201 m!2267735))

(declare-fun m!2267737 () Bool)

(assert (=> start!183168 m!2267737))

(declare-fun m!2267739 () Bool)

(assert (=> b!1840205 m!2267739))

(declare-fun m!2267741 () Bool)

(assert (=> b!1840205 m!2267741))

(push 1)

(assert (not start!183168))

(assert (not b!1840203))

(assert (not b!1840205))

(assert (not b!1840201))

(assert tp_is_empty!8311)

(assert (not b!1840202))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1840230 () Bool)

(declare-fun res!827032 () Bool)

(declare-fun e!1176005 () Bool)

(assert (=> b!1840230 (=> (not res!827032) (not e!1176005))))

(declare-fun head!4312 (List!20329) B!1563)

(assert (=> b!1840230 (= res!827032 (= (head!4312 (t!171758 p!2031)) (head!4312 (tail!2776 l!3477))))))

(declare-fun b!1840229 () Bool)

(declare-fun e!1176007 () Bool)

(assert (=> b!1840229 (= e!1176007 e!1176005)))

(declare-fun res!827029 () Bool)

(assert (=> b!1840229 (=> (not res!827029) (not e!1176005))))

(assert (=> b!1840229 (= res!827029 (not (is-Nil!20259 (tail!2776 l!3477))))))

(declare-fun d!562685 () Bool)

(declare-fun e!1176006 () Bool)

(assert (=> d!562685 e!1176006))

(declare-fun res!827031 () Bool)

(assert (=> d!562685 (=> res!827031 e!1176006)))

(declare-fun lt!714061 () Bool)

(assert (=> d!562685 (= res!827031 (not lt!714061))))

(assert (=> d!562685 (= lt!714061 e!1176007)))

(declare-fun res!827030 () Bool)

(assert (=> d!562685 (=> res!827030 e!1176007)))

(assert (=> d!562685 (= res!827030 (is-Nil!20259 (t!171758 p!2031)))))

(assert (=> d!562685 (= (isPrefix!1868 (t!171758 p!2031) (tail!2776 l!3477)) lt!714061)))

(declare-fun b!1840232 () Bool)

(assert (=> b!1840232 (= e!1176006 (>= (size!16059 (tail!2776 l!3477)) (size!16059 (t!171758 p!2031))))))

(declare-fun b!1840231 () Bool)

(assert (=> b!1840231 (= e!1176005 (isPrefix!1868 (tail!2776 (t!171758 p!2031)) (tail!2776 (tail!2776 l!3477))))))

(assert (= (and d!562685 (not res!827030)) b!1840229))

(assert (= (and b!1840229 res!827029) b!1840230))

(assert (= (and b!1840230 res!827032) b!1840231))

(assert (= (and d!562685 (not res!827031)) b!1840232))

(declare-fun m!2267753 () Bool)

(assert (=> b!1840230 m!2267753))

(assert (=> b!1840230 m!2267733))

(declare-fun m!2267755 () Bool)

(assert (=> b!1840230 m!2267755))

(assert (=> b!1840232 m!2267733))

(declare-fun m!2267757 () Bool)

(assert (=> b!1840232 m!2267757))

(declare-fun m!2267759 () Bool)

(assert (=> b!1840232 m!2267759))

(declare-fun m!2267761 () Bool)

(assert (=> b!1840231 m!2267761))

(assert (=> b!1840231 m!2267733))

(declare-fun m!2267763 () Bool)

(assert (=> b!1840231 m!2267763))

(assert (=> b!1840231 m!2267761))

(assert (=> b!1840231 m!2267763))

(declare-fun m!2267765 () Bool)

(assert (=> b!1840231 m!2267765))

(assert (=> b!1840201 d!562685))

(declare-fun d!562689 () Bool)

(assert (=> d!562689 (= (tail!2776 l!3477) (t!171758 l!3477))))

(assert (=> b!1840201 d!562689))

(declare-fun b!1840234 () Bool)

(declare-fun res!827036 () Bool)

(declare-fun e!1176008 () Bool)

(assert (=> b!1840234 (=> (not res!827036) (not e!1176008))))

(assert (=> b!1840234 (= res!827036 (= (head!4312 p!2031) (head!4312 l!3477)))))

(declare-fun b!1840233 () Bool)

(declare-fun e!1176010 () Bool)

(assert (=> b!1840233 (= e!1176010 e!1176008)))

(declare-fun res!827033 () Bool)

(assert (=> b!1840233 (=> (not res!827033) (not e!1176008))))

(assert (=> b!1840233 (= res!827033 (not (is-Nil!20259 l!3477)))))

(declare-fun d!562691 () Bool)

(declare-fun e!1176009 () Bool)

(assert (=> d!562691 e!1176009))

(declare-fun res!827035 () Bool)

(assert (=> d!562691 (=> res!827035 e!1176009)))

(declare-fun lt!714062 () Bool)

(assert (=> d!562691 (= res!827035 (not lt!714062))))

(assert (=> d!562691 (= lt!714062 e!1176010)))

(declare-fun res!827034 () Bool)

(assert (=> d!562691 (=> res!827034 e!1176010)))

(assert (=> d!562691 (= res!827034 (is-Nil!20259 p!2031))))

(assert (=> d!562691 (= (isPrefix!1868 p!2031 l!3477) lt!714062)))

(declare-fun b!1840236 () Bool)

(assert (=> b!1840236 (= e!1176009 (>= (size!16059 l!3477) (size!16059 p!2031)))))

(declare-fun b!1840235 () Bool)

(assert (=> b!1840235 (= e!1176008 (isPrefix!1868 (tail!2776 p!2031) (tail!2776 l!3477)))))

(assert (= (and d!562691 (not res!827034)) b!1840233))

(assert (= (and b!1840233 res!827033) b!1840234))

(assert (= (and b!1840234 res!827036) b!1840235))

(assert (= (and d!562691 (not res!827035)) b!1840236))

(declare-fun m!2267767 () Bool)

(assert (=> b!1840234 m!2267767))

(declare-fun m!2267769 () Bool)

(assert (=> b!1840234 m!2267769))

(assert (=> b!1840236 m!2267741))

(assert (=> b!1840236 m!2267739))

(declare-fun m!2267771 () Bool)

(assert (=> b!1840235 m!2267771))

(assert (=> b!1840235 m!2267733))

(assert (=> b!1840235 m!2267771))

(assert (=> b!1840235 m!2267733))

(declare-fun m!2267773 () Bool)

(assert (=> b!1840235 m!2267773))

(assert (=> start!183168 d!562691))

(declare-fun d!562693 () Bool)

(declare-fun lt!714065 () Int)

(assert (=> d!562693 (>= lt!714065 0)))

(declare-fun e!1176013 () Int)

(assert (=> d!562693 (= lt!714065 e!1176013)))

(declare-fun c!300344 () Bool)

(assert (=> d!562693 (= c!300344 (is-Nil!20259 p!2031))))

(assert (=> d!562693 (= (size!16059 p!2031) lt!714065)))

(declare-fun b!1840241 () Bool)

(assert (=> b!1840241 (= e!1176013 0)))

(declare-fun b!1840242 () Bool)

(assert (=> b!1840242 (= e!1176013 (+ 1 (size!16059 (t!171758 p!2031))))))

(assert (= (and d!562693 c!300344) b!1840241))

(assert (= (and d!562693 (not c!300344)) b!1840242))

(assert (=> b!1840242 m!2267759))

(assert (=> b!1840205 d!562693))

(declare-fun d!562695 () Bool)

(declare-fun lt!714066 () Int)

(assert (=> d!562695 (>= lt!714066 0)))

(declare-fun e!1176014 () Int)

(assert (=> d!562695 (= lt!714066 e!1176014)))

(declare-fun c!300345 () Bool)

(assert (=> d!562695 (= c!300345 (is-Nil!20259 l!3477))))

(assert (=> d!562695 (= (size!16059 l!3477) lt!714066)))

(declare-fun b!1840243 () Bool)

(assert (=> b!1840243 (= e!1176014 0)))

(declare-fun b!1840244 () Bool)

(assert (=> b!1840244 (= e!1176014 (+ 1 (size!16059 (t!171758 l!3477))))))

(assert (= (and d!562695 c!300345) b!1840243))

(assert (= (and d!562695 (not c!300345)) b!1840244))

(declare-fun m!2267775 () Bool)

(assert (=> b!1840244 m!2267775))

(assert (=> b!1840205 d!562695))

(declare-fun b!1840249 () Bool)

(declare-fun e!1176017 () Bool)

(declare-fun tp!520369 () Bool)

(assert (=> b!1840249 (= e!1176017 (and tp_is_empty!8311 tp!520369))))

(assert (=> b!1840202 (= tp!520359 e!1176017)))

(assert (= (and b!1840202 (is-Cons!20259 (t!171758 l!3477))) b!1840249))

(declare-fun b!1840250 () Bool)

(declare-fun e!1176018 () Bool)

(declare-fun tp!520370 () Bool)

(assert (=> b!1840250 (= e!1176018 (and tp_is_empty!8311 tp!520370))))

(assert (=> b!1840203 (= tp!520360 e!1176018)))

(assert (= (and b!1840203 (is-Cons!20259 (t!171758 p!2031))) b!1840250))

(push 1)

(assert (not b!1840234))

(assert (not b!1840231))

(assert (not b!1840230))

(assert tp_is_empty!8311)

(assert (not b!1840244))

(assert (not b!1840242))

(assert (not b!1840250))

(assert (not b!1840235))

(assert (not b!1840232))

(assert (not b!1840236))

(assert (not b!1840249))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!562705 () Bool)

(declare-fun lt!714075 () Int)

(assert (=> d!562705 (>= lt!714075 0)))

(declare-fun e!1176039 () Int)

(assert (=> d!562705 (= lt!714075 e!1176039)))

(declare-fun c!300350 () Bool)

(assert (=> d!562705 (= c!300350 (is-Nil!20259 (tail!2776 l!3477)))))

(assert (=> d!562705 (= (size!16059 (tail!2776 l!3477)) lt!714075)))

(declare-fun b!1840281 () Bool)

(assert (=> b!1840281 (= e!1176039 0)))

(declare-fun b!1840282 () Bool)

(assert (=> b!1840282 (= e!1176039 (+ 1 (size!16059 (t!171758 (tail!2776 l!3477)))))))

(assert (= (and d!562705 c!300350) b!1840281))

(assert (= (and d!562705 (not c!300350)) b!1840282))

(declare-fun m!2267801 () Bool)

(assert (=> b!1840282 m!2267801))

(assert (=> b!1840232 d!562705))

(declare-fun d!562707 () Bool)

(declare-fun lt!714076 () Int)

(assert (=> d!562707 (>= lt!714076 0)))

(declare-fun e!1176040 () Int)

(assert (=> d!562707 (= lt!714076 e!1176040)))

(declare-fun c!300351 () Bool)

(assert (=> d!562707 (= c!300351 (is-Nil!20259 (t!171758 p!2031)))))

(assert (=> d!562707 (= (size!16059 (t!171758 p!2031)) lt!714076)))

(declare-fun b!1840283 () Bool)

(assert (=> b!1840283 (= e!1176040 0)))

(declare-fun b!1840284 () Bool)

(assert (=> b!1840284 (= e!1176040 (+ 1 (size!16059 (t!171758 (t!171758 p!2031)))))))

(assert (= (and d!562707 c!300351) b!1840283))

(assert (= (and d!562707 (not c!300351)) b!1840284))

(declare-fun m!2267803 () Bool)

(assert (=> b!1840284 m!2267803))

(assert (=> b!1840232 d!562707))

(declare-fun b!1840286 () Bool)

(declare-fun res!827056 () Bool)

(declare-fun e!1176041 () Bool)

(assert (=> b!1840286 (=> (not res!827056) (not e!1176041))))

(assert (=> b!1840286 (= res!827056 (= (head!4312 (tail!2776 p!2031)) (head!4312 (tail!2776 l!3477))))))

(declare-fun b!1840285 () Bool)

(declare-fun e!1176043 () Bool)

(assert (=> b!1840285 (= e!1176043 e!1176041)))

(declare-fun res!827053 () Bool)

(assert (=> b!1840285 (=> (not res!827053) (not e!1176041))))

(assert (=> b!1840285 (= res!827053 (not (is-Nil!20259 (tail!2776 l!3477))))))

(declare-fun d!562709 () Bool)

(declare-fun e!1176042 () Bool)

(assert (=> d!562709 e!1176042))

(declare-fun res!827055 () Bool)

(assert (=> d!562709 (=> res!827055 e!1176042)))

(declare-fun lt!714077 () Bool)

(assert (=> d!562709 (= res!827055 (not lt!714077))))

(assert (=> d!562709 (= lt!714077 e!1176043)))

(declare-fun res!827054 () Bool)

(assert (=> d!562709 (=> res!827054 e!1176043)))

(assert (=> d!562709 (= res!827054 (is-Nil!20259 (tail!2776 p!2031)))))

(assert (=> d!562709 (= (isPrefix!1868 (tail!2776 p!2031) (tail!2776 l!3477)) lt!714077)))

(declare-fun b!1840288 () Bool)

(assert (=> b!1840288 (= e!1176042 (>= (size!16059 (tail!2776 l!3477)) (size!16059 (tail!2776 p!2031))))))

(declare-fun b!1840287 () Bool)

(assert (=> b!1840287 (= e!1176041 (isPrefix!1868 (tail!2776 (tail!2776 p!2031)) (tail!2776 (tail!2776 l!3477))))))

(assert (= (and d!562709 (not res!827054)) b!1840285))

(assert (= (and b!1840285 res!827053) b!1840286))

(assert (= (and b!1840286 res!827056) b!1840287))

(assert (= (and d!562709 (not res!827055)) b!1840288))

(assert (=> b!1840286 m!2267771))

(declare-fun m!2267805 () Bool)

(assert (=> b!1840286 m!2267805))

(assert (=> b!1840286 m!2267733))

(assert (=> b!1840286 m!2267755))

(assert (=> b!1840288 m!2267733))

(assert (=> b!1840288 m!2267757))

(assert (=> b!1840288 m!2267771))

(declare-fun m!2267807 () Bool)

(assert (=> b!1840288 m!2267807))

(assert (=> b!1840287 m!2267771))

(declare-fun m!2267809 () Bool)

(assert (=> b!1840287 m!2267809))

(assert (=> b!1840287 m!2267733))

(assert (=> b!1840287 m!2267763))

(assert (=> b!1840287 m!2267809))

(assert (=> b!1840287 m!2267763))

(declare-fun m!2267811 () Bool)

(assert (=> b!1840287 m!2267811))

(assert (=> b!1840235 d!562709))

(declare-fun d!562711 () Bool)

(assert (=> d!562711 (= (tail!2776 p!2031) (t!171758 p!2031))))

(assert (=> b!1840235 d!562711))

(assert (=> b!1840235 d!562689))

(assert (=> b!1840236 d!562695))

(assert (=> b!1840236 d!562693))

(assert (=> b!1840242 d!562707))

(declare-fun d!562713 () Bool)

(declare-fun lt!714078 () Int)

(assert (=> d!562713 (>= lt!714078 0)))

(declare-fun e!1176044 () Int)

(assert (=> d!562713 (= lt!714078 e!1176044)))

(declare-fun c!300352 () Bool)

(assert (=> d!562713 (= c!300352 (is-Nil!20259 (t!171758 l!3477)))))

(assert (=> d!562713 (= (size!16059 (t!171758 l!3477)) lt!714078)))

(declare-fun b!1840289 () Bool)

(assert (=> b!1840289 (= e!1176044 0)))

(declare-fun b!1840290 () Bool)

(assert (=> b!1840290 (= e!1176044 (+ 1 (size!16059 (t!171758 (t!171758 l!3477)))))))

(assert (= (and d!562713 c!300352) b!1840289))

(assert (= (and d!562713 (not c!300352)) b!1840290))

(declare-fun m!2267813 () Bool)

(assert (=> b!1840290 m!2267813))

(assert (=> b!1840244 d!562713))

(declare-fun b!1840292 () Bool)

(declare-fun res!827060 () Bool)

(declare-fun e!1176045 () Bool)

(assert (=> b!1840292 (=> (not res!827060) (not e!1176045))))

(assert (=> b!1840292 (= res!827060 (= (head!4312 (tail!2776 (t!171758 p!2031))) (head!4312 (tail!2776 (tail!2776 l!3477)))))))

(declare-fun b!1840291 () Bool)

(declare-fun e!1176047 () Bool)

(assert (=> b!1840291 (= e!1176047 e!1176045)))

(declare-fun res!827057 () Bool)

(assert (=> b!1840291 (=> (not res!827057) (not e!1176045))))

(assert (=> b!1840291 (= res!827057 (not (is-Nil!20259 (tail!2776 (tail!2776 l!3477)))))))

(declare-fun d!562715 () Bool)

(declare-fun e!1176046 () Bool)

(assert (=> d!562715 e!1176046))

(declare-fun res!827059 () Bool)

(assert (=> d!562715 (=> res!827059 e!1176046)))

(declare-fun lt!714079 () Bool)

(assert (=> d!562715 (= res!827059 (not lt!714079))))

(assert (=> d!562715 (= lt!714079 e!1176047)))

(declare-fun res!827058 () Bool)

(assert (=> d!562715 (=> res!827058 e!1176047)))

(assert (=> d!562715 (= res!827058 (is-Nil!20259 (tail!2776 (t!171758 p!2031))))))

(assert (=> d!562715 (= (isPrefix!1868 (tail!2776 (t!171758 p!2031)) (tail!2776 (tail!2776 l!3477))) lt!714079)))

(declare-fun b!1840294 () Bool)

(assert (=> b!1840294 (= e!1176046 (>= (size!16059 (tail!2776 (tail!2776 l!3477))) (size!16059 (tail!2776 (t!171758 p!2031)))))))

(declare-fun b!1840293 () Bool)

(assert (=> b!1840293 (= e!1176045 (isPrefix!1868 (tail!2776 (tail!2776 (t!171758 p!2031))) (tail!2776 (tail!2776 (tail!2776 l!3477)))))))

(assert (= (and d!562715 (not res!827058)) b!1840291))

(assert (= (and b!1840291 res!827057) b!1840292))

(assert (= (and b!1840292 res!827060) b!1840293))

(assert (= (and d!562715 (not res!827059)) b!1840294))

(assert (=> b!1840292 m!2267761))

(declare-fun m!2267815 () Bool)

(assert (=> b!1840292 m!2267815))

(assert (=> b!1840292 m!2267763))

(declare-fun m!2267817 () Bool)

(assert (=> b!1840292 m!2267817))

(assert (=> b!1840294 m!2267763))

(declare-fun m!2267819 () Bool)

(assert (=> b!1840294 m!2267819))

(assert (=> b!1840294 m!2267761))

(declare-fun m!2267821 () Bool)

(assert (=> b!1840294 m!2267821))

(assert (=> b!1840293 m!2267761))

(declare-fun m!2267823 () Bool)

(assert (=> b!1840293 m!2267823))

(assert (=> b!1840293 m!2267763))

(declare-fun m!2267825 () Bool)

(assert (=> b!1840293 m!2267825))

(assert (=> b!1840293 m!2267823))

(assert (=> b!1840293 m!2267825))

(declare-fun m!2267827 () Bool)

(assert (=> b!1840293 m!2267827))

(assert (=> b!1840231 d!562715))

(declare-fun d!562717 () Bool)

(assert (=> d!562717 (= (tail!2776 (t!171758 p!2031)) (t!171758 (t!171758 p!2031)))))

(assert (=> b!1840231 d!562717))

(declare-fun d!562719 () Bool)

(assert (=> d!562719 (= (tail!2776 (tail!2776 l!3477)) (t!171758 (tail!2776 l!3477)))))

(assert (=> b!1840231 d!562719))

(declare-fun d!562721 () Bool)

(assert (=> d!562721 (= (head!4312 p!2031) (h!25660 p!2031))))

(assert (=> b!1840234 d!562721))

(declare-fun d!562723 () Bool)

(assert (=> d!562723 (= (head!4312 l!3477) (h!25660 l!3477))))

(assert (=> b!1840234 d!562723))

(declare-fun d!562725 () Bool)

(assert (=> d!562725 (= (head!4312 (t!171758 p!2031)) (h!25660 (t!171758 p!2031)))))

(assert (=> b!1840230 d!562725))

(declare-fun d!562727 () Bool)

(assert (=> d!562727 (= (head!4312 (tail!2776 l!3477)) (h!25660 (tail!2776 l!3477)))))

(assert (=> b!1840230 d!562727))

(declare-fun b!1840295 () Bool)

(declare-fun e!1176048 () Bool)

(declare-fun tp!520375 () Bool)

(assert (=> b!1840295 (= e!1176048 (and tp_is_empty!8311 tp!520375))))

(assert (=> b!1840249 (= tp!520369 e!1176048)))

(assert (= (and b!1840249 (is-Cons!20259 (t!171758 (t!171758 l!3477)))) b!1840295))

(declare-fun b!1840296 () Bool)

(declare-fun e!1176049 () Bool)

(declare-fun tp!520376 () Bool)

(assert (=> b!1840296 (= e!1176049 (and tp_is_empty!8311 tp!520376))))

(assert (=> b!1840250 (= tp!520370 e!1176049)))

(assert (= (and b!1840250 (is-Cons!20259 (t!171758 (t!171758 p!2031)))) b!1840296))

(push 1)

(assert (not b!1840296))

(assert (not b!1840288))

(assert (not b!1840295))

(assert (not b!1840290))

(assert (not b!1840294))

(assert (not b!1840292))

(assert tp_is_empty!8311)

(assert (not b!1840282))

(assert (not b!1840286))

(assert (not b!1840287))

(assert (not b!1840284))

(assert (not b!1840293))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

