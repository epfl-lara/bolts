; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61016 () Bool)

(assert start!61016)

(declare-fun b!684207 () Bool)

(declare-fun e!389651 () Bool)

(declare-fun e!389646 () Bool)

(assert (=> b!684207 (= e!389651 (not e!389646))))

(declare-fun res!449956 () Bool)

(assert (=> b!684207 (=> res!449956 e!389646)))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!684207 (= res!449956 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-datatypes ((List!13061 0))(
  ( (Nil!13058) (Cons!13057 (h!14102 (_ BitVec 64)) (t!19315 List!13061)) )
))
(declare-fun lt!314258 () List!13061)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun acc!681 () List!13061)

(declare-fun -!154 (List!13061 (_ BitVec 64)) List!13061)

(assert (=> b!684207 (= (-!154 lt!314258 k0!2843) acc!681)))

(declare-fun $colon$colon!353 (List!13061 (_ BitVec 64)) List!13061)

(assert (=> b!684207 (= lt!314258 ($colon$colon!353 acc!681 k0!2843))))

(declare-datatypes ((Unit!24072 0))(
  ( (Unit!24073) )
))
(declare-fun lt!314257 () Unit!24072)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13061) Unit!24072)

(assert (=> b!684207 (= lt!314257 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(declare-fun subseq!189 (List!13061 List!13061) Bool)

(assert (=> b!684207 (subseq!189 acc!681 acc!681)))

(declare-fun lt!314265 () Unit!24072)

(declare-fun lemmaListSubSeqRefl!0 (List!13061) Unit!24072)

(assert (=> b!684207 (= lt!314265 (lemmaListSubSeqRefl!0 acc!681))))

(declare-datatypes ((array!39581 0))(
  ( (array!39582 (arr!18967 (Array (_ BitVec 32) (_ BitVec 64))) (size!19333 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39581)

(declare-fun arrayNoDuplicates!0 (array!39581 (_ BitVec 32) List!13061) Bool)

(assert (=> b!684207 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314264 () Unit!24072)

(declare-fun e!389652 () Unit!24072)

(assert (=> b!684207 (= lt!314264 e!389652)))

(declare-fun c!77498 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!684207 (= c!77498 (validKeyInArray!0 (select (arr!18967 a!3626) from!3004)))))

(declare-fun lt!314263 () Unit!24072)

(declare-fun e!389648 () Unit!24072)

(assert (=> b!684207 (= lt!314263 e!389648)))

(declare-fun c!77497 () Bool)

(declare-fun lt!314260 () Bool)

(assert (=> b!684207 (= c!77497 lt!314260)))

(declare-fun arrayContainsKey!0 (array!39581 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!684207 (= lt!314260 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!684207 (arrayContainsKey!0 (array!39582 (store (arr!18967 a!3626) i!1382 k0!2843) (size!19333 a!3626)) k0!2843 from!3004)))

(declare-fun b!684208 () Bool)

(declare-fun res!449963 () Bool)

(assert (=> b!684208 (=> (not res!449963) (not e!389651))))

(declare-fun contains!3604 (List!13061 (_ BitVec 64)) Bool)

(assert (=> b!684208 (= res!449963 (not (contains!3604 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!684209 () Bool)

(declare-fun Unit!24074 () Unit!24072)

(assert (=> b!684209 (= e!389648 Unit!24074)))

(declare-fun b!684210 () Bool)

(declare-fun res!449954 () Bool)

(assert (=> b!684210 (=> (not res!449954) (not e!389651))))

(assert (=> b!684210 (= res!449954 (not (contains!3604 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!684211 () Bool)

(declare-fun Unit!24075 () Unit!24072)

(assert (=> b!684211 (= e!389648 Unit!24075)))

(declare-fun lt!314262 () Unit!24072)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39581 (_ BitVec 64) (_ BitVec 32)) Unit!24072)

(assert (=> b!684211 (= lt!314262 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!684211 false))

(declare-fun b!684212 () Bool)

(declare-fun res!449952 () Bool)

(assert (=> b!684212 (=> res!449952 e!389646)))

(assert (=> b!684212 (= res!449952 lt!314260)))

(declare-fun b!684213 () Bool)

(declare-fun res!449955 () Bool)

(assert (=> b!684213 (=> (not res!449955) (not e!389651))))

(assert (=> b!684213 (= res!449955 (validKeyInArray!0 k0!2843))))

(declare-fun b!684214 () Bool)

(declare-fun Unit!24076 () Unit!24072)

(assert (=> b!684214 (= e!389652 Unit!24076)))

(declare-fun b!684215 () Bool)

(declare-fun res!449961 () Bool)

(assert (=> b!684215 (=> res!449961 e!389646)))

(declare-fun noDuplicate!851 (List!13061) Bool)

(assert (=> b!684215 (= res!449961 (not (noDuplicate!851 lt!314258)))))

(declare-fun b!684216 () Bool)

(declare-fun res!449957 () Bool)

(assert (=> b!684216 (=> (not res!449957) (not e!389651))))

(assert (=> b!684216 (= res!449957 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13058))))

(declare-fun b!684217 () Bool)

(declare-fun res!449947 () Bool)

(assert (=> b!684217 (=> (not res!449947) (not e!389651))))

(assert (=> b!684217 (= res!449947 (noDuplicate!851 acc!681))))

(declare-fun b!684218 () Bool)

(declare-fun res!449959 () Bool)

(assert (=> b!684218 (=> (not res!449959) (not e!389651))))

(declare-fun e!389647 () Bool)

(assert (=> b!684218 (= res!449959 e!389647)))

(declare-fun res!449962 () Bool)

(assert (=> b!684218 (=> res!449962 e!389647)))

(declare-fun e!389649 () Bool)

(assert (=> b!684218 (= res!449962 e!389649)))

(declare-fun res!449953 () Bool)

(assert (=> b!684218 (=> (not res!449953) (not e!389649))))

(assert (=> b!684218 (= res!449953 (bvsgt from!3004 i!1382))))

(declare-fun b!684219 () Bool)

(declare-fun lt!314256 () Unit!24072)

(assert (=> b!684219 (= e!389652 lt!314256)))

(declare-fun lt!314261 () Unit!24072)

(assert (=> b!684219 (= lt!314261 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!684219 (subseq!189 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39581 List!13061 List!13061 (_ BitVec 32)) Unit!24072)

(assert (=> b!684219 (= lt!314256 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!353 acc!681 (select (arr!18967 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!684219 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!684220 () Bool)

(declare-fun res!449951 () Bool)

(assert (=> b!684220 (=> (not res!449951) (not e!389651))))

(assert (=> b!684220 (= res!449951 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19333 a!3626)) (= from!3004 i!1382)))))

(declare-fun res!449950 () Bool)

(assert (=> start!61016 (=> (not res!449950) (not e!389651))))

(assert (=> start!61016 (= res!449950 (and (bvslt (size!19333 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19333 a!3626))))))

(assert (=> start!61016 e!389651))

(assert (=> start!61016 true))

(declare-fun array_inv!14741 (array!39581) Bool)

(assert (=> start!61016 (array_inv!14741 a!3626)))

(declare-fun b!684221 () Bool)

(declare-fun e!389653 () Bool)

(assert (=> b!684221 (= e!389653 (not (contains!3604 acc!681 k0!2843)))))

(declare-fun b!684222 () Bool)

(assert (=> b!684222 (= e!389646 true)))

(declare-fun lt!314259 () Bool)

(assert (=> b!684222 (= lt!314259 (contains!3604 acc!681 k0!2843))))

(declare-fun b!684223 () Bool)

(assert (=> b!684223 (= e!389649 (contains!3604 acc!681 k0!2843))))

(declare-fun b!684224 () Bool)

(declare-fun res!449949 () Bool)

(assert (=> b!684224 (=> (not res!449949) (not e!389651))))

(assert (=> b!684224 (= res!449949 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!684225 () Bool)

(declare-fun res!449948 () Bool)

(assert (=> b!684225 (=> (not res!449948) (not e!389651))))

(assert (=> b!684225 (= res!449948 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19333 a!3626))))))

(declare-fun b!684226 () Bool)

(declare-fun res!449958 () Bool)

(assert (=> b!684226 (=> (not res!449958) (not e!389651))))

(assert (=> b!684226 (= res!449958 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!684227 () Bool)

(assert (=> b!684227 (= e!389647 e!389653)))

(declare-fun res!449960 () Bool)

(assert (=> b!684227 (=> (not res!449960) (not e!389653))))

(assert (=> b!684227 (= res!449960 (bvsle from!3004 i!1382))))

(assert (= (and start!61016 res!449950) b!684217))

(assert (= (and b!684217 res!449947) b!684210))

(assert (= (and b!684210 res!449954) b!684208))

(assert (= (and b!684208 res!449963) b!684218))

(assert (= (and b!684218 res!449953) b!684223))

(assert (= (and b!684218 (not res!449962)) b!684227))

(assert (= (and b!684227 res!449960) b!684221))

(assert (= (and b!684218 res!449959) b!684216))

(assert (= (and b!684216 res!449957) b!684224))

(assert (= (and b!684224 res!449949) b!684225))

(assert (= (and b!684225 res!449948) b!684213))

(assert (= (and b!684213 res!449955) b!684226))

(assert (= (and b!684226 res!449958) b!684220))

(assert (= (and b!684220 res!449951) b!684207))

(assert (= (and b!684207 c!77497) b!684211))

(assert (= (and b!684207 (not c!77497)) b!684209))

(assert (= (and b!684207 c!77498) b!684219))

(assert (= (and b!684207 (not c!77498)) b!684214))

(assert (= (and b!684207 (not res!449956)) b!684215))

(assert (= (and b!684215 (not res!449961)) b!684212))

(assert (= (and b!684212 (not res!449952)) b!684222))

(declare-fun m!648639 () Bool)

(assert (=> b!684207 m!648639))

(declare-fun m!648641 () Bool)

(assert (=> b!684207 m!648641))

(declare-fun m!648643 () Bool)

(assert (=> b!684207 m!648643))

(declare-fun m!648645 () Bool)

(assert (=> b!684207 m!648645))

(declare-fun m!648647 () Bool)

(assert (=> b!684207 m!648647))

(declare-fun m!648649 () Bool)

(assert (=> b!684207 m!648649))

(declare-fun m!648651 () Bool)

(assert (=> b!684207 m!648651))

(declare-fun m!648653 () Bool)

(assert (=> b!684207 m!648653))

(assert (=> b!684207 m!648641))

(declare-fun m!648655 () Bool)

(assert (=> b!684207 m!648655))

(declare-fun m!648657 () Bool)

(assert (=> b!684207 m!648657))

(declare-fun m!648659 () Bool)

(assert (=> b!684207 m!648659))

(declare-fun m!648661 () Bool)

(assert (=> b!684222 m!648661))

(declare-fun m!648663 () Bool)

(assert (=> b!684224 m!648663))

(declare-fun m!648665 () Bool)

(assert (=> b!684215 m!648665))

(declare-fun m!648667 () Bool)

(assert (=> b!684226 m!648667))

(assert (=> b!684221 m!648661))

(declare-fun m!648669 () Bool)

(assert (=> b!684217 m!648669))

(assert (=> b!684223 m!648661))

(declare-fun m!648671 () Bool)

(assert (=> b!684213 m!648671))

(assert (=> b!684219 m!648639))

(assert (=> b!684219 m!648641))

(declare-fun m!648673 () Bool)

(assert (=> b!684219 m!648673))

(declare-fun m!648675 () Bool)

(assert (=> b!684219 m!648675))

(assert (=> b!684219 m!648641))

(assert (=> b!684219 m!648673))

(assert (=> b!684219 m!648649))

(assert (=> b!684219 m!648659))

(declare-fun m!648677 () Bool)

(assert (=> b!684208 m!648677))

(declare-fun m!648679 () Bool)

(assert (=> b!684211 m!648679))

(declare-fun m!648681 () Bool)

(assert (=> b!684210 m!648681))

(declare-fun m!648683 () Bool)

(assert (=> b!684216 m!648683))

(declare-fun m!648685 () Bool)

(assert (=> start!61016 m!648685))

(check-sat (not b!684216) (not b!684217) (not start!61016) (not b!684221) (not b!684222) (not b!684210) (not b!684219) (not b!684211) (not b!684226) (not b!684215) (not b!684223) (not b!684207) (not b!684208) (not b!684224) (not b!684213))
(check-sat)
