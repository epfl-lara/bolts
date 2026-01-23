; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!742716 () Bool)

(assert start!742716)

(declare-fun b!7842130 () Bool)

(declare-fun res!3119067 () Bool)

(declare-fun e!4636639 () Bool)

(assert (=> b!7842130 (=> (not res!3119067) (not e!4636639))))

(declare-datatypes ((B!3999 0))(
  ( (B!4000 (val!31641 Int)) )
))
(declare-datatypes ((List!73875 0))(
  ( (Nil!73751) (Cons!73751 (h!80199 B!3999) (t!388610 List!73875)) )
))
(declare-fun s2!461 () List!73875)

(declare-fun s1!502 () List!73875)

(declare-fun size!42800 (List!73875) Int)

(assert (=> b!7842130 (= res!3119067 (<= (size!42800 s2!461) (size!42800 s1!502)))))

(declare-fun b!7842131 () Bool)

(declare-fun e!4636638 () Bool)

(assert (=> b!7842131 (= e!4636639 e!4636638)))

(declare-fun res!3119068 () Bool)

(assert (=> b!7842131 (=> (not res!3119068) (not e!4636638))))

(declare-fun lt!2678653 () List!73875)

(declare-fun isPrefix!6352 (List!73875 List!73875) Bool)

(declare-fun tail!15556 (List!73875) List!73875)

(assert (=> b!7842131 (= res!3119068 (isPrefix!6352 (tail!15556 s1!502) lt!2678653))))

(declare-fun l!3495 () List!73875)

(assert (=> b!7842131 (= lt!2678653 (tail!15556 l!3495))))

(declare-fun b!7842132 () Bool)

(declare-fun e!4636640 () Bool)

(declare-fun tp_is_empty!52431 () Bool)

(declare-fun tp!2321088 () Bool)

(assert (=> b!7842132 (= e!4636640 (and tp_is_empty!52431 tp!2321088))))

(declare-fun res!3119071 () Bool)

(assert (=> start!742716 (=> (not res!3119071) (not e!4636639))))

(assert (=> start!742716 (= res!3119071 (isPrefix!6352 s1!502 l!3495))))

(assert (=> start!742716 e!4636639))

(declare-fun e!4636637 () Bool)

(assert (=> start!742716 e!4636637))

(declare-fun e!4636636 () Bool)

(assert (=> start!742716 e!4636636))

(assert (=> start!742716 e!4636640))

(declare-fun b!7842133 () Bool)

(assert (=> b!7842133 (= e!4636638 (not (isPrefix!6352 (t!388610 s2!461) lt!2678653)))))

(declare-fun b!7842134 () Bool)

(declare-fun res!3119069 () Bool)

(assert (=> b!7842134 (=> (not res!3119069) (not e!4636639))))

(assert (=> b!7842134 (= res!3119069 (is-Cons!73751 s2!461))))

(declare-fun b!7842135 () Bool)

(declare-fun tp!2321086 () Bool)

(assert (=> b!7842135 (= e!4636636 (and tp_is_empty!52431 tp!2321086))))

(declare-fun b!7842136 () Bool)

(declare-fun res!3119070 () Bool)

(assert (=> b!7842136 (=> (not res!3119070) (not e!4636639))))

(assert (=> b!7842136 (= res!3119070 (isPrefix!6352 s2!461 l!3495))))

(declare-fun b!7842137 () Bool)

(declare-fun tp!2321087 () Bool)

(assert (=> b!7842137 (= e!4636637 (and tp_is_empty!52431 tp!2321087))))

(assert (= (and start!742716 res!3119071) b!7842136))

(assert (= (and b!7842136 res!3119070) b!7842130))

(assert (= (and b!7842130 res!3119067) b!7842134))

(assert (= (and b!7842134 res!3119069) b!7842131))

(assert (= (and b!7842131 res!3119068) b!7842133))

(assert (= (and start!742716 (is-Cons!73751 s1!502)) b!7842137))

(assert (= (and start!742716 (is-Cons!73751 l!3495)) b!7842135))

(assert (= (and start!742716 (is-Cons!73751 s2!461)) b!7842132))

(declare-fun m!8254310 () Bool)

(assert (=> b!7842131 m!8254310))

(assert (=> b!7842131 m!8254310))

(declare-fun m!8254312 () Bool)

(assert (=> b!7842131 m!8254312))

(declare-fun m!8254314 () Bool)

(assert (=> b!7842131 m!8254314))

(declare-fun m!8254316 () Bool)

(assert (=> b!7842133 m!8254316))

(declare-fun m!8254318 () Bool)

(assert (=> b!7842130 m!8254318))

(declare-fun m!8254320 () Bool)

(assert (=> b!7842130 m!8254320))

(declare-fun m!8254322 () Bool)

(assert (=> b!7842136 m!8254322))

(declare-fun m!8254324 () Bool)

(assert (=> start!742716 m!8254324))

(push 1)

(assert (not b!7842133))

(assert (not b!7842130))

(assert (not b!7842136))

(assert tp_is_empty!52431)

(assert (not start!742716))

(assert (not b!7842137))

(assert (not b!7842131))

(assert (not b!7842135))

(assert (not b!7842132))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7842173 () Bool)

(declare-fun e!4636663 () Bool)

(assert (=> b!7842173 (= e!4636663 (>= (size!42800 l!3495) (size!42800 s1!502)))))

(declare-fun b!7842171 () Bool)

(declare-fun res!3119098 () Bool)

(declare-fun e!4636664 () Bool)

(assert (=> b!7842171 (=> (not res!3119098) (not e!4636664))))

(declare-fun head!16013 (List!73875) B!3999)

(assert (=> b!7842171 (= res!3119098 (= (head!16013 s1!502) (head!16013 l!3495)))))

(declare-fun d!2352311 () Bool)

(assert (=> d!2352311 e!4636663))

(declare-fun res!3119097 () Bool)

(assert (=> d!2352311 (=> res!3119097 e!4636663)))

(declare-fun lt!2678659 () Bool)

(assert (=> d!2352311 (= res!3119097 (not lt!2678659))))

(declare-fun e!4636662 () Bool)

(assert (=> d!2352311 (= lt!2678659 e!4636662)))

(declare-fun res!3119096 () Bool)

(assert (=> d!2352311 (=> res!3119096 e!4636662)))

(assert (=> d!2352311 (= res!3119096 (is-Nil!73751 s1!502))))

(assert (=> d!2352311 (= (isPrefix!6352 s1!502 l!3495) lt!2678659)))

(declare-fun b!7842172 () Bool)

(assert (=> b!7842172 (= e!4636664 (isPrefix!6352 (tail!15556 s1!502) (tail!15556 l!3495)))))

(declare-fun b!7842170 () Bool)

(assert (=> b!7842170 (= e!4636662 e!4636664)))

(declare-fun res!3119095 () Bool)

(assert (=> b!7842170 (=> (not res!3119095) (not e!4636664))))

(assert (=> b!7842170 (= res!3119095 (not (is-Nil!73751 l!3495)))))

(assert (= (and d!2352311 (not res!3119096)) b!7842170))

(assert (= (and b!7842170 res!3119095) b!7842171))

(assert (= (and b!7842171 res!3119098) b!7842172))

(assert (= (and d!2352311 (not res!3119097)) b!7842173))

(declare-fun m!8254342 () Bool)

(assert (=> b!7842173 m!8254342))

(assert (=> b!7842173 m!8254320))

(declare-fun m!8254344 () Bool)

(assert (=> b!7842171 m!8254344))

(declare-fun m!8254346 () Bool)

(assert (=> b!7842171 m!8254346))

(assert (=> b!7842172 m!8254310))

(assert (=> b!7842172 m!8254314))

(assert (=> b!7842172 m!8254310))

(assert (=> b!7842172 m!8254314))

(declare-fun m!8254348 () Bool)

(assert (=> b!7842172 m!8254348))

(assert (=> start!742716 d!2352311))

(declare-fun b!7842177 () Bool)

(declare-fun e!4636666 () Bool)

(assert (=> b!7842177 (= e!4636666 (>= (size!42800 lt!2678653) (size!42800 (t!388610 s2!461))))))

(declare-fun b!7842175 () Bool)

(declare-fun res!3119102 () Bool)

(declare-fun e!4636667 () Bool)

(assert (=> b!7842175 (=> (not res!3119102) (not e!4636667))))

(assert (=> b!7842175 (= res!3119102 (= (head!16013 (t!388610 s2!461)) (head!16013 lt!2678653)))))

(declare-fun d!2352313 () Bool)

(assert (=> d!2352313 e!4636666))

(declare-fun res!3119101 () Bool)

(assert (=> d!2352313 (=> res!3119101 e!4636666)))

(declare-fun lt!2678660 () Bool)

(assert (=> d!2352313 (= res!3119101 (not lt!2678660))))

(declare-fun e!4636665 () Bool)

(assert (=> d!2352313 (= lt!2678660 e!4636665)))

(declare-fun res!3119100 () Bool)

(assert (=> d!2352313 (=> res!3119100 e!4636665)))

(assert (=> d!2352313 (= res!3119100 (is-Nil!73751 (t!388610 s2!461)))))

(assert (=> d!2352313 (= (isPrefix!6352 (t!388610 s2!461) lt!2678653) lt!2678660)))

(declare-fun b!7842176 () Bool)

(assert (=> b!7842176 (= e!4636667 (isPrefix!6352 (tail!15556 (t!388610 s2!461)) (tail!15556 lt!2678653)))))

(declare-fun b!7842174 () Bool)

(assert (=> b!7842174 (= e!4636665 e!4636667)))

(declare-fun res!3119099 () Bool)

(assert (=> b!7842174 (=> (not res!3119099) (not e!4636667))))

(assert (=> b!7842174 (= res!3119099 (not (is-Nil!73751 lt!2678653)))))

(assert (= (and d!2352313 (not res!3119100)) b!7842174))

(assert (= (and b!7842174 res!3119099) b!7842175))

(assert (= (and b!7842175 res!3119102) b!7842176))

(assert (= (and d!2352313 (not res!3119101)) b!7842177))

(declare-fun m!8254350 () Bool)

(assert (=> b!7842177 m!8254350))

(declare-fun m!8254352 () Bool)

(assert (=> b!7842177 m!8254352))

(declare-fun m!8254354 () Bool)

(assert (=> b!7842175 m!8254354))

(declare-fun m!8254356 () Bool)

(assert (=> b!7842175 m!8254356))

(declare-fun m!8254358 () Bool)

(assert (=> b!7842176 m!8254358))

(declare-fun m!8254360 () Bool)

(assert (=> b!7842176 m!8254360))

(assert (=> b!7842176 m!8254358))

(assert (=> b!7842176 m!8254360))

(declare-fun m!8254362 () Bool)

(assert (=> b!7842176 m!8254362))

(assert (=> b!7842133 d!2352313))

(declare-fun b!7842181 () Bool)

(declare-fun e!4636669 () Bool)

(assert (=> b!7842181 (= e!4636669 (>= (size!42800 l!3495) (size!42800 s2!461)))))

(declare-fun b!7842179 () Bool)

(declare-fun res!3119106 () Bool)

(declare-fun e!4636670 () Bool)

(assert (=> b!7842179 (=> (not res!3119106) (not e!4636670))))

(assert (=> b!7842179 (= res!3119106 (= (head!16013 s2!461) (head!16013 l!3495)))))

(declare-fun d!2352317 () Bool)

(assert (=> d!2352317 e!4636669))

(declare-fun res!3119105 () Bool)

(assert (=> d!2352317 (=> res!3119105 e!4636669)))

(declare-fun lt!2678661 () Bool)

(assert (=> d!2352317 (= res!3119105 (not lt!2678661))))

(declare-fun e!4636668 () Bool)

(assert (=> d!2352317 (= lt!2678661 e!4636668)))

(declare-fun res!3119104 () Bool)

(assert (=> d!2352317 (=> res!3119104 e!4636668)))

(assert (=> d!2352317 (= res!3119104 (is-Nil!73751 s2!461))))

(assert (=> d!2352317 (= (isPrefix!6352 s2!461 l!3495) lt!2678661)))

(declare-fun b!7842180 () Bool)

(assert (=> b!7842180 (= e!4636670 (isPrefix!6352 (tail!15556 s2!461) (tail!15556 l!3495)))))

(declare-fun b!7842178 () Bool)

(assert (=> b!7842178 (= e!4636668 e!4636670)))

(declare-fun res!3119103 () Bool)

(assert (=> b!7842178 (=> (not res!3119103) (not e!4636670))))

(assert (=> b!7842178 (= res!3119103 (not (is-Nil!73751 l!3495)))))

(assert (= (and d!2352317 (not res!3119104)) b!7842178))

(assert (= (and b!7842178 res!3119103) b!7842179))

(assert (= (and b!7842179 res!3119106) b!7842180))

(assert (= (and d!2352317 (not res!3119105)) b!7842181))

(assert (=> b!7842181 m!8254342))

(assert (=> b!7842181 m!8254318))

(declare-fun m!8254364 () Bool)

(assert (=> b!7842179 m!8254364))

(assert (=> b!7842179 m!8254346))

(declare-fun m!8254366 () Bool)

(assert (=> b!7842180 m!8254366))

(assert (=> b!7842180 m!8254314))

(assert (=> b!7842180 m!8254366))

(assert (=> b!7842180 m!8254314))

(declare-fun m!8254368 () Bool)

(assert (=> b!7842180 m!8254368))

(assert (=> b!7842136 d!2352317))

(declare-fun b!7842185 () Bool)

(declare-fun e!4636672 () Bool)

(assert (=> b!7842185 (= e!4636672 (>= (size!42800 lt!2678653) (size!42800 (tail!15556 s1!502))))))

(declare-fun b!7842183 () Bool)

(declare-fun res!3119110 () Bool)

(declare-fun e!4636673 () Bool)

(assert (=> b!7842183 (=> (not res!3119110) (not e!4636673))))

(assert (=> b!7842183 (= res!3119110 (= (head!16013 (tail!15556 s1!502)) (head!16013 lt!2678653)))))

(declare-fun d!2352319 () Bool)

(assert (=> d!2352319 e!4636672))

(declare-fun res!3119109 () Bool)

(assert (=> d!2352319 (=> res!3119109 e!4636672)))

(declare-fun lt!2678662 () Bool)

(assert (=> d!2352319 (= res!3119109 (not lt!2678662))))

(declare-fun e!4636671 () Bool)

(assert (=> d!2352319 (= lt!2678662 e!4636671)))

(declare-fun res!3119108 () Bool)

(assert (=> d!2352319 (=> res!3119108 e!4636671)))

(assert (=> d!2352319 (= res!3119108 (is-Nil!73751 (tail!15556 s1!502)))))

(assert (=> d!2352319 (= (isPrefix!6352 (tail!15556 s1!502) lt!2678653) lt!2678662)))

(declare-fun b!7842184 () Bool)

(assert (=> b!7842184 (= e!4636673 (isPrefix!6352 (tail!15556 (tail!15556 s1!502)) (tail!15556 lt!2678653)))))

(declare-fun b!7842182 () Bool)

(assert (=> b!7842182 (= e!4636671 e!4636673)))

(declare-fun res!3119107 () Bool)

(assert (=> b!7842182 (=> (not res!3119107) (not e!4636673))))

(assert (=> b!7842182 (= res!3119107 (not (is-Nil!73751 lt!2678653)))))

(assert (= (and d!2352319 (not res!3119108)) b!7842182))

(assert (= (and b!7842182 res!3119107) b!7842183))

(assert (= (and b!7842183 res!3119110) b!7842184))

(assert (= (and d!2352319 (not res!3119109)) b!7842185))

(assert (=> b!7842185 m!8254350))

(assert (=> b!7842185 m!8254310))

(declare-fun m!8254370 () Bool)

(assert (=> b!7842185 m!8254370))

(assert (=> b!7842183 m!8254310))

(declare-fun m!8254372 () Bool)

(assert (=> b!7842183 m!8254372))

(assert (=> b!7842183 m!8254356))

(assert (=> b!7842184 m!8254310))

(declare-fun m!8254374 () Bool)

(assert (=> b!7842184 m!8254374))

(assert (=> b!7842184 m!8254360))

(assert (=> b!7842184 m!8254374))

(assert (=> b!7842184 m!8254360))

(declare-fun m!8254376 () Bool)

(assert (=> b!7842184 m!8254376))

(assert (=> b!7842131 d!2352319))

(declare-fun d!2352321 () Bool)

(assert (=> d!2352321 (= (tail!15556 s1!502) (t!388610 s1!502))))

(assert (=> b!7842131 d!2352321))

(declare-fun d!2352323 () Bool)

(assert (=> d!2352323 (= (tail!15556 l!3495) (t!388610 l!3495))))

(assert (=> b!7842131 d!2352323))

(declare-fun d!2352325 () Bool)

(declare-fun lt!2678665 () Int)

(assert (=> d!2352325 (>= lt!2678665 0)))

(declare-fun e!4636676 () Int)

(assert (=> d!2352325 (= lt!2678665 e!4636676)))

(declare-fun c!1441687 () Bool)

(assert (=> d!2352325 (= c!1441687 (is-Nil!73751 s2!461))))

(assert (=> d!2352325 (= (size!42800 s2!461) lt!2678665)))

(declare-fun b!7842190 () Bool)

(assert (=> b!7842190 (= e!4636676 0)))

(declare-fun b!7842191 () Bool)

(assert (=> b!7842191 (= e!4636676 (+ 1 (size!42800 (t!388610 s2!461))))))

(assert (= (and d!2352325 c!1441687) b!7842190))

(assert (= (and d!2352325 (not c!1441687)) b!7842191))

(assert (=> b!7842191 m!8254352))

(assert (=> b!7842130 d!2352325))

(declare-fun d!2352327 () Bool)

(declare-fun lt!2678666 () Int)

(assert (=> d!2352327 (>= lt!2678666 0)))

(declare-fun e!4636677 () Int)

(assert (=> d!2352327 (= lt!2678666 e!4636677)))

(declare-fun c!1441688 () Bool)

(assert (=> d!2352327 (= c!1441688 (is-Nil!73751 s1!502))))

(assert (=> d!2352327 (= (size!42800 s1!502) lt!2678666)))

(declare-fun b!7842192 () Bool)

(assert (=> b!7842192 (= e!4636677 0)))

(declare-fun b!7842193 () Bool)

(assert (=> b!7842193 (= e!4636677 (+ 1 (size!42800 (t!388610 s1!502))))))

(assert (= (and d!2352327 c!1441688) b!7842192))

(assert (= (and d!2352327 (not c!1441688)) b!7842193))

(declare-fun m!8254378 () Bool)

(assert (=> b!7842193 m!8254378))

(assert (=> b!7842130 d!2352327))

(declare-fun b!7842198 () Bool)

(declare-fun e!4636680 () Bool)

(declare-fun tp!2321100 () Bool)

(assert (=> b!7842198 (= e!4636680 (and tp_is_empty!52431 tp!2321100))))

(assert (=> b!7842135 (= tp!2321086 e!4636680)))

(assert (= (and b!7842135 (is-Cons!73751 (t!388610 l!3495))) b!7842198))

(declare-fun b!7842199 () Bool)

(declare-fun e!4636681 () Bool)

(declare-fun tp!2321101 () Bool)

(assert (=> b!7842199 (= e!4636681 (and tp_is_empty!52431 tp!2321101))))

(assert (=> b!7842132 (= tp!2321088 e!4636681)))

(assert (= (and b!7842132 (is-Cons!73751 (t!388610 s2!461))) b!7842199))

(declare-fun b!7842200 () Bool)

(declare-fun e!4636682 () Bool)

(declare-fun tp!2321102 () Bool)

(assert (=> b!7842200 (= e!4636682 (and tp_is_empty!52431 tp!2321102))))

(assert (=> b!7842137 (= tp!2321087 e!4636682)))

(assert (= (and b!7842137 (is-Cons!73751 (t!388610 s1!502))) b!7842200))

(push 1)

(assert (not b!7842173))

(assert (not b!7842198))

(assert (not b!7842180))

(assert (not b!7842181))

(assert (not b!7842183))

(assert (not b!7842184))

(assert (not b!7842179))

(assert (not b!7842175))

(assert (not b!7842176))

(assert (not b!7842200))

(assert (not b!7842172))

(assert (not b!7842177))

(assert (not b!7842199))

(assert tp_is_empty!52431)

(assert (not b!7842185))

(assert (not b!7842191))

(assert (not b!7842171))

(assert (not b!7842193))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2352343 () Bool)

(declare-fun lt!2678677 () Int)

(assert (=> d!2352343 (>= lt!2678677 0)))

(declare-fun e!4636710 () Int)

(assert (=> d!2352343 (= lt!2678677 e!4636710)))

(declare-fun c!1441693 () Bool)

(assert (=> d!2352343 (= c!1441693 (is-Nil!73751 (t!388610 s2!461)))))

(assert (=> d!2352343 (= (size!42800 (t!388610 s2!461)) lt!2678677)))

(declare-fun b!7842240 () Bool)

(assert (=> b!7842240 (= e!4636710 0)))

(declare-fun b!7842241 () Bool)

(assert (=> b!7842241 (= e!4636710 (+ 1 (size!42800 (t!388610 (t!388610 s2!461)))))))

(assert (= (and d!2352343 c!1441693) b!7842240))

(assert (= (and d!2352343 (not c!1441693)) b!7842241))

(declare-fun m!8254418 () Bool)

(assert (=> b!7842241 m!8254418))

(assert (=> b!7842191 d!2352343))

(declare-fun d!2352345 () Bool)

(declare-fun lt!2678678 () Int)

(assert (=> d!2352345 (>= lt!2678678 0)))

(declare-fun e!4636711 () Int)

(assert (=> d!2352345 (= lt!2678678 e!4636711)))

(declare-fun c!1441694 () Bool)

(assert (=> d!2352345 (= c!1441694 (is-Nil!73751 lt!2678653))))

(assert (=> d!2352345 (= (size!42800 lt!2678653) lt!2678678)))

(declare-fun b!7842242 () Bool)

(assert (=> b!7842242 (= e!4636711 0)))

(declare-fun b!7842243 () Bool)

(assert (=> b!7842243 (= e!4636711 (+ 1 (size!42800 (t!388610 lt!2678653))))))

(assert (= (and d!2352345 c!1441694) b!7842242))

(assert (= (and d!2352345 (not c!1441694)) b!7842243))

(declare-fun m!8254420 () Bool)

(assert (=> b!7842243 m!8254420))

(assert (=> b!7842177 d!2352345))

(assert (=> b!7842177 d!2352343))

(assert (=> b!7842185 d!2352345))

(declare-fun d!2352347 () Bool)

(declare-fun lt!2678679 () Int)

(assert (=> d!2352347 (>= lt!2678679 0)))

(declare-fun e!4636712 () Int)

(assert (=> d!2352347 (= lt!2678679 e!4636712)))

(declare-fun c!1441695 () Bool)

(assert (=> d!2352347 (= c!1441695 (is-Nil!73751 (tail!15556 s1!502)))))

(assert (=> d!2352347 (= (size!42800 (tail!15556 s1!502)) lt!2678679)))

(declare-fun b!7842244 () Bool)

(assert (=> b!7842244 (= e!4636712 0)))

(declare-fun b!7842245 () Bool)

(assert (=> b!7842245 (= e!4636712 (+ 1 (size!42800 (t!388610 (tail!15556 s1!502)))))))

(assert (= (and d!2352347 c!1441695) b!7842244))

(assert (= (and d!2352347 (not c!1441695)) b!7842245))

(declare-fun m!8254422 () Bool)

(assert (=> b!7842245 m!8254422))

(assert (=> b!7842185 d!2352347))

(declare-fun b!7842249 () Bool)

(declare-fun e!4636714 () Bool)

(assert (=> b!7842249 (= e!4636714 (>= (size!42800 (tail!15556 lt!2678653)) (size!42800 (tail!15556 (tail!15556 s1!502)))))))

(declare-fun b!7842247 () Bool)

(declare-fun res!3119138 () Bool)

(declare-fun e!4636715 () Bool)

(assert (=> b!7842247 (=> (not res!3119138) (not e!4636715))))

(assert (=> b!7842247 (= res!3119138 (= (head!16013 (tail!15556 (tail!15556 s1!502))) (head!16013 (tail!15556 lt!2678653))))))

(declare-fun d!2352349 () Bool)

(assert (=> d!2352349 e!4636714))

(declare-fun res!3119137 () Bool)

(assert (=> d!2352349 (=> res!3119137 e!4636714)))

(declare-fun lt!2678680 () Bool)

(assert (=> d!2352349 (= res!3119137 (not lt!2678680))))

(declare-fun e!4636713 () Bool)

(assert (=> d!2352349 (= lt!2678680 e!4636713)))

(declare-fun res!3119136 () Bool)

(assert (=> d!2352349 (=> res!3119136 e!4636713)))

(assert (=> d!2352349 (= res!3119136 (is-Nil!73751 (tail!15556 (tail!15556 s1!502))))))

(assert (=> d!2352349 (= (isPrefix!6352 (tail!15556 (tail!15556 s1!502)) (tail!15556 lt!2678653)) lt!2678680)))

(declare-fun b!7842248 () Bool)

(assert (=> b!7842248 (= e!4636715 (isPrefix!6352 (tail!15556 (tail!15556 (tail!15556 s1!502))) (tail!15556 (tail!15556 lt!2678653))))))

(declare-fun b!7842246 () Bool)

(assert (=> b!7842246 (= e!4636713 e!4636715)))

(declare-fun res!3119135 () Bool)

(assert (=> b!7842246 (=> (not res!3119135) (not e!4636715))))

(assert (=> b!7842246 (= res!3119135 (not (is-Nil!73751 (tail!15556 lt!2678653))))))

(assert (= (and d!2352349 (not res!3119136)) b!7842246))

(assert (= (and b!7842246 res!3119135) b!7842247))

(assert (= (and b!7842247 res!3119138) b!7842248))

(assert (= (and d!2352349 (not res!3119137)) b!7842249))

(assert (=> b!7842249 m!8254360))

(declare-fun m!8254424 () Bool)

(assert (=> b!7842249 m!8254424))

(assert (=> b!7842249 m!8254374))

(declare-fun m!8254426 () Bool)

(assert (=> b!7842249 m!8254426))

(assert (=> b!7842247 m!8254374))

(declare-fun m!8254428 () Bool)

(assert (=> b!7842247 m!8254428))

(assert (=> b!7842247 m!8254360))

(declare-fun m!8254430 () Bool)

(assert (=> b!7842247 m!8254430))

(assert (=> b!7842248 m!8254374))

(declare-fun m!8254432 () Bool)

(assert (=> b!7842248 m!8254432))

(assert (=> b!7842248 m!8254360))

(declare-fun m!8254434 () Bool)

(assert (=> b!7842248 m!8254434))

(assert (=> b!7842248 m!8254432))

(assert (=> b!7842248 m!8254434))

(declare-fun m!8254436 () Bool)

(assert (=> b!7842248 m!8254436))

(assert (=> b!7842184 d!2352349))

(declare-fun d!2352351 () Bool)

(assert (=> d!2352351 (= (tail!15556 (tail!15556 s1!502)) (t!388610 (tail!15556 s1!502)))))

(assert (=> b!7842184 d!2352351))

(declare-fun d!2352353 () Bool)

(assert (=> d!2352353 (= (tail!15556 lt!2678653) (t!388610 lt!2678653))))

(assert (=> b!7842184 d!2352353))

(declare-fun d!2352355 () Bool)

(declare-fun lt!2678681 () Int)

(assert (=> d!2352355 (>= lt!2678681 0)))

(declare-fun e!4636716 () Int)

(assert (=> d!2352355 (= lt!2678681 e!4636716)))

(declare-fun c!1441696 () Bool)

(assert (=> d!2352355 (= c!1441696 (is-Nil!73751 (t!388610 s1!502)))))

(assert (=> d!2352355 (= (size!42800 (t!388610 s1!502)) lt!2678681)))

(declare-fun b!7842250 () Bool)

(assert (=> b!7842250 (= e!4636716 0)))

(declare-fun b!7842251 () Bool)

(assert (=> b!7842251 (= e!4636716 (+ 1 (size!42800 (t!388610 (t!388610 s1!502)))))))

(assert (= (and d!2352355 c!1441696) b!7842250))

(assert (= (and d!2352355 (not c!1441696)) b!7842251))

(declare-fun m!8254438 () Bool)

(assert (=> b!7842251 m!8254438))

(assert (=> b!7842193 d!2352355))

(declare-fun d!2352357 () Bool)

(assert (=> d!2352357 (= (head!16013 s2!461) (h!80199 s2!461))))

(assert (=> b!7842179 d!2352357))

(declare-fun d!2352359 () Bool)

(assert (=> d!2352359 (= (head!16013 l!3495) (h!80199 l!3495))))

(assert (=> b!7842179 d!2352359))

(declare-fun d!2352361 () Bool)

(assert (=> d!2352361 (= (head!16013 (tail!15556 s1!502)) (h!80199 (tail!15556 s1!502)))))

(assert (=> b!7842183 d!2352361))

(declare-fun d!2352363 () Bool)

(assert (=> d!2352363 (= (head!16013 lt!2678653) (h!80199 lt!2678653))))

(assert (=> b!7842183 d!2352363))

(declare-fun b!7842255 () Bool)

(declare-fun e!4636718 () Bool)

(assert (=> b!7842255 (= e!4636718 (>= (size!42800 (tail!15556 lt!2678653)) (size!42800 (tail!15556 (t!388610 s2!461)))))))

(declare-fun b!7842253 () Bool)

(declare-fun res!3119142 () Bool)

(declare-fun e!4636719 () Bool)

(assert (=> b!7842253 (=> (not res!3119142) (not e!4636719))))

(assert (=> b!7842253 (= res!3119142 (= (head!16013 (tail!15556 (t!388610 s2!461))) (head!16013 (tail!15556 lt!2678653))))))

(declare-fun d!2352365 () Bool)

(assert (=> d!2352365 e!4636718))

(declare-fun res!3119141 () Bool)

(assert (=> d!2352365 (=> res!3119141 e!4636718)))

(declare-fun lt!2678682 () Bool)

(assert (=> d!2352365 (= res!3119141 (not lt!2678682))))

(declare-fun e!4636717 () Bool)

(assert (=> d!2352365 (= lt!2678682 e!4636717)))

(declare-fun res!3119140 () Bool)

(assert (=> d!2352365 (=> res!3119140 e!4636717)))

(assert (=> d!2352365 (= res!3119140 (is-Nil!73751 (tail!15556 (t!388610 s2!461))))))

(assert (=> d!2352365 (= (isPrefix!6352 (tail!15556 (t!388610 s2!461)) (tail!15556 lt!2678653)) lt!2678682)))

(declare-fun b!7842254 () Bool)

(assert (=> b!7842254 (= e!4636719 (isPrefix!6352 (tail!15556 (tail!15556 (t!388610 s2!461))) (tail!15556 (tail!15556 lt!2678653))))))

(declare-fun b!7842252 () Bool)

(assert (=> b!7842252 (= e!4636717 e!4636719)))

(declare-fun res!3119139 () Bool)

(assert (=> b!7842252 (=> (not res!3119139) (not e!4636719))))

(assert (=> b!7842252 (= res!3119139 (not (is-Nil!73751 (tail!15556 lt!2678653))))))

(assert (= (and d!2352365 (not res!3119140)) b!7842252))

(assert (= (and b!7842252 res!3119139) b!7842253))

(assert (= (and b!7842253 res!3119142) b!7842254))

(assert (= (and d!2352365 (not res!3119141)) b!7842255))

(assert (=> b!7842255 m!8254360))

(assert (=> b!7842255 m!8254424))

(assert (=> b!7842255 m!8254358))

(declare-fun m!8254440 () Bool)

(assert (=> b!7842255 m!8254440))

(assert (=> b!7842253 m!8254358))

(declare-fun m!8254442 () Bool)

(assert (=> b!7842253 m!8254442))

(assert (=> b!7842253 m!8254360))

(assert (=> b!7842253 m!8254430))

(assert (=> b!7842254 m!8254358))

(declare-fun m!8254444 () Bool)

(assert (=> b!7842254 m!8254444))

(assert (=> b!7842254 m!8254360))

(assert (=> b!7842254 m!8254434))

(assert (=> b!7842254 m!8254444))

(assert (=> b!7842254 m!8254434))

(declare-fun m!8254446 () Bool)

(assert (=> b!7842254 m!8254446))

(assert (=> b!7842176 d!2352365))

(declare-fun d!2352367 () Bool)

(assert (=> d!2352367 (= (tail!15556 (t!388610 s2!461)) (t!388610 (t!388610 s2!461)))))

(assert (=> b!7842176 d!2352367))

(assert (=> b!7842176 d!2352353))

(declare-fun d!2352369 () Bool)

(declare-fun lt!2678683 () Int)

(assert (=> d!2352369 (>= lt!2678683 0)))

(declare-fun e!4636720 () Int)

(assert (=> d!2352369 (= lt!2678683 e!4636720)))

(declare-fun c!1441697 () Bool)

(assert (=> d!2352369 (= c!1441697 (is-Nil!73751 l!3495))))

(assert (=> d!2352369 (= (size!42800 l!3495) lt!2678683)))

(declare-fun b!7842256 () Bool)

(assert (=> b!7842256 (= e!4636720 0)))

(declare-fun b!7842257 () Bool)

(assert (=> b!7842257 (= e!4636720 (+ 1 (size!42800 (t!388610 l!3495))))))

(assert (= (and d!2352369 c!1441697) b!7842256))

(assert (= (and d!2352369 (not c!1441697)) b!7842257))

(declare-fun m!8254448 () Bool)

(assert (=> b!7842257 m!8254448))

(assert (=> b!7842173 d!2352369))

(assert (=> b!7842173 d!2352327))

(declare-fun b!7842261 () Bool)

(declare-fun e!4636722 () Bool)

(assert (=> b!7842261 (= e!4636722 (>= (size!42800 (tail!15556 l!3495)) (size!42800 (tail!15556 s1!502))))))

(declare-fun b!7842259 () Bool)

(declare-fun res!3119146 () Bool)

(declare-fun e!4636723 () Bool)

(assert (=> b!7842259 (=> (not res!3119146) (not e!4636723))))

(assert (=> b!7842259 (= res!3119146 (= (head!16013 (tail!15556 s1!502)) (head!16013 (tail!15556 l!3495))))))

(declare-fun d!2352371 () Bool)

(assert (=> d!2352371 e!4636722))

(declare-fun res!3119145 () Bool)

(assert (=> d!2352371 (=> res!3119145 e!4636722)))

(declare-fun lt!2678684 () Bool)

(assert (=> d!2352371 (= res!3119145 (not lt!2678684))))

(declare-fun e!4636721 () Bool)

(assert (=> d!2352371 (= lt!2678684 e!4636721)))

(declare-fun res!3119144 () Bool)

(assert (=> d!2352371 (=> res!3119144 e!4636721)))

(assert (=> d!2352371 (= res!3119144 (is-Nil!73751 (tail!15556 s1!502)))))

(assert (=> d!2352371 (= (isPrefix!6352 (tail!15556 s1!502) (tail!15556 l!3495)) lt!2678684)))

(declare-fun b!7842260 () Bool)

(assert (=> b!7842260 (= e!4636723 (isPrefix!6352 (tail!15556 (tail!15556 s1!502)) (tail!15556 (tail!15556 l!3495))))))

(declare-fun b!7842258 () Bool)

(assert (=> b!7842258 (= e!4636721 e!4636723)))

(declare-fun res!3119143 () Bool)

(assert (=> b!7842258 (=> (not res!3119143) (not e!4636723))))

(assert (=> b!7842258 (= res!3119143 (not (is-Nil!73751 (tail!15556 l!3495))))))

(assert (= (and d!2352371 (not res!3119144)) b!7842258))

(assert (= (and b!7842258 res!3119143) b!7842259))

(assert (= (and b!7842259 res!3119146) b!7842260))

(assert (= (and d!2352371 (not res!3119145)) b!7842261))

(assert (=> b!7842261 m!8254314))

(declare-fun m!8254450 () Bool)

(assert (=> b!7842261 m!8254450))

(assert (=> b!7842261 m!8254310))

(assert (=> b!7842261 m!8254370))

(assert (=> b!7842259 m!8254310))

(assert (=> b!7842259 m!8254372))

(assert (=> b!7842259 m!8254314))

(declare-fun m!8254452 () Bool)

(assert (=> b!7842259 m!8254452))

(assert (=> b!7842260 m!8254310))

(assert (=> b!7842260 m!8254374))

(assert (=> b!7842260 m!8254314))

(declare-fun m!8254454 () Bool)

(assert (=> b!7842260 m!8254454))

(assert (=> b!7842260 m!8254374))

(assert (=> b!7842260 m!8254454))

(declare-fun m!8254456 () Bool)

(assert (=> b!7842260 m!8254456))

(assert (=> b!7842172 d!2352371))

(assert (=> b!7842172 d!2352321))

(assert (=> b!7842172 d!2352323))

(assert (=> b!7842181 d!2352369))

(assert (=> b!7842181 d!2352325))

(declare-fun d!2352373 () Bool)

(assert (=> d!2352373 (= (head!16013 (t!388610 s2!461)) (h!80199 (t!388610 s2!461)))))

(assert (=> b!7842175 d!2352373))

(assert (=> b!7842175 d!2352363))

(declare-fun b!7842265 () Bool)

(declare-fun e!4636725 () Bool)

(assert (=> b!7842265 (= e!4636725 (>= (size!42800 (tail!15556 l!3495)) (size!42800 (tail!15556 s2!461))))))

(declare-fun b!7842263 () Bool)

(declare-fun res!3119150 () Bool)

(declare-fun e!4636726 () Bool)

(assert (=> b!7842263 (=> (not res!3119150) (not e!4636726))))

(assert (=> b!7842263 (= res!3119150 (= (head!16013 (tail!15556 s2!461)) (head!16013 (tail!15556 l!3495))))))

(declare-fun d!2352375 () Bool)

(assert (=> d!2352375 e!4636725))

(declare-fun res!3119149 () Bool)

(assert (=> d!2352375 (=> res!3119149 e!4636725)))

(declare-fun lt!2678685 () Bool)

(assert (=> d!2352375 (= res!3119149 (not lt!2678685))))

(declare-fun e!4636724 () Bool)

(assert (=> d!2352375 (= lt!2678685 e!4636724)))

(declare-fun res!3119148 () Bool)

(assert (=> d!2352375 (=> res!3119148 e!4636724)))

(assert (=> d!2352375 (= res!3119148 (is-Nil!73751 (tail!15556 s2!461)))))

(assert (=> d!2352375 (= (isPrefix!6352 (tail!15556 s2!461) (tail!15556 l!3495)) lt!2678685)))

(declare-fun b!7842264 () Bool)

(assert (=> b!7842264 (= e!4636726 (isPrefix!6352 (tail!15556 (tail!15556 s2!461)) (tail!15556 (tail!15556 l!3495))))))

(declare-fun b!7842262 () Bool)

(assert (=> b!7842262 (= e!4636724 e!4636726)))

(declare-fun res!3119147 () Bool)

(assert (=> b!7842262 (=> (not res!3119147) (not e!4636726))))

(assert (=> b!7842262 (= res!3119147 (not (is-Nil!73751 (tail!15556 l!3495))))))

(assert (= (and d!2352375 (not res!3119148)) b!7842262))

(assert (= (and b!7842262 res!3119147) b!7842263))

(assert (= (and b!7842263 res!3119150) b!7842264))

(assert (= (and d!2352375 (not res!3119149)) b!7842265))

(assert (=> b!7842265 m!8254314))

(assert (=> b!7842265 m!8254450))

(assert (=> b!7842265 m!8254366))

(declare-fun m!8254458 () Bool)

(assert (=> b!7842265 m!8254458))

(assert (=> b!7842263 m!8254366))

(declare-fun m!8254460 () Bool)

(assert (=> b!7842263 m!8254460))

(assert (=> b!7842263 m!8254314))

(assert (=> b!7842263 m!8254452))

(assert (=> b!7842264 m!8254366))

(declare-fun m!8254462 () Bool)

(assert (=> b!7842264 m!8254462))

(assert (=> b!7842264 m!8254314))

(assert (=> b!7842264 m!8254454))

(assert (=> b!7842264 m!8254462))

(assert (=> b!7842264 m!8254454))

(declare-fun m!8254464 () Bool)

(assert (=> b!7842264 m!8254464))

(assert (=> b!7842180 d!2352375))

(declare-fun d!2352377 () Bool)

(assert (=> d!2352377 (= (tail!15556 s2!461) (t!388610 s2!461))))

(assert (=> b!7842180 d!2352377))

(assert (=> b!7842180 d!2352323))

(declare-fun d!2352379 () Bool)

(assert (=> d!2352379 (= (head!16013 s1!502) (h!80199 s1!502))))

(assert (=> b!7842171 d!2352379))

(assert (=> b!7842171 d!2352359))

(declare-fun b!7842266 () Bool)

(declare-fun e!4636727 () Bool)

(declare-fun tp!2321108 () Bool)

(assert (=> b!7842266 (= e!4636727 (and tp_is_empty!52431 tp!2321108))))

(assert (=> b!7842199 (= tp!2321101 e!4636727)))

(assert (= (and b!7842199 (is-Cons!73751 (t!388610 (t!388610 s2!461)))) b!7842266))

(declare-fun b!7842267 () Bool)

(declare-fun e!4636728 () Bool)

(declare-fun tp!2321109 () Bool)

(assert (=> b!7842267 (= e!4636728 (and tp_is_empty!52431 tp!2321109))))

(assert (=> b!7842200 (= tp!2321102 e!4636728)))

(assert (= (and b!7842200 (is-Cons!73751 (t!388610 (t!388610 s1!502)))) b!7842267))

(declare-fun b!7842268 () Bool)

(declare-fun e!4636729 () Bool)

(declare-fun tp!2321110 () Bool)

(assert (=> b!7842268 (= e!4636729 (and tp_is_empty!52431 tp!2321110))))

(assert (=> b!7842198 (= tp!2321100 e!4636729)))

(assert (= (and b!7842198 (is-Cons!73751 (t!388610 (t!388610 l!3495)))) b!7842268))

(push 1)

(assert (not b!7842264))

(assert (not b!7842243))

(assert (not b!7842267))

(assert (not b!7842249))

(assert (not b!7842251))

(assert (not b!7842268))

(assert (not b!7842260))

(assert (not b!7842241))

(assert (not b!7842253))

(assert (not b!7842248))

(assert (not b!7842265))

(assert (not b!7842257))

(assert (not b!7842247))

(assert (not b!7842254))

(assert (not b!7842261))

(assert tp_is_empty!52431)

(assert (not b!7842266))

(assert (not b!7842263))

(assert (not b!7842259))

(assert (not b!7842255))

(assert (not b!7842245))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

