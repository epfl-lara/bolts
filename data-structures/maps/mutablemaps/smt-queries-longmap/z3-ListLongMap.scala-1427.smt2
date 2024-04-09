; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27600 () Bool)

(assert start!27600)

(declare-fun b!285063 () Bool)

(declare-fun res!147614 () Bool)

(declare-fun e!180709 () Bool)

(assert (=> b!285063 (=> (not res!147614) (not e!180709))))

(declare-datatypes ((array!14239 0))(
  ( (array!14240 (arr!6758 (Array (_ BitVec 32) (_ BitVec 64))) (size!7110 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14239)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!285063 (= res!147614 (and (= (size!7110 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7110 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7110 a!3325))))))

(declare-fun b!285064 () Bool)

(declare-fun res!147617 () Bool)

(assert (=> b!285064 (=> (not res!147617) (not e!180709))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!285064 (= res!147617 (validKeyInArray!0 k0!2581))))

(declare-fun b!285065 () Bool)

(declare-fun res!147613 () Bool)

(assert (=> b!285065 (=> (not res!147613) (not e!180709))))

(declare-datatypes ((List!4587 0))(
  ( (Nil!4584) (Cons!4583 (h!5256 (_ BitVec 64)) (t!9677 List!4587)) )
))
(declare-fun arrayNoDuplicates!0 (array!14239 (_ BitVec 32) List!4587) Bool)

(assert (=> b!285065 (= res!147613 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4584))))

(declare-fun res!147618 () Bool)

(assert (=> start!27600 (=> (not res!147618) (not e!180709))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27600 (= res!147618 (validMask!0 mask!3868))))

(assert (=> start!27600 e!180709))

(declare-fun array_inv!4712 (array!14239) Bool)

(assert (=> start!27600 (array_inv!4712 a!3325)))

(assert (=> start!27600 true))

(declare-fun b!285066 () Bool)

(declare-fun res!147615 () Bool)

(declare-fun e!180710 () Bool)

(assert (=> b!285066 (=> (not res!147615) (not e!180710))))

(assert (=> b!285066 (= res!147615 (not (validKeyInArray!0 (select (arr!6758 a!3325) startIndex!26))))))

(declare-fun b!285067 () Bool)

(declare-fun e!180711 () Bool)

(assert (=> b!285067 (= e!180709 e!180711)))

(declare-fun res!147612 () Bool)

(assert (=> b!285067 (=> (not res!147612) (not e!180711))))

(declare-datatypes ((SeekEntryResult!1927 0))(
  ( (MissingZero!1927 (index!9878 (_ BitVec 32))) (Found!1927 (index!9879 (_ BitVec 32))) (Intermediate!1927 (undefined!2739 Bool) (index!9880 (_ BitVec 32)) (x!28046 (_ BitVec 32))) (Undefined!1927) (MissingVacant!1927 (index!9881 (_ BitVec 32))) )
))
(declare-fun lt!140717 () SeekEntryResult!1927)

(assert (=> b!285067 (= res!147612 (or (= lt!140717 (MissingZero!1927 i!1267)) (= lt!140717 (MissingVacant!1927 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14239 (_ BitVec 32)) SeekEntryResult!1927)

(assert (=> b!285067 (= lt!140717 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!285068 () Bool)

(assert (=> b!285068 (= e!180711 e!180710)))

(declare-fun res!147616 () Bool)

(assert (=> b!285068 (=> (not res!147616) (not e!180710))))

(assert (=> b!285068 (= res!147616 (not (= startIndex!26 i!1267)))))

(declare-fun lt!140716 () array!14239)

(assert (=> b!285068 (= lt!140716 (array!14240 (store (arr!6758 a!3325) i!1267 k0!2581) (size!7110 a!3325)))))

(declare-fun b!285069 () Bool)

(declare-fun res!147609 () Bool)

(assert (=> b!285069 (=> (not res!147609) (not e!180711))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14239 (_ BitVec 32)) Bool)

(assert (=> b!285069 (= res!147609 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!285070 () Bool)

(declare-fun res!147611 () Bool)

(assert (=> b!285070 (=> (not res!147611) (not e!180710))))

(assert (=> b!285070 (= res!147611 (and (bvslt startIndex!26 (bvsub (size!7110 a!3325) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(declare-fun b!285071 () Bool)

(assert (=> b!285071 (= e!180710 (not (arrayForallSeekEntryOrOpenFound!0 startIndex!26 lt!140716 mask!3868)))))

(assert (=> b!285071 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!140716 mask!3868)))

(declare-datatypes ((Unit!9039 0))(
  ( (Unit!9040) )
))
(declare-fun lt!140715 () Unit!9039)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!14239 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9039)

(assert (=> b!285071 (= lt!140715 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!285072 () Bool)

(declare-fun res!147610 () Bool)

(assert (=> b!285072 (=> (not res!147610) (not e!180709))))

(declare-fun arrayContainsKey!0 (array!14239 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!285072 (= res!147610 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!27600 res!147618) b!285063))

(assert (= (and b!285063 res!147614) b!285064))

(assert (= (and b!285064 res!147617) b!285065))

(assert (= (and b!285065 res!147613) b!285072))

(assert (= (and b!285072 res!147610) b!285067))

(assert (= (and b!285067 res!147612) b!285069))

(assert (= (and b!285069 res!147609) b!285068))

(assert (= (and b!285068 res!147616) b!285066))

(assert (= (and b!285066 res!147615) b!285070))

(assert (= (and b!285070 res!147611) b!285071))

(declare-fun m!299961 () Bool)

(assert (=> b!285067 m!299961))

(declare-fun m!299963 () Bool)

(assert (=> b!285065 m!299963))

(declare-fun m!299965 () Bool)

(assert (=> b!285071 m!299965))

(declare-fun m!299967 () Bool)

(assert (=> b!285071 m!299967))

(declare-fun m!299969 () Bool)

(assert (=> b!285071 m!299969))

(declare-fun m!299971 () Bool)

(assert (=> b!285068 m!299971))

(declare-fun m!299973 () Bool)

(assert (=> start!27600 m!299973))

(declare-fun m!299975 () Bool)

(assert (=> start!27600 m!299975))

(declare-fun m!299977 () Bool)

(assert (=> b!285066 m!299977))

(assert (=> b!285066 m!299977))

(declare-fun m!299979 () Bool)

(assert (=> b!285066 m!299979))

(declare-fun m!299981 () Bool)

(assert (=> b!285072 m!299981))

(declare-fun m!299983 () Bool)

(assert (=> b!285064 m!299983))

(declare-fun m!299985 () Bool)

(assert (=> b!285069 m!299985))

(check-sat (not b!285071) (not b!285066) (not b!285065) (not b!285072) (not b!285069) (not b!285067) (not start!27600) (not b!285064))
(check-sat)
(get-model)

(declare-fun b!285113 () Bool)

(declare-fun e!180735 () Bool)

(declare-fun call!25535 () Bool)

(assert (=> b!285113 (= e!180735 call!25535)))

(declare-fun b!285114 () Bool)

(declare-fun e!180733 () Bool)

(declare-fun e!180734 () Bool)

(assert (=> b!285114 (= e!180733 e!180734)))

(declare-fun res!147656 () Bool)

(assert (=> b!285114 (=> (not res!147656) (not e!180734))))

(declare-fun e!180736 () Bool)

(assert (=> b!285114 (= res!147656 (not e!180736))))

(declare-fun res!147655 () Bool)

(assert (=> b!285114 (=> (not res!147655) (not e!180736))))

(assert (=> b!285114 (= res!147655 (validKeyInArray!0 (select (arr!6758 a!3325) #b00000000000000000000000000000000)))))

(declare-fun bm!25532 () Bool)

(declare-fun c!46283 () Bool)

(assert (=> bm!25532 (= call!25535 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!46283 (Cons!4583 (select (arr!6758 a!3325) #b00000000000000000000000000000000) Nil!4584) Nil!4584)))))

(declare-fun b!285115 () Bool)

(assert (=> b!285115 (= e!180734 e!180735)))

(assert (=> b!285115 (= c!46283 (validKeyInArray!0 (select (arr!6758 a!3325) #b00000000000000000000000000000000)))))

(declare-fun d!65605 () Bool)

(declare-fun res!147657 () Bool)

(assert (=> d!65605 (=> res!147657 e!180733)))

(assert (=> d!65605 (= res!147657 (bvsge #b00000000000000000000000000000000 (size!7110 a!3325)))))

(assert (=> d!65605 (= (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4584) e!180733)))

(declare-fun b!285116 () Bool)

(assert (=> b!285116 (= e!180735 call!25535)))

(declare-fun b!285117 () Bool)

(declare-fun contains!1995 (List!4587 (_ BitVec 64)) Bool)

(assert (=> b!285117 (= e!180736 (contains!1995 Nil!4584 (select (arr!6758 a!3325) #b00000000000000000000000000000000)))))

(assert (= (and d!65605 (not res!147657)) b!285114))

(assert (= (and b!285114 res!147655) b!285117))

(assert (= (and b!285114 res!147656) b!285115))

(assert (= (and b!285115 c!46283) b!285113))

(assert (= (and b!285115 (not c!46283)) b!285116))

(assert (= (or b!285113 b!285116) bm!25532))

(declare-fun m!300013 () Bool)

(assert (=> b!285114 m!300013))

(assert (=> b!285114 m!300013))

(declare-fun m!300015 () Bool)

(assert (=> b!285114 m!300015))

(assert (=> bm!25532 m!300013))

(declare-fun m!300017 () Bool)

(assert (=> bm!25532 m!300017))

(assert (=> b!285115 m!300013))

(assert (=> b!285115 m!300013))

(assert (=> b!285115 m!300015))

(assert (=> b!285117 m!300013))

(assert (=> b!285117 m!300013))

(declare-fun m!300019 () Bool)

(assert (=> b!285117 m!300019))

(assert (=> b!285065 d!65605))

(declare-fun d!65607 () Bool)

(assert (=> d!65607 (= (validKeyInArray!0 k0!2581) (and (not (= k0!2581 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2581 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!285064 d!65607))

(declare-fun b!285132 () Bool)

(declare-fun e!180751 () Bool)

(declare-fun call!25538 () Bool)

(assert (=> b!285132 (= e!180751 call!25538)))

(declare-fun b!285133 () Bool)

(declare-fun e!180749 () Bool)

(assert (=> b!285133 (= e!180749 e!180751)))

(declare-fun lt!140734 () (_ BitVec 64))

(assert (=> b!285133 (= lt!140734 (select (arr!6758 a!3325) #b00000000000000000000000000000000))))

(declare-fun lt!140735 () Unit!9039)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14239 (_ BitVec 64) (_ BitVec 32)) Unit!9039)

(assert (=> b!285133 (= lt!140735 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!140734 #b00000000000000000000000000000000))))

(assert (=> b!285133 (arrayContainsKey!0 a!3325 lt!140734 #b00000000000000000000000000000000)))

(declare-fun lt!140733 () Unit!9039)

(assert (=> b!285133 (= lt!140733 lt!140735)))

(declare-fun res!147669 () Bool)

(assert (=> b!285133 (= res!147669 (= (seekEntryOrOpen!0 (select (arr!6758 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868) (Found!1927 #b00000000000000000000000000000000)))))

(assert (=> b!285133 (=> (not res!147669) (not e!180751))))

(declare-fun bm!25535 () Bool)

(assert (=> bm!25535 (= call!25538 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun b!285134 () Bool)

(assert (=> b!285134 (= e!180749 call!25538)))

(declare-fun b!285135 () Bool)

(declare-fun e!180750 () Bool)

(assert (=> b!285135 (= e!180750 e!180749)))

(declare-fun c!46286 () Bool)

(assert (=> b!285135 (= c!46286 (validKeyInArray!0 (select (arr!6758 a!3325) #b00000000000000000000000000000000)))))

(declare-fun d!65609 () Bool)

(declare-fun res!147668 () Bool)

(assert (=> d!65609 (=> res!147668 e!180750)))

(assert (=> d!65609 (= res!147668 (bvsge #b00000000000000000000000000000000 (size!7110 a!3325)))))

(assert (=> d!65609 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868) e!180750)))

(assert (= (and d!65609 (not res!147668)) b!285135))

(assert (= (and b!285135 c!46286) b!285133))

(assert (= (and b!285135 (not c!46286)) b!285134))

(assert (= (and b!285133 res!147669) b!285132))

(assert (= (or b!285132 b!285134) bm!25535))

(assert (=> b!285133 m!300013))

(declare-fun m!300025 () Bool)

(assert (=> b!285133 m!300025))

(declare-fun m!300027 () Bool)

(assert (=> b!285133 m!300027))

(assert (=> b!285133 m!300013))

(declare-fun m!300029 () Bool)

(assert (=> b!285133 m!300029))

(declare-fun m!300031 () Bool)

(assert (=> bm!25535 m!300031))

(assert (=> b!285135 m!300013))

(assert (=> b!285135 m!300013))

(assert (=> b!285135 m!300015))

(assert (=> b!285069 d!65609))

(declare-fun d!65615 () Bool)

(declare-fun res!147682 () Bool)

(declare-fun e!180766 () Bool)

(assert (=> d!65615 (=> res!147682 e!180766)))

(assert (=> d!65615 (= res!147682 (= (select (arr!6758 a!3325) #b00000000000000000000000000000000) k0!2581))))

(assert (=> d!65615 (= (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000) e!180766)))

(declare-fun b!285152 () Bool)

(declare-fun e!180767 () Bool)

(assert (=> b!285152 (= e!180766 e!180767)))

(declare-fun res!147683 () Bool)

(assert (=> b!285152 (=> (not res!147683) (not e!180767))))

(assert (=> b!285152 (= res!147683 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7110 a!3325)))))

(declare-fun b!285153 () Bool)

(assert (=> b!285153 (= e!180767 (arrayContainsKey!0 a!3325 k0!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65615 (not res!147682)) b!285152))

(assert (= (and b!285152 res!147683) b!285153))

(assert (=> d!65615 m!300013))

(declare-fun m!300033 () Bool)

(assert (=> b!285153 m!300033))

(assert (=> b!285072 d!65615))

(declare-fun b!285225 () Bool)

(declare-fun e!180821 () SeekEntryResult!1927)

(declare-fun lt!140771 () SeekEntryResult!1927)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14239 (_ BitVec 32)) SeekEntryResult!1927)

(assert (=> b!285225 (= e!180821 (seekKeyOrZeroReturnVacant!0 (x!28046 lt!140771) (index!9880 lt!140771) (index!9880 lt!140771) k0!2581 a!3325 mask!3868))))

(declare-fun b!285226 () Bool)

(declare-fun e!180823 () SeekEntryResult!1927)

(declare-fun e!180822 () SeekEntryResult!1927)

(assert (=> b!285226 (= e!180823 e!180822)))

(declare-fun lt!140769 () (_ BitVec 64))

(assert (=> b!285226 (= lt!140769 (select (arr!6758 a!3325) (index!9880 lt!140771)))))

(declare-fun c!46309 () Bool)

(assert (=> b!285226 (= c!46309 (= lt!140769 k0!2581))))

(declare-fun d!65619 () Bool)

(declare-fun lt!140770 () SeekEntryResult!1927)

(get-info :version)

(assert (=> d!65619 (and (or ((_ is Undefined!1927) lt!140770) (not ((_ is Found!1927) lt!140770)) (and (bvsge (index!9879 lt!140770) #b00000000000000000000000000000000) (bvslt (index!9879 lt!140770) (size!7110 a!3325)))) (or ((_ is Undefined!1927) lt!140770) ((_ is Found!1927) lt!140770) (not ((_ is MissingZero!1927) lt!140770)) (and (bvsge (index!9878 lt!140770) #b00000000000000000000000000000000) (bvslt (index!9878 lt!140770) (size!7110 a!3325)))) (or ((_ is Undefined!1927) lt!140770) ((_ is Found!1927) lt!140770) ((_ is MissingZero!1927) lt!140770) (not ((_ is MissingVacant!1927) lt!140770)) (and (bvsge (index!9881 lt!140770) #b00000000000000000000000000000000) (bvslt (index!9881 lt!140770) (size!7110 a!3325)))) (or ((_ is Undefined!1927) lt!140770) (ite ((_ is Found!1927) lt!140770) (= (select (arr!6758 a!3325) (index!9879 lt!140770)) k0!2581) (ite ((_ is MissingZero!1927) lt!140770) (= (select (arr!6758 a!3325) (index!9878 lt!140770)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1927) lt!140770) (= (select (arr!6758 a!3325) (index!9881 lt!140770)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65619 (= lt!140770 e!180823)))

(declare-fun c!46308 () Bool)

(assert (=> d!65619 (= c!46308 (and ((_ is Intermediate!1927) lt!140771) (undefined!2739 lt!140771)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14239 (_ BitVec 32)) SeekEntryResult!1927)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!65619 (= lt!140771 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2581 mask!3868) k0!2581 a!3325 mask!3868))))

(assert (=> d!65619 (validMask!0 mask!3868)))

(assert (=> d!65619 (= (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868) lt!140770)))

(declare-fun b!285227 () Bool)

(declare-fun c!46307 () Bool)

(assert (=> b!285227 (= c!46307 (= lt!140769 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!285227 (= e!180822 e!180821)))

(declare-fun b!285228 () Bool)

(assert (=> b!285228 (= e!180822 (Found!1927 (index!9880 lt!140771)))))

(declare-fun b!285229 () Bool)

(assert (=> b!285229 (= e!180823 Undefined!1927)))

(declare-fun b!285230 () Bool)

(assert (=> b!285230 (= e!180821 (MissingZero!1927 (index!9880 lt!140771)))))

(assert (= (and d!65619 c!46308) b!285229))

(assert (= (and d!65619 (not c!46308)) b!285226))

(assert (= (and b!285226 c!46309) b!285228))

(assert (= (and b!285226 (not c!46309)) b!285227))

(assert (= (and b!285227 c!46307) b!285230))

(assert (= (and b!285227 (not c!46307)) b!285225))

(declare-fun m!300103 () Bool)

(assert (=> b!285225 m!300103))

(declare-fun m!300105 () Bool)

(assert (=> b!285226 m!300105))

(declare-fun m!300107 () Bool)

(assert (=> d!65619 m!300107))

(declare-fun m!300109 () Bool)

(assert (=> d!65619 m!300109))

(declare-fun m!300111 () Bool)

(assert (=> d!65619 m!300111))

(assert (=> d!65619 m!299973))

(declare-fun m!300113 () Bool)

(assert (=> d!65619 m!300113))

(declare-fun m!300115 () Bool)

(assert (=> d!65619 m!300115))

(assert (=> d!65619 m!300113))

(assert (=> b!285067 d!65619))

(declare-fun d!65641 () Bool)

(assert (=> d!65641 (= (validKeyInArray!0 (select (arr!6758 a!3325) startIndex!26)) (and (not (= (select (arr!6758 a!3325) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6758 a!3325) startIndex!26) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!285066 d!65641))

(declare-fun d!65643 () Bool)

(assert (=> d!65643 (= (validMask!0 mask!3868) (and (or (= mask!3868 #b00000000000000000000000000000111) (= mask!3868 #b00000000000000000000000000001111) (= mask!3868 #b00000000000000000000000000011111) (= mask!3868 #b00000000000000000000000000111111) (= mask!3868 #b00000000000000000000000001111111) (= mask!3868 #b00000000000000000000000011111111) (= mask!3868 #b00000000000000000000000111111111) (= mask!3868 #b00000000000000000000001111111111) (= mask!3868 #b00000000000000000000011111111111) (= mask!3868 #b00000000000000000000111111111111) (= mask!3868 #b00000000000000000001111111111111) (= mask!3868 #b00000000000000000011111111111111) (= mask!3868 #b00000000000000000111111111111111) (= mask!3868 #b00000000000000001111111111111111) (= mask!3868 #b00000000000000011111111111111111) (= mask!3868 #b00000000000000111111111111111111) (= mask!3868 #b00000000000001111111111111111111) (= mask!3868 #b00000000000011111111111111111111) (= mask!3868 #b00000000000111111111111111111111) (= mask!3868 #b00000000001111111111111111111111) (= mask!3868 #b00000000011111111111111111111111) (= mask!3868 #b00000000111111111111111111111111) (= mask!3868 #b00000001111111111111111111111111) (= mask!3868 #b00000011111111111111111111111111) (= mask!3868 #b00000111111111111111111111111111) (= mask!3868 #b00001111111111111111111111111111) (= mask!3868 #b00011111111111111111111111111111) (= mask!3868 #b00111111111111111111111111111111)) (bvsle mask!3868 #b00111111111111111111111111111111)))))

(assert (=> start!27600 d!65643))

(declare-fun d!65651 () Bool)

(assert (=> d!65651 (= (array_inv!4712 a!3325) (bvsge (size!7110 a!3325) #b00000000000000000000000000000000))))

(assert (=> start!27600 d!65651))

(declare-fun b!285234 () Bool)

(declare-fun e!180829 () Bool)

(declare-fun call!25553 () Bool)

(assert (=> b!285234 (= e!180829 call!25553)))

(declare-fun b!285235 () Bool)

(declare-fun e!180827 () Bool)

(assert (=> b!285235 (= e!180827 e!180829)))

(declare-fun lt!140776 () (_ BitVec 64))

(assert (=> b!285235 (= lt!140776 (select (arr!6758 lt!140716) startIndex!26))))

(declare-fun lt!140777 () Unit!9039)

(assert (=> b!285235 (= lt!140777 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!140716 lt!140776 startIndex!26))))

(assert (=> b!285235 (arrayContainsKey!0 lt!140716 lt!140776 #b00000000000000000000000000000000)))

(declare-fun lt!140775 () Unit!9039)

(assert (=> b!285235 (= lt!140775 lt!140777)))

(declare-fun res!147723 () Bool)

(assert (=> b!285235 (= res!147723 (= (seekEntryOrOpen!0 (select (arr!6758 lt!140716) startIndex!26) lt!140716 mask!3868) (Found!1927 startIndex!26)))))

(assert (=> b!285235 (=> (not res!147723) (not e!180829))))

(declare-fun bm!25550 () Bool)

(assert (=> bm!25550 (= call!25553 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001) lt!140716 mask!3868))))

(declare-fun b!285236 () Bool)

(assert (=> b!285236 (= e!180827 call!25553)))

(declare-fun b!285237 () Bool)

(declare-fun e!180828 () Bool)

(assert (=> b!285237 (= e!180828 e!180827)))

(declare-fun c!46310 () Bool)

(assert (=> b!285237 (= c!46310 (validKeyInArray!0 (select (arr!6758 lt!140716) startIndex!26)))))

(declare-fun d!65653 () Bool)

(declare-fun res!147722 () Bool)

(assert (=> d!65653 (=> res!147722 e!180828)))

(assert (=> d!65653 (= res!147722 (bvsge startIndex!26 (size!7110 lt!140716)))))

(assert (=> d!65653 (= (arrayForallSeekEntryOrOpenFound!0 startIndex!26 lt!140716 mask!3868) e!180828)))

(assert (= (and d!65653 (not res!147722)) b!285237))

(assert (= (and b!285237 c!46310) b!285235))

(assert (= (and b!285237 (not c!46310)) b!285236))

(assert (= (and b!285235 res!147723) b!285234))

(assert (= (or b!285234 b!285236) bm!25550))

(declare-fun m!300121 () Bool)

(assert (=> b!285235 m!300121))

(declare-fun m!300123 () Bool)

(assert (=> b!285235 m!300123))

(declare-fun m!300125 () Bool)

(assert (=> b!285235 m!300125))

(assert (=> b!285235 m!300121))

(declare-fun m!300127 () Bool)

(assert (=> b!285235 m!300127))

(declare-fun m!300129 () Bool)

(assert (=> bm!25550 m!300129))

(assert (=> b!285237 m!300121))

(assert (=> b!285237 m!300121))

(declare-fun m!300131 () Bool)

(assert (=> b!285237 m!300131))

(assert (=> b!285071 d!65653))

(declare-fun b!285238 () Bool)

(declare-fun e!180832 () Bool)

(declare-fun call!25554 () Bool)

(assert (=> b!285238 (= e!180832 call!25554)))

(declare-fun b!285239 () Bool)

(declare-fun e!180830 () Bool)

(assert (=> b!285239 (= e!180830 e!180832)))

(declare-fun lt!140779 () (_ BitVec 64))

(assert (=> b!285239 (= lt!140779 (select (arr!6758 lt!140716) (bvadd #b00000000000000000000000000000001 startIndex!26)))))

(declare-fun lt!140780 () Unit!9039)

(assert (=> b!285239 (= lt!140780 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!140716 lt!140779 (bvadd #b00000000000000000000000000000001 startIndex!26)))))

(assert (=> b!285239 (arrayContainsKey!0 lt!140716 lt!140779 #b00000000000000000000000000000000)))

(declare-fun lt!140778 () Unit!9039)

(assert (=> b!285239 (= lt!140778 lt!140780)))

(declare-fun res!147725 () Bool)

(assert (=> b!285239 (= res!147725 (= (seekEntryOrOpen!0 (select (arr!6758 lt!140716) (bvadd #b00000000000000000000000000000001 startIndex!26)) lt!140716 mask!3868) (Found!1927 (bvadd #b00000000000000000000000000000001 startIndex!26))))))

(assert (=> b!285239 (=> (not res!147725) (not e!180832))))

(declare-fun bm!25551 () Bool)

(assert (=> bm!25551 (= call!25554 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001) lt!140716 mask!3868))))

(declare-fun b!285240 () Bool)

(assert (=> b!285240 (= e!180830 call!25554)))

(declare-fun b!285241 () Bool)

(declare-fun e!180831 () Bool)

(assert (=> b!285241 (= e!180831 e!180830)))

(declare-fun c!46311 () Bool)

(assert (=> b!285241 (= c!46311 (validKeyInArray!0 (select (arr!6758 lt!140716) (bvadd #b00000000000000000000000000000001 startIndex!26))))))

(declare-fun d!65655 () Bool)

(declare-fun res!147724 () Bool)

(assert (=> d!65655 (=> res!147724 e!180831)))

(assert (=> d!65655 (= res!147724 (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) (size!7110 lt!140716)))))

(assert (=> d!65655 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!140716 mask!3868) e!180831)))

(assert (= (and d!65655 (not res!147724)) b!285241))

(assert (= (and b!285241 c!46311) b!285239))

(assert (= (and b!285241 (not c!46311)) b!285240))

(assert (= (and b!285239 res!147725) b!285238))

(assert (= (or b!285238 b!285240) bm!25551))

(declare-fun m!300133 () Bool)

(assert (=> b!285239 m!300133))

(declare-fun m!300135 () Bool)

(assert (=> b!285239 m!300135))

(declare-fun m!300137 () Bool)

(assert (=> b!285239 m!300137))

(assert (=> b!285239 m!300133))

(declare-fun m!300139 () Bool)

(assert (=> b!285239 m!300139))

(declare-fun m!300141 () Bool)

(assert (=> bm!25551 m!300141))

(assert (=> b!285241 m!300133))

(assert (=> b!285241 m!300133))

(declare-fun m!300143 () Bool)

(assert (=> b!285241 m!300143))

(assert (=> b!285071 d!65655))

(declare-fun d!65657 () Bool)

(declare-fun e!180835 () Bool)

(assert (=> d!65657 e!180835))

(declare-fun res!147728 () Bool)

(assert (=> d!65657 (=> (not res!147728) (not e!180835))))

(assert (=> d!65657 (= res!147728 (and (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7110 a!3325))))))

(declare-fun lt!140783 () Unit!9039)

(declare-fun choose!98 (array!14239 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9039)

(assert (=> d!65657 (= lt!140783 (choose!98 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> d!65657 (validMask!0 mask!3868)))

(assert (=> d!65657 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868) lt!140783)))

(declare-fun b!285244 () Bool)

(assert (=> b!285244 (= e!180835 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!14240 (store (arr!6758 a!3325) i!1267 k0!2581) (size!7110 a!3325)) mask!3868))))

(assert (= (and d!65657 res!147728) b!285244))

(declare-fun m!300145 () Bool)

(assert (=> d!65657 m!300145))

(assert (=> d!65657 m!299973))

(assert (=> b!285244 m!299971))

(declare-fun m!300147 () Bool)

(assert (=> b!285244 m!300147))

(assert (=> b!285071 d!65657))

(check-sat (not b!285153) (not bm!25532) (not bm!25535) (not bm!25551) (not bm!25550) (not b!285114) (not d!65619) (not b!285115) (not b!285244) (not d!65657) (not b!285135) (not b!285241) (not b!285237) (not b!285239) (not b!285225) (not b!285235) (not b!285133) (not b!285117))
(check-sat)
