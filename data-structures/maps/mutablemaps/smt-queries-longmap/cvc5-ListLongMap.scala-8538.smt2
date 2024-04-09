; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104196 () Bool)

(assert start!104196)

(declare-fun b!1245068 () Bool)

(declare-fun e!705925 () Bool)

(declare-fun e!705924 () Bool)

(assert (=> b!1245068 (= e!705925 e!705924)))

(declare-fun res!830696 () Bool)

(assert (=> b!1245068 (=> res!830696 e!705924)))

(declare-datatypes ((List!27618 0))(
  ( (Nil!27615) (Cons!27614 (h!28823 (_ BitVec 64)) (t!41094 List!27618)) )
))
(declare-fun contains!7457 (List!27618 (_ BitVec 64)) Bool)

(assert (=> b!1245068 (= res!830696 (contains!7457 Nil!27615 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245069 () Bool)

(declare-fun res!830694 () Bool)

(assert (=> b!1245069 (=> (not res!830694) (not e!705925))))

(declare-fun from!3270 () (_ BitVec 32))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1245069 (= res!830694 (and (= from!3270 newFrom!287) (bvsge newFrom!287 #b00000000000000000000000000000000)))))

(declare-fun b!1245070 () Bool)

(declare-fun res!830698 () Bool)

(assert (=> b!1245070 (=> (not res!830698) (not e!705925))))

(declare-fun noDuplicate!2047 (List!27618) Bool)

(assert (=> b!1245070 (= res!830698 (noDuplicate!2047 Nil!27615))))

(declare-fun b!1245071 () Bool)

(declare-fun res!830695 () Bool)

(assert (=> b!1245071 (=> (not res!830695) (not e!705925))))

(declare-datatypes ((array!80111 0))(
  ( (array!80112 (arr!38637 (Array (_ BitVec 32) (_ BitVec 64))) (size!39174 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80111)

(declare-fun arrayNoDuplicates!0 (array!80111 (_ BitVec 32) List!27618) Bool)

(assert (=> b!1245071 (= res!830695 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27615))))

(declare-fun b!1245072 () Bool)

(assert (=> b!1245072 (= e!705924 (contains!7457 Nil!27615 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!830697 () Bool)

(assert (=> start!104196 (=> (not res!830697) (not e!705925))))

(assert (=> start!104196 (= res!830697 (and (bvslt (size!39174 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39174 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39174 a!3892))))))

(assert (=> start!104196 e!705925))

(declare-fun array_inv!29413 (array!80111) Bool)

(assert (=> start!104196 (array_inv!29413 a!3892)))

(assert (=> start!104196 true))

(assert (= (and start!104196 res!830697) b!1245071))

(assert (= (and b!1245071 res!830695) b!1245069))

(assert (= (and b!1245069 res!830694) b!1245070))

(assert (= (and b!1245070 res!830698) b!1245068))

(assert (= (and b!1245068 (not res!830696)) b!1245072))

(declare-fun m!1147215 () Bool)

(assert (=> b!1245070 m!1147215))

(declare-fun m!1147217 () Bool)

(assert (=> b!1245068 m!1147217))

(declare-fun m!1147219 () Bool)

(assert (=> start!104196 m!1147219))

(declare-fun m!1147221 () Bool)

(assert (=> b!1245071 m!1147221))

(declare-fun m!1147223 () Bool)

(assert (=> b!1245072 m!1147223))

(push 1)

(assert (not start!104196))

(assert (not b!1245068))

(assert (not b!1245071))

(assert (not b!1245070))

(assert (not b!1245072))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!137225 () Bool)

(assert (=> d!137225 (= (array_inv!29413 a!3892) (bvsge (size!39174 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104196 d!137225))

(declare-fun d!137227 () Bool)

(declare-fun res!830737 () Bool)

(declare-fun e!705953 () Bool)

(assert (=> d!137227 (=> res!830737 e!705953)))

(assert (=> d!137227 (= res!830737 (is-Nil!27615 Nil!27615))))

(assert (=> d!137227 (= (noDuplicate!2047 Nil!27615) e!705953)))

(declare-fun b!1245111 () Bool)

(declare-fun e!705954 () Bool)

(assert (=> b!1245111 (= e!705953 e!705954)))

(declare-fun res!830738 () Bool)

(assert (=> b!1245111 (=> (not res!830738) (not e!705954))))

(assert (=> b!1245111 (= res!830738 (not (contains!7457 (t!41094 Nil!27615) (h!28823 Nil!27615))))))

(declare-fun b!1245112 () Bool)

(assert (=> b!1245112 (= e!705954 (noDuplicate!2047 (t!41094 Nil!27615)))))

(assert (= (and d!137227 (not res!830737)) b!1245111))

(assert (= (and b!1245111 res!830738) b!1245112))

(declare-fun m!1147245 () Bool)

(assert (=> b!1245111 m!1147245))

(declare-fun m!1147247 () Bool)

(assert (=> b!1245112 m!1147247))

(assert (=> b!1245070 d!137227))

(declare-fun d!137231 () Bool)

(declare-fun lt!562813 () Bool)

(declare-fun content!625 (List!27618) (Set (_ BitVec 64)))

(assert (=> d!137231 (= lt!562813 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!625 Nil!27615)))))

(declare-fun e!705968 () Bool)

(assert (=> d!137231 (= lt!562813 e!705968)))

(declare-fun res!830751 () Bool)

(assert (=> d!137231 (=> (not res!830751) (not e!705968))))

(assert (=> d!137231 (= res!830751 (is-Cons!27614 Nil!27615))))

(assert (=> d!137231 (= (contains!7457 Nil!27615 #b0000000000000000000000000000000000000000000000000000000000000000) lt!562813)))

(declare-fun b!1245125 () Bool)

(declare-fun e!705967 () Bool)

(assert (=> b!1245125 (= e!705968 e!705967)))

(declare-fun res!830752 () Bool)

(assert (=> b!1245125 (=> res!830752 e!705967)))

(assert (=> b!1245125 (= res!830752 (= (h!28823 Nil!27615) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245126 () Bool)

(assert (=> b!1245126 (= e!705967 (contains!7457 (t!41094 Nil!27615) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137231 res!830751) b!1245125))

(assert (= (and b!1245125 (not res!830752)) b!1245126))

(declare-fun m!1147261 () Bool)

(assert (=> d!137231 m!1147261))

(declare-fun m!1147263 () Bool)

(assert (=> d!137231 m!1147263))

(declare-fun m!1147265 () Bool)

(assert (=> b!1245126 m!1147265))

(assert (=> b!1245068 d!137231))

(declare-fun d!137239 () Bool)

(declare-fun lt!562814 () Bool)

(assert (=> d!137239 (= lt!562814 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!625 Nil!27615)))))

(declare-fun e!705970 () Bool)

(assert (=> d!137239 (= lt!562814 e!705970)))

(declare-fun res!830753 () Bool)

(assert (=> d!137239 (=> (not res!830753) (not e!705970))))

(assert (=> d!137239 (= res!830753 (is-Cons!27614 Nil!27615))))

(assert (=> d!137239 (= (contains!7457 Nil!27615 #b1000000000000000000000000000000000000000000000000000000000000000) lt!562814)))

(declare-fun b!1245127 () Bool)

(declare-fun e!705969 () Bool)

(assert (=> b!1245127 (= e!705970 e!705969)))

(declare-fun res!830754 () Bool)

(assert (=> b!1245127 (=> res!830754 e!705969)))

(assert (=> b!1245127 (= res!830754 (= (h!28823 Nil!27615) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245128 () Bool)

(assert (=> b!1245128 (= e!705969 (contains!7457 (t!41094 Nil!27615) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137239 res!830753) b!1245127))

(assert (= (and b!1245127 (not res!830754)) b!1245128))

(assert (=> d!137239 m!1147261))

(declare-fun m!1147267 () Bool)

(assert (=> d!137239 m!1147267))

(declare-fun m!1147269 () Bool)

(assert (=> b!1245128 m!1147269))

(assert (=> b!1245072 d!137239))

(declare-fun b!1245173 () Bool)

(declare-fun e!706008 () Bool)

(declare-fun call!61470 () Bool)

(assert (=> b!1245173 (= e!706008 call!61470)))

(declare-fun b!1245175 () Bool)

(declare-fun e!706009 () Bool)

(declare-fun e!706012 () Bool)

(assert (=> b!1245175 (= e!706009 e!706012)))

(declare-fun res!830783 () Bool)

(assert (=> b!1245175 (=> (not res!830783) (not e!706012))))

(declare-fun e!706007 () Bool)

(assert (=> b!1245175 (= res!830783 (not e!706007))))

(declare-fun res!830785 () Bool)

(assert (=> b!1245175 (=> (not res!830785) (not e!706007))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1245175 (= res!830785 (validKeyInArray!0 (select (arr!38637 a!3892) from!3270)))))

(declare-fun b!1245176 () Bool)

(assert (=> b!1245176 (= e!706007 (contains!7457 Nil!27615 (select (arr!38637 a!3892) from!3270)))))

(declare-fun b!1245177 () Bool)

(assert (=> b!1245177 (= e!706008 call!61470)))

(declare-fun c!121882 () Bool)

(declare-fun bm!61467 () Bool)

(assert (=> bm!61467 (= call!61470 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121882 (Cons!27614 (select (arr!38637 a!3892) from!3270) Nil!27615) Nil!27615)))))

(declare-fun b!1245174 () Bool)

(assert (=> b!1245174 (= e!706012 e!706008)))

(assert (=> b!1245174 (= c!121882 (validKeyInArray!0 (select (arr!38637 a!3892) from!3270)))))

(declare-fun d!137241 () Bool)

(declare-fun res!830784 () Bool)

(assert (=> d!137241 (=> res!830784 e!706009)))

(assert (=> d!137241 (= res!830784 (bvsge from!3270 (size!39174 a!3892)))))

(assert (=> d!137241 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27615) e!706009)))

(assert (= (and d!137241 (not res!830784)) b!1245175))

(assert (= (and b!1245175 res!830785) b!1245176))

(assert (= (and b!1245175 res!830783) b!1245174))

(assert (= (and b!1245174 c!121882) b!1245173))

(assert (= (and b!1245174 (not c!121882)) b!1245177))

(assert (= (or b!1245173 b!1245177) bm!61467))

(declare-fun m!1147291 () Bool)

(assert (=> b!1245175 m!1147291))

(assert (=> b!1245175 m!1147291))

(declare-fun m!1147293 () Bool)

(assert (=> b!1245175 m!1147293))

(assert (=> b!1245176 m!1147291))

(assert (=> b!1245176 m!1147291))

(declare-fun m!1147295 () Bool)

(assert (=> b!1245176 m!1147295))

(assert (=> bm!61467 m!1147291))

(declare-fun m!1147297 () Bool)

(assert (=> bm!61467 m!1147297))

(assert (=> b!1245174 m!1147291))

(assert (=> b!1245174 m!1147291))

(assert (=> b!1245174 m!1147293))

(assert (=> b!1245071 d!137241))

(push 1)

