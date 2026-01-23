; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!14092 () Bool)

(assert start!14092)

(declare-fun res!63152 () Bool)

(declare-fun e!78290 () Bool)

(assert (=> start!14092 (=> (not res!63152) (not e!78290))))

(declare-datatypes ((B!847 0))(
  ( (B!848 (val!909 Int)) )
))
(declare-datatypes ((List!2227 0))(
  ( (Nil!2221) (Cons!2221 (h!7618 B!847) (t!22813 List!2227)) )
))
(declare-fun sub!16 () List!2227)

(declare-fun l1!1230 () List!2227)

(declare-fun l2!1199 () List!2227)

(declare-fun subseq!68 (List!2227 List!2227) Bool)

(declare-fun ++!495 (List!2227 List!2227) List!2227)

(assert (=> start!14092 (= res!63152 (subseq!68 sub!16 (++!495 l1!1230 l2!1199)))))

(assert (=> start!14092 e!78290))

(declare-fun e!78291 () Bool)

(assert (=> start!14092 e!78291))

(declare-fun e!78292 () Bool)

(assert (=> start!14092 e!78292))

(declare-fun e!78289 () Bool)

(assert (=> start!14092 e!78289))

(declare-fun e!78288 () Bool)

(assert (=> start!14092 e!78288))

(declare-fun b!134967 () Bool)

(declare-fun l3!231 () List!2227)

(assert (=> b!134967 (= e!78290 (not (subseq!68 sub!16 (++!495 (++!495 l1!1230 l3!231) l2!1199))))))

(declare-fun b!134968 () Bool)

(declare-fun tp_is_empty!1491 () Bool)

(declare-fun tp!70854 () Bool)

(assert (=> b!134968 (= e!78288 (and tp_is_empty!1491 tp!70854))))

(declare-fun b!134969 () Bool)

(declare-fun res!63151 () Bool)

(assert (=> b!134969 (=> (not res!63151) (not e!78290))))

(assert (=> b!134969 (= res!63151 (is-Nil!2221 sub!16))))

(declare-fun b!134970 () Bool)

(declare-fun tp!70852 () Bool)

(assert (=> b!134970 (= e!78289 (and tp_is_empty!1491 tp!70852))))

(declare-fun b!134971 () Bool)

(declare-fun tp!70851 () Bool)

(assert (=> b!134971 (= e!78291 (and tp_is_empty!1491 tp!70851))))

(declare-fun b!134972 () Bool)

(declare-fun tp!70853 () Bool)

(assert (=> b!134972 (= e!78292 (and tp_is_empty!1491 tp!70853))))

(assert (= (and start!14092 res!63152) b!134969))

(assert (= (and b!134969 res!63151) b!134967))

(assert (= (and start!14092 (is-Cons!2221 sub!16)) b!134971))

(assert (= (and start!14092 (is-Cons!2221 l1!1230)) b!134972))

(assert (= (and start!14092 (is-Cons!2221 l2!1199)) b!134970))

(assert (= (and start!14092 (is-Cons!2221 l3!231)) b!134968))

(declare-fun m!119825 () Bool)

(assert (=> start!14092 m!119825))

(assert (=> start!14092 m!119825))

(declare-fun m!119827 () Bool)

(assert (=> start!14092 m!119827))

(declare-fun m!119829 () Bool)

(assert (=> b!134967 m!119829))

(assert (=> b!134967 m!119829))

(declare-fun m!119831 () Bool)

(assert (=> b!134967 m!119831))

(assert (=> b!134967 m!119831))

(declare-fun m!119833 () Bool)

(assert (=> b!134967 m!119833))

(push 1)

(assert (not b!134970))

(assert (not b!134967))

(assert (not start!14092))

(assert (not b!134971))

(assert tp_is_empty!1491)

(assert (not b!134968))

(assert (not b!134972))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!135002 () Bool)

(declare-fun e!78319 () Bool)

(assert (=> b!135002 (= e!78319 (subseq!68 sub!16 (t!22813 (++!495 (++!495 l1!1230 l3!231) l2!1199))))))

(declare-fun d!32376 () Bool)

(declare-fun res!63167 () Bool)

(declare-fun e!78316 () Bool)

(assert (=> d!32376 (=> res!63167 e!78316)))

(assert (=> d!32376 (= res!63167 (is-Nil!2221 sub!16))))

(assert (=> d!32376 (= (subseq!68 sub!16 (++!495 (++!495 l1!1230 l3!231) l2!1199)) e!78316)))

(declare-fun b!134999 () Bool)

(declare-fun e!78317 () Bool)

(assert (=> b!134999 (= e!78316 e!78317)))

(declare-fun res!63170 () Bool)

(assert (=> b!134999 (=> (not res!63170) (not e!78317))))

(assert (=> b!134999 (= res!63170 (is-Cons!2221 (++!495 (++!495 l1!1230 l3!231) l2!1199)))))

(declare-fun b!135001 () Bool)

(declare-fun e!78318 () Bool)

(assert (=> b!135001 (= e!78318 (subseq!68 (t!22813 sub!16) (t!22813 (++!495 (++!495 l1!1230 l3!231) l2!1199))))))

(declare-fun b!135000 () Bool)

(assert (=> b!135000 (= e!78317 e!78319)))

(declare-fun res!63168 () Bool)

(assert (=> b!135000 (=> res!63168 e!78319)))

(assert (=> b!135000 (= res!63168 e!78318)))

(declare-fun res!63169 () Bool)

(assert (=> b!135000 (=> (not res!63169) (not e!78318))))

(assert (=> b!135000 (= res!63169 (= (h!7618 sub!16) (h!7618 (++!495 (++!495 l1!1230 l3!231) l2!1199))))))

(assert (= (and d!32376 (not res!63167)) b!134999))

(assert (= (and b!134999 res!63170) b!135000))

(assert (= (and b!135000 res!63169) b!135001))

(assert (= (and b!135000 (not res!63168)) b!135002))

(declare-fun m!119845 () Bool)

(assert (=> b!135002 m!119845))

(declare-fun m!119847 () Bool)

(assert (=> b!135001 m!119847))

(assert (=> b!134967 d!32376))

(declare-fun d!32380 () Bool)

(declare-fun e!78337 () Bool)

(assert (=> d!32380 e!78337))

(declare-fun res!63187 () Bool)

(assert (=> d!32380 (=> (not res!63187) (not e!78337))))

(declare-fun lt!40651 () List!2227)

(declare-fun content!322 (List!2227) (Set B!847))

(assert (=> d!32380 (= res!63187 (= (content!322 lt!40651) (set.union (content!322 (++!495 l1!1230 l3!231)) (content!322 l2!1199))))))

(declare-fun e!78336 () List!2227)

(assert (=> d!32380 (= lt!40651 e!78336)))

(declare-fun c!28801 () Bool)

(assert (=> d!32380 (= c!28801 (is-Nil!2221 (++!495 l1!1230 l3!231)))))

(assert (=> d!32380 (= (++!495 (++!495 l1!1230 l3!231) l2!1199) lt!40651)))

(declare-fun b!135024 () Bool)

(assert (=> b!135024 (= e!78336 (Cons!2221 (h!7618 (++!495 l1!1230 l3!231)) (++!495 (t!22813 (++!495 l1!1230 l3!231)) l2!1199)))))

(declare-fun b!135023 () Bool)

(assert (=> b!135023 (= e!78336 l2!1199)))

(declare-fun b!135025 () Bool)

(declare-fun res!63188 () Bool)

(assert (=> b!135025 (=> (not res!63188) (not e!78337))))

(declare-fun size!2010 (List!2227) Int)

(assert (=> b!135025 (= res!63188 (= (size!2010 lt!40651) (+ (size!2010 (++!495 l1!1230 l3!231)) (size!2010 l2!1199))))))

(declare-fun b!135026 () Bool)

(assert (=> b!135026 (= e!78337 (or (not (= l2!1199 Nil!2221)) (= lt!40651 (++!495 l1!1230 l3!231))))))

(assert (= (and d!32380 c!28801) b!135023))

(assert (= (and d!32380 (not c!28801)) b!135024))

(assert (= (and d!32380 res!63187) b!135025))

(assert (= (and b!135025 res!63188) b!135026))

(declare-fun m!119853 () Bool)

(assert (=> d!32380 m!119853))

(assert (=> d!32380 m!119829))

(declare-fun m!119855 () Bool)

(assert (=> d!32380 m!119855))

(declare-fun m!119857 () Bool)

(assert (=> d!32380 m!119857))

(declare-fun m!119859 () Bool)

(assert (=> b!135024 m!119859))

(declare-fun m!119861 () Bool)

(assert (=> b!135025 m!119861))

(assert (=> b!135025 m!119829))

(declare-fun m!119863 () Bool)

(assert (=> b!135025 m!119863))

(declare-fun m!119865 () Bool)

(assert (=> b!135025 m!119865))

(assert (=> b!134967 d!32380))

(declare-fun d!32384 () Bool)

(declare-fun e!78339 () Bool)

(assert (=> d!32384 e!78339))

(declare-fun res!63189 () Bool)

(assert (=> d!32384 (=> (not res!63189) (not e!78339))))

(declare-fun lt!40652 () List!2227)

(assert (=> d!32384 (= res!63189 (= (content!322 lt!40652) (set.union (content!322 l1!1230) (content!322 l3!231))))))

(declare-fun e!78338 () List!2227)

(assert (=> d!32384 (= lt!40652 e!78338)))

(declare-fun c!28802 () Bool)

(assert (=> d!32384 (= c!28802 (is-Nil!2221 l1!1230))))

(assert (=> d!32384 (= (++!495 l1!1230 l3!231) lt!40652)))

(declare-fun b!135028 () Bool)

(assert (=> b!135028 (= e!78338 (Cons!2221 (h!7618 l1!1230) (++!495 (t!22813 l1!1230) l3!231)))))

(declare-fun b!135027 () Bool)

(assert (=> b!135027 (= e!78338 l3!231)))

(declare-fun b!135029 () Bool)

(declare-fun res!63190 () Bool)

(assert (=> b!135029 (=> (not res!63190) (not e!78339))))

(assert (=> b!135029 (= res!63190 (= (size!2010 lt!40652) (+ (size!2010 l1!1230) (size!2010 l3!231))))))

(declare-fun b!135030 () Bool)

(assert (=> b!135030 (= e!78339 (or (not (= l3!231 Nil!2221)) (= lt!40652 l1!1230)))))

(assert (= (and d!32384 c!28802) b!135027))

(assert (= (and d!32384 (not c!28802)) b!135028))

(assert (= (and d!32384 res!63189) b!135029))

(assert (= (and b!135029 res!63190) b!135030))

(declare-fun m!119867 () Bool)

(assert (=> d!32384 m!119867))

(declare-fun m!119869 () Bool)

(assert (=> d!32384 m!119869))

(declare-fun m!119871 () Bool)

(assert (=> d!32384 m!119871))

(declare-fun m!119873 () Bool)

(assert (=> b!135028 m!119873))

(declare-fun m!119875 () Bool)

(assert (=> b!135029 m!119875))

(declare-fun m!119877 () Bool)

(assert (=> b!135029 m!119877))

(declare-fun m!119879 () Bool)

(assert (=> b!135029 m!119879))

(assert (=> b!134967 d!32384))

(declare-fun e!78343 () Bool)

(declare-fun b!135034 () Bool)

(assert (=> b!135034 (= e!78343 (subseq!68 sub!16 (t!22813 (++!495 l1!1230 l2!1199))))))

(declare-fun d!32386 () Bool)

(declare-fun res!63191 () Bool)

(declare-fun e!78340 () Bool)

(assert (=> d!32386 (=> res!63191 e!78340)))

(assert (=> d!32386 (= res!63191 (is-Nil!2221 sub!16))))

(assert (=> d!32386 (= (subseq!68 sub!16 (++!495 l1!1230 l2!1199)) e!78340)))

(declare-fun b!135031 () Bool)

(declare-fun e!78341 () Bool)

(assert (=> b!135031 (= e!78340 e!78341)))

(declare-fun res!63194 () Bool)

(assert (=> b!135031 (=> (not res!63194) (not e!78341))))

(assert (=> b!135031 (= res!63194 (is-Cons!2221 (++!495 l1!1230 l2!1199)))))

(declare-fun e!78342 () Bool)

(declare-fun b!135033 () Bool)

(assert (=> b!135033 (= e!78342 (subseq!68 (t!22813 sub!16) (t!22813 (++!495 l1!1230 l2!1199))))))

(declare-fun b!135032 () Bool)

(assert (=> b!135032 (= e!78341 e!78343)))

(declare-fun res!63192 () Bool)

(assert (=> b!135032 (=> res!63192 e!78343)))

(assert (=> b!135032 (= res!63192 e!78342)))

(declare-fun res!63193 () Bool)

(assert (=> b!135032 (=> (not res!63193) (not e!78342))))

(assert (=> b!135032 (= res!63193 (= (h!7618 sub!16) (h!7618 (++!495 l1!1230 l2!1199))))))

(assert (= (and d!32386 (not res!63191)) b!135031))

(assert (= (and b!135031 res!63194) b!135032))

(assert (= (and b!135032 res!63193) b!135033))

(assert (= (and b!135032 (not res!63192)) b!135034))

(declare-fun m!119881 () Bool)

(assert (=> b!135034 m!119881))

(declare-fun m!119883 () Bool)

(assert (=> b!135033 m!119883))

(assert (=> start!14092 d!32386))

(declare-fun d!32388 () Bool)

(declare-fun e!78345 () Bool)

(assert (=> d!32388 e!78345))

(declare-fun res!63195 () Bool)

(assert (=> d!32388 (=> (not res!63195) (not e!78345))))

(declare-fun lt!40653 () List!2227)

(assert (=> d!32388 (= res!63195 (= (content!322 lt!40653) (set.union (content!322 l1!1230) (content!322 l2!1199))))))

(declare-fun e!78344 () List!2227)

(assert (=> d!32388 (= lt!40653 e!78344)))

(declare-fun c!28803 () Bool)

(assert (=> d!32388 (= c!28803 (is-Nil!2221 l1!1230))))

(assert (=> d!32388 (= (++!495 l1!1230 l2!1199) lt!40653)))

(declare-fun b!135036 () Bool)

(assert (=> b!135036 (= e!78344 (Cons!2221 (h!7618 l1!1230) (++!495 (t!22813 l1!1230) l2!1199)))))

(declare-fun b!135035 () Bool)

(assert (=> b!135035 (= e!78344 l2!1199)))

(declare-fun b!135037 () Bool)

(declare-fun res!63196 () Bool)

(assert (=> b!135037 (=> (not res!63196) (not e!78345))))

(assert (=> b!135037 (= res!63196 (= (size!2010 lt!40653) (+ (size!2010 l1!1230) (size!2010 l2!1199))))))

(declare-fun b!135038 () Bool)

(assert (=> b!135038 (= e!78345 (or (not (= l2!1199 Nil!2221)) (= lt!40653 l1!1230)))))

(assert (= (and d!32388 c!28803) b!135035))

(assert (= (and d!32388 (not c!28803)) b!135036))

(assert (= (and d!32388 res!63195) b!135037))

(assert (= (and b!135037 res!63196) b!135038))

(declare-fun m!119885 () Bool)

(assert (=> d!32388 m!119885))

(assert (=> d!32388 m!119869))

(assert (=> d!32388 m!119857))

(declare-fun m!119887 () Bool)

(assert (=> b!135036 m!119887))

(declare-fun m!119889 () Bool)

(assert (=> b!135037 m!119889))

(assert (=> b!135037 m!119877))

(assert (=> b!135037 m!119865))

(assert (=> start!14092 d!32388))

(declare-fun b!135043 () Bool)

(declare-fun e!78348 () Bool)

(declare-fun tp!70869 () Bool)

(assert (=> b!135043 (= e!78348 (and tp_is_empty!1491 tp!70869))))

(assert (=> b!134972 (= tp!70853 e!78348)))

(assert (= (and b!134972 (is-Cons!2221 (t!22813 l1!1230))) b!135043))

(declare-fun b!135044 () Bool)

(declare-fun e!78349 () Bool)

(declare-fun tp!70870 () Bool)

(assert (=> b!135044 (= e!78349 (and tp_is_empty!1491 tp!70870))))

(assert (=> b!134971 (= tp!70851 e!78349)))

(assert (= (and b!134971 (is-Cons!2221 (t!22813 sub!16))) b!135044))

(declare-fun b!135045 () Bool)

(declare-fun e!78350 () Bool)

(declare-fun tp!70871 () Bool)

(assert (=> b!135045 (= e!78350 (and tp_is_empty!1491 tp!70871))))

(assert (=> b!134970 (= tp!70852 e!78350)))

(assert (= (and b!134970 (is-Cons!2221 (t!22813 l2!1199))) b!135045))

(declare-fun b!135046 () Bool)

(declare-fun e!78351 () Bool)

(declare-fun tp!70872 () Bool)

(assert (=> b!135046 (= e!78351 (and tp_is_empty!1491 tp!70872))))

(assert (=> b!134968 (= tp!70854 e!78351)))

(assert (= (and b!134968 (is-Cons!2221 (t!22813 l3!231))) b!135046))

(push 1)

(assert (not b!135029))

(assert (not b!135043))

(assert (not d!32380))

(assert (not b!135045))

(assert (not d!32384))

(assert (not b!135046))

(assert (not b!135002))

(assert (not d!32388))

(assert (not b!135034))

(assert (not b!135028))

(assert (not b!135037))

(assert tp_is_empty!1491)

(assert (not b!135036))

(assert (not b!135001))

(assert (not b!135024))

(assert (not b!135033))

(assert (not b!135025))

(assert (not b!135044))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

