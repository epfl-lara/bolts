; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71844 () Bool)

(assert start!71844)

(declare-fun b!834582 () Bool)

(declare-fun res!567677 () Bool)

(declare-fun e!465678 () Bool)

(assert (=> b!834582 (=> (not res!567677) (not e!465678))))

(declare-datatypes ((array!46698 0))(
  ( (array!46699 (arr!22379 (Array (_ BitVec 32) (_ BitVec 64))) (size!22800 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46698)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834582 (= res!567677 (not (validKeyInArray!0 (select (arr!22379 a!4227) i!1466))))))

(declare-fun b!834583 () Bool)

(declare-fun res!567675 () Bool)

(assert (=> b!834583 (=> (not res!567675) (not e!465678))))

(declare-fun k0!2968 () (_ BitVec 64))

(assert (=> b!834583 (= res!567675 (validKeyInArray!0 k0!2968))))

(declare-fun b!834584 () Bool)

(declare-datatypes ((Unit!28684 0))(
  ( (Unit!28685) )
))
(declare-fun e!465677 () Unit!28684)

(declare-fun lt!379369 () Unit!28684)

(assert (=> b!834584 (= e!465677 lt!379369)))

(declare-fun lt!379373 () Unit!28684)

(declare-fun to!390 () (_ BitVec 32))

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46698 (_ BitVec 32) (_ BitVec 32)) Unit!28684)

(assert (=> b!834584 (= lt!379373 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36625 () (_ BitVec 32))

(declare-fun lt!379372 () (_ BitVec 32))

(assert (=> b!834584 (= call!36625 lt!379372)))

(declare-fun lt!379366 () array!46698)

(assert (=> b!834584 (= lt!379369 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379366 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36626 () (_ BitVec 32))

(declare-fun lt!379367 () (_ BitVec 32))

(assert (=> b!834584 (= call!36626 lt!379367)))

(declare-fun b!834586 () Bool)

(declare-fun e!465676 () Bool)

(assert (=> b!834586 (= e!465676 (not true))))

(declare-fun arrayCountValidKeys!0 (array!46698 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834586 (= (arrayCountValidKeys!0 lt!379366 (bvadd #b00000000000000000000000000000001 i!1466) (size!22800 a!4227)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (size!22800 a!4227)))))

(declare-fun lt!379374 () Unit!28684)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!46698 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!28684)

(assert (=> b!834586 (= lt!379374 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4227 i!1466 k0!2968 (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834587 () Bool)

(declare-fun res!567673 () Bool)

(assert (=> b!834587 (=> (not res!567673) (not e!465678))))

(assert (=> b!834587 (= res!567673 (and (bvslt (size!22800 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22800 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834588 () Bool)

(declare-fun res!567678 () Bool)

(assert (=> b!834588 (=> (not res!567678) (not e!465676))))

(assert (=> b!834588 (= res!567678 (= (arrayCountValidKeys!0 lt!379366 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390))))))

(declare-fun bm!36622 () Bool)

(assert (=> bm!36622 (= call!36625 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834589 () Bool)

(declare-fun lt!379368 () Unit!28684)

(assert (=> b!834589 (= e!465677 lt!379368)))

(declare-fun lt!379370 () Unit!28684)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46698 (_ BitVec 32) (_ BitVec 32)) Unit!28684)

(assert (=> b!834589 (= lt!379370 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834589 (= call!36625 (bvadd #b00000000000000000000000000000001 lt!379372))))

(assert (=> b!834589 (= lt!379368 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379366 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834589 (= call!36626 (bvadd #b00000000000000000000000000000001 lt!379367))))

(declare-fun res!567674 () Bool)

(assert (=> start!71844 (=> (not res!567674) (not e!465678))))

(assert (=> start!71844 (= res!567674 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22800 a!4227))))))

(assert (=> start!71844 e!465678))

(assert (=> start!71844 true))

(declare-fun array_inv!17802 (array!46698) Bool)

(assert (=> start!71844 (array_inv!17802 a!4227)))

(declare-fun b!834585 () Bool)

(declare-fun e!465679 () Bool)

(assert (=> b!834585 (= e!465678 e!465679)))

(declare-fun res!567679 () Bool)

(assert (=> b!834585 (=> (not res!567679) (not e!465679))))

(assert (=> b!834585 (= res!567679 (and (= lt!379367 lt!379372) (not (= to!390 (size!22800 a!4227)))))))

(assert (=> b!834585 (= lt!379372 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834585 (= lt!379367 (arrayCountValidKeys!0 lt!379366 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834585 (= lt!379366 (array!46699 (store (arr!22379 a!4227) i!1466 k0!2968) (size!22800 a!4227)))))

(declare-fun b!834590 () Bool)

(assert (=> b!834590 (= e!465679 e!465676)))

(declare-fun res!567676 () Bool)

(assert (=> b!834590 (=> (not res!567676) (not e!465676))))

(assert (=> b!834590 (= res!567676 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22800 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-fun lt!379371 () Unit!28684)

(assert (=> b!834590 (= lt!379371 e!465677)))

(declare-fun c!90850 () Bool)

(assert (=> b!834590 (= c!90850 (validKeyInArray!0 (select (arr!22379 a!4227) to!390)))))

(declare-fun bm!36623 () Bool)

(assert (=> bm!36623 (= call!36626 (arrayCountValidKeys!0 lt!379366 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(assert (= (and start!71844 res!567674) b!834582))

(assert (= (and b!834582 res!567677) b!834583))

(assert (= (and b!834583 res!567675) b!834587))

(assert (= (and b!834587 res!567673) b!834585))

(assert (= (and b!834585 res!567679) b!834590))

(assert (= (and b!834590 c!90850) b!834589))

(assert (= (and b!834590 (not c!90850)) b!834584))

(assert (= (or b!834589 b!834584) bm!36623))

(assert (= (or b!834589 b!834584) bm!36622))

(assert (= (and b!834590 res!567676) b!834588))

(assert (= (and b!834588 res!567678) b!834586))

(declare-fun m!779765 () Bool)

(assert (=> b!834589 m!779765))

(declare-fun m!779767 () Bool)

(assert (=> b!834589 m!779767))

(declare-fun m!779769 () Bool)

(assert (=> b!834588 m!779769))

(declare-fun m!779771 () Bool)

(assert (=> b!834588 m!779771))

(declare-fun m!779773 () Bool)

(assert (=> b!834585 m!779773))

(declare-fun m!779775 () Bool)

(assert (=> b!834585 m!779775))

(declare-fun m!779777 () Bool)

(assert (=> b!834585 m!779777))

(assert (=> bm!36623 m!779769))

(declare-fun m!779779 () Bool)

(assert (=> b!834583 m!779779))

(declare-fun m!779781 () Bool)

(assert (=> b!834582 m!779781))

(assert (=> b!834582 m!779781))

(declare-fun m!779783 () Bool)

(assert (=> b!834582 m!779783))

(declare-fun m!779785 () Bool)

(assert (=> b!834584 m!779785))

(declare-fun m!779787 () Bool)

(assert (=> b!834584 m!779787))

(assert (=> bm!36622 m!779771))

(declare-fun m!779789 () Bool)

(assert (=> b!834586 m!779789))

(declare-fun m!779791 () Bool)

(assert (=> b!834586 m!779791))

(declare-fun m!779793 () Bool)

(assert (=> b!834586 m!779793))

(declare-fun m!779795 () Bool)

(assert (=> start!71844 m!779795))

(declare-fun m!779797 () Bool)

(assert (=> b!834590 m!779797))

(assert (=> b!834590 m!779797))

(declare-fun m!779799 () Bool)

(assert (=> b!834590 m!779799))

(check-sat (not b!834584) (not start!71844) (not b!834586) (not b!834589) (not b!834590) (not b!834585) (not bm!36623) (not b!834582) (not bm!36622) (not b!834588) (not b!834583))
