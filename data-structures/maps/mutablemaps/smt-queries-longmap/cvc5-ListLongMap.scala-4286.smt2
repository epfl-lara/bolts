; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59724 () Bool)

(assert start!59724)

(declare-fun b!659541 () Bool)

(declare-fun res!427781 () Bool)

(declare-fun e!378954 () Bool)

(assert (=> b!659541 (=> (not res!427781) (not e!378954))))

(declare-fun e!378955 () Bool)

(assert (=> b!659541 (= res!427781 e!378955)))

(declare-fun res!427782 () Bool)

(assert (=> b!659541 (=> res!427782 e!378955)))

(declare-fun e!378956 () Bool)

(assert (=> b!659541 (= res!427782 e!378956)))

(declare-fun res!427787 () Bool)

(assert (=> b!659541 (=> (not res!427787) (not e!378956))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!659541 (= res!427787 (bvsgt from!3004 i!1382))))

(declare-fun b!659542 () Bool)

(declare-fun res!427784 () Bool)

(assert (=> b!659542 (=> (not res!427784) (not e!378954))))

(declare-datatypes ((List!12664 0))(
  ( (Nil!12661) (Cons!12660 (h!13705 (_ BitVec 64)) (t!18900 List!12664)) )
))
(declare-fun acc!681 () List!12664)

(declare-fun noDuplicate!454 (List!12664) Bool)

(assert (=> b!659542 (= res!427784 (noDuplicate!454 acc!681))))

(declare-fun b!659543 () Bool)

(assert (=> b!659543 (= e!378954 (not (noDuplicate!454 Nil!12661)))))

(declare-fun b!659544 () Bool)

(declare-fun res!427783 () Bool)

(assert (=> b!659544 (=> (not res!427783) (not e!378954))))

(declare-datatypes ((array!38757 0))(
  ( (array!38758 (arr!18570 (Array (_ BitVec 32) (_ BitVec 64))) (size!18934 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38757)

(assert (=> b!659544 (= res!427783 (bvsle #b00000000000000000000000000000000 (size!18934 a!3626)))))

(declare-fun b!659545 () Bool)

(declare-fun res!427786 () Bool)

(assert (=> b!659545 (=> (not res!427786) (not e!378954))))

(declare-fun contains!3207 (List!12664 (_ BitVec 64)) Bool)

(assert (=> b!659545 (= res!427786 (not (contains!3207 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!427780 () Bool)

(assert (=> start!59724 (=> (not res!427780) (not e!378954))))

(assert (=> start!59724 (= res!427780 (and (bvslt (size!18934 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18934 a!3626))))))

(assert (=> start!59724 e!378954))

(assert (=> start!59724 true))

(declare-fun array_inv!14344 (array!38757) Bool)

(assert (=> start!59724 (array_inv!14344 a!3626)))

(declare-fun b!659546 () Bool)

(declare-fun res!427785 () Bool)

(assert (=> b!659546 (=> (not res!427785) (not e!378954))))

(assert (=> b!659546 (= res!427785 (not (contains!3207 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!659547 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!659547 (= e!378956 (contains!3207 acc!681 k!2843))))

(declare-fun b!659548 () Bool)

(declare-fun e!378957 () Bool)

(assert (=> b!659548 (= e!378957 (not (contains!3207 acc!681 k!2843)))))

(declare-fun b!659549 () Bool)

(assert (=> b!659549 (= e!378955 e!378957)))

(declare-fun res!427779 () Bool)

(assert (=> b!659549 (=> (not res!427779) (not e!378957))))

(assert (=> b!659549 (= res!427779 (bvsle from!3004 i!1382))))

(assert (= (and start!59724 res!427780) b!659542))

(assert (= (and b!659542 res!427784) b!659545))

(assert (= (and b!659545 res!427786) b!659546))

(assert (= (and b!659546 res!427785) b!659541))

(assert (= (and b!659541 res!427787) b!659547))

(assert (= (and b!659541 (not res!427782)) b!659549))

(assert (= (and b!659549 res!427779) b!659548))

(assert (= (and b!659541 res!427781) b!659544))

(assert (= (and b!659544 res!427783) b!659543))

(declare-fun m!632541 () Bool)

(assert (=> b!659548 m!632541))

(declare-fun m!632543 () Bool)

(assert (=> b!659546 m!632543))

(declare-fun m!632545 () Bool)

(assert (=> b!659545 m!632545))

(declare-fun m!632547 () Bool)

(assert (=> b!659542 m!632547))

(declare-fun m!632549 () Bool)

(assert (=> start!59724 m!632549))

(assert (=> b!659547 m!632541))

(declare-fun m!632551 () Bool)

(assert (=> b!659543 m!632551))

(push 1)

(assert (not b!659547))

(assert (not b!659545))

(assert (not b!659542))

(assert (not b!659548))

(assert (not start!59724))

(assert (not b!659546))

(assert (not b!659543))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!93013 () Bool)

(declare-fun lt!308661 () Bool)

(declare-fun content!258 (List!12664) (Set (_ BitVec 64)))

(assert (=> d!93013 (= lt!308661 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!258 acc!681)))))

(declare-fun e!379025 () Bool)

(assert (=> d!93013 (= lt!308661 e!379025)))

(declare-fun res!427878 () Bool)

(assert (=> d!93013 (=> (not res!427878) (not e!379025))))

(assert (=> d!93013 (= res!427878 (is-Cons!12660 acc!681))))

(assert (=> d!93013 (= (contains!3207 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!308661)))

(declare-fun b!659640 () Bool)

(declare-fun e!379026 () Bool)

(assert (=> b!659640 (= e!379025 e!379026)))

(declare-fun res!427879 () Bool)

(assert (=> b!659640 (=> res!427879 e!379026)))

(assert (=> b!659640 (= res!427879 (= (h!13705 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!659641 () Bool)

(assert (=> b!659641 (= e!379026 (contains!3207 (t!18900 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93013 res!427878) b!659640))

