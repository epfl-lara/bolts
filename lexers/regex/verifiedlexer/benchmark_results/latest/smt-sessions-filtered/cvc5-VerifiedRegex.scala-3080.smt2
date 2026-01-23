; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!183204 () Bool)

(assert start!183204)

(declare-fun b!1840431 () Bool)

(declare-fun res!827138 () Bool)

(declare-fun e!1176137 () Bool)

(assert (=> b!1840431 (=> (not res!827138) (not e!1176137))))

(declare-datatypes ((B!1571 0))(
  ( (B!1572 (val!5733 Int)) )
))
(declare-datatypes ((List!20333 0))(
  ( (Nil!20263) (Cons!20263 (h!25664 B!1571) (t!171762 List!20333)) )
))
(declare-fun p!2031 () List!20333)

(assert (=> b!1840431 (= res!827138 (is-Cons!20263 p!2031))))

(declare-fun b!1840432 () Bool)

(declare-fun res!827135 () Bool)

(declare-fun e!1176140 () Bool)

(assert (=> b!1840432 (=> (not res!827135) (not e!1176140))))

(declare-fun lt!714113 () List!20333)

(declare-fun size!16063 (List!20333) Int)

(assert (=> b!1840432 (= res!827135 (<= (+ 1 (size!16063 (t!171762 p!2031))) (size!16063 lt!714113)))))

(declare-fun b!1840433 () Bool)

(declare-fun res!827137 () Bool)

(assert (=> b!1840433 (=> (not res!827137) (not e!1176137))))

(declare-fun l!3477 () List!20333)

(assert (=> b!1840433 (= res!827137 (<= (+ 1 (size!16063 p!2031)) (size!16063 l!3477)))))

(declare-fun res!827139 () Bool)

(assert (=> start!183204 (=> (not res!827139) (not e!1176137))))

(declare-fun isPrefix!1872 (List!20333 List!20333) Bool)

(assert (=> start!183204 (= res!827139 (isPrefix!1872 p!2031 l!3477))))

(assert (=> start!183204 e!1176137))

(declare-fun e!1176138 () Bool)

(assert (=> start!183204 e!1176138))

(declare-fun e!1176139 () Bool)

(assert (=> start!183204 e!1176139))

(declare-fun b!1840434 () Bool)

(assert (=> b!1840434 (= e!1176137 e!1176140)))

(declare-fun res!827136 () Bool)

(assert (=> b!1840434 (=> (not res!827136) (not e!1176140))))

(assert (=> b!1840434 (= res!827136 (isPrefix!1872 (t!171762 p!2031) lt!714113))))

(declare-fun tail!2780 (List!20333) List!20333)

(assert (=> b!1840434 (= lt!714113 (tail!2780 l!3477))))

(declare-fun b!1840435 () Bool)

(declare-fun ListPrimitiveSize!121 (List!20333) Int)

(assert (=> b!1840435 (= e!1176140 (>= (ListPrimitiveSize!121 (t!171762 p!2031)) (ListPrimitiveSize!121 p!2031)))))

(declare-fun b!1840436 () Bool)

(declare-fun tp_is_empty!8319 () Bool)

(declare-fun tp!520403 () Bool)

(assert (=> b!1840436 (= e!1176138 (and tp_is_empty!8319 tp!520403))))

(declare-fun b!1840437 () Bool)

(declare-fun tp!520404 () Bool)

(assert (=> b!1840437 (= e!1176139 (and tp_is_empty!8319 tp!520404))))

(assert (= (and start!183204 res!827139) b!1840433))

(assert (= (and b!1840433 res!827137) b!1840431))

(assert (= (and b!1840431 res!827138) b!1840434))

(assert (= (and b!1840434 res!827136) b!1840432))

(assert (= (and b!1840432 res!827135) b!1840435))

(assert (= (and start!183204 (is-Cons!20263 p!2031)) b!1840436))

(assert (= (and start!183204 (is-Cons!20263 l!3477)) b!1840437))

(declare-fun m!2267933 () Bool)

(assert (=> start!183204 m!2267933))

(declare-fun m!2267935 () Bool)

(assert (=> b!1840434 m!2267935))

(declare-fun m!2267937 () Bool)

(assert (=> b!1840434 m!2267937))

(declare-fun m!2267939 () Bool)

(assert (=> b!1840432 m!2267939))

(declare-fun m!2267941 () Bool)

(assert (=> b!1840432 m!2267941))

(declare-fun m!2267943 () Bool)

(assert (=> b!1840435 m!2267943))

(declare-fun m!2267945 () Bool)

(assert (=> b!1840435 m!2267945))

(declare-fun m!2267947 () Bool)

(assert (=> b!1840433 m!2267947))

(declare-fun m!2267949 () Bool)

(assert (=> b!1840433 m!2267949))

(push 1)

(assert (not b!1840432))

(assert (not b!1840437))

(assert (not b!1840433))

(assert (not start!183204))

(assert (not b!1840434))

(assert (not b!1840436))

(assert tp_is_empty!8319)

(assert (not b!1840435))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!562783 () Bool)

(declare-fun e!1176163 () Bool)

(assert (=> d!562783 e!1176163))

(declare-fun res!827164 () Bool)

(assert (=> d!562783 (=> res!827164 e!1176163)))

(declare-fun lt!714121 () Bool)

(assert (=> d!562783 (= res!827164 (not lt!714121))))

(declare-fun e!1176161 () Bool)

(assert (=> d!562783 (= lt!714121 e!1176161)))

(declare-fun res!827165 () Bool)

(assert (=> d!562783 (=> res!827165 e!1176161)))

(assert (=> d!562783 (= res!827165 (is-Nil!20263 (t!171762 p!2031)))))

(assert (=> d!562783 (= (isPrefix!1872 (t!171762 p!2031) lt!714113) lt!714121)))

(declare-fun b!1840474 () Bool)

(assert (=> b!1840474 (= e!1176163 (>= (size!16063 lt!714113) (size!16063 (t!171762 p!2031))))))

(declare-fun b!1840471 () Bool)

(declare-fun e!1176162 () Bool)

(assert (=> b!1840471 (= e!1176161 e!1176162)))

(declare-fun res!827163 () Bool)

(assert (=> b!1840471 (=> (not res!827163) (not e!1176162))))

(assert (=> b!1840471 (= res!827163 (not (is-Nil!20263 lt!714113)))))

(declare-fun b!1840473 () Bool)

(assert (=> b!1840473 (= e!1176162 (isPrefix!1872 (tail!2780 (t!171762 p!2031)) (tail!2780 lt!714113)))))

(declare-fun b!1840472 () Bool)

(declare-fun res!827166 () Bool)

(assert (=> b!1840472 (=> (not res!827166) (not e!1176162))))

(declare-fun head!4316 (List!20333) B!1571)

(assert (=> b!1840472 (= res!827166 (= (head!4316 (t!171762 p!2031)) (head!4316 lt!714113)))))

(assert (= (and d!562783 (not res!827165)) b!1840471))

(assert (= (and b!1840471 res!827163) b!1840472))

(assert (= (and b!1840472 res!827166) b!1840473))

(assert (= (and d!562783 (not res!827164)) b!1840474))

(assert (=> b!1840474 m!2267941))

(assert (=> b!1840474 m!2267939))

(declare-fun m!2267969 () Bool)

(assert (=> b!1840473 m!2267969))

(declare-fun m!2267971 () Bool)

(assert (=> b!1840473 m!2267971))

(assert (=> b!1840473 m!2267969))

(assert (=> b!1840473 m!2267971))

(declare-fun m!2267973 () Bool)

(assert (=> b!1840473 m!2267973))

(declare-fun m!2267975 () Bool)

(assert (=> b!1840472 m!2267975))

(declare-fun m!2267977 () Bool)

(assert (=> b!1840472 m!2267977))

(assert (=> b!1840434 d!562783))

(declare-fun d!562787 () Bool)

(assert (=> d!562787 (= (tail!2780 l!3477) (t!171762 l!3477))))

(assert (=> b!1840434 d!562787))

(declare-fun d!562789 () Bool)

(declare-fun lt!714126 () Int)

(assert (=> d!562789 (>= lt!714126 0)))

(declare-fun e!1176168 () Int)

(assert (=> d!562789 (= lt!714126 e!1176168)))

(declare-fun c!300374 () Bool)

(assert (=> d!562789 (= c!300374 (is-Nil!20263 (t!171762 p!2031)))))

(assert (=> d!562789 (= (ListPrimitiveSize!121 (t!171762 p!2031)) lt!714126)))

(declare-fun b!1840483 () Bool)

(assert (=> b!1840483 (= e!1176168 0)))

(declare-fun b!1840484 () Bool)

(assert (=> b!1840484 (= e!1176168 (+ 1 (ListPrimitiveSize!121 (t!171762 (t!171762 p!2031)))))))

(assert (= (and d!562789 c!300374) b!1840483))

(assert (= (and d!562789 (not c!300374)) b!1840484))

(declare-fun m!2267983 () Bool)

(assert (=> b!1840484 m!2267983))

(assert (=> b!1840435 d!562789))

(declare-fun d!562795 () Bool)

(declare-fun lt!714127 () Int)

(assert (=> d!562795 (>= lt!714127 0)))

(declare-fun e!1176169 () Int)

(assert (=> d!562795 (= lt!714127 e!1176169)))

(declare-fun c!300375 () Bool)

(assert (=> d!562795 (= c!300375 (is-Nil!20263 p!2031))))

(assert (=> d!562795 (= (ListPrimitiveSize!121 p!2031) lt!714127)))

(declare-fun b!1840485 () Bool)

(assert (=> b!1840485 (= e!1176169 0)))

(declare-fun b!1840486 () Bool)

(assert (=> b!1840486 (= e!1176169 (+ 1 (ListPrimitiveSize!121 (t!171762 p!2031))))))

(assert (= (and d!562795 c!300375) b!1840485))

(assert (= (and d!562795 (not c!300375)) b!1840486))

(assert (=> b!1840486 m!2267943))

(assert (=> b!1840435 d!562795))

(declare-fun d!562797 () Bool)

(declare-fun e!1176172 () Bool)

(assert (=> d!562797 e!1176172))

(declare-fun res!827168 () Bool)

(assert (=> d!562797 (=> res!827168 e!1176172)))

(declare-fun lt!714128 () Bool)

(assert (=> d!562797 (= res!827168 (not lt!714128))))

(declare-fun e!1176170 () Bool)

(assert (=> d!562797 (= lt!714128 e!1176170)))

(declare-fun res!827169 () Bool)

(assert (=> d!562797 (=> res!827169 e!1176170)))

(assert (=> d!562797 (= res!827169 (is-Nil!20263 p!2031))))

(assert (=> d!562797 (= (isPrefix!1872 p!2031 l!3477) lt!714128)))

(declare-fun b!1840490 () Bool)

(assert (=> b!1840490 (= e!1176172 (>= (size!16063 l!3477) (size!16063 p!2031)))))

(declare-fun b!1840487 () Bool)

(declare-fun e!1176171 () Bool)

(assert (=> b!1840487 (= e!1176170 e!1176171)))

(declare-fun res!827167 () Bool)

(assert (=> b!1840487 (=> (not res!827167) (not e!1176171))))

(assert (=> b!1840487 (= res!827167 (not (is-Nil!20263 l!3477)))))

(declare-fun b!1840489 () Bool)

(assert (=> b!1840489 (= e!1176171 (isPrefix!1872 (tail!2780 p!2031) (tail!2780 l!3477)))))

(declare-fun b!1840488 () Bool)

(declare-fun res!827170 () Bool)

(assert (=> b!1840488 (=> (not res!827170) (not e!1176171))))

(assert (=> b!1840488 (= res!827170 (= (head!4316 p!2031) (head!4316 l!3477)))))

(assert (= (and d!562797 (not res!827169)) b!1840487))

(assert (= (and b!1840487 res!827167) b!1840488))

(assert (= (and b!1840488 res!827170) b!1840489))

(assert (= (and d!562797 (not res!827168)) b!1840490))

(assert (=> b!1840490 m!2267949))

(assert (=> b!1840490 m!2267947))

(declare-fun m!2267985 () Bool)

(assert (=> b!1840489 m!2267985))

(assert (=> b!1840489 m!2267937))

(assert (=> b!1840489 m!2267985))

(assert (=> b!1840489 m!2267937))

(declare-fun m!2267987 () Bool)

(assert (=> b!1840489 m!2267987))

(declare-fun m!2267989 () Bool)

(assert (=> b!1840488 m!2267989))

(declare-fun m!2267991 () Bool)

(assert (=> b!1840488 m!2267991))

(assert (=> start!183204 d!562797))

(declare-fun d!562799 () Bool)

(declare-fun lt!714131 () Int)

(assert (=> d!562799 (>= lt!714131 0)))

(declare-fun e!1176175 () Int)

(assert (=> d!562799 (= lt!714131 e!1176175)))

(declare-fun c!300378 () Bool)

(assert (=> d!562799 (= c!300378 (is-Nil!20263 (t!171762 p!2031)))))

(assert (=> d!562799 (= (size!16063 (t!171762 p!2031)) lt!714131)))

(declare-fun b!1840495 () Bool)

(assert (=> b!1840495 (= e!1176175 0)))

(declare-fun b!1840496 () Bool)

(assert (=> b!1840496 (= e!1176175 (+ 1 (size!16063 (t!171762 (t!171762 p!2031)))))))

(assert (= (and d!562799 c!300378) b!1840495))

(assert (= (and d!562799 (not c!300378)) b!1840496))

(declare-fun m!2267993 () Bool)

(assert (=> b!1840496 m!2267993))

(assert (=> b!1840432 d!562799))

(declare-fun d!562801 () Bool)

(declare-fun lt!714132 () Int)

(assert (=> d!562801 (>= lt!714132 0)))

(declare-fun e!1176176 () Int)

(assert (=> d!562801 (= lt!714132 e!1176176)))

(declare-fun c!300379 () Bool)

(assert (=> d!562801 (= c!300379 (is-Nil!20263 lt!714113))))

(assert (=> d!562801 (= (size!16063 lt!714113) lt!714132)))

(declare-fun b!1840497 () Bool)

(assert (=> b!1840497 (= e!1176176 0)))

(declare-fun b!1840498 () Bool)

(assert (=> b!1840498 (= e!1176176 (+ 1 (size!16063 (t!171762 lt!714113))))))

(assert (= (and d!562801 c!300379) b!1840497))

(assert (= (and d!562801 (not c!300379)) b!1840498))

(declare-fun m!2267995 () Bool)

(assert (=> b!1840498 m!2267995))

(assert (=> b!1840432 d!562801))

(declare-fun d!562803 () Bool)

(declare-fun lt!714133 () Int)

(assert (=> d!562803 (>= lt!714133 0)))

(declare-fun e!1176177 () Int)

(assert (=> d!562803 (= lt!714133 e!1176177)))

(declare-fun c!300380 () Bool)

(assert (=> d!562803 (= c!300380 (is-Nil!20263 p!2031))))

(assert (=> d!562803 (= (size!16063 p!2031) lt!714133)))

(declare-fun b!1840499 () Bool)

(assert (=> b!1840499 (= e!1176177 0)))

(declare-fun b!1840500 () Bool)

(assert (=> b!1840500 (= e!1176177 (+ 1 (size!16063 (t!171762 p!2031))))))

(assert (= (and d!562803 c!300380) b!1840499))

(assert (= (and d!562803 (not c!300380)) b!1840500))

(assert (=> b!1840500 m!2267939))

(assert (=> b!1840433 d!562803))

(declare-fun d!562805 () Bool)

(declare-fun lt!714134 () Int)

(assert (=> d!562805 (>= lt!714134 0)))

(declare-fun e!1176178 () Int)

(assert (=> d!562805 (= lt!714134 e!1176178)))

(declare-fun c!300381 () Bool)

(assert (=> d!562805 (= c!300381 (is-Nil!20263 l!3477))))

(assert (=> d!562805 (= (size!16063 l!3477) lt!714134)))

(declare-fun b!1840501 () Bool)

(assert (=> b!1840501 (= e!1176178 0)))

(declare-fun b!1840502 () Bool)

(assert (=> b!1840502 (= e!1176178 (+ 1 (size!16063 (t!171762 l!3477))))))

(assert (= (and d!562805 c!300381) b!1840501))

(assert (= (and d!562805 (not c!300381)) b!1840502))

(declare-fun m!2267997 () Bool)

(assert (=> b!1840502 m!2267997))

(assert (=> b!1840433 d!562805))

(declare-fun b!1840507 () Bool)

(declare-fun e!1176181 () Bool)

(declare-fun tp!520413 () Bool)

(assert (=> b!1840507 (= e!1176181 (and tp_is_empty!8319 tp!520413))))

(assert (=> b!1840436 (= tp!520403 e!1176181)))

(assert (= (and b!1840436 (is-Cons!20263 (t!171762 p!2031))) b!1840507))

(declare-fun b!1840508 () Bool)

(declare-fun e!1176182 () Bool)

(declare-fun tp!520414 () Bool)

(assert (=> b!1840508 (= e!1176182 (and tp_is_empty!8319 tp!520414))))

(assert (=> b!1840437 (= tp!520404 e!1176182)))

(assert (= (and b!1840437 (is-Cons!20263 (t!171762 l!3477))) b!1840508))

(push 1)

(assert (not b!1840484))

(assert (not b!1840486))

(assert (not b!1840500))

(assert (not b!1840502))

(assert (not b!1840490))

(assert (not b!1840474))

(assert (not b!1840473))

(assert (not b!1840496))

(assert (not b!1840489))

(assert (not b!1840498))

(assert (not b!1840507))

(assert (not b!1840488))

(assert (not b!1840508))

(assert tp_is_empty!8319)

(assert (not b!1840472))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

