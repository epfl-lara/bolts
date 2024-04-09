; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61814 () Bool)

(assert start!61814)

(declare-fun b!691768 () Bool)

(declare-fun res!456254 () Bool)

(declare-fun e!393588 () Bool)

(assert (=> b!691768 (=> (not res!456254) (not e!393588))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!13154 0))(
  ( (Nil!13151) (Cons!13150 (h!14195 (_ BitVec 64)) (t!19429 List!13154)) )
))
(declare-fun acc!681 () List!13154)

(declare-datatypes ((array!39791 0))(
  ( (array!39792 (arr!19060 (Array (_ BitVec 32) (_ BitVec 64))) (size!19443 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39791)

(declare-fun arrayNoDuplicates!0 (array!39791 (_ BitVec 32) List!13154) Bool)

(assert (=> b!691768 (= res!456254 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!691769 () Bool)

(declare-fun res!456246 () Bool)

(assert (=> b!691769 (=> (not res!456246) (not e!393588))))

(declare-fun noDuplicate!944 (List!13154) Bool)

(assert (=> b!691769 (= res!456246 (noDuplicate!944 acc!681))))

(declare-fun b!691770 () Bool)

(assert (=> b!691770 (= e!393588 false)))

(declare-datatypes ((Unit!24410 0))(
  ( (Unit!24411) )
))
(declare-fun lt!316469 () Unit!24410)

(declare-fun e!393584 () Unit!24410)

(assert (=> b!691770 (= lt!316469 e!393584)))

(declare-fun c!78131 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!691770 (= c!78131 (= (select (arr!19060 a!3626) from!3004) k0!2843))))

(declare-fun b!691771 () Bool)

(declare-fun e!393585 () Bool)

(declare-fun contains!3697 (List!13154 (_ BitVec 64)) Bool)

(assert (=> b!691771 (= e!393585 (not (contains!3697 acc!681 k0!2843)))))

(declare-fun res!456245 () Bool)

(assert (=> start!61814 (=> (not res!456245) (not e!393588))))

(assert (=> start!61814 (= res!456245 (and (bvslt (size!19443 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19443 a!3626))))))

(assert (=> start!61814 e!393588))

(assert (=> start!61814 true))

(declare-fun array_inv!14834 (array!39791) Bool)

(assert (=> start!61814 (array_inv!14834 a!3626)))

(declare-fun b!691772 () Bool)

(declare-fun res!456249 () Bool)

(assert (=> b!691772 (=> (not res!456249) (not e!393588))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!691772 (= res!456249 (validKeyInArray!0 (select (arr!19060 a!3626) from!3004)))))

(declare-fun b!691773 () Bool)

(declare-fun e!393589 () Bool)

(assert (=> b!691773 (= e!393589 (contains!3697 acc!681 k0!2843))))

(declare-fun b!691774 () Bool)

(declare-fun e!393586 () Bool)

(assert (=> b!691774 (= e!393586 e!393585)))

(declare-fun res!456240 () Bool)

(assert (=> b!691774 (=> (not res!456240) (not e!393585))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!691774 (= res!456240 (bvsle from!3004 i!1382))))

(declare-fun b!691775 () Bool)

(declare-fun res!456241 () Bool)

(assert (=> b!691775 (=> (not res!456241) (not e!393588))))

(assert (=> b!691775 (= res!456241 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13151))))

(declare-fun b!691776 () Bool)

(declare-fun res!456248 () Bool)

(assert (=> b!691776 (=> (not res!456248) (not e!393588))))

(assert (=> b!691776 (= res!456248 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19443 a!3626))))))

(declare-fun b!691777 () Bool)

(declare-fun res!456251 () Bool)

(assert (=> b!691777 (=> (not res!456251) (not e!393588))))

(assert (=> b!691777 (= res!456251 e!393586)))

(declare-fun res!456244 () Bool)

(assert (=> b!691777 (=> res!456244 e!393586)))

(assert (=> b!691777 (= res!456244 e!393589)))

(declare-fun res!456242 () Bool)

(assert (=> b!691777 (=> (not res!456242) (not e!393589))))

(assert (=> b!691777 (= res!456242 (bvsgt from!3004 i!1382))))

(declare-fun b!691778 () Bool)

(declare-fun Unit!24412 () Unit!24410)

(assert (=> b!691778 (= e!393584 Unit!24412)))

(declare-fun arrayContainsKey!0 (array!39791 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!691778 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun lt!316470 () Unit!24410)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39791 (_ BitVec 64) (_ BitVec 32)) Unit!24410)

(assert (=> b!691778 (= lt!316470 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!691778 false))

(declare-fun b!691779 () Bool)

(declare-fun Unit!24413 () Unit!24410)

(assert (=> b!691779 (= e!393584 Unit!24413)))

(declare-fun b!691780 () Bool)

(declare-fun res!456247 () Bool)

(assert (=> b!691780 (=> (not res!456247) (not e!393588))))

(assert (=> b!691780 (= res!456247 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19443 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!691781 () Bool)

(declare-fun res!456252 () Bool)

(assert (=> b!691781 (=> (not res!456252) (not e!393588))))

(assert (=> b!691781 (= res!456252 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!691782 () Bool)

(declare-fun res!456243 () Bool)

(assert (=> b!691782 (=> (not res!456243) (not e!393588))))

(assert (=> b!691782 (= res!456243 (not (contains!3697 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691783 () Bool)

(declare-fun res!456250 () Bool)

(assert (=> b!691783 (=> (not res!456250) (not e!393588))))

(assert (=> b!691783 (= res!456250 (not (contains!3697 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691784 () Bool)

(declare-fun res!456253 () Bool)

(assert (=> b!691784 (=> (not res!456253) (not e!393588))))

(assert (=> b!691784 (= res!456253 (validKeyInArray!0 k0!2843))))

(assert (= (and start!61814 res!456245) b!691769))

(assert (= (and b!691769 res!456246) b!691782))

(assert (= (and b!691782 res!456243) b!691783))

(assert (= (and b!691783 res!456250) b!691777))

(assert (= (and b!691777 res!456242) b!691773))

(assert (= (and b!691777 (not res!456244)) b!691774))

(assert (= (and b!691774 res!456240) b!691771))

(assert (= (and b!691777 res!456251) b!691775))

(assert (= (and b!691775 res!456241) b!691768))

(assert (= (and b!691768 res!456254) b!691776))

(assert (= (and b!691776 res!456248) b!691784))

(assert (= (and b!691784 res!456253) b!691781))

(assert (= (and b!691781 res!456252) b!691780))

(assert (= (and b!691780 res!456247) b!691772))

(assert (= (and b!691772 res!456249) b!691770))

(assert (= (and b!691770 c!78131) b!691778))

(assert (= (and b!691770 (not c!78131)) b!691779))

(declare-fun m!654599 () Bool)

(assert (=> b!691781 m!654599))

(declare-fun m!654601 () Bool)

(assert (=> b!691772 m!654601))

(assert (=> b!691772 m!654601))

(declare-fun m!654603 () Bool)

(assert (=> b!691772 m!654603))

(declare-fun m!654605 () Bool)

(assert (=> b!691783 m!654605))

(declare-fun m!654607 () Bool)

(assert (=> b!691769 m!654607))

(declare-fun m!654609 () Bool)

(assert (=> b!691784 m!654609))

(declare-fun m!654611 () Bool)

(assert (=> b!691773 m!654611))

(declare-fun m!654613 () Bool)

(assert (=> b!691768 m!654613))

(assert (=> b!691770 m!654601))

(declare-fun m!654615 () Bool)

(assert (=> b!691775 m!654615))

(assert (=> b!691771 m!654611))

(declare-fun m!654617 () Bool)

(assert (=> b!691778 m!654617))

(declare-fun m!654619 () Bool)

(assert (=> b!691778 m!654619))

(declare-fun m!654621 () Bool)

(assert (=> b!691782 m!654621))

(declare-fun m!654623 () Bool)

(assert (=> start!61814 m!654623))

(check-sat (not b!691772) (not b!691782) (not b!691771) (not b!691769) (not b!691781) (not b!691778) (not b!691775) (not b!691784) (not b!691773) (not b!691768) (not b!691783) (not start!61814))
