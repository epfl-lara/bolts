; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113888 () Bool)

(assert start!113888)

(declare-fun b!1350263 () Bool)

(declare-fun res!895848 () Bool)

(declare-fun e!768169 () Bool)

(assert (=> b!1350263 (=> (not res!895848) (not e!768169))))

(declare-datatypes ((array!92008 0))(
  ( (array!92009 (arr!44449 (Array (_ BitVec 32) (_ BitVec 64))) (size!45000 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92008)

(assert (=> b!1350263 (= res!895848 (bvsle #b00000000000000000000000000000000 (size!45000 a!3742)))))

(declare-fun b!1350264 () Bool)

(declare-fun res!895845 () Bool)

(assert (=> b!1350264 (=> (not res!895845) (not e!768169))))

(declare-datatypes ((List!31670 0))(
  ( (Nil!31667) (Cons!31666 (h!32875 (_ BitVec 64)) (t!46335 List!31670)) )
))
(declare-fun noDuplicate!2114 (List!31670) Bool)

(assert (=> b!1350264 (= res!895845 (noDuplicate!2114 Nil!31667))))

(declare-fun b!1350265 () Bool)

(declare-fun res!895844 () Bool)

(assert (=> b!1350265 (=> (not res!895844) (not e!768169))))

(declare-fun acc!759 () List!31670)

(declare-fun contains!9235 (List!31670 (_ BitVec 64)) Bool)

(assert (=> b!1350265 (= res!895844 (not (contains!9235 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350266 () Bool)

(declare-fun e!768167 () Bool)

(assert (=> b!1350266 (= e!768167 (contains!9235 Nil!31667 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!895847 () Bool)

(assert (=> start!113888 (=> (not res!895847) (not e!768169))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!113888 (= res!895847 (and (bvslt (size!45000 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45000 a!3742))))))

(assert (=> start!113888 e!768169))

(declare-fun array_inv!33394 (array!92008) Bool)

(assert (=> start!113888 (array_inv!33394 a!3742)))

(assert (=> start!113888 true))

(declare-fun b!1350267 () Bool)

(declare-fun res!895846 () Bool)

(assert (=> b!1350267 (=> (not res!895846) (not e!768169))))

(assert (=> b!1350267 (= res!895846 (noDuplicate!2114 acc!759))))

(declare-fun b!1350268 () Bool)

(declare-fun res!895842 () Bool)

(assert (=> b!1350268 (=> (not res!895842) (not e!768169))))

(assert (=> b!1350268 (= res!895842 (not (contains!9235 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350269 () Bool)

(assert (=> b!1350269 (= e!768169 e!768167)))

(declare-fun res!895843 () Bool)

(assert (=> b!1350269 (=> res!895843 e!768167)))

(assert (=> b!1350269 (= res!895843 (contains!9235 Nil!31667 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!113888 res!895847) b!1350267))

(assert (= (and b!1350267 res!895846) b!1350265))

(assert (= (and b!1350265 res!895844) b!1350268))

(assert (= (and b!1350268 res!895842) b!1350263))

(assert (= (and b!1350263 res!895848) b!1350264))

(assert (= (and b!1350264 res!895845) b!1350269))

(assert (= (and b!1350269 (not res!895843)) b!1350266))

(declare-fun m!1237531 () Bool)

(assert (=> b!1350269 m!1237531))

(declare-fun m!1237533 () Bool)

(assert (=> b!1350266 m!1237533))

(declare-fun m!1237535 () Bool)

(assert (=> b!1350265 m!1237535))

(declare-fun m!1237537 () Bool)

(assert (=> b!1350268 m!1237537))

(declare-fun m!1237539 () Bool)

(assert (=> start!113888 m!1237539))

(declare-fun m!1237541 () Bool)

(assert (=> b!1350267 m!1237541))

(declare-fun m!1237543 () Bool)

(assert (=> b!1350264 m!1237543))

(push 1)

(assert (not b!1350266))

(assert (not b!1350265))

(assert (not b!1350267))

(assert (not b!1350264))

(assert (not start!113888))

(assert (not b!1350268))

(assert (not b!1350269))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!144845 () Bool)

(declare-fun lt!596908 () Bool)

(declare-fun content!679 (List!31670) (Set (_ BitVec 64)))

(assert (=> d!144845 (= lt!596908 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!679 acc!759)))))

(declare-fun e!768216 () Bool)

(assert (=> d!144845 (= lt!596908 e!768216)))

(declare-fun res!895919 () Bool)

(assert (=> d!144845 (=> (not res!895919) (not e!768216))))

(assert (=> d!144845 (= res!895919 (is-Cons!31666 acc!759))))

(assert (=> d!144845 (= (contains!9235 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!596908)))

(declare-fun b!1350340 () Bool)

(declare-fun e!768217 () Bool)

(assert (=> b!1350340 (= e!768216 e!768217)))

(declare-fun res!895920 () Bool)

(assert (=> b!1350340 (=> res!895920 e!768217)))

(assert (=> b!1350340 (= res!895920 (= (h!32875 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350341 () Bool)

(assert (=> b!1350341 (= e!768217 (contains!9235 (t!46335 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!144845 res!895919) b!1350340))

(assert (= (and b!1350340 (not res!895920)) b!1350341))

(declare-fun m!1237601 () Bool)

(assert (=> d!144845 m!1237601))

(declare-fun m!1237603 () Bool)

(assert (=> d!144845 m!1237603))

(declare-fun m!1237605 () Bool)

(assert (=> b!1350341 m!1237605))

(assert (=> b!1350265 d!144845))

(declare-fun d!144855 () Bool)

(declare-fun res!895927 () Bool)

(declare-fun e!768224 () Bool)

(assert (=> d!144855 (=> res!895927 e!768224)))

(assert (=> d!144855 (= res!895927 (is-Nil!31667 Nil!31667))))

(assert (=> d!144855 (= (noDuplicate!2114 Nil!31667) e!768224)))

(declare-fun b!1350348 () Bool)

(declare-fun e!768225 () Bool)

(assert (=> b!1350348 (= e!768224 e!768225)))

(declare-fun res!895928 () Bool)

(assert (=> b!1350348 (=> (not res!895928) (not e!768225))))

(assert (=> b!1350348 (= res!895928 (not (contains!9235 (t!46335 Nil!31667) (h!32875 Nil!31667))))))

(declare-fun b!1350349 () Bool)

(assert (=> b!1350349 (= e!768225 (noDuplicate!2114 (t!46335 Nil!31667)))))

(assert (= (and d!144855 (not res!895927)) b!1350348))

(assert (= (and b!1350348 res!895928) b!1350349))

(declare-fun m!1237613 () Bool)

(assert (=> b!1350348 m!1237613))

(declare-fun m!1237615 () Bool)

(assert (=> b!1350349 m!1237615))

(assert (=> b!1350264 d!144855))

(declare-fun d!144861 () Bool)

(declare-fun lt!596910 () Bool)

(assert (=> d!144861 (= lt!596910 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!679 Nil!31667)))))

(declare-fun e!768226 () Bool)

(assert (=> d!144861 (= lt!596910 e!768226)))

(declare-fun res!895929 () Bool)

(assert (=> d!144861 (=> (not res!895929) (not e!768226))))

(assert (=> d!144861 (= res!895929 (is-Cons!31666 Nil!31667))))

(assert (=> d!144861 (= (contains!9235 Nil!31667 #b0000000000000000000000000000000000000000000000000000000000000000) lt!596910)))

(declare-fun b!1350350 () Bool)

(declare-fun e!768227 () Bool)

(assert (=> b!1350350 (= e!768226 e!768227)))

(declare-fun res!895930 () Bool)

(assert (=> b!1350350 (=> res!895930 e!768227)))

(assert (=> b!1350350 (= res!895930 (= (h!32875 Nil!31667) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350351 () Bool)

(assert (=> b!1350351 (= e!768227 (contains!9235 (t!46335 Nil!31667) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!144861 res!895929) b!1350350))

(assert (= (and b!1350350 (not res!895930)) b!1350351))

(declare-fun m!1237617 () Bool)

(assert (=> d!144861 m!1237617))

(declare-fun m!1237619 () Bool)

(assert (=> d!144861 m!1237619))

(declare-fun m!1237621 () Bool)

(assert (=> b!1350351 m!1237621))

(assert (=> b!1350269 d!144861))

(declare-fun d!144863 () Bool)

(declare-fun lt!596911 () Bool)

(assert (=> d!144863 (= lt!596911 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!679 acc!759)))))

(declare-fun e!768232 () Bool)

(assert (=> d!144863 (= lt!596911 e!768232)))

(declare-fun res!895935 () Bool)

(assert (=> d!144863 (=> (not res!895935) (not e!768232))))

(assert (=> d!144863 (= res!895935 (is-Cons!31666 acc!759))))

(assert (=> d!144863 (= (contains!9235 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!596911)))

(declare-fun b!1350356 () Bool)

