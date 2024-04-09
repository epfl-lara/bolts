; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61808 () Bool)

(assert start!61808)

(declare-fun b!691615 () Bool)

(declare-fun res!456116 () Bool)

(declare-fun e!393534 () Bool)

(assert (=> b!691615 (=> (not res!456116) (not e!393534))))

(declare-datatypes ((array!39785 0))(
  ( (array!39786 (arr!19057 (Array (_ BitVec 32) (_ BitVec 64))) (size!19440 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39785)

(declare-datatypes ((List!13151 0))(
  ( (Nil!13148) (Cons!13147 (h!14192 (_ BitVec 64)) (t!19426 List!13151)) )
))
(declare-fun arrayNoDuplicates!0 (array!39785 (_ BitVec 32) List!13151) Bool)

(assert (=> b!691615 (= res!456116 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13148))))

(declare-fun b!691616 () Bool)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!691616 (= e!393534 (and (not (= (select (arr!19057 a!3626) from!3004) k0!2843)) (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!24398 0))(
  ( (Unit!24399) )
))
(declare-fun lt!316451 () Unit!24398)

(declare-fun e!393535 () Unit!24398)

(assert (=> b!691616 (= lt!316451 e!393535)))

(declare-fun c!78122 () Bool)

(assert (=> b!691616 (= c!78122 (= (select (arr!19057 a!3626) from!3004) k0!2843))))

(declare-fun b!691617 () Bool)

(declare-fun Unit!24400 () Unit!24398)

(assert (=> b!691617 (= e!393535 Unit!24400)))

(declare-fun b!691618 () Bool)

(declare-fun res!456117 () Bool)

(assert (=> b!691618 (=> (not res!456117) (not e!393534))))

(declare-fun acc!681 () List!13151)

(declare-fun noDuplicate!941 (List!13151) Bool)

(assert (=> b!691618 (= res!456117 (noDuplicate!941 acc!681))))

(declare-fun b!691619 () Bool)

(declare-fun res!456106 () Bool)

(assert (=> b!691619 (=> (not res!456106) (not e!393534))))

(declare-fun contains!3694 (List!13151 (_ BitVec 64)) Bool)

(assert (=> b!691619 (= res!456106 (not (contains!3694 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691620 () Bool)

(declare-fun res!456118 () Bool)

(assert (=> b!691620 (=> (not res!456118) (not e!393534))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!691620 (= res!456118 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19440 a!3626))))))

(declare-fun b!691621 () Bool)

(declare-fun e!393533 () Bool)

(assert (=> b!691621 (= e!393533 (not (contains!3694 acc!681 k0!2843)))))

(declare-fun b!691622 () Bool)

(declare-fun res!456119 () Bool)

(assert (=> b!691622 (=> (not res!456119) (not e!393534))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!691622 (= res!456119 (validKeyInArray!0 k0!2843))))

(declare-fun b!691623 () Bool)

(declare-fun res!456110 () Bool)

(assert (=> b!691623 (=> (not res!456110) (not e!393534))))

(assert (=> b!691623 (= res!456110 (validKeyInArray!0 (select (arr!19057 a!3626) from!3004)))))

(declare-fun b!691624 () Bool)

(declare-fun res!456109 () Bool)

(assert (=> b!691624 (=> (not res!456109) (not e!393534))))

(assert (=> b!691624 (= res!456109 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19440 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!691625 () Bool)

(declare-fun e!393530 () Bool)

(assert (=> b!691625 (= e!393530 e!393533)))

(declare-fun res!456114 () Bool)

(assert (=> b!691625 (=> (not res!456114) (not e!393533))))

(assert (=> b!691625 (= res!456114 (bvsle from!3004 i!1382))))

(declare-fun b!691626 () Bool)

(declare-fun res!456105 () Bool)

(assert (=> b!691626 (=> (not res!456105) (not e!393534))))

(assert (=> b!691626 (= res!456105 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun res!456112 () Bool)

(assert (=> start!61808 (=> (not res!456112) (not e!393534))))

(assert (=> start!61808 (= res!456112 (and (bvslt (size!19440 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19440 a!3626))))))

(assert (=> start!61808 e!393534))

(assert (=> start!61808 true))

(declare-fun array_inv!14831 (array!39785) Bool)

(assert (=> start!61808 (array_inv!14831 a!3626)))

(declare-fun b!691627 () Bool)

(declare-fun res!456108 () Bool)

(assert (=> b!691627 (=> (not res!456108) (not e!393534))))

(assert (=> b!691627 (= res!456108 (not (contains!3694 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691628 () Bool)

(declare-fun res!456111 () Bool)

(assert (=> b!691628 (=> (not res!456111) (not e!393534))))

(declare-fun arrayContainsKey!0 (array!39785 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!691628 (= res!456111 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!691629 () Bool)

(declare-fun res!456107 () Bool)

(assert (=> b!691629 (=> (not res!456107) (not e!393534))))

(assert (=> b!691629 (= res!456107 e!393530)))

(declare-fun res!456113 () Bool)

(assert (=> b!691629 (=> res!456113 e!393530)))

(declare-fun e!393532 () Bool)

(assert (=> b!691629 (= res!456113 e!393532)))

(declare-fun res!456115 () Bool)

(assert (=> b!691629 (=> (not res!456115) (not e!393532))))

(assert (=> b!691629 (= res!456115 (bvsgt from!3004 i!1382))))

(declare-fun b!691630 () Bool)

(declare-fun Unit!24401 () Unit!24398)

(assert (=> b!691630 (= e!393535 Unit!24401)))

(assert (=> b!691630 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun lt!316452 () Unit!24398)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39785 (_ BitVec 64) (_ BitVec 32)) Unit!24398)

(assert (=> b!691630 (= lt!316452 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!691630 false))

(declare-fun b!691631 () Bool)

(assert (=> b!691631 (= e!393532 (contains!3694 acc!681 k0!2843))))

(assert (= (and start!61808 res!456112) b!691618))

(assert (= (and b!691618 res!456117) b!691619))

(assert (= (and b!691619 res!456106) b!691627))

(assert (= (and b!691627 res!456108) b!691629))

(assert (= (and b!691629 res!456115) b!691631))

(assert (= (and b!691629 (not res!456113)) b!691625))

(assert (= (and b!691625 res!456114) b!691621))

(assert (= (and b!691629 res!456107) b!691615))

(assert (= (and b!691615 res!456116) b!691626))

(assert (= (and b!691626 res!456105) b!691620))

(assert (= (and b!691620 res!456118) b!691622))

(assert (= (and b!691622 res!456119) b!691628))

(assert (= (and b!691628 res!456111) b!691624))

(assert (= (and b!691624 res!456109) b!691623))

(assert (= (and b!691623 res!456110) b!691616))

(assert (= (and b!691616 c!78122) b!691630))

(assert (= (and b!691616 (not c!78122)) b!691617))

(declare-fun m!654521 () Bool)

(assert (=> b!691626 m!654521))

(declare-fun m!654523 () Bool)

(assert (=> start!61808 m!654523))

(declare-fun m!654525 () Bool)

(assert (=> b!691631 m!654525))

(declare-fun m!654527 () Bool)

(assert (=> b!691627 m!654527))

(declare-fun m!654529 () Bool)

(assert (=> b!691618 m!654529))

(declare-fun m!654531 () Bool)

(assert (=> b!691628 m!654531))

(assert (=> b!691621 m!654525))

(declare-fun m!654533 () Bool)

(assert (=> b!691623 m!654533))

(assert (=> b!691623 m!654533))

(declare-fun m!654535 () Bool)

(assert (=> b!691623 m!654535))

(declare-fun m!654537 () Bool)

(assert (=> b!691630 m!654537))

(declare-fun m!654539 () Bool)

(assert (=> b!691630 m!654539))

(declare-fun m!654541 () Bool)

(assert (=> b!691615 m!654541))

(declare-fun m!654543 () Bool)

(assert (=> b!691619 m!654543))

(declare-fun m!654545 () Bool)

(assert (=> b!691622 m!654545))

(assert (=> b!691616 m!654533))

(check-sat (not b!691615) (not b!691619) (not b!691626) (not b!691630) (not b!691623) (not start!61808) (not b!691631) (not b!691618) (not b!691622) (not b!691621) (not b!691628) (not b!691627))
(check-sat)
