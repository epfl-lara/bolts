; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103396 () Bool)

(assert start!103396)

(declare-fun b!1239822 () Bool)

(declare-fun res!827279 () Bool)

(declare-fun e!702667 () Bool)

(assert (=> b!1239822 (=> (not res!827279) (not e!702667))))

(declare-datatypes ((List!27479 0))(
  ( (Nil!27476) (Cons!27475 (h!28684 (_ BitVec 64)) (t!40949 List!27479)) )
))
(declare-fun acc!846 () List!27479)

(declare-fun contains!7394 (List!27479 (_ BitVec 64)) Bool)

(assert (=> b!1239822 (= res!827279 (not (contains!7394 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1239823 () Bool)

(declare-fun res!827280 () Bool)

(assert (=> b!1239823 (=> (not res!827280) (not e!702667))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1239823 (= res!827280 (contains!7394 acc!846 k!2925))))

(declare-fun b!1239824 () Bool)

(declare-fun res!827278 () Bool)

(assert (=> b!1239824 (=> (not res!827278) (not e!702667))))

(assert (=> b!1239824 (= res!827278 (not (contains!7394 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1239825 () Bool)

(declare-fun res!827275 () Bool)

(assert (=> b!1239825 (=> (not res!827275) (not e!702667))))

(declare-datatypes ((array!79866 0))(
  ( (array!79867 (arr!38528 (Array (_ BitVec 32) (_ BitVec 64))) (size!39065 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79866)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79866 (_ BitVec 32) List!27479) Bool)

(assert (=> b!1239825 (= res!827275 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1239826 () Bool)

(declare-fun res!827281 () Bool)

(assert (=> b!1239826 (=> (not res!827281) (not e!702667))))

(assert (=> b!1239826 (= res!827281 (= from!3213 (bvsub (size!39065 a!3835) #b00000000000000000000000000000001)))))

(declare-fun b!1239827 () Bool)

(declare-fun res!827276 () Bool)

(assert (=> b!1239827 (=> (not res!827276) (not e!702667))))

(declare-fun noDuplicate!2001 (List!27479) Bool)

(assert (=> b!1239827 (= res!827276 (noDuplicate!2001 acc!846))))

(declare-fun b!1239828 () Bool)

(declare-fun arrayContainsKey!0 (array!79866 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1239828 (= e!702667 (arrayContainsKey!0 a!3835 k!2925 from!3213))))

(declare-fun res!827277 () Bool)

(assert (=> start!103396 (=> (not res!827277) (not e!702667))))

(assert (=> start!103396 (= res!827277 (and (bvslt (size!39065 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39065 a!3835))))))

(assert (=> start!103396 e!702667))

(declare-fun array_inv!29304 (array!79866) Bool)

(assert (=> start!103396 (array_inv!29304 a!3835)))

(assert (=> start!103396 true))

(assert (= (and start!103396 res!827277) b!1239827))

(assert (= (and b!1239827 res!827276) b!1239824))

(assert (= (and b!1239824 res!827278) b!1239822))

(assert (= (and b!1239822 res!827279) b!1239825))

(assert (= (and b!1239825 res!827275) b!1239823))

(assert (= (and b!1239823 res!827280) b!1239826))

(assert (= (and b!1239826 res!827281) b!1239828))

(declare-fun m!1143213 () Bool)

(assert (=> b!1239823 m!1143213))

(declare-fun m!1143215 () Bool)

(assert (=> start!103396 m!1143215))

(declare-fun m!1143217 () Bool)

(assert (=> b!1239824 m!1143217))

(declare-fun m!1143219 () Bool)

(assert (=> b!1239827 m!1143219))

(declare-fun m!1143221 () Bool)

(assert (=> b!1239825 m!1143221))

(declare-fun m!1143223 () Bool)

(assert (=> b!1239822 m!1143223))

(declare-fun m!1143225 () Bool)

(assert (=> b!1239828 m!1143225))

(push 1)

(assert (not b!1239828))

(assert (not start!103396))

(assert (not b!1239824))

(assert (not b!1239827))

(assert (not b!1239822))

(assert (not b!1239825))

(assert (not b!1239823))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!136055 () Bool)

(declare-fun lt!561800 () Bool)

(declare-fun content!606 (List!27479) (Set (_ BitVec 64)))

(assert (=> d!136055 (= lt!561800 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!606 acc!846)))))

(declare-fun e!702695 () Bool)

(assert (=> d!136055 (= lt!561800 e!702695)))

(declare-fun res!827306 () Bool)

(assert (=> d!136055 (=> (not res!827306) (not e!702695))))

(assert (=> d!136055 (= res!827306 (is-Cons!27475 acc!846))))

(assert (=> d!136055 (= (contains!7394 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000) lt!561800)))

(declare-fun b!1239857 () Bool)

(declare-fun e!702696 () Bool)

(assert (=> b!1239857 (= e!702695 e!702696)))

(declare-fun res!827307 () Bool)

(assert (=> b!1239857 (=> res!827307 e!702696)))

(assert (=> b!1239857 (= res!827307 (= (h!28684 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1239858 () Bool)

(assert (=> b!1239858 (= e!702696 (contains!7394 (t!40949 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!136055 res!827306) b!1239857))

(assert (= (and b!1239857 (not res!827307)) b!1239858))

(declare-fun m!1143241 () Bool)

(assert (=> d!136055 m!1143241))

(declare-fun m!1143243 () Bool)

(assert (=> d!136055 m!1143243))

(declare-fun m!1143245 () Bool)

(assert (=> b!1239858 m!1143245))

(assert (=> b!1239824 d!136055))

(declare-fun bm!61116 () Bool)

(declare-fun c!121141 () Bool)

(declare-fun call!61119 () Bool)

(assert (=> bm!61116 (= call!61119 (arrayNoDuplicates!0 a!3835 (bvadd from!3213 #b00000000000000000000000000000001) (ite c!121141 (Cons!27475 (select (arr!38528 a!3835) from!3213) acc!846) acc!846)))))

(declare-fun d!136061 () Bool)

(declare-fun res!827335 () Bool)

(declare-fun e!702725 () Bool)

(assert (=> d!136061 (=> res!827335 e!702725)))

(assert (=> d!136061 (= res!827335 (bvsge from!3213 (size!39065 a!3835)))))

(assert (=> d!136061 (= (arrayNoDuplicates!0 a!3835 from!3213 acc!846) e!702725)))

(declare-fun b!1239890 () Bool)

(declare-fun e!702726 () Bool)

(assert (=> b!1239890 (= e!702726 call!61119)))

(declare-fun b!1239891 () Bool)

(declare-fun e!702727 () Bool)

(assert (=> b!1239891 (= e!702727 e!702726)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1239891 (= c!121141 (validKeyInArray!0 (select (arr!38528 a!3835) from!3213)))))

(declare-fun b!1239892 () Bool)

(assert (=> b!1239892 (= e!702726 call!61119)))

(declare-fun e!702728 () Bool)

(declare-fun b!1239893 () Bool)

(assert (=> b!1239893 (= e!702728 (contains!7394 acc!846 (select (arr!38528 a!3835) from!3213)))))

(declare-fun b!1239894 () Bool)

(assert (=> b!1239894 (= e!702725 e!702727)))

(declare-fun res!827334 () Bool)

(assert (=> b!1239894 (=> (not res!827334) (not e!702727))))

(assert (=> b!1239894 (= res!827334 (not e!702728))))

(declare-fun res!827333 () Bool)

(assert (=> b!1239894 (=> (not res!827333) (not e!702728))))

(assert (=> b!1239894 (= res!827333 (validKeyInArray!0 (select (arr!38528 a!3835) from!3213)))))

(assert (= (and d!136061 (not res!827335)) b!1239894))

(assert (= (and b!1239894 res!827333) b!1239893))

(assert (= (and b!1239894 res!827334) b!1239891))

(assert (= (and b!1239891 c!121141) b!1239892))

(assert (= (and b!1239891 (not c!121141)) b!1239890))

(assert (= (or b!1239892 b!1239890) bm!61116))

(declare-fun m!1143271 () Bool)

(assert (=> bm!61116 m!1143271))

(declare-fun m!1143273 () Bool)

(assert (=> bm!61116 m!1143273))

(assert (=> b!1239891 m!1143271))

(assert (=> b!1239891 m!1143271))

(declare-fun m!1143275 () Bool)

(assert (=> b!1239891 m!1143275))

(assert (=> b!1239893 m!1143271))

(assert (=> b!1239893 m!1143271))

(declare-fun m!1143277 () Bool)

(assert (=> b!1239893 m!1143277))

(assert (=> b!1239894 m!1143271))

(assert (=> b!1239894 m!1143271))

(assert (=> b!1239894 m!1143275))

(assert (=> b!1239825 d!136061))

(declare-fun d!136075 () Bool)

(assert (=> d!136075 (= (array_inv!29304 a!3835) (bvsge (size!39065 a!3835) #b00000000000000000000000000000000))))

(assert (=> start!103396 d!136075))

(declare-fun d!136077 () Bool)

(declare-fun res!827355 () Bool)

(declare-fun e!702751 () Bool)

(assert (=> d!136077 (=> res!827355 e!702751)))

(assert (=> d!136077 (= res!827355 (= (select (arr!38528 a!3835) from!3213) k!2925))))

(assert (=> d!136077 (= (arrayContainsKey!0 a!3835 k!2925 from!3213) e!702751)))

(declare-fun b!1239920 () Bool)

(declare-fun e!702752 () Bool)

(assert (=> b!1239920 (= e!702751 e!702752)))

(declare-fun res!827356 () Bool)

(assert (=> b!1239920 (=> (not res!827356) (not e!702752))))

(assert (=> b!1239920 (= res!827356 (bvslt (bvadd from!3213 #b00000000000000000000000000000001) (size!39065 a!3835)))))

(declare-fun b!1239921 () Bool)

(assert (=> b!1239921 (= e!702752 (arrayContainsKey!0 a!3835 k!2925 (bvadd from!3213 #b00000000000000000000000000000001)))))

(assert (= (and d!136077 (not res!827355)) b!1239920))

(assert (= (and b!1239920 res!827356) b!1239921))

(assert (=> d!136077 m!1143271))

(declare-fun m!1143283 () Bool)

(assert (=> b!1239921 m!1143283))

(assert (=> b!1239828 d!136077))

(declare-fun d!136079 () Bool)

(declare-fun lt!561806 () Bool)

(assert (=> d!136079 (= lt!561806 (member k!2925 (content!606 acc!846)))))

(declare-fun e!702753 () Bool)

(assert (=> d!136079 (= lt!561806 e!702753)))

(declare-fun res!827357 () Bool)

(assert (=> d!136079 (=> (not res!827357) (not e!702753))))

(assert (=> d!136079 (= res!827357 (is-Cons!27475 acc!846))))

(assert (=> d!136079 (= (contains!7394 acc!846 k!2925) lt!561806)))

(declare-fun b!1239922 () Bool)

(declare-fun e!702754 () Bool)

(assert (=> b!1239922 (= e!702753 e!702754)))

(declare-fun res!827358 () Bool)

(assert (=> b!1239922 (=> res!827358 e!702754)))

(assert (=> b!1239922 (= res!827358 (= (h!28684 acc!846) k!2925))))

(declare-fun b!1239923 () Bool)

(assert (=> b!1239923 (= e!702754 (contains!7394 (t!40949 acc!846) k!2925))))

(assert (= (and d!136079 res!827357) b!1239922))

(assert (= (and b!1239922 (not res!827358)) b!1239923))

(assert (=> d!136079 m!1143241))

(declare-fun m!1143291 () Bool)

(assert (=> d!136079 m!1143291))

(declare-fun m!1143293 () Bool)

(assert (=> b!1239923 m!1143293))

(assert (=> b!1239823 d!136079))

(declare-fun d!136081 () Bool)

(declare-fun res!827367 () Bool)

(declare-fun e!702763 () Bool)

(assert (=> d!136081 (=> res!827367 e!702763)))

(assert (=> d!136081 (= res!827367 (is-Nil!27476 acc!846))))

(assert (=> d!136081 (= (noDuplicate!2001 acc!846) e!702763)))

(declare-fun b!1239932 () Bool)

(declare-fun e!702764 () Bool)

(assert (=> b!1239932 (= e!702763 e!702764)))

(declare-fun res!827368 () Bool)

(assert (=> b!1239932 (=> (not res!827368) (not e!702764))))

(assert (=> b!1239932 (= res!827368 (not (contains!7394 (t!40949 acc!846) (h!28684 acc!846))))))

(declare-fun b!1239933 () Bool)

(assert (=> b!1239933 (= e!702764 (noDuplicate!2001 (t!40949 acc!846)))))

(assert (= (and d!136081 (not res!827367)) b!1239932))

(assert (= (and b!1239932 res!827368) b!1239933))

(declare-fun m!1143297 () Bool)

(assert (=> b!1239932 m!1143297))

(declare-fun m!1143299 () Bool)

(assert (=> b!1239933 m!1143299))

(assert (=> b!1239827 d!136081))

(declare-fun d!136085 () Bool)

(declare-fun lt!561807 () Bool)

(assert (=> d!136085 (= lt!561807 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!606 acc!846)))))

(declare-fun e!702765 () Bool)

(assert (=> d!136085 (= lt!561807 e!702765)))

(declare-fun res!827369 () Bool)

(assert (=> d!136085 (=> (not res!827369) (not e!702765))))

(assert (=> d!136085 (= res!827369 (is-Cons!27475 acc!846))))

(assert (=> d!136085 (= (contains!7394 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000) lt!561807)))

(declare-fun b!1239934 () Bool)

(declare-fun e!702766 () Bool)

(assert (=> b!1239934 (= e!702765 e!702766)))

(declare-fun res!827370 () Bool)

(assert (=> b!1239934 (=> res!827370 e!702766)))

(assert (=> b!1239934 (= res!827370 (= (h!28684 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1239935 () Bool)

(assert (=> b!1239935 (= e!702766 (contains!7394 (t!40949 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!136085 res!827369) b!1239934))

(assert (= (and b!1239934 (not res!827370)) b!1239935))

(assert (=> d!136085 m!1143241))

(declare-fun m!1143301 () Bool)

(assert (=> d!136085 m!1143301))

(declare-fun m!1143303 () Bool)

(assert (=> b!1239935 m!1143303))

(assert (=> b!1239822 d!136085))

(push 1)

(assert (not b!1239894))

(assert (not b!1239921))

(assert (not b!1239858))

(assert (not d!136079))

(assert (not bm!61116))

(assert (not d!136085))

(assert (not d!136055))

(assert (not b!1239933))

(assert (not b!1239935))

(assert (not b!1239891))

(assert (not b!1239932))

(assert (not b!1239893))

(assert (not b!1239923))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun call!61125 () Bool)

(declare-fun bm!61122 () Bool)

(declare-fun c!121153 () Bool)

(assert (=> bm!61122 (= call!61125 (arrayNoDuplicates!0 a!3835 (bvadd from!3213 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!121153 (Cons!27475 (select (arr!38528 a!3835) (bvadd from!3213 #b00000000000000000000000000000001)) (ite c!121141 (Cons!27475 (select (arr!38528 a!3835) from!3213) acc!846) acc!846)) (ite c!121141 (Cons!27475 (select (arr!38528 a!3835) from!3213) acc!846) acc!846))))))

(declare-fun d!136129 () Bool)

(declare-fun res!827411 () Bool)

(declare-fun e!702813 () Bool)

(assert (=> d!136129 (=> res!827411 e!702813)))

(assert (=> d!136129 (= res!827411 (bvsge (bvadd from!3213 #b00000000000000000000000000000001) (size!39065 a!3835)))))

(assert (=> d!136129 (= (arrayNoDuplicates!0 a!3835 (bvadd from!3213 #b00000000000000000000000000000001) (ite c!121141 (Cons!27475 (select (arr!38528 a!3835) from!3213) acc!846) acc!846)) e!702813)))

(declare-fun b!1239990 () Bool)

(declare-fun e!702814 () Bool)

(assert (=> b!1239990 (= e!702814 call!61125)))

(declare-fun b!1239991 () Bool)

(declare-fun e!702815 () Bool)

(assert (=> b!1239991 (= e!702815 e!702814)))

(assert (=> b!1239991 (= c!121153 (validKeyInArray!0 (select (arr!38528 a!3835) (bvadd from!3213 #b00000000000000000000000000000001))))))

(declare-fun b!1239992 () Bool)

(assert (=> b!1239992 (= e!702814 call!61125)))

(declare-fun b!1239993 () Bool)

(declare-fun e!702816 () Bool)

(assert (=> b!1239993 (= e!702816 (contains!7394 (ite c!121141 (Cons!27475 (select (arr!38528 a!3835) from!3213) acc!846) acc!846) (select (arr!38528 a!3835) (bvadd from!3213 #b00000000000000000000000000000001))))))

(declare-fun b!1239994 () Bool)

(assert (=> b!1239994 (= e!702813 e!702815)))

(declare-fun res!827410 () Bool)

(assert (=> b!1239994 (=> (not res!827410) (not e!702815))))

(assert (=> b!1239994 (= res!827410 (not e!702816))))

(declare-fun res!827409 () Bool)

(assert (=> b!1239994 (=> (not res!827409) (not e!702816))))

(assert (=> b!1239994 (= res!827409 (validKeyInArray!0 (select (arr!38528 a!3835) (bvadd from!3213 #b00000000000000000000000000000001))))))

(assert (= (and d!136129 (not res!827411)) b!1239994))

(assert (= (and b!1239994 res!827409) b!1239993))

(assert (= (and b!1239994 res!827410) b!1239991))

(assert (= (and b!1239991 c!121153) b!1239992))

(assert (= (and b!1239991 (not c!121153)) b!1239990))

(assert (= (or b!1239992 b!1239990) bm!61122))

(declare-fun m!1143387 () Bool)

(assert (=> bm!61122 m!1143387))

(declare-fun m!1143389 () Bool)

(assert (=> bm!61122 m!1143389))

(assert (=> b!1239991 m!1143387))

(assert (=> b!1239991 m!1143387))

(declare-fun m!1143391 () Bool)

(assert (=> b!1239991 m!1143391))

(assert (=> b!1239993 m!1143387))

(assert (=> b!1239993 m!1143387))

(declare-fun m!1143393 () Bool)

(assert (=> b!1239993 m!1143393))

(assert (=> b!1239994 m!1143387))

(assert (=> b!1239994 m!1143387))

(assert (=> b!1239994 m!1143391))

(assert (=> bm!61116 d!136129))

(declare-fun d!136131 () Bool)

(declare-fun c!121156 () Bool)

(assert (=> d!136131 (= c!121156 (is-Nil!27476 acc!846))))

(declare-fun e!702819 () (Set (_ BitVec 64)))

(assert (=> d!136131 (= (content!606 acc!846) e!702819)))

(declare-fun b!1239999 () Bool)

(assert (=> b!1239999 (= e!702819 (as emptyset (Set (_ BitVec 64))))))

(declare-fun b!1240000 () Bool)

(assert (=> b!1240000 (= e!702819 (union (insert (h!28684 acc!846) (as emptyset (Set (_ BitVec 64)))) (content!606 (t!40949 acc!846))))))

(assert (= (and d!136131 c!121156) b!1239999))

(assert (= (and d!136131 (not c!121156)) b!1240000))

(declare-fun m!1143395 () Bool)

(assert (=> b!1240000 m!1143395))

(declare-fun m!1143397 () Bool)

(assert (=> b!1240000 m!1143397))

(assert (=> d!136085 d!136131))

(declare-fun d!136133 () Bool)

(assert (=> d!136133 (= (validKeyInArray!0 (select (arr!38528 a!3835) from!3213)) (and (not (= (select (arr!38528 a!3835) from!3213) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38528 a!3835) from!3213) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1239894 d!136133))

(declare-fun d!136135 () Bool)

(declare-fun lt!561819 () Bool)

(assert (=> d!136135 (= lt!561819 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!606 (t!40949 acc!846))))))

(declare-fun e!702820 () Bool)

(assert (=> d!136135 (= lt!561819 e!702820)))

(declare-fun res!827412 () Bool)

(assert (=> d!136135 (=> (not res!827412) (not e!702820))))

(assert (=> d!136135 (= res!827412 (is-Cons!27475 (t!40949 acc!846)))))

(assert (=> d!136135 (= (contains!7394 (t!40949 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000) lt!561819)))

(declare-fun b!1240001 () Bool)

(declare-fun e!702821 () Bool)

(assert (=> b!1240001 (= e!702820 e!702821)))

(declare-fun res!827413 () Bool)

(assert (=> b!1240001 (=> res!827413 e!702821)))

(assert (=> b!1240001 (= res!827413 (= (h!28684 (t!40949 acc!846)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1240002 () Bool)

(assert (=> b!1240002 (= e!702821 (contains!7394 (t!40949 (t!40949 acc!846)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!136135 res!827412) b!1240001))

(assert (= (and b!1240001 (not res!827413)) b!1240002))

(assert (=> d!136135 m!1143397))

(declare-fun m!1143399 () Bool)

(assert (=> d!136135 m!1143399))

(declare-fun m!1143401 () Bool)

(assert (=> b!1240002 m!1143401))

(assert (=> b!1239935 d!136135))

(assert (=> d!136055 d!136131))

(assert (=> d!136079 d!136131))

(declare-fun lt!561820 () Bool)

(declare-fun d!136137 () Bool)

(assert (=> d!136137 (= lt!561820 (member (select (arr!38528 a!3835) from!3213) (content!606 acc!846)))))

(declare-fun e!702822 () Bool)

(assert (=> d!136137 (= lt!561820 e!702822)))

(declare-fun res!827414 () Bool)

(assert (=> d!136137 (=> (not res!827414) (not e!702822))))

(assert (=> d!136137 (= res!827414 (is-Cons!27475 acc!846))))

(assert (=> d!136137 (= (contains!7394 acc!846 (select (arr!38528 a!3835) from!3213)) lt!561820)))

(declare-fun b!1240003 () Bool)

(declare-fun e!702823 () Bool)

(assert (=> b!1240003 (= e!702822 e!702823)))

(declare-fun res!827415 () Bool)

(assert (=> b!1240003 (=> res!827415 e!702823)))

(assert (=> b!1240003 (= res!827415 (= (h!28684 acc!846) (select (arr!38528 a!3835) from!3213)))))

(declare-fun b!1240004 () Bool)

(assert (=> b!1240004 (= e!702823 (contains!7394 (t!40949 acc!846) (select (arr!38528 a!3835) from!3213)))))

(assert (= (and d!136137 res!827414) b!1240003))

(assert (= (and b!1240003 (not res!827415)) b!1240004))

(assert (=> d!136137 m!1143241))

(assert (=> d!136137 m!1143271))

(declare-fun m!1143403 () Bool)

(assert (=> d!136137 m!1143403))

(assert (=> b!1240004 m!1143271))

(declare-fun m!1143405 () Bool)

(assert (=> b!1240004 m!1143405))

(assert (=> b!1239893 d!136137))

(declare-fun d!136139 () Bool)

(declare-fun res!827416 () Bool)

(declare-fun e!702824 () Bool)

(assert (=> d!136139 (=> res!827416 e!702824)))

(assert (=> d!136139 (= res!827416 (is-Nil!27476 (t!40949 acc!846)))))

