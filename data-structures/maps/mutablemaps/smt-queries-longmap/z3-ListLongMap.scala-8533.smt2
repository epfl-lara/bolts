; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104108 () Bool)

(assert start!104108)

(declare-fun res!830414 () Bool)

(declare-fun e!705643 () Bool)

(assert (=> start!104108 (=> (not res!830414) (not e!705643))))

(declare-datatypes ((array!80074 0))(
  ( (array!80075 (arr!38623 (Array (_ BitVec 32) (_ BitVec 64))) (size!39160 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80074)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104108 (= res!830414 (and (bvslt (size!39160 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39160 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39160 a!3892))))))

(assert (=> start!104108 e!705643))

(declare-fun array_inv!29399 (array!80074) Bool)

(assert (=> start!104108 (array_inv!29399 a!3892)))

(assert (=> start!104108 true))

(declare-fun b!1244734 () Bool)

(declare-fun res!830415 () Bool)

(assert (=> b!1244734 (=> (not res!830415) (not e!705643))))

(declare-datatypes ((List!27604 0))(
  ( (Nil!27601) (Cons!27600 (h!28809 (_ BitVec 64)) (t!41080 List!27604)) )
))
(declare-fun arrayNoDuplicates!0 (array!80074 (_ BitVec 32) List!27604) Bool)

(assert (=> b!1244734 (= res!830415 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27601))))

(declare-fun b!1244735 () Bool)

(declare-fun res!830416 () Bool)

(assert (=> b!1244735 (=> (not res!830416) (not e!705643))))

(assert (=> b!1244735 (= res!830416 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39160 a!3892)) (= newFrom!287 (size!39160 a!3892)) (bvsge newFrom!287 #b00000000000000000000000000000000)))))

(declare-fun b!1244736 () Bool)

(declare-fun noDuplicate!2039 (List!27604) Bool)

(assert (=> b!1244736 (= e!705643 (not (noDuplicate!2039 Nil!27601)))))

(assert (= (and start!104108 res!830414) b!1244734))

(assert (= (and b!1244734 res!830415) b!1244735))

(assert (= (and b!1244735 res!830416) b!1244736))

(declare-fun m!1146993 () Bool)

(assert (=> start!104108 m!1146993))

(declare-fun m!1146995 () Bool)

(assert (=> b!1244734 m!1146995))

(declare-fun m!1146997 () Bool)

(assert (=> b!1244736 m!1146997))

(check-sat (not start!104108) (not b!1244734) (not b!1244736))
(check-sat)
(get-model)

(declare-fun d!137147 () Bool)

(assert (=> d!137147 (= (array_inv!29399 a!3892) (bvsge (size!39160 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104108 d!137147))

(declare-fun b!1244776 () Bool)

(declare-fun e!705678 () Bool)

(declare-fun contains!7448 (List!27604 (_ BitVec 64)) Bool)

(assert (=> b!1244776 (= e!705678 (contains!7448 Nil!27601 (select (arr!38623 a!3892) from!3270)))))

(declare-fun b!1244777 () Bool)

(declare-fun e!705676 () Bool)

(declare-fun call!61439 () Bool)

(assert (=> b!1244777 (= e!705676 call!61439)))

(declare-fun b!1244778 () Bool)

(declare-fun e!705675 () Bool)

(assert (=> b!1244778 (= e!705675 e!705676)))

(declare-fun c!121853 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1244778 (= c!121853 (validKeyInArray!0 (select (arr!38623 a!3892) from!3270)))))

(declare-fun b!1244779 () Bool)

(declare-fun e!705677 () Bool)

(assert (=> b!1244779 (= e!705677 e!705675)))

(declare-fun res!830444 () Bool)

(assert (=> b!1244779 (=> (not res!830444) (not e!705675))))

(assert (=> b!1244779 (= res!830444 (not e!705678))))

(declare-fun res!830445 () Bool)

(assert (=> b!1244779 (=> (not res!830445) (not e!705678))))

(assert (=> b!1244779 (= res!830445 (validKeyInArray!0 (select (arr!38623 a!3892) from!3270)))))

(declare-fun b!1244780 () Bool)

(assert (=> b!1244780 (= e!705676 call!61439)))

(declare-fun bm!61436 () Bool)

(assert (=> bm!61436 (= call!61439 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121853 (Cons!27600 (select (arr!38623 a!3892) from!3270) Nil!27601) Nil!27601)))))

(declare-fun d!137149 () Bool)

(declare-fun res!830446 () Bool)

(assert (=> d!137149 (=> res!830446 e!705677)))

(assert (=> d!137149 (= res!830446 (bvsge from!3270 (size!39160 a!3892)))))

(assert (=> d!137149 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27601) e!705677)))

(assert (= (and d!137149 (not res!830446)) b!1244779))

(assert (= (and b!1244779 res!830445) b!1244776))

(assert (= (and b!1244779 res!830444) b!1244778))

(assert (= (and b!1244778 c!121853) b!1244780))

(assert (= (and b!1244778 (not c!121853)) b!1244777))

(assert (= (or b!1244780 b!1244777) bm!61436))

(declare-fun m!1147005 () Bool)

(assert (=> b!1244776 m!1147005))

(assert (=> b!1244776 m!1147005))

(declare-fun m!1147007 () Bool)

(assert (=> b!1244776 m!1147007))

(assert (=> b!1244778 m!1147005))

(assert (=> b!1244778 m!1147005))

(declare-fun m!1147009 () Bool)

(assert (=> b!1244778 m!1147009))

(assert (=> b!1244779 m!1147005))

(assert (=> b!1244779 m!1147005))

(assert (=> b!1244779 m!1147009))

(assert (=> bm!61436 m!1147005))

(declare-fun m!1147011 () Bool)

(assert (=> bm!61436 m!1147011))

(assert (=> b!1244734 d!137149))

(declare-fun d!137159 () Bool)

(declare-fun res!830457 () Bool)

(declare-fun e!705691 () Bool)

(assert (=> d!137159 (=> res!830457 e!705691)))

(get-info :version)

(assert (=> d!137159 (= res!830457 ((_ is Nil!27601) Nil!27601))))

(assert (=> d!137159 (= (noDuplicate!2039 Nil!27601) e!705691)))

(declare-fun b!1244795 () Bool)

(declare-fun e!705692 () Bool)

(assert (=> b!1244795 (= e!705691 e!705692)))

(declare-fun res!830458 () Bool)

(assert (=> b!1244795 (=> (not res!830458) (not e!705692))))

(assert (=> b!1244795 (= res!830458 (not (contains!7448 (t!41080 Nil!27601) (h!28809 Nil!27601))))))

(declare-fun b!1244796 () Bool)

(assert (=> b!1244796 (= e!705692 (noDuplicate!2039 (t!41080 Nil!27601)))))

(assert (= (and d!137159 (not res!830457)) b!1244795))

(assert (= (and b!1244795 res!830458) b!1244796))

(declare-fun m!1147027 () Bool)

(assert (=> b!1244795 m!1147027))

(declare-fun m!1147029 () Bool)

(assert (=> b!1244796 m!1147029))

(assert (=> b!1244736 d!137159))

(check-sat (not b!1244795) (not b!1244779) (not bm!61436) (not b!1244796) (not b!1244778) (not b!1244776))
(check-sat)
