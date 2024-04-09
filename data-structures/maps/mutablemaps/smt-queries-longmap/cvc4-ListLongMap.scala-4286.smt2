; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59728 () Bool)

(assert start!59728)

(declare-fun b!659595 () Bool)

(declare-fun e!378985 () Bool)

(declare-datatypes ((List!12666 0))(
  ( (Nil!12663) (Cons!12662 (h!13707 (_ BitVec 64)) (t!18902 List!12666)) )
))
(declare-fun acc!681 () List!12666)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3209 (List!12666 (_ BitVec 64)) Bool)

(assert (=> b!659595 (= e!378985 (not (contains!3209 acc!681 k!2843)))))

(declare-fun b!659596 () Bool)

(declare-fun res!427838 () Bool)

(declare-fun e!378986 () Bool)

(assert (=> b!659596 (=> (not res!427838) (not e!378986))))

(declare-datatypes ((array!38761 0))(
  ( (array!38762 (arr!18572 (Array (_ BitVec 32) (_ BitVec 64))) (size!18936 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38761)

(assert (=> b!659596 (= res!427838 (bvsle #b00000000000000000000000000000000 (size!18936 a!3626)))))

(declare-fun b!659597 () Bool)

(declare-fun e!378988 () Bool)

(assert (=> b!659597 (= e!378988 e!378985)))

(declare-fun res!427840 () Bool)

(assert (=> b!659597 (=> (not res!427840) (not e!378985))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!659597 (= res!427840 (bvsle from!3004 i!1382))))

(declare-fun b!659598 () Bool)

(declare-fun res!427835 () Bool)

(assert (=> b!659598 (=> (not res!427835) (not e!378986))))

(assert (=> b!659598 (= res!427835 e!378988)))

(declare-fun res!427836 () Bool)

(assert (=> b!659598 (=> res!427836 e!378988)))

(declare-fun e!378984 () Bool)

(assert (=> b!659598 (= res!427836 e!378984)))

(declare-fun res!427833 () Bool)

(assert (=> b!659598 (=> (not res!427833) (not e!378984))))

(assert (=> b!659598 (= res!427833 (bvsgt from!3004 i!1382))))

(declare-fun b!659599 () Bool)

(declare-fun res!427837 () Bool)

(assert (=> b!659599 (=> (not res!427837) (not e!378986))))

(assert (=> b!659599 (= res!427837 (not (contains!3209 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!659600 () Bool)

(declare-fun res!427841 () Bool)

(assert (=> b!659600 (=> (not res!427841) (not e!378986))))

(declare-fun noDuplicate!456 (List!12666) Bool)

(assert (=> b!659600 (= res!427841 (noDuplicate!456 acc!681))))

(declare-fun b!659601 () Bool)

(assert (=> b!659601 (= e!378986 (not (noDuplicate!456 Nil!12663)))))

(declare-fun b!659603 () Bool)

(assert (=> b!659603 (= e!378984 (contains!3209 acc!681 k!2843))))

(declare-fun b!659602 () Bool)

(declare-fun res!427839 () Bool)

(assert (=> b!659602 (=> (not res!427839) (not e!378986))))

(assert (=> b!659602 (= res!427839 (not (contains!3209 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!427834 () Bool)

(assert (=> start!59728 (=> (not res!427834) (not e!378986))))

(assert (=> start!59728 (= res!427834 (and (bvslt (size!18936 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18936 a!3626))))))

(assert (=> start!59728 e!378986))

(assert (=> start!59728 true))

(declare-fun array_inv!14346 (array!38761) Bool)

(assert (=> start!59728 (array_inv!14346 a!3626)))

(assert (= (and start!59728 res!427834) b!659600))

(assert (= (and b!659600 res!427841) b!659602))

(assert (= (and b!659602 res!427839) b!659599))

(assert (= (and b!659599 res!427837) b!659598))

(assert (= (and b!659598 res!427833) b!659603))

(assert (= (and b!659598 (not res!427836)) b!659597))

(assert (= (and b!659597 res!427840) b!659595))

(assert (= (and b!659598 res!427835) b!659596))

(assert (= (and b!659596 res!427838) b!659601))

(declare-fun m!632565 () Bool)

(assert (=> b!659602 m!632565))

(declare-fun m!632567 () Bool)

(assert (=> b!659600 m!632567))

(declare-fun m!632569 () Bool)

(assert (=> b!659595 m!632569))

(declare-fun m!632571 () Bool)

(assert (=> b!659601 m!632571))

(declare-fun m!632573 () Bool)

(assert (=> b!659599 m!632573))

(assert (=> b!659603 m!632569))

(declare-fun m!632575 () Bool)

(assert (=> start!59728 m!632575))

(push 1)

(assert (not b!659601))

(assert (not b!659595))

(assert (not b!659600))

(assert (not start!59728))

(assert (not b!659602))

(assert (not b!659599))

(assert (not b!659603))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!93005 () Bool)

(declare-fun lt!308657 () Bool)

(declare-fun content!257 (List!12666) (Set (_ BitVec 64)))

(assert (=> d!93005 (= lt!308657 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!257 acc!681)))))

(declare-fun e!379012 () Bool)

(assert (=> d!93005 (= lt!308657 e!379012)))

(declare-fun res!427864 () Bool)

(assert (=> d!93005 (=> (not res!427864) (not e!379012))))

(assert (=> d!93005 (= res!427864 (is-Cons!12662 acc!681))))

(assert (=> d!93005 (= (contains!3209 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!308657)))

(declare-fun b!659626 () Bool)

(declare-fun e!379011 () Bool)

(assert (=> b!659626 (= e!379012 e!379011)))

(declare-fun res!427865 () Bool)

(assert (=> b!659626 (=> res!427865 e!379011)))

(assert (=> b!659626 (= res!427865 (= (h!13707 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!659627 () Bool)

(assert (=> b!659627 (= e!379011 (contains!3209 (t!18902 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93005 res!427864) b!659626))

(assert (= (and b!659626 (not res!427865)) b!659627))

(declare-fun m!632599 () Bool)

(assert (=> d!93005 m!632599))

(declare-fun m!632601 () Bool)

(assert (=> d!93005 m!632601))

(declare-fun m!632603 () Bool)

(assert (=> b!659627 m!632603))

(assert (=> b!659602 d!93005))

(declare-fun d!93017 () Bool)

(declare-fun res!427874 () Bool)

(declare-fun e!379021 () Bool)

(assert (=> d!93017 (=> res!427874 e!379021)))

(assert (=> d!93017 (= res!427874 (is-Nil!12663 Nil!12663))))

(assert (=> d!93017 (= (noDuplicate!456 Nil!12663) e!379021)))

(declare-fun b!659636 () Bool)

(declare-fun e!379022 () Bool)

(assert (=> b!659636 (= e!379021 e!379022)))

(declare-fun res!427875 () Bool)

(assert (=> b!659636 (=> (not res!427875) (not e!379022))))

(assert (=> b!659636 (= res!427875 (not (contains!3209 (t!18902 Nil!12663) (h!13707 Nil!12663))))))

(declare-fun b!659637 () Bool)

(assert (=> b!659637 (= e!379022 (noDuplicate!456 (t!18902 Nil!12663)))))

(assert (= (and d!93017 (not res!427874)) b!659636))

(assert (= (and b!659636 res!427875) b!659637))

(declare-fun m!632605 () Bool)

(assert (=> b!659636 m!632605))

(declare-fun m!632607 () Bool)

(assert (=> b!659637 m!632607))

(assert (=> b!659601 d!93017))

(declare-fun d!93019 () Bool)

(declare-fun lt!308660 () Bool)

(assert (=> d!93019 (= lt!308660 (member k!2843 (content!257 acc!681)))))

(declare-fun e!379024 () Bool)

