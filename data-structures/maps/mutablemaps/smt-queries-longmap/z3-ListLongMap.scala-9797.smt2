; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116386 () Bool)

(assert start!116386)

(declare-fun b!1373187 () Bool)

(declare-fun e!777905 () Bool)

(declare-datatypes ((array!93087 0))(
  ( (array!93088 (arr!44948 (Array (_ BitVec 32) (_ BitVec 64))) (size!45499 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93087)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> b!1373187 (= e!777905 (bvsge (bvsub (size!45499 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) (bvsub (size!45499 a!3861) from!3239)))))

(declare-fun b!1373188 () Bool)

(declare-fun res!916557 () Bool)

(assert (=> b!1373188 (=> (not res!916557) (not e!777905))))

(assert (=> b!1373188 (= res!916557 (bvslt from!3239 (size!45499 a!3861)))))

(declare-fun b!1373189 () Bool)

(declare-fun res!916558 () Bool)

(declare-fun e!777906 () Bool)

(assert (=> b!1373189 (=> (not res!916558) (not e!777906))))

(declare-datatypes ((List!32196 0))(
  ( (Nil!32193) (Cons!32192 (h!33401 (_ BitVec 64)) (t!46897 List!32196)) )
))
(declare-fun acc!866 () List!32196)

(declare-fun contains!9734 (List!32196 (_ BitVec 64)) Bool)

(assert (=> b!1373189 (= res!916558 (not (contains!9734 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1373190 () Bool)

(declare-fun res!916560 () Bool)

(assert (=> b!1373190 (=> (not res!916560) (not e!777906))))

(declare-fun newAcc!98 () List!32196)

(declare-fun subseq!1125 (List!32196 List!32196) Bool)

(assert (=> b!1373190 (= res!916560 (subseq!1125 newAcc!98 acc!866))))

(declare-fun b!1373191 () Bool)

(assert (=> b!1373191 (= e!777906 e!777905)))

(declare-fun res!916559 () Bool)

(assert (=> b!1373191 (=> (not res!916559) (not e!777905))))

(declare-fun arrayNoDuplicates!0 (array!93087 (_ BitVec 32) List!32196) Bool)

(assert (=> b!1373191 (= res!916559 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45331 0))(
  ( (Unit!45332) )
))
(declare-fun lt!602963 () Unit!45331)

(declare-fun noDuplicateSubseq!312 (List!32196 List!32196) Unit!45331)

(assert (=> b!1373191 (= lt!602963 (noDuplicateSubseq!312 newAcc!98 acc!866))))

(declare-fun b!1373192 () Bool)

(declare-fun res!916562 () Bool)

(assert (=> b!1373192 (=> (not res!916562) (not e!777906))))

(assert (=> b!1373192 (= res!916562 (not (contains!9734 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1373193 () Bool)

(declare-fun res!916552 () Bool)

(assert (=> b!1373193 (=> (not res!916552) (not e!777906))))

(declare-fun noDuplicate!2613 (List!32196) Bool)

(assert (=> b!1373193 (= res!916552 (noDuplicate!2613 acc!866))))

(declare-fun res!916554 () Bool)

(assert (=> start!116386 (=> (not res!916554) (not e!777906))))

(assert (=> start!116386 (= res!916554 (and (bvslt (size!45499 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45499 a!3861))))))

(assert (=> start!116386 e!777906))

(declare-fun array_inv!33893 (array!93087) Bool)

(assert (=> start!116386 (array_inv!33893 a!3861)))

(assert (=> start!116386 true))

(declare-fun b!1373194 () Bool)

(declare-fun res!916563 () Bool)

(assert (=> b!1373194 (=> (not res!916563) (not e!777906))))

(assert (=> b!1373194 (= res!916563 (not (contains!9734 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1373195 () Bool)

(declare-fun res!916555 () Bool)

(assert (=> b!1373195 (=> (not res!916555) (not e!777905))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1373195 (= res!916555 (not (validKeyInArray!0 (select (arr!44948 a!3861) from!3239))))))

(declare-fun b!1373196 () Bool)

(declare-fun res!916561 () Bool)

(assert (=> b!1373196 (=> (not res!916561) (not e!777905))))

(assert (=> b!1373196 (= res!916561 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1373197 () Bool)

(declare-fun res!916556 () Bool)

(assert (=> b!1373197 (=> (not res!916556) (not e!777906))))

(assert (=> b!1373197 (= res!916556 (not (contains!9734 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1373198 () Bool)

(declare-fun res!916553 () Bool)

(assert (=> b!1373198 (=> (not res!916553) (not e!777905))))

(assert (=> b!1373198 (= res!916553 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(assert (= (and start!116386 res!916554) b!1373193))

(assert (= (and b!1373193 res!916552) b!1373192))

(assert (= (and b!1373192 res!916562) b!1373189))

(assert (= (and b!1373189 res!916558) b!1373197))

(assert (= (and b!1373197 res!916556) b!1373194))

(assert (= (and b!1373194 res!916563) b!1373190))

(assert (= (and b!1373190 res!916560) b!1373191))

(assert (= (and b!1373191 res!916559) b!1373188))

(assert (= (and b!1373188 res!916557) b!1373195))

(assert (= (and b!1373195 res!916555) b!1373196))

(assert (= (and b!1373196 res!916561) b!1373198))

(assert (= (and b!1373198 res!916553) b!1373187))

(declare-fun m!1256509 () Bool)

(assert (=> b!1373195 m!1256509))

(assert (=> b!1373195 m!1256509))

(declare-fun m!1256511 () Bool)

(assert (=> b!1373195 m!1256511))

(declare-fun m!1256513 () Bool)

(assert (=> b!1373197 m!1256513))

(declare-fun m!1256515 () Bool)

(assert (=> b!1373190 m!1256515))

(declare-fun m!1256517 () Bool)

(assert (=> b!1373192 m!1256517))

(declare-fun m!1256519 () Bool)

(assert (=> b!1373189 m!1256519))

(declare-fun m!1256521 () Bool)

(assert (=> b!1373193 m!1256521))

(declare-fun m!1256523 () Bool)

(assert (=> b!1373198 m!1256523))

(declare-fun m!1256525 () Bool)

(assert (=> b!1373191 m!1256525))

(declare-fun m!1256527 () Bool)

(assert (=> b!1373191 m!1256527))

(declare-fun m!1256529 () Bool)

(assert (=> start!116386 m!1256529))

(declare-fun m!1256531 () Bool)

(assert (=> b!1373194 m!1256531))

(check-sat (not b!1373193) (not start!116386) (not b!1373189) (not b!1373194) (not b!1373191) (not b!1373190) (not b!1373197) (not b!1373192) (not b!1373198) (not b!1373195))
(check-sat)
