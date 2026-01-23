; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!47696 () Bool)

(assert start!47696)

(declare-fun b!520729 () Bool)

(declare-fun e!312083 () Bool)

(declare-datatypes ((B!1167 0))(
  ( (B!1168 (val!1873 Int)) )
))
(declare-datatypes ((List!4821 0))(
  ( (Nil!4811) (Cons!4811 (h!10212 B!1167) (t!73411 List!4821)) )
))
(declare-fun acc!308 () List!4821)

(declare-fun list!41 () List!4821)

(declare-fun contains!1159 (List!4821 B!1167) Bool)

(assert (=> b!520729 (= e!312083 (not (contains!1159 acc!308 (h!10212 list!41))))))

(declare-fun b!520730 () Bool)

(declare-fun e!312086 () Bool)

(declare-fun noDuplicate!162 (List!4821) Bool)

(assert (=> b!520730 (= e!312086 (not (noDuplicate!162 (Cons!4811 (h!10212 list!41) acc!308))))))

(declare-fun res!221135 () Bool)

(assert (=> start!47696 (=> (not res!221135) (not e!312086))))

(assert (=> start!47696 (= res!221135 (noDuplicate!162 acc!308))))

(assert (=> start!47696 e!312086))

(declare-fun e!312085 () Bool)

(assert (=> start!47696 e!312085))

(declare-fun e!312084 () Bool)

(assert (=> start!47696 e!312084))

(declare-fun b!520731 () Bool)

(declare-fun res!221134 () Bool)

(assert (=> b!520731 (=> (not res!221134) (not e!312086))))

(assert (=> b!520731 (= res!221134 e!312083)))

(declare-fun res!221132 () Bool)

(assert (=> b!520731 (=> res!221132 e!312083)))

(assert (=> b!520731 (= res!221132 (not (is-Cons!4811 list!41)))))

(declare-fun b!520732 () Bool)

(declare-fun tp_is_empty!2763 () Bool)

(declare-fun tp!161993 () Bool)

(assert (=> b!520732 (= e!312085 (and tp_is_empty!2763 tp!161993))))

(declare-fun b!520733 () Bool)

(declare-fun res!221133 () Bool)

(assert (=> b!520733 (=> (not res!221133) (not e!312086))))

(assert (=> b!520733 (= res!221133 (is-Cons!4811 list!41))))

(declare-fun b!520734 () Bool)

(declare-fun tp!161992 () Bool)

(assert (=> b!520734 (= e!312084 (and tp_is_empty!2763 tp!161992))))

(assert (= (and start!47696 res!221135) b!520731))

(assert (= (and b!520731 (not res!221132)) b!520729))

(assert (= (and b!520731 res!221134) b!520733))

(assert (= (and b!520733 res!221133) b!520730))

(assert (= (and start!47696 (is-Cons!4811 acc!308)) b!520732))

(assert (= (and start!47696 (is-Cons!4811 list!41)) b!520734))

(declare-fun m!767337 () Bool)

(assert (=> b!520729 m!767337))

(declare-fun m!767339 () Bool)

(assert (=> b!520730 m!767339))

(declare-fun m!767341 () Bool)

(assert (=> start!47696 m!767341))

(push 1)

(assert (not start!47696))

(assert (not b!520729))

(assert (not b!520730))

(assert (not b!520734))

(assert tp_is_empty!2763)

(assert (not b!520732))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!185934 () Bool)

(declare-fun lt!217020 () Bool)

(declare-fun content!874 (List!4821) (Set B!1167))

(assert (=> d!185934 (= lt!217020 (set.member (h!10212 list!41) (content!874 acc!308)))))

(declare-fun e!312104 () Bool)

(assert (=> d!185934 (= lt!217020 e!312104)))

(declare-fun res!221153 () Bool)

(assert (=> d!185934 (=> (not res!221153) (not e!312104))))

(assert (=> d!185934 (= res!221153 (is-Cons!4811 acc!308))))

(assert (=> d!185934 (= (contains!1159 acc!308 (h!10212 list!41)) lt!217020)))

(declare-fun b!520757 () Bool)

(declare-fun e!312103 () Bool)

(assert (=> b!520757 (= e!312104 e!312103)))

(declare-fun res!221152 () Bool)

(assert (=> b!520757 (=> res!221152 e!312103)))

(assert (=> b!520757 (= res!221152 (= (h!10212 acc!308) (h!10212 list!41)))))

(declare-fun b!520758 () Bool)

(assert (=> b!520758 (= e!312103 (contains!1159 (t!73411 acc!308) (h!10212 list!41)))))

(assert (= (and d!185934 res!221153) b!520757))

(assert (= (and b!520757 (not res!221152)) b!520758))

(declare-fun m!767349 () Bool)

(assert (=> d!185934 m!767349))

(declare-fun m!767351 () Bool)

(assert (=> d!185934 m!767351))

(declare-fun m!767353 () Bool)

(assert (=> b!520758 m!767353))

(assert (=> b!520729 d!185934))

(declare-fun d!185938 () Bool)

(declare-fun res!221162 () Bool)

(declare-fun e!312113 () Bool)

(assert (=> d!185938 (=> res!221162 e!312113)))

(assert (=> d!185938 (= res!221162 (is-Nil!4811 (Cons!4811 (h!10212 list!41) acc!308)))))

(assert (=> d!185938 (= (noDuplicate!162 (Cons!4811 (h!10212 list!41) acc!308)) e!312113)))

(declare-fun b!520767 () Bool)

(declare-fun e!312114 () Bool)

(assert (=> b!520767 (= e!312113 e!312114)))

(declare-fun res!221163 () Bool)

(assert (=> b!520767 (=> (not res!221163) (not e!312114))))

(assert (=> b!520767 (= res!221163 (not (contains!1159 (t!73411 (Cons!4811 (h!10212 list!41) acc!308)) (h!10212 (Cons!4811 (h!10212 list!41) acc!308)))))))

(declare-fun b!520768 () Bool)

(assert (=> b!520768 (= e!312114 (noDuplicate!162 (t!73411 (Cons!4811 (h!10212 list!41) acc!308))))))

(assert (= (and d!185938 (not res!221162)) b!520767))

(assert (= (and b!520767 res!221163) b!520768))

(declare-fun m!767355 () Bool)

(assert (=> b!520767 m!767355))

(declare-fun m!767357 () Bool)

(assert (=> b!520768 m!767357))

(assert (=> b!520730 d!185938))

(declare-fun d!185940 () Bool)

(declare-fun res!221164 () Bool)

(declare-fun e!312115 () Bool)

(assert (=> d!185940 (=> res!221164 e!312115)))

(assert (=> d!185940 (= res!221164 (is-Nil!4811 acc!308))))

(assert (=> d!185940 (= (noDuplicate!162 acc!308) e!312115)))

(declare-fun b!520769 () Bool)

(declare-fun e!312116 () Bool)

(assert (=> b!520769 (= e!312115 e!312116)))

(declare-fun res!221165 () Bool)

(assert (=> b!520769 (=> (not res!221165) (not e!312116))))

(assert (=> b!520769 (= res!221165 (not (contains!1159 (t!73411 acc!308) (h!10212 acc!308))))))

(declare-fun b!520770 () Bool)

(assert (=> b!520770 (= e!312116 (noDuplicate!162 (t!73411 acc!308)))))

(assert (= (and d!185940 (not res!221164)) b!520769))

(assert (= (and b!520769 res!221165) b!520770))

(declare-fun m!767359 () Bool)

(assert (=> b!520769 m!767359))

(declare-fun m!767361 () Bool)

(assert (=> b!520770 m!767361))

(assert (=> start!47696 d!185940))

(declare-fun b!520775 () Bool)

(declare-fun e!312119 () Bool)

(declare-fun tp!162002 () Bool)

(assert (=> b!520775 (= e!312119 (and tp_is_empty!2763 tp!162002))))

(assert (=> b!520734 (= tp!161992 e!312119)))

(assert (= (and b!520734 (is-Cons!4811 (t!73411 list!41))) b!520775))

(declare-fun b!520778 () Bool)

(declare-fun e!312122 () Bool)

(declare-fun tp!162003 () Bool)

(assert (=> b!520778 (= e!312122 (and tp_is_empty!2763 tp!162003))))

(assert (=> b!520732 (= tp!161993 e!312122)))

(assert (= (and b!520732 (is-Cons!4811 (t!73411 acc!308))) b!520778))

(push 1)

(assert (not b!520769))

(assert (not d!185934))

(assert (not b!520758))

(assert (not b!520770))

(assert tp_is_empty!2763)

(assert (not b!520775))

(assert (not b!520767))

(assert (not b!520768))

(assert (not b!520778))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

