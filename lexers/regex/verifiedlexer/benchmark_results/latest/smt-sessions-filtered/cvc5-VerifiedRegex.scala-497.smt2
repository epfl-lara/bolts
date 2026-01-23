; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!13960 () Bool)

(assert start!13960)

(declare-fun b!134007 () Bool)

(declare-fun e!77616 () Bool)

(declare-fun tp_is_empty!1451 () Bool)

(declare-fun tp!70633 () Bool)

(assert (=> b!134007 (= e!77616 (and tp_is_empty!1451 tp!70633))))

(declare-fun b!134008 () Bool)

(declare-fun res!62623 () Bool)

(declare-fun e!77618 () Bool)

(assert (=> b!134008 (=> (not res!62623) (not e!77618))))

(declare-datatypes ((B!807 0))(
  ( (B!808 (val!889 Int)) )
))
(declare-datatypes ((List!2207 0))(
  ( (Nil!2201) (Cons!2201 (h!7598 B!807) (t!22793 List!2207)) )
))
(declare-fun l!3288 () List!2207)

(declare-fun tot!41 () List!2207)

(declare-fun lt!40425 () List!2207)

(declare-fun isPrefix!194 (List!2207 List!2207) Bool)

(declare-fun ++!475 (List!2207 List!2207) List!2207)

(declare-fun tail!285 (List!2207) List!2207)

(assert (=> b!134008 (= res!62623 (isPrefix!194 (++!475 (t!22793 l!3288) lt!40425) (tail!285 tot!41)))))

(declare-fun res!62622 () Bool)

(assert (=> start!13960 (=> (not res!62622) (not e!77618))))

(assert (=> start!13960 (= res!62622 (isPrefix!194 (++!475 l!3288 lt!40425) tot!41))))

(declare-fun elmt!148 () B!807)

(assert (=> start!13960 (= lt!40425 (Cons!2201 elmt!148 Nil!2201))))

(assert (=> start!13960 e!77618))

(assert (=> start!13960 tp_is_empty!1451))

(assert (=> start!13960 e!77616))

(declare-fun e!77617 () Bool)

(assert (=> start!13960 e!77617))

(declare-fun b!134009 () Bool)

(declare-fun tp!70634 () Bool)

(assert (=> b!134009 (= e!77617 (and tp_is_empty!1451 tp!70634))))

(declare-fun b!134010 () Bool)

(declare-fun res!62621 () Bool)

(assert (=> b!134010 (=> (not res!62621) (not e!77618))))

(assert (=> b!134010 (= res!62621 (is-Cons!2201 l!3288))))

(declare-fun b!134011 () Bool)

(declare-fun ListPrimitiveSize!29 (List!2207) Int)

(assert (=> b!134011 (= e!77618 (>= (ListPrimitiveSize!29 (t!22793 l!3288)) (ListPrimitiveSize!29 l!3288)))))

(assert (= (and start!13960 res!62622) b!134010))

(assert (= (and b!134010 res!62621) b!134008))

(assert (= (and b!134008 res!62623) b!134011))

(assert (= (and start!13960 (is-Cons!2201 l!3288)) b!134007))

(assert (= (and start!13960 (is-Cons!2201 tot!41)) b!134009))

(declare-fun m!119017 () Bool)

(assert (=> b!134008 m!119017))

(declare-fun m!119019 () Bool)

(assert (=> b!134008 m!119019))

(assert (=> b!134008 m!119017))

(assert (=> b!134008 m!119019))

(declare-fun m!119021 () Bool)

(assert (=> b!134008 m!119021))

(declare-fun m!119023 () Bool)

(assert (=> start!13960 m!119023))

(assert (=> start!13960 m!119023))

(declare-fun m!119025 () Bool)

(assert (=> start!13960 m!119025))

(declare-fun m!119027 () Bool)

(assert (=> b!134011 m!119027))

(declare-fun m!119029 () Bool)

(assert (=> b!134011 m!119029))

(push 1)

(assert (not start!13960))

(assert tp_is_empty!1451)

(assert (not b!134011))

(assert (not b!134008))

(assert (not b!134009))

(assert (not b!134007))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!32118 () Bool)

(declare-fun lt!40431 () Int)

(assert (=> d!32118 (>= lt!40431 0)))

(declare-fun e!77630 () Int)

(assert (=> d!32118 (= lt!40431 e!77630)))

(declare-fun c!28707 () Bool)

(assert (=> d!32118 (= c!28707 (is-Nil!2201 (t!22793 l!3288)))))

(assert (=> d!32118 (= (ListPrimitiveSize!29 (t!22793 l!3288)) lt!40431)))

(declare-fun b!134031 () Bool)

(assert (=> b!134031 (= e!77630 0)))

(declare-fun b!134032 () Bool)

(assert (=> b!134032 (= e!77630 (+ 1 (ListPrimitiveSize!29 (t!22793 (t!22793 l!3288)))))))

(assert (= (and d!32118 c!28707) b!134031))

(assert (= (and d!32118 (not c!28707)) b!134032))

(declare-fun m!119045 () Bool)

(assert (=> b!134032 m!119045))

(assert (=> b!134011 d!32118))

(declare-fun d!32120 () Bool)

(declare-fun lt!40432 () Int)

(assert (=> d!32120 (>= lt!40432 0)))

(declare-fun e!77631 () Int)

(assert (=> d!32120 (= lt!40432 e!77631)))

(declare-fun c!28708 () Bool)

(assert (=> d!32120 (= c!28708 (is-Nil!2201 l!3288))))

(assert (=> d!32120 (= (ListPrimitiveSize!29 l!3288) lt!40432)))

(declare-fun b!134033 () Bool)

(assert (=> b!134033 (= e!77631 0)))

(declare-fun b!134034 () Bool)

(assert (=> b!134034 (= e!77631 (+ 1 (ListPrimitiveSize!29 (t!22793 l!3288))))))

(assert (= (and d!32120 c!28708) b!134033))

(assert (= (and d!32120 (not c!28708)) b!134034))

(assert (=> b!134034 m!119027))

(assert (=> b!134011 d!32120))

(declare-fun d!32122 () Bool)

(declare-fun e!77639 () Bool)

(assert (=> d!32122 e!77639))

(declare-fun res!62644 () Bool)

(assert (=> d!32122 (=> res!62644 e!77639)))

(declare-fun lt!40435 () Bool)

(assert (=> d!32122 (= res!62644 (not lt!40435))))

(declare-fun e!77638 () Bool)

(assert (=> d!32122 (= lt!40435 e!77638)))

(declare-fun res!62641 () Bool)

(assert (=> d!32122 (=> res!62641 e!77638)))

(assert (=> d!32122 (= res!62641 (is-Nil!2201 (++!475 l!3288 lt!40425)))))

(assert (=> d!32122 (= (isPrefix!194 (++!475 l!3288 lt!40425) tot!41) lt!40435)))

(declare-fun b!134043 () Bool)

(declare-fun e!77640 () Bool)

(assert (=> b!134043 (= e!77638 e!77640)))

(declare-fun res!62643 () Bool)

(assert (=> b!134043 (=> (not res!62643) (not e!77640))))

(assert (=> b!134043 (= res!62643 (not (is-Nil!2201 tot!41)))))

(declare-fun b!134044 () Bool)

(declare-fun res!62642 () Bool)

(assert (=> b!134044 (=> (not res!62642) (not e!77640))))

(declare-fun head!537 (List!2207) B!807)

(assert (=> b!134044 (= res!62642 (= (head!537 (++!475 l!3288 lt!40425)) (head!537 tot!41)))))

(declare-fun b!134045 () Bool)

(assert (=> b!134045 (= e!77640 (isPrefix!194 (tail!285 (++!475 l!3288 lt!40425)) (tail!285 tot!41)))))

(declare-fun b!134046 () Bool)

(declare-fun size!1998 (List!2207) Int)

(assert (=> b!134046 (= e!77639 (>= (size!1998 tot!41) (size!1998 (++!475 l!3288 lt!40425))))))

(assert (= (and d!32122 (not res!62641)) b!134043))

(assert (= (and b!134043 res!62643) b!134044))

(assert (= (and b!134044 res!62642) b!134045))

(assert (= (and d!32122 (not res!62644)) b!134046))

(assert (=> b!134044 m!119023))

(declare-fun m!119047 () Bool)

(assert (=> b!134044 m!119047))

(declare-fun m!119049 () Bool)

(assert (=> b!134044 m!119049))

(assert (=> b!134045 m!119023))

(declare-fun m!119051 () Bool)

(assert (=> b!134045 m!119051))

(assert (=> b!134045 m!119019))

(assert (=> b!134045 m!119051))

(assert (=> b!134045 m!119019))

(declare-fun m!119053 () Bool)

(assert (=> b!134045 m!119053))

(declare-fun m!119055 () Bool)

(assert (=> b!134046 m!119055))

(assert (=> b!134046 m!119023))

(declare-fun m!119057 () Bool)

(assert (=> b!134046 m!119057))

(assert (=> start!13960 d!32122))

(declare-fun b!134059 () Bool)

(declare-fun e!77647 () List!2207)

(assert (=> b!134059 (= e!77647 lt!40425)))

(declare-fun d!32126 () Bool)

(declare-fun e!77648 () Bool)

(assert (=> d!32126 e!77648))

(declare-fun res!62649 () Bool)

(assert (=> d!32126 (=> (not res!62649) (not e!77648))))

(declare-fun lt!40440 () List!2207)

(declare-fun content!310 (List!2207) (Set B!807))

(assert (=> d!32126 (= res!62649 (= (content!310 lt!40440) (set.union (content!310 l!3288) (content!310 lt!40425))))))

(assert (=> d!32126 (= lt!40440 e!77647)))

(declare-fun c!28713 () Bool)

(assert (=> d!32126 (= c!28713 (is-Nil!2201 l!3288))))

(assert (=> d!32126 (= (++!475 l!3288 lt!40425) lt!40440)))

(declare-fun b!134062 () Bool)

(assert (=> b!134062 (= e!77648 (or (not (= lt!40425 Nil!2201)) (= lt!40440 l!3288)))))

(declare-fun b!134060 () Bool)

(assert (=> b!134060 (= e!77647 (Cons!2201 (h!7598 l!3288) (++!475 (t!22793 l!3288) lt!40425)))))

(declare-fun b!134061 () Bool)

(declare-fun res!62650 () Bool)

(assert (=> b!134061 (=> (not res!62650) (not e!77648))))

(assert (=> b!134061 (= res!62650 (= (size!1998 lt!40440) (+ (size!1998 l!3288) (size!1998 lt!40425))))))

(assert (= (and d!32126 c!28713) b!134059))

(assert (= (and d!32126 (not c!28713)) b!134060))

(assert (= (and d!32126 res!62649) b!134061))

(assert (= (and b!134061 res!62650) b!134062))

(declare-fun m!119059 () Bool)

(assert (=> d!32126 m!119059))

(declare-fun m!119061 () Bool)

(assert (=> d!32126 m!119061))

(declare-fun m!119063 () Bool)

(assert (=> d!32126 m!119063))

(assert (=> b!134060 m!119017))

(declare-fun m!119065 () Bool)

(assert (=> b!134061 m!119065))

(declare-fun m!119067 () Bool)

(assert (=> b!134061 m!119067))

(declare-fun m!119069 () Bool)

(assert (=> b!134061 m!119069))

(assert (=> start!13960 d!32126))

(declare-fun d!32128 () Bool)

(declare-fun e!77651 () Bool)

(assert (=> d!32128 e!77651))

(declare-fun res!62654 () Bool)

(assert (=> d!32128 (=> res!62654 e!77651)))

(declare-fun lt!40442 () Bool)

(assert (=> d!32128 (= res!62654 (not lt!40442))))

(declare-fun e!77650 () Bool)

(assert (=> d!32128 (= lt!40442 e!77650)))

(declare-fun res!62651 () Bool)

(assert (=> d!32128 (=> res!62651 e!77650)))

(assert (=> d!32128 (= res!62651 (is-Nil!2201 (++!475 (t!22793 l!3288) lt!40425)))))

(assert (=> d!32128 (= (isPrefix!194 (++!475 (t!22793 l!3288) lt!40425) (tail!285 tot!41)) lt!40442)))

(declare-fun b!134065 () Bool)

(declare-fun e!77652 () Bool)

(assert (=> b!134065 (= e!77650 e!77652)))

(declare-fun res!62653 () Bool)

(assert (=> b!134065 (=> (not res!62653) (not e!77652))))

(assert (=> b!134065 (= res!62653 (not (is-Nil!2201 (tail!285 tot!41))))))

(declare-fun b!134066 () Bool)

(declare-fun res!62652 () Bool)

(assert (=> b!134066 (=> (not res!62652) (not e!77652))))

(assert (=> b!134066 (= res!62652 (= (head!537 (++!475 (t!22793 l!3288) lt!40425)) (head!537 (tail!285 tot!41))))))

(declare-fun b!134067 () Bool)

(assert (=> b!134067 (= e!77652 (isPrefix!194 (tail!285 (++!475 (t!22793 l!3288) lt!40425)) (tail!285 (tail!285 tot!41))))))

(declare-fun b!134068 () Bool)

(assert (=> b!134068 (= e!77651 (>= (size!1998 (tail!285 tot!41)) (size!1998 (++!475 (t!22793 l!3288) lt!40425))))))

(assert (= (and d!32128 (not res!62651)) b!134065))

(assert (= (and b!134065 res!62653) b!134066))

(assert (= (and b!134066 res!62652) b!134067))

(assert (= (and d!32128 (not res!62654)) b!134068))

(assert (=> b!134066 m!119017))

(declare-fun m!119073 () Bool)

(assert (=> b!134066 m!119073))

(assert (=> b!134066 m!119019))

(declare-fun m!119075 () Bool)

(assert (=> b!134066 m!119075))

(assert (=> b!134067 m!119017))

(declare-fun m!119077 () Bool)

(assert (=> b!134067 m!119077))

(assert (=> b!134067 m!119019))

(declare-fun m!119079 () Bool)

(assert (=> b!134067 m!119079))

(assert (=> b!134067 m!119077))

(assert (=> b!134067 m!119079))

(declare-fun m!119081 () Bool)

(assert (=> b!134067 m!119081))

(assert (=> b!134068 m!119019))

(declare-fun m!119083 () Bool)

(assert (=> b!134068 m!119083))

(assert (=> b!134068 m!119017))

(declare-fun m!119085 () Bool)

(assert (=> b!134068 m!119085))

(assert (=> b!134008 d!32128))

(declare-fun b!134071 () Bool)

(declare-fun e!77654 () List!2207)

(assert (=> b!134071 (= e!77654 lt!40425)))

(declare-fun d!32132 () Bool)

(declare-fun e!77655 () Bool)

(assert (=> d!32132 e!77655))

(declare-fun res!62655 () Bool)

(assert (=> d!32132 (=> (not res!62655) (not e!77655))))

(declare-fun lt!40444 () List!2207)

(assert (=> d!32132 (= res!62655 (= (content!310 lt!40444) (set.union (content!310 (t!22793 l!3288)) (content!310 lt!40425))))))

(assert (=> d!32132 (= lt!40444 e!77654)))

(declare-fun c!28716 () Bool)

(assert (=> d!32132 (= c!28716 (is-Nil!2201 (t!22793 l!3288)))))

(assert (=> d!32132 (= (++!475 (t!22793 l!3288) lt!40425) lt!40444)))

(declare-fun b!134074 () Bool)

(assert (=> b!134074 (= e!77655 (or (not (= lt!40425 Nil!2201)) (= lt!40444 (t!22793 l!3288))))))

(declare-fun b!134072 () Bool)

(assert (=> b!134072 (= e!77654 (Cons!2201 (h!7598 (t!22793 l!3288)) (++!475 (t!22793 (t!22793 l!3288)) lt!40425)))))

(declare-fun b!134073 () Bool)

(declare-fun res!62656 () Bool)

(assert (=> b!134073 (=> (not res!62656) (not e!77655))))

(assert (=> b!134073 (= res!62656 (= (size!1998 lt!40444) (+ (size!1998 (t!22793 l!3288)) (size!1998 lt!40425))))))

(assert (= (and d!32132 c!28716) b!134071))

(assert (= (and d!32132 (not c!28716)) b!134072))

(assert (= (and d!32132 res!62655) b!134073))

(assert (= (and b!134073 res!62656) b!134074))

(declare-fun m!119087 () Bool)

(assert (=> d!32132 m!119087))

(declare-fun m!119089 () Bool)

(assert (=> d!32132 m!119089))

(assert (=> d!32132 m!119063))

(declare-fun m!119091 () Bool)

(assert (=> b!134072 m!119091))

(declare-fun m!119093 () Bool)

(assert (=> b!134073 m!119093))

(declare-fun m!119095 () Bool)

(assert (=> b!134073 m!119095))

(assert (=> b!134073 m!119069))

(assert (=> b!134008 d!32132))

(declare-fun d!32136 () Bool)

(assert (=> d!32136 (= (tail!285 tot!41) (t!22793 tot!41))))

(assert (=> b!134008 d!32136))

(declare-fun b!134079 () Bool)

(declare-fun e!77658 () Bool)

(declare-fun tp!70643 () Bool)

(assert (=> b!134079 (= e!77658 (and tp_is_empty!1451 tp!70643))))

(assert (=> b!134007 (= tp!70633 e!77658)))

(assert (= (and b!134007 (is-Cons!2201 (t!22793 l!3288))) b!134079))

(declare-fun b!134080 () Bool)

(declare-fun e!77659 () Bool)

(declare-fun tp!70644 () Bool)

(assert (=> b!134080 (= e!77659 (and tp_is_empty!1451 tp!70644))))

(assert (=> b!134009 (= tp!70634 e!77659)))

(assert (= (and b!134009 (is-Cons!2201 (t!22793 tot!41))) b!134080))

(push 1)

(assert (not b!134068))

(assert (not d!32126))

(assert (not b!134066))

(assert (not b!134072))

(assert (not b!134032))

(assert (not b!134044))

(assert (not b!134067))

(assert (not d!32132))

(assert (not b!134073))

(assert (not b!134034))

(assert (not b!134061))

(assert (not b!134080))

(assert (not b!134060))

(assert tp_is_empty!1451)

(assert (not b!134079))

(assert (not b!134045))

(assert (not b!134046))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

