; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114056 () Bool)

(assert start!114056)

(declare-fun b!1352954 () Bool)

(declare-fun res!898321 () Bool)

(declare-fun e!768979 () Bool)

(assert (=> b!1352954 (=> (not res!898321) (not e!768979))))

(declare-datatypes ((List!31745 0))(
  ( (Nil!31742) (Cons!31741 (h!32950 (_ BitVec 64)) (t!46410 List!31745)) )
))
(declare-fun acc!759 () List!31745)

(declare-fun contains!9310 (List!31745 (_ BitVec 64)) Bool)

(assert (=> b!1352954 (= res!898321 (not (contains!9310 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352955 () Bool)

(declare-fun res!898322 () Bool)

(assert (=> b!1352955 (=> (not res!898322) (not e!768979))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1352955 (= res!898322 (not (validKeyInArray!0 l!3587)))))

(declare-fun res!898318 () Bool)

(assert (=> start!114056 (=> (not res!898318) (not e!768979))))

(declare-datatypes ((array!92161 0))(
  ( (array!92162 (arr!44524 (Array (_ BitVec 32) (_ BitVec 64))) (size!45075 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92161)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114056 (= res!898318 (and (bvslt (size!45075 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45075 a!3742))))))

(assert (=> start!114056 e!768979))

(assert (=> start!114056 true))

(declare-fun array_inv!33469 (array!92161) Bool)

(assert (=> start!114056 (array_inv!33469 a!3742)))

(declare-fun b!1352956 () Bool)

(declare-fun res!898319 () Bool)

(assert (=> b!1352956 (=> (not res!898319) (not e!768979))))

(assert (=> b!1352956 (= res!898319 (not (contains!9310 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352957 () Bool)

(declare-fun res!898316 () Bool)

(assert (=> b!1352957 (=> (not res!898316) (not e!768979))))

(declare-fun arrayNoDuplicates!0 (array!92161 (_ BitVec 32) List!31745) Bool)

(assert (=> b!1352957 (= res!898316 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1352958 () Bool)

(declare-datatypes ((Unit!44336 0))(
  ( (Unit!44337) )
))
(declare-fun e!768976 () Unit!44336)

(declare-fun lt!597674 () Unit!44336)

(assert (=> b!1352958 (= e!768976 lt!597674)))

(declare-fun lt!597672 () Unit!44336)

(declare-fun lemmaListSubSeqRefl!0 (List!31745) Unit!44336)

(assert (=> b!1352958 (= lt!597672 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!719 (List!31745 List!31745) Bool)

(assert (=> b!1352958 (subseq!719 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92161 List!31745 List!31745 (_ BitVec 32)) Unit!44336)

(declare-fun $colon$colon!736 (List!31745 (_ BitVec 64)) List!31745)

(assert (=> b!1352958 (= lt!597674 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!736 acc!759 (select (arr!44524 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1352958 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1352959 () Bool)

(declare-fun res!898320 () Bool)

(assert (=> b!1352959 (=> (not res!898320) (not e!768979))))

(assert (=> b!1352959 (= res!898320 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45075 a!3742)))))

(declare-fun b!1352960 () Bool)

(declare-fun res!898315 () Bool)

(declare-fun e!768977 () Bool)

(assert (=> b!1352960 (=> (not res!898315) (not e!768977))))

(assert (=> b!1352960 (= res!898315 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352961 () Bool)

(declare-fun Unit!44338 () Unit!44336)

(assert (=> b!1352961 (= e!768976 Unit!44338)))

(declare-fun b!1352962 () Bool)

(assert (=> b!1352962 (= e!768977 (not true))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1352962 (arrayNoDuplicates!0 (array!92162 (store (arr!44524 a!3742) i!1404 l!3587) (size!45075 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!597673 () Unit!44336)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92161 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31745) Unit!44336)

(assert (=> b!1352962 (= lt!597673 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352963 () Bool)

(declare-fun res!898313 () Bool)

(assert (=> b!1352963 (=> (not res!898313) (not e!768979))))

(assert (=> b!1352963 (= res!898313 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31742))))

(declare-fun b!1352964 () Bool)

(declare-fun res!898314 () Bool)

(assert (=> b!1352964 (=> (not res!898314) (not e!768979))))

(assert (=> b!1352964 (= res!898314 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45075 a!3742))))))

(declare-fun b!1352965 () Bool)

(declare-fun res!898317 () Bool)

(assert (=> b!1352965 (=> (not res!898317) (not e!768979))))

(declare-fun noDuplicate!2189 (List!31745) Bool)

(assert (=> b!1352965 (= res!898317 (noDuplicate!2189 acc!759))))

(declare-fun b!1352966 () Bool)

(assert (=> b!1352966 (= e!768979 e!768977)))

(declare-fun res!898323 () Bool)

(assert (=> b!1352966 (=> (not res!898323) (not e!768977))))

(assert (=> b!1352966 (= res!898323 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!597671 () Unit!44336)

(assert (=> b!1352966 (= lt!597671 e!768976)))

(declare-fun c!126763 () Bool)

(assert (=> b!1352966 (= c!126763 (validKeyInArray!0 (select (arr!44524 a!3742) from!3120)))))

(assert (= (and start!114056 res!898318) b!1352965))

(assert (= (and b!1352965 res!898317) b!1352956))

(assert (= (and b!1352956 res!898319) b!1352954))

(assert (= (and b!1352954 res!898321) b!1352963))

(assert (= (and b!1352963 res!898313) b!1352957))

(assert (= (and b!1352957 res!898316) b!1352964))

(assert (= (and b!1352964 res!898314) b!1352955))

(assert (= (and b!1352955 res!898322) b!1352959))

(assert (= (and b!1352959 res!898320) b!1352966))

(assert (= (and b!1352966 c!126763) b!1352958))

(assert (= (and b!1352966 (not c!126763)) b!1352961))

(assert (= (and b!1352966 res!898323) b!1352960))

(assert (= (and b!1352960 res!898315) b!1352962))

(declare-fun m!1239703 () Bool)

(assert (=> b!1352956 m!1239703))

(declare-fun m!1239705 () Bool)

(assert (=> b!1352954 m!1239705))

(declare-fun m!1239707 () Bool)

(assert (=> b!1352965 m!1239707))

(declare-fun m!1239709 () Bool)

(assert (=> b!1352962 m!1239709))

(declare-fun m!1239711 () Bool)

(assert (=> b!1352962 m!1239711))

(declare-fun m!1239713 () Bool)

(assert (=> b!1352962 m!1239713))

(declare-fun m!1239715 () Bool)

(assert (=> b!1352955 m!1239715))

(declare-fun m!1239717 () Bool)

(assert (=> start!114056 m!1239717))

(declare-fun m!1239719 () Bool)

(assert (=> b!1352958 m!1239719))

(declare-fun m!1239721 () Bool)

(assert (=> b!1352958 m!1239721))

(declare-fun m!1239723 () Bool)

(assert (=> b!1352958 m!1239723))

(declare-fun m!1239725 () Bool)

(assert (=> b!1352958 m!1239725))

(declare-fun m!1239727 () Bool)

(assert (=> b!1352958 m!1239727))

(assert (=> b!1352958 m!1239721))

(assert (=> b!1352958 m!1239723))

(declare-fun m!1239729 () Bool)

(assert (=> b!1352958 m!1239729))

(assert (=> b!1352966 m!1239721))

(assert (=> b!1352966 m!1239721))

(declare-fun m!1239731 () Bool)

(assert (=> b!1352966 m!1239731))

(declare-fun m!1239733 () Bool)

(assert (=> b!1352957 m!1239733))

(declare-fun m!1239735 () Bool)

(assert (=> b!1352963 m!1239735))

(assert (=> b!1352960 m!1239727))

(push 1)

