; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92390 () Bool)

(assert start!92390)

(declare-fun b!1049844 () Bool)

(declare-fun res!699080 () Bool)

(declare-fun e!595729 () Bool)

(assert (=> b!1049844 (=> res!699080 e!595729)))

(declare-datatypes ((List!22248 0))(
  ( (Nil!22245) (Cons!22244 (h!23453 (_ BitVec 64)) (t!31562 List!22248)) )
))
(declare-fun noDuplicate!1525 (List!22248) Bool)

(assert (=> b!1049844 (= res!699080 (not (noDuplicate!1525 Nil!22245)))))

(declare-fun b!1049845 () Bool)

(declare-fun res!699090 () Bool)

(declare-fun e!595730 () Bool)

(assert (=> b!1049845 (=> (not res!699090) (not e!595730))))

(declare-datatypes ((array!66139 0))(
  ( (array!66140 (arr!31805 (Array (_ BitVec 32) (_ BitVec 64))) (size!32342 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66139)

(declare-fun arrayNoDuplicates!0 (array!66139 (_ BitVec 32) List!22248) Bool)

(assert (=> b!1049845 (= res!699090 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22245))))

(declare-fun b!1049846 () Bool)

(declare-fun e!595732 () Bool)

(declare-fun e!595731 () Bool)

(assert (=> b!1049846 (= e!595732 e!595731)))

(declare-fun res!699087 () Bool)

(assert (=> b!1049846 (=> res!699087 e!595731)))

(declare-fun lt!463681 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1049846 (= res!699087 (bvsle lt!463681 i!1381))))

(declare-fun b!1049847 () Bool)

(declare-fun res!699089 () Bool)

(assert (=> b!1049847 (=> (not res!699089) (not e!595730))))

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1049847 (= res!699089 (validKeyInArray!0 k0!2747))))

(declare-fun b!1049848 () Bool)

(declare-fun e!595735 () Bool)

(assert (=> b!1049848 (= e!595735 e!595729)))

(declare-fun res!699086 () Bool)

(assert (=> b!1049848 (=> res!699086 e!595729)))

(assert (=> b!1049848 (= res!699086 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32342 a!3488)))))

(declare-fun arrayContainsKey!0 (array!66139 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1049848 (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34339 0))(
  ( (Unit!34340) )
))
(declare-fun lt!463682 () Unit!34339)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66139 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34339)

(assert (=> b!1049848 (= lt!463682 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 lt!463681 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1049848 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22245)))

(declare-fun lt!463680 () Unit!34339)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66139 (_ BitVec 32) (_ BitVec 32)) Unit!34339)

(assert (=> b!1049848 (= lt!463680 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1049849 () Bool)

(declare-fun res!699079 () Bool)

(assert (=> b!1049849 (=> (not res!699079) (not e!595730))))

(assert (=> b!1049849 (= res!699079 (= (select (arr!31805 a!3488) i!1381) k0!2747))))

(declare-fun b!1049850 () Bool)

(declare-fun e!595733 () Bool)

(assert (=> b!1049850 (= e!595733 (not e!595735))))

(declare-fun res!699084 () Bool)

(assert (=> b!1049850 (=> res!699084 e!595735)))

(assert (=> b!1049850 (= res!699084 (bvsle lt!463681 i!1381))))

(assert (=> b!1049850 e!595732))

(declare-fun res!699081 () Bool)

(assert (=> b!1049850 (=> (not res!699081) (not e!595732))))

(assert (=> b!1049850 (= res!699081 (= (select (store (arr!31805 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463681) k0!2747))))

(declare-fun b!1049851 () Bool)

(declare-fun e!595736 () Bool)

(assert (=> b!1049851 (= e!595736 e!595733)))

(declare-fun res!699085 () Bool)

(assert (=> b!1049851 (=> (not res!699085) (not e!595733))))

(assert (=> b!1049851 (= res!699085 (not (= lt!463681 i!1381)))))

(declare-fun lt!463683 () array!66139)

(declare-fun arrayScanForKey!0 (array!66139 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1049851 (= lt!463681 (arrayScanForKey!0 lt!463683 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1049852 () Bool)

(assert (=> b!1049852 (= e!595730 e!595736)))

(declare-fun res!699082 () Bool)

(assert (=> b!1049852 (=> (not res!699082) (not e!595736))))

(assert (=> b!1049852 (= res!699082 (arrayContainsKey!0 lt!463683 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1049852 (= lt!463683 (array!66140 (store (arr!31805 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32342 a!3488)))))

(declare-fun res!699083 () Bool)

(assert (=> start!92390 (=> (not res!699083) (not e!595730))))

(assert (=> start!92390 (= res!699083 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32342 a!3488)) (bvslt (size!32342 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92390 e!595730))

(assert (=> start!92390 true))

(declare-fun array_inv!24427 (array!66139) Bool)

(assert (=> start!92390 (array_inv!24427 a!3488)))

(declare-fun b!1049853 () Bool)

(assert (=> b!1049853 (= e!595731 (arrayContainsKey!0 a!3488 k0!2747 lt!463681))))

(declare-fun b!1049854 () Bool)

(declare-fun res!699088 () Bool)

(assert (=> b!1049854 (=> res!699088 e!595729)))

(declare-fun contains!6140 (List!22248 (_ BitVec 64)) Bool)

(assert (=> b!1049854 (= res!699088 (contains!6140 Nil!22245 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049855 () Bool)

(assert (=> b!1049855 (= e!595729 true)))

(declare-fun lt!463684 () Bool)

(assert (=> b!1049855 (= lt!463684 (contains!6140 Nil!22245 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!92390 res!699083) b!1049845))

(assert (= (and b!1049845 res!699090) b!1049847))

(assert (= (and b!1049847 res!699089) b!1049849))

(assert (= (and b!1049849 res!699079) b!1049852))

(assert (= (and b!1049852 res!699082) b!1049851))

(assert (= (and b!1049851 res!699085) b!1049850))

(assert (= (and b!1049850 res!699081) b!1049846))

(assert (= (and b!1049846 (not res!699087)) b!1049853))

(assert (= (and b!1049850 (not res!699084)) b!1049848))

(assert (= (and b!1049848 (not res!699086)) b!1049844))

(assert (= (and b!1049844 (not res!699080)) b!1049854))

(assert (= (and b!1049854 (not res!699088)) b!1049855))

(declare-fun m!970697 () Bool)

(assert (=> b!1049850 m!970697))

(declare-fun m!970699 () Bool)

(assert (=> b!1049850 m!970699))

(declare-fun m!970701 () Bool)

(assert (=> b!1049854 m!970701))

(declare-fun m!970703 () Bool)

(assert (=> b!1049852 m!970703))

(assert (=> b!1049852 m!970697))

(declare-fun m!970705 () Bool)

(assert (=> b!1049845 m!970705))

(declare-fun m!970707 () Bool)

(assert (=> b!1049848 m!970707))

(declare-fun m!970709 () Bool)

(assert (=> b!1049848 m!970709))

(declare-fun m!970711 () Bool)

(assert (=> b!1049848 m!970711))

(declare-fun m!970713 () Bool)

(assert (=> b!1049848 m!970713))

(declare-fun m!970715 () Bool)

(assert (=> b!1049851 m!970715))

(declare-fun m!970717 () Bool)

(assert (=> b!1049847 m!970717))

(declare-fun m!970719 () Bool)

(assert (=> start!92390 m!970719))

(declare-fun m!970721 () Bool)

(assert (=> b!1049849 m!970721))

(declare-fun m!970723 () Bool)

(assert (=> b!1049844 m!970723))

(declare-fun m!970725 () Bool)

(assert (=> b!1049855 m!970725))

(declare-fun m!970727 () Bool)

(assert (=> b!1049853 m!970727))

(check-sat (not b!1049848) (not start!92390) (not b!1049845) (not b!1049855) (not b!1049851) (not b!1049844) (not b!1049853) (not b!1049847) (not b!1049852) (not b!1049854))
(check-sat)
