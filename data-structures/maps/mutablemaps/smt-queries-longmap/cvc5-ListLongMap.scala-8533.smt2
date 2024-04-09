; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104106 () Bool)

(assert start!104106)

(declare-fun res!830406 () Bool)

(declare-fun e!705638 () Bool)

(assert (=> start!104106 (=> (not res!830406) (not e!705638))))

(declare-datatypes ((array!80072 0))(
  ( (array!80073 (arr!38622 (Array (_ BitVec 32) (_ BitVec 64))) (size!39159 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80072)

(declare-fun from!3270 () (_ BitVec 32))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> start!104106 (= res!830406 (and (bvslt (size!39159 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39159 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39159 a!3892))))))

(assert (=> start!104106 e!705638))

(declare-fun array_inv!29398 (array!80072) Bool)

(assert (=> start!104106 (array_inv!29398 a!3892)))

(assert (=> start!104106 true))

(declare-fun b!1244725 () Bool)

(declare-fun res!830407 () Bool)

(assert (=> b!1244725 (=> (not res!830407) (not e!705638))))

(declare-datatypes ((List!27603 0))(
  ( (Nil!27600) (Cons!27599 (h!28808 (_ BitVec 64)) (t!41079 List!27603)) )
))
(declare-fun arrayNoDuplicates!0 (array!80072 (_ BitVec 32) List!27603) Bool)

(assert (=> b!1244725 (= res!830407 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27600))))

(declare-fun b!1244726 () Bool)

(declare-fun res!830405 () Bool)

(assert (=> b!1244726 (=> (not res!830405) (not e!705638))))

(assert (=> b!1244726 (= res!830405 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39159 a!3892)) (= newFrom!287 (size!39159 a!3892)) (bvsge newFrom!287 #b00000000000000000000000000000000)))))

(declare-fun b!1244727 () Bool)

(declare-fun noDuplicate!2038 (List!27603) Bool)

(assert (=> b!1244727 (= e!705638 (not (noDuplicate!2038 Nil!27600)))))

(assert (= (and start!104106 res!830406) b!1244725))

(assert (= (and b!1244725 res!830407) b!1244726))

(assert (= (and b!1244726 res!830405) b!1244727))

(declare-fun m!1146987 () Bool)

(assert (=> start!104106 m!1146987))

(declare-fun m!1146989 () Bool)

(assert (=> b!1244725 m!1146989))

(declare-fun m!1146991 () Bool)

(assert (=> b!1244727 m!1146991))

(push 1)

(assert (not start!104106))

(assert (not b!1244725))

(assert (not b!1244727))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!137151 () Bool)

(assert (=> d!137151 (= (array_inv!29398 a!3892) (bvsge (size!39159 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104106 d!137151))

(declare-fun b!1244781 () Bool)

(declare-fun e!705679 () Bool)

(declare-fun e!705682 () Bool)

(assert (=> b!1244781 (= e!705679 e!705682)))

(declare-fun res!830448 () Bool)

(assert (=> b!1244781 (=> (not res!830448) (not e!705682))))

(declare-fun e!705681 () Bool)

(assert (=> b!1244781 (= res!830448 (not e!705681))))

(declare-fun res!830449 () Bool)

(assert (=> b!1244781 (=> (not res!830449) (not e!705681))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1244781 (= res!830449 (validKeyInArray!0 (select (arr!38622 a!3892) from!3270)))))

(declare-fun d!137153 () Bool)

(declare-fun res!830447 () Bool)

(assert (=> d!137153 (=> res!830447 e!705679)))

(assert (=> d!137153 (= res!830447 (bvsge from!3270 (size!39159 a!3892)))))

(assert (=> d!137153 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27600) e!705679)))

(declare-fun b!1244782 () Bool)

(declare-fun e!705680 () Bool)

(declare-fun call!61442 () Bool)

(assert (=> b!1244782 (= e!705680 call!61442)))

(declare-fun bm!61439 () Bool)

(declare-fun c!121854 () Bool)

(assert (=> bm!61439 (= call!61442 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121854 (Cons!27599 (select (arr!38622 a!3892) from!3270) Nil!27600) Nil!27600)))))

(declare-fun b!1244783 () Bool)

(assert (=> b!1244783 (= e!705682 e!705680)))

(assert (=> b!1244783 (= c!121854 (validKeyInArray!0 (select (arr!38622 a!3892) from!3270)))))

(declare-fun b!1244784 () Bool)

(assert (=> b!1244784 (= e!705680 call!61442)))

(declare-fun b!1244785 () Bool)

(declare-fun contains!7450 (List!27603 (_ BitVec 64)) Bool)

(assert (=> b!1244785 (= e!705681 (contains!7450 Nil!27600 (select (arr!38622 a!3892) from!3270)))))

(assert (= (and d!137153 (not res!830447)) b!1244781))

(assert (= (and b!1244781 res!830449) b!1244785))

(assert (= (and b!1244781 res!830448) b!1244783))

(assert (= (and b!1244783 c!121854) b!1244784))

(assert (= (and b!1244783 (not c!121854)) b!1244782))

(assert (= (or b!1244784 b!1244782) bm!61439))

(declare-fun m!1147013 () Bool)

(assert (=> b!1244781 m!1147013))

(assert (=> b!1244781 m!1147013))

(declare-fun m!1147015 () Bool)

(assert (=> b!1244781 m!1147015))

(assert (=> bm!61439 m!1147013))

(declare-fun m!1147017 () Bool)

(assert (=> bm!61439 m!1147017))

(assert (=> b!1244783 m!1147013))

(assert (=> b!1244783 m!1147013))

(assert (=> b!1244783 m!1147015))

(assert (=> b!1244785 m!1147013))

(assert (=> b!1244785 m!1147013))

(declare-fun m!1147019 () Bool)

(assert (=> b!1244785 m!1147019))

(assert (=> b!1244725 d!137153))

(declare-fun d!137161 () Bool)

(declare-fun res!830467 () Bool)

(declare-fun e!705701 () Bool)

(assert (=> d!137161 (=> res!830467 e!705701)))

(assert (=> d!137161 (= res!830467 (is-Nil!27600 Nil!27600))))

