; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!742680 () Bool)

(assert start!742680)

(declare-fun b!7841862 () Bool)

(declare-fun e!4636464 () Bool)

(declare-fun tp_is_empty!52423 () Bool)

(declare-fun tp!2321026 () Bool)

(assert (=> b!7841862 (= e!4636464 (and tp_is_empty!52423 tp!2321026))))

(declare-fun b!7841863 () Bool)

(declare-fun e!4636462 () Bool)

(declare-datatypes ((B!3991 0))(
  ( (B!3992 (val!31637 Int)) )
))
(declare-datatypes ((List!73871 0))(
  ( (Nil!73747) (Cons!73747 (h!80195 B!3991) (t!388606 List!73871)) )
))
(declare-fun s2!461 () List!73871)

(declare-fun ListPrimitiveSize!455 (List!73871) Int)

(assert (=> b!7841863 (= e!4636462 (< (ListPrimitiveSize!455 s2!461) 0))))

(declare-fun b!7841865 () Bool)

(declare-fun e!4636463 () Bool)

(declare-fun tp!2321025 () Bool)

(assert (=> b!7841865 (= e!4636463 (and tp_is_empty!52423 tp!2321025))))

(declare-fun res!3118933 () Bool)

(assert (=> start!742680 (=> (not res!3118933) (not e!4636462))))

(declare-fun s1!502 () List!73871)

(declare-fun l!3495 () List!73871)

(declare-fun isPrefix!6348 (List!73871 List!73871) Bool)

(assert (=> start!742680 (= res!3118933 (isPrefix!6348 s1!502 l!3495))))

(assert (=> start!742680 e!4636462))

(assert (=> start!742680 e!4636463))

(assert (=> start!742680 e!4636464))

(declare-fun e!4636465 () Bool)

(assert (=> start!742680 e!4636465))

(declare-fun b!7841864 () Bool)

(declare-fun res!3118934 () Bool)

(assert (=> b!7841864 (=> (not res!3118934) (not e!4636462))))

(declare-fun size!42796 (List!73871) Int)

(assert (=> b!7841864 (= res!3118934 (<= (size!42796 s2!461) (size!42796 s1!502)))))

(declare-fun b!7841866 () Bool)

(declare-fun res!3118935 () Bool)

(assert (=> b!7841866 (=> (not res!3118935) (not e!4636462))))

(assert (=> b!7841866 (= res!3118935 (isPrefix!6348 s2!461 l!3495))))

(declare-fun b!7841867 () Bool)

(declare-fun tp!2321024 () Bool)

(assert (=> b!7841867 (= e!4636465 (and tp_is_empty!52423 tp!2321024))))

(assert (= (and start!742680 res!3118933) b!7841866))

(assert (= (and b!7841866 res!3118935) b!7841864))

(assert (= (and b!7841864 res!3118934) b!7841863))

(assert (= (and start!742680 (is-Cons!73747 s1!502)) b!7841865))

(assert (= (and start!742680 (is-Cons!73747 l!3495)) b!7841862))

(assert (= (and start!742680 (is-Cons!73747 s2!461)) b!7841867))

(declare-fun m!8254090 () Bool)

(assert (=> b!7841863 m!8254090))

(declare-fun m!8254092 () Bool)

(assert (=> start!742680 m!8254092))

(declare-fun m!8254094 () Bool)

(assert (=> b!7841864 m!8254094))

(declare-fun m!8254096 () Bool)

(assert (=> b!7841864 m!8254096))

(declare-fun m!8254098 () Bool)

(assert (=> b!7841866 m!8254098))

(push 1)

(assert (not b!7841862))

(assert (not b!7841865))

(assert (not b!7841864))

(assert tp_is_empty!52423)

(assert (not b!7841863))

(assert (not b!7841867))

(assert (not start!742680))

(assert (not b!7841866))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2352201 () Bool)

(declare-fun lt!2678599 () Int)

(assert (=> d!2352201 (>= lt!2678599 0)))

(declare-fun e!4636480 () Int)

(assert (=> d!2352201 (= lt!2678599 e!4636480)))

(declare-fun c!1441655 () Bool)

(assert (=> d!2352201 (= c!1441655 (is-Nil!73747 s2!461))))

(assert (=> d!2352201 (= (size!42796 s2!461) lt!2678599)))

(declare-fun b!7841890 () Bool)

(assert (=> b!7841890 (= e!4636480 0)))

(declare-fun b!7841891 () Bool)

(assert (=> b!7841891 (= e!4636480 (+ 1 (size!42796 (t!388606 s2!461))))))

(assert (= (and d!2352201 c!1441655) b!7841890))

(assert (= (and d!2352201 (not c!1441655)) b!7841891))

(declare-fun m!8254110 () Bool)

(assert (=> b!7841891 m!8254110))

(assert (=> b!7841864 d!2352201))

(declare-fun d!2352203 () Bool)

(declare-fun lt!2678600 () Int)

(assert (=> d!2352203 (>= lt!2678600 0)))

(declare-fun e!4636481 () Int)

(assert (=> d!2352203 (= lt!2678600 e!4636481)))

(declare-fun c!1441656 () Bool)

(assert (=> d!2352203 (= c!1441656 (is-Nil!73747 s1!502))))

(assert (=> d!2352203 (= (size!42796 s1!502) lt!2678600)))

(declare-fun b!7841892 () Bool)

(assert (=> b!7841892 (= e!4636481 0)))

(declare-fun b!7841893 () Bool)

(assert (=> b!7841893 (= e!4636481 (+ 1 (size!42796 (t!388606 s1!502))))))

(assert (= (and d!2352203 c!1441656) b!7841892))

(assert (= (and d!2352203 (not c!1441656)) b!7841893))

(declare-fun m!8254112 () Bool)

(assert (=> b!7841893 m!8254112))

(assert (=> b!7841864 d!2352203))

(declare-fun d!2352205 () Bool)

(declare-fun lt!2678603 () Int)

(assert (=> d!2352205 (>= lt!2678603 0)))

(declare-fun e!4636484 () Int)

(assert (=> d!2352205 (= lt!2678603 e!4636484)))

(declare-fun c!1441659 () Bool)

(assert (=> d!2352205 (= c!1441659 (is-Nil!73747 s2!461))))

(assert (=> d!2352205 (= (ListPrimitiveSize!455 s2!461) lt!2678603)))

(declare-fun b!7841898 () Bool)

(assert (=> b!7841898 (= e!4636484 0)))

(declare-fun b!7841899 () Bool)

(assert (=> b!7841899 (= e!4636484 (+ 1 (ListPrimitiveSize!455 (t!388606 s2!461))))))

(assert (= (and d!2352205 c!1441659) b!7841898))

(assert (= (and d!2352205 (not c!1441659)) b!7841899))

(declare-fun m!8254114 () Bool)

(assert (=> b!7841899 m!8254114))

(assert (=> b!7841863 d!2352205))

(declare-fun d!2352207 () Bool)

(declare-fun e!4636493 () Bool)

(assert (=> d!2352207 e!4636493))

(declare-fun res!3118954 () Bool)

(assert (=> d!2352207 (=> res!3118954 e!4636493)))

(declare-fun lt!2678606 () Bool)

(assert (=> d!2352207 (= res!3118954 (not lt!2678606))))

(declare-fun e!4636491 () Bool)

(assert (=> d!2352207 (= lt!2678606 e!4636491)))

(declare-fun res!3118955 () Bool)

(assert (=> d!2352207 (=> res!3118955 e!4636491)))

(assert (=> d!2352207 (= res!3118955 (is-Nil!73747 s2!461))))

(assert (=> d!2352207 (= (isPrefix!6348 s2!461 l!3495) lt!2678606)))

(declare-fun b!7841911 () Bool)

(assert (=> b!7841911 (= e!4636493 (>= (size!42796 l!3495) (size!42796 s2!461)))))

(declare-fun b!7841909 () Bool)

(declare-fun res!3118953 () Bool)

(declare-fun e!4636492 () Bool)

(assert (=> b!7841909 (=> (not res!3118953) (not e!4636492))))

(declare-fun head!16009 (List!73871) B!3991)

(assert (=> b!7841909 (= res!3118953 (= (head!16009 s2!461) (head!16009 l!3495)))))

(declare-fun b!7841908 () Bool)

(assert (=> b!7841908 (= e!4636491 e!4636492)))

(declare-fun res!3118956 () Bool)

(assert (=> b!7841908 (=> (not res!3118956) (not e!4636492))))

(assert (=> b!7841908 (= res!3118956 (not (is-Nil!73747 l!3495)))))

(declare-fun b!7841910 () Bool)

(declare-fun tail!15552 (List!73871) List!73871)

(assert (=> b!7841910 (= e!4636492 (isPrefix!6348 (tail!15552 s2!461) (tail!15552 l!3495)))))

(assert (= (and d!2352207 (not res!3118955)) b!7841908))

(assert (= (and b!7841908 res!3118956) b!7841909))

(assert (= (and b!7841909 res!3118953) b!7841910))

(assert (= (and d!2352207 (not res!3118954)) b!7841911))

(declare-fun m!8254116 () Bool)

(assert (=> b!7841911 m!8254116))

(assert (=> b!7841911 m!8254094))

(declare-fun m!8254118 () Bool)

(assert (=> b!7841909 m!8254118))

(declare-fun m!8254120 () Bool)

(assert (=> b!7841909 m!8254120))

(declare-fun m!8254122 () Bool)

(assert (=> b!7841910 m!8254122))

(declare-fun m!8254124 () Bool)

(assert (=> b!7841910 m!8254124))

(assert (=> b!7841910 m!8254122))

(assert (=> b!7841910 m!8254124))

(declare-fun m!8254126 () Bool)

(assert (=> b!7841910 m!8254126))

(assert (=> b!7841866 d!2352207))

(declare-fun d!2352211 () Bool)

(declare-fun e!4636496 () Bool)

(assert (=> d!2352211 e!4636496))

(declare-fun res!3118958 () Bool)

(assert (=> d!2352211 (=> res!3118958 e!4636496)))

(declare-fun lt!2678607 () Bool)

(assert (=> d!2352211 (= res!3118958 (not lt!2678607))))

(declare-fun e!4636494 () Bool)

(assert (=> d!2352211 (= lt!2678607 e!4636494)))

(declare-fun res!3118959 () Bool)

(assert (=> d!2352211 (=> res!3118959 e!4636494)))

(assert (=> d!2352211 (= res!3118959 (is-Nil!73747 s1!502))))

(assert (=> d!2352211 (= (isPrefix!6348 s1!502 l!3495) lt!2678607)))

(declare-fun b!7841915 () Bool)

(assert (=> b!7841915 (= e!4636496 (>= (size!42796 l!3495) (size!42796 s1!502)))))

(declare-fun b!7841913 () Bool)

(declare-fun res!3118957 () Bool)

(declare-fun e!4636495 () Bool)

(assert (=> b!7841913 (=> (not res!3118957) (not e!4636495))))

(assert (=> b!7841913 (= res!3118957 (= (head!16009 s1!502) (head!16009 l!3495)))))

(declare-fun b!7841912 () Bool)

(assert (=> b!7841912 (= e!4636494 e!4636495)))

(declare-fun res!3118960 () Bool)

(assert (=> b!7841912 (=> (not res!3118960) (not e!4636495))))

(assert (=> b!7841912 (= res!3118960 (not (is-Nil!73747 l!3495)))))

(declare-fun b!7841914 () Bool)

(assert (=> b!7841914 (= e!4636495 (isPrefix!6348 (tail!15552 s1!502) (tail!15552 l!3495)))))

(assert (= (and d!2352211 (not res!3118959)) b!7841912))

(assert (= (and b!7841912 res!3118960) b!7841913))

(assert (= (and b!7841913 res!3118957) b!7841914))

(assert (= (and d!2352211 (not res!3118958)) b!7841915))

(assert (=> b!7841915 m!8254116))

(assert (=> b!7841915 m!8254096))

(declare-fun m!8254128 () Bool)

(assert (=> b!7841913 m!8254128))

(assert (=> b!7841913 m!8254120))

(declare-fun m!8254130 () Bool)

(assert (=> b!7841914 m!8254130))

(assert (=> b!7841914 m!8254124))

(assert (=> b!7841914 m!8254130))

(assert (=> b!7841914 m!8254124))

(declare-fun m!8254132 () Bool)

(assert (=> b!7841914 m!8254132))

(assert (=> start!742680 d!2352211))

(declare-fun b!7841920 () Bool)

(declare-fun e!4636499 () Bool)

(declare-fun tp!2321038 () Bool)

(assert (=> b!7841920 (= e!4636499 (and tp_is_empty!52423 tp!2321038))))

(assert (=> b!7841862 (= tp!2321026 e!4636499)))

(assert (= (and b!7841862 (is-Cons!73747 (t!388606 l!3495))) b!7841920))

(declare-fun b!7841921 () Bool)

(declare-fun e!4636500 () Bool)

(declare-fun tp!2321039 () Bool)

(assert (=> b!7841921 (= e!4636500 (and tp_is_empty!52423 tp!2321039))))

(assert (=> b!7841867 (= tp!2321024 e!4636500)))

(assert (= (and b!7841867 (is-Cons!73747 (t!388606 s2!461))) b!7841921))

(declare-fun b!7841922 () Bool)

(declare-fun e!4636501 () Bool)

(declare-fun tp!2321040 () Bool)

(assert (=> b!7841922 (= e!4636501 (and tp_is_empty!52423 tp!2321040))))

(assert (=> b!7841865 (= tp!2321025 e!4636501)))

(assert (= (and b!7841865 (is-Cons!73747 (t!388606 s1!502))) b!7841922))

(push 1)

(assert (not b!7841921))

(assert (not b!7841909))

(assert tp_is_empty!52423)

(assert (not b!7841920))

(assert (not b!7841914))

(assert (not b!7841915))

(assert (not b!7841922))

(assert (not b!7841910))

(assert (not b!7841911))

(assert (not b!7841913))

(assert (not b!7841899))

(assert (not b!7841893))

(assert (not b!7841891))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

