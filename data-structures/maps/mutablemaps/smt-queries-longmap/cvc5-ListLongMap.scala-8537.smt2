; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104172 () Bool)

(assert start!104172)

(declare-fun res!830618 () Bool)

(declare-fun e!705851 () Bool)

(assert (=> start!104172 (=> (not res!830618) (not e!705851))))

(declare-datatypes ((array!80102 0))(
  ( (array!80103 (arr!38634 (Array (_ BitVec 32) (_ BitVec 64))) (size!39171 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80102)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104172 (= res!830618 (and (bvslt (size!39171 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39171 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39171 a!3892))))))

(assert (=> start!104172 e!705851))

(declare-fun array_inv!29410 (array!80102) Bool)

(assert (=> start!104172 (array_inv!29410 a!3892)))

(assert (=> start!104172 true))

(declare-fun b!1244974 () Bool)

(declare-fun res!830619 () Bool)

(assert (=> b!1244974 (=> (not res!830619) (not e!705851))))

(declare-datatypes ((List!27615 0))(
  ( (Nil!27612) (Cons!27611 (h!28820 (_ BitVec 64)) (t!41091 List!27615)) )
))
(declare-fun arrayNoDuplicates!0 (array!80102 (_ BitVec 32) List!27615) Bool)

(assert (=> b!1244974 (= res!830619 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27612))))

(declare-fun b!1244975 () Bool)

(declare-fun res!830620 () Bool)

(assert (=> b!1244975 (=> (not res!830620) (not e!705851))))

(assert (=> b!1244975 (= res!830620 (and (= from!3270 newFrom!287) (bvsge newFrom!287 #b00000000000000000000000000000000)))))

(declare-fun b!1244976 () Bool)

(declare-fun noDuplicate!2044 (List!27615) Bool)

(assert (=> b!1244976 (= e!705851 (not (noDuplicate!2044 Nil!27612)))))

(assert (= (and start!104172 res!830618) b!1244974))

(assert (= (and b!1244974 res!830619) b!1244975))

(assert (= (and b!1244975 res!830620) b!1244976))

(declare-fun m!1147161 () Bool)

(assert (=> start!104172 m!1147161))

(declare-fun m!1147163 () Bool)

(assert (=> b!1244974 m!1147163))

(declare-fun m!1147165 () Bool)

(assert (=> b!1244976 m!1147165))

(push 1)

(assert (not b!1244974))

(assert (not start!104172))

(assert (not b!1244976))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1245015 () Bool)

(declare-fun e!705882 () Bool)

(declare-fun call!61457 () Bool)

(assert (=> b!1245015 (= e!705882 call!61457)))

(declare-fun b!1245016 () Bool)

(assert (=> b!1245016 (= e!705882 call!61457)))

(declare-fun c!121869 () Bool)

(declare-fun bm!61454 () Bool)

(assert (=> bm!61454 (= call!61457 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121869 (Cons!27611 (select (arr!38634 a!3892) from!3270) Nil!27612) Nil!27612)))))

(declare-fun d!137203 () Bool)

(declare-fun res!830652 () Bool)

(declare-fun e!705883 () Bool)

(assert (=> d!137203 (=> res!830652 e!705883)))

(assert (=> d!137203 (= res!830652 (bvsge from!3270 (size!39171 a!3892)))))

(assert (=> d!137203 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27612) e!705883)))

(declare-fun b!1245017 () Bool)

(declare-fun e!705881 () Bool)

(declare-fun contains!7454 (List!27615 (_ BitVec 64)) Bool)

(assert (=> b!1245017 (= e!705881 (contains!7454 Nil!27612 (select (arr!38634 a!3892) from!3270)))))

(declare-fun b!1245018 () Bool)

(declare-fun e!705880 () Bool)

(assert (=> b!1245018 (= e!705883 e!705880)))

(declare-fun res!830651 () Bool)

(assert (=> b!1245018 (=> (not res!830651) (not e!705880))))

(assert (=> b!1245018 (= res!830651 (not e!705881))))

(declare-fun res!830653 () Bool)

(assert (=> b!1245018 (=> (not res!830653) (not e!705881))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1245018 (= res!830653 (validKeyInArray!0 (select (arr!38634 a!3892) from!3270)))))

(declare-fun b!1245019 () Bool)

(assert (=> b!1245019 (= e!705880 e!705882)))

(assert (=> b!1245019 (= c!121869 (validKeyInArray!0 (select (arr!38634 a!3892) from!3270)))))

(assert (= (and d!137203 (not res!830652)) b!1245018))

(assert (= (and b!1245018 res!830653) b!1245017))

(assert (= (and b!1245018 res!830651) b!1245019))

(assert (= (and b!1245019 c!121869) b!1245015))

(assert (= (and b!1245019 (not c!121869)) b!1245016))

(assert (= (or b!1245015 b!1245016) bm!61454))

(declare-fun m!1147179 () Bool)

(assert (=> bm!61454 m!1147179))

(declare-fun m!1147181 () Bool)

(assert (=> bm!61454 m!1147181))

(assert (=> b!1245017 m!1147179))

(assert (=> b!1245017 m!1147179))

(declare-fun m!1147183 () Bool)

(assert (=> b!1245017 m!1147183))

(assert (=> b!1245018 m!1147179))

(assert (=> b!1245018 m!1147179))

(declare-fun m!1147185 () Bool)

(assert (=> b!1245018 m!1147185))

(assert (=> b!1245019 m!1147179))

(assert (=> b!1245019 m!1147179))

(assert (=> b!1245019 m!1147185))

(assert (=> b!1244974 d!137203))

(declare-fun d!137209 () Bool)

(assert (=> d!137209 (= (array_inv!29410 a!3892) (bvsge (size!39171 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104172 d!137209))

(declare-fun d!137211 () Bool)

(declare-fun res!830670 () Bool)

(declare-fun e!705904 () Bool)

(assert (=> d!137211 (=> res!830670 e!705904)))

(assert (=> d!137211 (= res!830670 (is-Nil!27612 Nil!27612))))

(assert (=> d!137211 (= (noDuplicate!2044 Nil!27612) e!705904)))

(declare-fun b!1245044 () Bool)

(declare-fun e!705905 () Bool)

(assert (=> b!1245044 (= e!705904 e!705905)))

(declare-fun res!830671 () Bool)

(assert (=> b!1245044 (=> (not res!830671) (not e!705905))))

(assert (=> b!1245044 (= res!830671 (not (contains!7454 (t!41091 Nil!27612) (h!28820 Nil!27612))))))

(declare-fun b!1245045 () Bool)

(assert (=> b!1245045 (= e!705905 (noDuplicate!2044 (t!41091 Nil!27612)))))

(assert (= (and d!137211 (not res!830670)) b!1245044))

(assert (= (and b!1245044 res!830671) b!1245045))

(declare-fun m!1147199 () Bool)

(assert (=> b!1245044 m!1147199))

(declare-fun m!1147203 () Bool)

(assert (=> b!1245045 m!1147203))

(assert (=> b!1244976 d!137211))

(push 1)

