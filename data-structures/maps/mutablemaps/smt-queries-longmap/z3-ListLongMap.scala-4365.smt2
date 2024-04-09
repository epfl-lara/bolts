; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60236 () Bool)

(assert start!60236)

(declare-fun b!673998 () Bool)

(declare-fun e!384777 () Bool)

(declare-datatypes ((List!12902 0))(
  ( (Nil!12899) (Cons!12898 (h!13943 (_ BitVec 64)) (t!19138 List!12902)) )
))
(declare-fun acc!681 () List!12902)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3445 (List!12902 (_ BitVec 64)) Bool)

(assert (=> b!673998 (= e!384777 (not (contains!3445 acc!681 k0!2843)))))

(declare-fun b!673999 () Bool)

(declare-fun e!384771 () Bool)

(declare-fun e!384775 () Bool)

(assert (=> b!673999 (= e!384771 e!384775)))

(declare-fun res!440663 () Bool)

(assert (=> b!673999 (=> (not res!440663) (not e!384775))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!673999 (= res!440663 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun lt!312522 () List!12902)

(declare-datatypes ((array!39239 0))(
  ( (array!39240 (arr!18808 (Array (_ BitVec 32) (_ BitVec 64))) (size!19172 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39239)

(declare-fun $colon$colon!293 (List!12902 (_ BitVec 64)) List!12902)

(assert (=> b!673999 (= lt!312522 ($colon$colon!293 acc!681 (select (arr!18808 a!3626) from!3004)))))

(declare-fun b!674000 () Bool)

(declare-fun res!440668 () Bool)

(declare-fun e!384772 () Bool)

(assert (=> b!674000 (=> (not res!440668) (not e!384772))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!674000 (= res!440668 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19172 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!674001 () Bool)

(declare-fun res!440676 () Bool)

(assert (=> b!674001 (=> (not res!440676) (not e!384772))))

(assert (=> b!674001 (= res!440676 (not (contains!3445 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674002 () Bool)

(assert (=> b!674002 (= e!384775 (not (bvsle from!3004 (size!19172 a!3626))))))

(declare-fun arrayNoDuplicates!0 (array!39239 (_ BitVec 32) List!12902) Bool)

(assert (=> b!674002 (arrayNoDuplicates!0 (array!39240 (store (arr!18808 a!3626) i!1382 k0!2843) (size!19172 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) lt!312522)))

(declare-datatypes ((Unit!23696 0))(
  ( (Unit!23697) )
))
(declare-fun lt!312524 () Unit!23696)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39239 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12902) Unit!23696)

(assert (=> b!674002 (= lt!312524 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k0!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!312522))))

(declare-fun b!674003 () Bool)

(declare-fun res!440660 () Bool)

(assert (=> b!674003 (=> (not res!440660) (not e!384772))))

(assert (=> b!674003 (= res!440660 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12899))))

(declare-fun b!674004 () Bool)

(declare-fun res!440674 () Bool)

(assert (=> b!674004 (=> (not res!440674) (not e!384772))))

(declare-fun noDuplicate!692 (List!12902) Bool)

(assert (=> b!674004 (= res!440674 (noDuplicate!692 acc!681))))

(declare-fun b!674005 () Bool)

(declare-fun res!440670 () Bool)

(assert (=> b!674005 (=> (not res!440670) (not e!384772))))

(assert (=> b!674005 (= res!440670 (not (contains!3445 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674006 () Bool)

(declare-fun e!384780 () Unit!23696)

(declare-fun Unit!23698 () Unit!23696)

(assert (=> b!674006 (= e!384780 Unit!23698)))

(declare-fun arrayContainsKey!0 (array!39239 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!674006 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun lt!312523 () Unit!23696)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39239 (_ BitVec 64) (_ BitVec 32)) Unit!23696)

(assert (=> b!674006 (= lt!312523 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!674006 false))

(declare-fun b!674007 () Bool)

(declare-fun res!440678 () Bool)

(assert (=> b!674007 (=> (not res!440678) (not e!384775))))

(assert (=> b!674007 (= res!440678 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312522))))

(declare-fun b!674008 () Bool)

(declare-fun e!384774 () Bool)

(declare-fun e!384781 () Bool)

(assert (=> b!674008 (= e!384774 e!384781)))

(declare-fun res!440671 () Bool)

(assert (=> b!674008 (=> (not res!440671) (not e!384781))))

(assert (=> b!674008 (= res!440671 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun res!440665 () Bool)

(assert (=> start!60236 (=> (not res!440665) (not e!384772))))

(assert (=> start!60236 (= res!440665 (and (bvslt (size!19172 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19172 a!3626))))))

(assert (=> start!60236 e!384772))

(assert (=> start!60236 true))

(declare-fun array_inv!14582 (array!39239) Bool)

(assert (=> start!60236 (array_inv!14582 a!3626)))

(declare-fun b!674009 () Bool)

(declare-fun res!440677 () Bool)

(assert (=> b!674009 (=> (not res!440677) (not e!384775))))

(assert (=> b!674009 (= res!440677 (not (contains!3445 lt!312522 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674010 () Bool)

(declare-fun e!384779 () Bool)

(assert (=> b!674010 (= e!384779 e!384777)))

(declare-fun res!440666 () Bool)

(assert (=> b!674010 (=> (not res!440666) (not e!384777))))

(assert (=> b!674010 (= res!440666 (bvsle from!3004 i!1382))))

(declare-fun b!674011 () Bool)

(declare-fun e!384776 () Bool)

(assert (=> b!674011 (= e!384776 (contains!3445 lt!312522 k0!2843))))

(declare-fun b!674012 () Bool)

(declare-fun res!440662 () Bool)

(assert (=> b!674012 (=> (not res!440662) (not e!384772))))

(assert (=> b!674012 (= res!440662 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!674013 () Bool)

(assert (=> b!674013 (= e!384781 (not (contains!3445 lt!312522 k0!2843)))))

(declare-fun b!674014 () Bool)

(declare-fun e!384773 () Bool)

(assert (=> b!674014 (= e!384773 (contains!3445 acc!681 k0!2843))))

(declare-fun b!674015 () Bool)

(declare-fun res!440684 () Bool)

(assert (=> b!674015 (=> (not res!440684) (not e!384772))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!674015 (= res!440684 (validKeyInArray!0 k0!2843))))

(declare-fun b!674016 () Bool)

(declare-fun res!440664 () Bool)

(assert (=> b!674016 (=> (not res!440664) (not e!384775))))

(assert (=> b!674016 (= res!440664 (noDuplicate!692 lt!312522))))

(declare-fun b!674017 () Bool)

(declare-fun res!440661 () Bool)

(assert (=> b!674017 (=> (not res!440661) (not e!384772))))

(assert (=> b!674017 (= res!440661 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19172 a!3626))))))

(declare-fun b!674018 () Bool)

(assert (=> b!674018 (= e!384772 e!384771)))

(declare-fun res!440672 () Bool)

(assert (=> b!674018 (=> (not res!440672) (not e!384771))))

(assert (=> b!674018 (= res!440672 (not (= (select (arr!18808 a!3626) from!3004) k0!2843)))))

(declare-fun lt!312525 () Unit!23696)

(assert (=> b!674018 (= lt!312525 e!384780)))

(declare-fun c!77036 () Bool)

(assert (=> b!674018 (= c!77036 (= (select (arr!18808 a!3626) from!3004) k0!2843))))

(declare-fun b!674019 () Bool)

(declare-fun res!440673 () Bool)

(assert (=> b!674019 (=> (not res!440673) (not e!384772))))

(assert (=> b!674019 (= res!440673 e!384779)))

(declare-fun res!440669 () Bool)

(assert (=> b!674019 (=> res!440669 e!384779)))

(assert (=> b!674019 (= res!440669 e!384773)))

(declare-fun res!440681 () Bool)

(assert (=> b!674019 (=> (not res!440681) (not e!384773))))

(assert (=> b!674019 (= res!440681 (bvsgt from!3004 i!1382))))

(declare-fun b!674020 () Bool)

(declare-fun res!440680 () Bool)

(assert (=> b!674020 (=> (not res!440680) (not e!384772))))

(assert (=> b!674020 (= res!440680 (validKeyInArray!0 (select (arr!18808 a!3626) from!3004)))))

(declare-fun b!674021 () Bool)

(declare-fun res!440675 () Bool)

(assert (=> b!674021 (=> (not res!440675) (not e!384775))))

(assert (=> b!674021 (= res!440675 (not (contains!3445 lt!312522 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674022 () Bool)

(declare-fun res!440667 () Bool)

(assert (=> b!674022 (=> (not res!440667) (not e!384775))))

(assert (=> b!674022 (= res!440667 e!384774)))

(declare-fun res!440683 () Bool)

(assert (=> b!674022 (=> res!440683 e!384774)))

(assert (=> b!674022 (= res!440683 e!384776)))

(declare-fun res!440679 () Bool)

(assert (=> b!674022 (=> (not res!440679) (not e!384776))))

(assert (=> b!674022 (= res!440679 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!674023 () Bool)

(declare-fun res!440682 () Bool)

(assert (=> b!674023 (=> (not res!440682) (not e!384772))))

(assert (=> b!674023 (= res!440682 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!674024 () Bool)

(declare-fun Unit!23699 () Unit!23696)

(assert (=> b!674024 (= e!384780 Unit!23699)))

(assert (= (and start!60236 res!440665) b!674004))

(assert (= (and b!674004 res!440674) b!674001))

(assert (= (and b!674001 res!440676) b!674005))

(assert (= (and b!674005 res!440670) b!674019))

(assert (= (and b!674019 res!440681) b!674014))

(assert (= (and b!674019 (not res!440669)) b!674010))

(assert (= (and b!674010 res!440666) b!673998))

(assert (= (and b!674019 res!440673) b!674003))

(assert (= (and b!674003 res!440660) b!674023))

(assert (= (and b!674023 res!440682) b!674017))

(assert (= (and b!674017 res!440661) b!674015))

(assert (= (and b!674015 res!440684) b!674012))

(assert (= (and b!674012 res!440662) b!674000))

(assert (= (and b!674000 res!440668) b!674020))

(assert (= (and b!674020 res!440680) b!674018))

(assert (= (and b!674018 c!77036) b!674006))

(assert (= (and b!674018 (not c!77036)) b!674024))

(assert (= (and b!674018 res!440672) b!673999))

(assert (= (and b!673999 res!440663) b!674016))

(assert (= (and b!674016 res!440664) b!674021))

(assert (= (and b!674021 res!440675) b!674009))

(assert (= (and b!674009 res!440677) b!674022))

(assert (= (and b!674022 res!440679) b!674011))

(assert (= (and b!674022 (not res!440683)) b!674008))

(assert (= (and b!674008 res!440671) b!674013))

(assert (= (and b!674022 res!440667) b!674007))

(assert (= (and b!674007 res!440678) b!674002))

(declare-fun m!642125 () Bool)

(assert (=> b!674002 m!642125))

(declare-fun m!642127 () Bool)

(assert (=> b!674002 m!642127))

(declare-fun m!642129 () Bool)

(assert (=> b!674002 m!642129))

(declare-fun m!642131 () Bool)

(assert (=> b!674014 m!642131))

(declare-fun m!642133 () Bool)

(assert (=> b!673999 m!642133))

(assert (=> b!673999 m!642133))

(declare-fun m!642135 () Bool)

(assert (=> b!673999 m!642135))

(declare-fun m!642137 () Bool)

(assert (=> b!674013 m!642137))

(declare-fun m!642139 () Bool)

(assert (=> b!674003 m!642139))

(declare-fun m!642141 () Bool)

(assert (=> b!674005 m!642141))

(declare-fun m!642143 () Bool)

(assert (=> b!674004 m!642143))

(declare-fun m!642145 () Bool)

(assert (=> b!674006 m!642145))

(declare-fun m!642147 () Bool)

(assert (=> b!674006 m!642147))

(declare-fun m!642149 () Bool)

(assert (=> start!60236 m!642149))

(assert (=> b!674011 m!642137))

(assert (=> b!673998 m!642131))

(declare-fun m!642151 () Bool)

(assert (=> b!674007 m!642151))

(declare-fun m!642153 () Bool)

(assert (=> b!674023 m!642153))

(declare-fun m!642155 () Bool)

(assert (=> b!674021 m!642155))

(assert (=> b!674020 m!642133))

(assert (=> b!674020 m!642133))

(declare-fun m!642157 () Bool)

(assert (=> b!674020 m!642157))

(declare-fun m!642159 () Bool)

(assert (=> b!674016 m!642159))

(declare-fun m!642161 () Bool)

(assert (=> b!674001 m!642161))

(declare-fun m!642163 () Bool)

(assert (=> b!674012 m!642163))

(assert (=> b!674018 m!642133))

(declare-fun m!642165 () Bool)

(assert (=> b!674009 m!642165))

(declare-fun m!642167 () Bool)

(assert (=> b!674015 m!642167))

(check-sat (not b!674005) (not b!673998) (not b!674015) (not b!674014) (not b!674006) (not b!674004) (not b!674020) (not b!674023) (not b!674021) (not b!674013) (not b!674012) (not b!674011) (not b!674002) (not b!673999) (not b!674007) (not b!674009) (not start!60236) (not b!674003) (not b!674001) (not b!674016))
(check-sat)
