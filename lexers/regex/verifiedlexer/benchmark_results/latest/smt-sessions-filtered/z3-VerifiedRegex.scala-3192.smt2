; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!186220 () Bool)

(assert start!186220)

(declare-fun b!1862160 () Bool)

(declare-fun e!1189087 () Bool)

(declare-datatypes ((T!32962 0))(
  ( (T!32963 (val!5920 Int)) )
))
(declare-datatypes ((List!20737 0))(
  ( (Nil!20655) (Cons!20655 (h!26056 T!32962) (t!172786 List!20737)) )
))
(declare-datatypes ((IArray!13705 0))(
  ( (IArray!13706 (innerList!6910 List!20737)) )
))
(declare-datatypes ((Conc!6850 0))(
  ( (Node!6850 (left!16628 Conc!6850) (right!16958 Conc!6850) (csize!13930 Int) (cheight!7061 Int)) (Leaf!10043 (xs!9726 IArray!13705) (csize!13931 Int)) (Empty!6850) )
))
(declare-fun t!4595 () Conc!6850)

(declare-fun list!8418 (Conc!6850) List!20737)

(assert (=> b!1862160 (= e!1189087 (= (list!8418 t!4595) Nil!20655))))

(declare-fun b!1862161 () Bool)

(declare-fun tp!530608 () Bool)

(declare-fun e!1189085 () Bool)

(declare-fun tp!530606 () Bool)

(declare-fun inv!27243 (Conc!6850) Bool)

(assert (=> b!1862161 (= e!1189085 (and (inv!27243 (left!16628 t!4595)) tp!530606 (inv!27243 (right!16958 t!4595)) tp!530608))))

(declare-fun res!833868 () Bool)

(assert (=> start!186220 (=> (not res!833868) (not e!1189087))))

(declare-fun isBalanced!2151 (Conc!6850) Bool)

(assert (=> start!186220 (= res!833868 (isBalanced!2151 t!4595))))

(assert (=> start!186220 e!1189087))

(assert (=> start!186220 (and (inv!27243 t!4595) e!1189085)))

(declare-fun b!1862162 () Bool)

(declare-fun e!1189086 () Bool)

(declare-fun inv!27244 (IArray!13705) Bool)

(assert (=> b!1862162 (= e!1189085 (and (inv!27244 (xs!9726 t!4595)) e!1189086))))

(declare-fun b!1862163 () Bool)

(declare-fun res!833869 () Bool)

(assert (=> b!1862163 (=> (not res!833869) (not e!1189087))))

(declare-fun isEmpty!12857 (Conc!6850) Bool)

(assert (=> b!1862163 (= res!833869 (isEmpty!12857 (left!16628 t!4595)))))

(declare-fun b!1862164 () Bool)

(declare-fun res!833871 () Bool)

(assert (=> b!1862164 (=> (not res!833871) (not e!1189087))))

(declare-fun tail!2807 (Conc!6850) Conc!6850)

(assert (=> b!1862164 (= res!833871 (isBalanced!2151 (tail!2807 (right!16958 t!4595))))))

(declare-fun b!1862165 () Bool)

(declare-fun res!833870 () Bool)

(assert (=> b!1862165 (=> (not res!833870) (not e!1189087))))

(assert (=> b!1862165 (= res!833870 (not (isEmpty!12857 t!4595)))))

(declare-fun b!1862166 () Bool)

(declare-fun tp!530607 () Bool)

(assert (=> b!1862166 (= e!1189086 tp!530607)))

(declare-fun b!1862167 () Bool)

(declare-fun res!833867 () Bool)

(assert (=> b!1862167 (=> (not res!833867) (not e!1189087))))

(get-info :version)

(assert (=> b!1862167 (= res!833867 (and (not ((_ is Leaf!10043) t!4595)) ((_ is Node!6850) t!4595)))))

(assert (= (and start!186220 res!833868) b!1862165))

(assert (= (and b!1862165 res!833870) b!1862167))

(assert (= (and b!1862167 res!833867) b!1862163))

(assert (= (and b!1862163 res!833869) b!1862164))

(assert (= (and b!1862164 res!833871) b!1862160))

(assert (= (and start!186220 ((_ is Node!6850) t!4595)) b!1862161))

(assert (= b!1862162 b!1862166))

(assert (= (and start!186220 ((_ is Leaf!10043) t!4595)) b!1862162))

(declare-fun m!2285847 () Bool)

(assert (=> b!1862163 m!2285847))

(declare-fun m!2285849 () Bool)

(assert (=> b!1862160 m!2285849))

(declare-fun m!2285851 () Bool)

(assert (=> b!1862164 m!2285851))

(assert (=> b!1862164 m!2285851))

(declare-fun m!2285853 () Bool)

(assert (=> b!1862164 m!2285853))

(declare-fun m!2285855 () Bool)

(assert (=> start!186220 m!2285855))

(declare-fun m!2285857 () Bool)

(assert (=> start!186220 m!2285857))

(declare-fun m!2285859 () Bool)

(assert (=> b!1862165 m!2285859))

(declare-fun m!2285861 () Bool)

(assert (=> b!1862161 m!2285861))

(declare-fun m!2285863 () Bool)

(assert (=> b!1862161 m!2285863))

(declare-fun m!2285865 () Bool)

(assert (=> b!1862162 m!2285865))

(check-sat (not b!1862165) (not b!1862160) (not b!1862166) (not b!1862161) (not start!186220) (not b!1862163) (not b!1862164) (not b!1862162))
(check-sat)
(get-model)

(declare-fun b!1862198 () Bool)

(declare-fun res!833903 () Bool)

(declare-fun e!1189098 () Bool)

(assert (=> b!1862198 (=> (not res!833903) (not e!1189098))))

(assert (=> b!1862198 (= res!833903 (not (isEmpty!12857 (left!16628 t!4595))))))

(declare-fun b!1862199 () Bool)

(declare-fun res!833906 () Bool)

(assert (=> b!1862199 (=> (not res!833906) (not e!1189098))))

(assert (=> b!1862199 (= res!833906 (isBalanced!2151 (left!16628 t!4595)))))

(declare-fun b!1862200 () Bool)

(assert (=> b!1862200 (= e!1189098 (not (isEmpty!12857 (right!16958 t!4595))))))

(declare-fun b!1862201 () Bool)

(declare-fun res!833904 () Bool)

(assert (=> b!1862201 (=> (not res!833904) (not e!1189098))))

(declare-fun height!1043 (Conc!6850) Int)

(assert (=> b!1862201 (= res!833904 (<= (- (height!1043 (left!16628 t!4595)) (height!1043 (right!16958 t!4595))) 1))))

(declare-fun b!1862202 () Bool)

(declare-fun res!833905 () Bool)

(assert (=> b!1862202 (=> (not res!833905) (not e!1189098))))

(assert (=> b!1862202 (= res!833905 (isBalanced!2151 (right!16958 t!4595)))))

(declare-fun b!1862203 () Bool)

(declare-fun e!1189099 () Bool)

(assert (=> b!1862203 (= e!1189099 e!1189098)))

(declare-fun res!833907 () Bool)

(assert (=> b!1862203 (=> (not res!833907) (not e!1189098))))

(assert (=> b!1862203 (= res!833907 (<= (- 1) (- (height!1043 (left!16628 t!4595)) (height!1043 (right!16958 t!4595)))))))

(declare-fun d!568279 () Bool)

(declare-fun res!833902 () Bool)

(assert (=> d!568279 (=> res!833902 e!1189099)))

(assert (=> d!568279 (= res!833902 (not ((_ is Node!6850) t!4595)))))

(assert (=> d!568279 (= (isBalanced!2151 t!4595) e!1189099)))

(assert (= (and d!568279 (not res!833902)) b!1862203))

(assert (= (and b!1862203 res!833907) b!1862201))

(assert (= (and b!1862201 res!833904) b!1862199))

(assert (= (and b!1862199 res!833906) b!1862202))

(assert (= (and b!1862202 res!833905) b!1862198))

(assert (= (and b!1862198 res!833903) b!1862200))

(declare-fun m!2285879 () Bool)

(assert (=> b!1862202 m!2285879))

(declare-fun m!2285881 () Bool)

(assert (=> b!1862203 m!2285881))

(declare-fun m!2285883 () Bool)

(assert (=> b!1862203 m!2285883))

(assert (=> b!1862198 m!2285847))

(assert (=> b!1862201 m!2285881))

(assert (=> b!1862201 m!2285883))

(declare-fun m!2285885 () Bool)

(assert (=> b!1862199 m!2285885))

(declare-fun m!2285887 () Bool)

(assert (=> b!1862200 m!2285887))

(assert (=> start!186220 d!568279))

(declare-fun d!568283 () Bool)

(declare-fun c!303242 () Bool)

(assert (=> d!568283 (= c!303242 ((_ is Node!6850) t!4595))))

(declare-fun e!1189104 () Bool)

(assert (=> d!568283 (= (inv!27243 t!4595) e!1189104)))

(declare-fun b!1862210 () Bool)

(declare-fun inv!27245 (Conc!6850) Bool)

(assert (=> b!1862210 (= e!1189104 (inv!27245 t!4595))))

(declare-fun b!1862211 () Bool)

(declare-fun e!1189105 () Bool)

(assert (=> b!1862211 (= e!1189104 e!1189105)))

(declare-fun res!833910 () Bool)

(assert (=> b!1862211 (= res!833910 (not ((_ is Leaf!10043) t!4595)))))

(assert (=> b!1862211 (=> res!833910 e!1189105)))

(declare-fun b!1862212 () Bool)

(declare-fun inv!27246 (Conc!6850) Bool)

(assert (=> b!1862212 (= e!1189105 (inv!27246 t!4595))))

(assert (= (and d!568283 c!303242) b!1862210))

(assert (= (and d!568283 (not c!303242)) b!1862211))

(assert (= (and b!1862211 (not res!833910)) b!1862212))

(declare-fun m!2285889 () Bool)

(assert (=> b!1862210 m!2285889))

(declare-fun m!2285891 () Bool)

(assert (=> b!1862212 m!2285891))

(assert (=> start!186220 d!568283))

(declare-fun d!568285 () Bool)

(declare-fun lt!717884 () Bool)

(declare-fun isEmpty!12858 (List!20737) Bool)

(assert (=> d!568285 (= lt!717884 (isEmpty!12858 (list!8418 (left!16628 t!4595))))))

(declare-fun size!16350 (Conc!6850) Int)

(assert (=> d!568285 (= lt!717884 (= (size!16350 (left!16628 t!4595)) 0))))

(assert (=> d!568285 (= (isEmpty!12857 (left!16628 t!4595)) lt!717884)))

(declare-fun bs!411548 () Bool)

(assert (= bs!411548 d!568285))

(declare-fun m!2285893 () Bool)

(assert (=> bs!411548 m!2285893))

(assert (=> bs!411548 m!2285893))

(declare-fun m!2285895 () Bool)

(assert (=> bs!411548 m!2285895))

(declare-fun m!2285897 () Bool)

(assert (=> bs!411548 m!2285897))

(assert (=> b!1862163 d!568285))

(declare-fun b!1862213 () Bool)

(declare-fun res!833912 () Bool)

(declare-fun e!1189106 () Bool)

(assert (=> b!1862213 (=> (not res!833912) (not e!1189106))))

(assert (=> b!1862213 (= res!833912 (not (isEmpty!12857 (left!16628 (tail!2807 (right!16958 t!4595))))))))

(declare-fun b!1862214 () Bool)

(declare-fun res!833915 () Bool)

(assert (=> b!1862214 (=> (not res!833915) (not e!1189106))))

(assert (=> b!1862214 (= res!833915 (isBalanced!2151 (left!16628 (tail!2807 (right!16958 t!4595)))))))

(declare-fun b!1862215 () Bool)

(assert (=> b!1862215 (= e!1189106 (not (isEmpty!12857 (right!16958 (tail!2807 (right!16958 t!4595))))))))

(declare-fun b!1862216 () Bool)

(declare-fun res!833913 () Bool)

(assert (=> b!1862216 (=> (not res!833913) (not e!1189106))))

(assert (=> b!1862216 (= res!833913 (<= (- (height!1043 (left!16628 (tail!2807 (right!16958 t!4595)))) (height!1043 (right!16958 (tail!2807 (right!16958 t!4595))))) 1))))

(declare-fun b!1862217 () Bool)

(declare-fun res!833914 () Bool)

(assert (=> b!1862217 (=> (not res!833914) (not e!1189106))))

(assert (=> b!1862217 (= res!833914 (isBalanced!2151 (right!16958 (tail!2807 (right!16958 t!4595)))))))

(declare-fun b!1862218 () Bool)

(declare-fun e!1189107 () Bool)

(assert (=> b!1862218 (= e!1189107 e!1189106)))

(declare-fun res!833916 () Bool)

(assert (=> b!1862218 (=> (not res!833916) (not e!1189106))))

(assert (=> b!1862218 (= res!833916 (<= (- 1) (- (height!1043 (left!16628 (tail!2807 (right!16958 t!4595)))) (height!1043 (right!16958 (tail!2807 (right!16958 t!4595)))))))))

(declare-fun d!568287 () Bool)

(declare-fun res!833911 () Bool)

(assert (=> d!568287 (=> res!833911 e!1189107)))

(assert (=> d!568287 (= res!833911 (not ((_ is Node!6850) (tail!2807 (right!16958 t!4595)))))))

(assert (=> d!568287 (= (isBalanced!2151 (tail!2807 (right!16958 t!4595))) e!1189107)))

(assert (= (and d!568287 (not res!833911)) b!1862218))

(assert (= (and b!1862218 res!833916) b!1862216))

(assert (= (and b!1862216 res!833913) b!1862214))

(assert (= (and b!1862214 res!833915) b!1862217))

(assert (= (and b!1862217 res!833914) b!1862213))

(assert (= (and b!1862213 res!833912) b!1862215))

(declare-fun m!2285899 () Bool)

(assert (=> b!1862217 m!2285899))

(declare-fun m!2285901 () Bool)

(assert (=> b!1862218 m!2285901))

(declare-fun m!2285903 () Bool)

(assert (=> b!1862218 m!2285903))

(declare-fun m!2285905 () Bool)

(assert (=> b!1862213 m!2285905))

(assert (=> b!1862216 m!2285901))

(assert (=> b!1862216 m!2285903))

(declare-fun m!2285907 () Bool)

(assert (=> b!1862214 m!2285907))

(declare-fun m!2285909 () Bool)

(assert (=> b!1862215 m!2285909))

(assert (=> b!1862164 d!568287))

(declare-fun b!1862274 () Bool)

(declare-fun e!1189141 () Conc!6850)

(declare-fun e!1189143 () Conc!6850)

(assert (=> b!1862274 (= e!1189141 e!1189143)))

(declare-fun c!303262 () Bool)

(assert (=> b!1862274 (= c!303262 (= (csize!13931 (right!16958 t!4595)) 1))))

(declare-fun lt!717931 () List!20737)

(declare-fun call!115704 () List!20737)

(declare-fun lt!717932 () List!20737)

(declare-fun c!303261 () Bool)

(declare-fun bm!115699 () Bool)

(declare-fun tail!2809 (List!20737) List!20737)

(assert (=> bm!115699 (= call!115704 (tail!2809 (ite c!303261 lt!717931 lt!717932)))))

(declare-fun b!1862275 () Bool)

(assert (=> b!1862275 (= e!1189143 Empty!6850)))

(declare-fun b!1862277 () Bool)

(declare-fun e!1189144 () Conc!6850)

(assert (=> b!1862277 (= e!1189141 e!1189144)))

(declare-fun res!833936 () Bool)

(assert (=> b!1862277 (= res!833936 ((_ is Node!6850) (right!16958 t!4595)))))

(declare-fun e!1189142 () Bool)

(assert (=> b!1862277 (=> (not res!833936) (not e!1189142))))

(declare-fun c!303263 () Bool)

(assert (=> b!1862277 (= c!303263 e!1189142)))

(declare-fun bm!115700 () Bool)

(declare-fun call!115705 () Conc!6850)

(assert (=> bm!115700 (= call!115705 (tail!2807 (ite c!303263 (right!16958 (right!16958 t!4595)) (left!16628 (right!16958 t!4595)))))))

(declare-fun b!1862278 () Bool)

(declare-datatypes ((Unit!35267 0))(
  ( (Unit!35268) )
))
(declare-fun lt!717933 () Unit!35267)

(declare-fun lt!717935 () Unit!35267)

(assert (=> b!1862278 (= lt!717933 lt!717935)))

(declare-fun lt!717928 () List!20737)

(declare-fun ++!5579 (List!20737 List!20737) List!20737)

(assert (=> b!1862278 (= (tail!2809 (++!5579 lt!717932 lt!717928)) (++!5579 call!115704 lt!717928))))

(declare-fun lemmaTailOfConcatIsTailConcat!24 (List!20737 List!20737) Unit!35267)

(assert (=> b!1862278 (= lt!717935 (lemmaTailOfConcatIsTailConcat!24 lt!717932 lt!717928))))

(assert (=> b!1862278 (= lt!717928 (list!8418 (right!16958 (right!16958 t!4595))))))

(assert (=> b!1862278 (= lt!717932 (list!8418 (left!16628 (right!16958 t!4595))))))

(declare-fun ++!5580 (Conc!6850 Conc!6850) Conc!6850)

(assert (=> b!1862278 (= e!1189144 (++!5580 call!115705 (right!16958 (right!16958 t!4595))))))

(declare-fun b!1862279 () Bool)

(assert (=> b!1862279 (= e!1189144 call!115705)))

(declare-fun b!1862276 () Bool)

(declare-fun e!1189145 () Bool)

(declare-fun lt!717930 () Conc!6850)

(assert (=> b!1862276 (= e!1189145 (= (list!8418 lt!717930) (tail!2809 (list!8418 (right!16958 t!4595)))))))

(declare-fun d!568289 () Bool)

(assert (=> d!568289 e!1189145))

(declare-fun res!833937 () Bool)

(assert (=> d!568289 (=> (not res!833937) (not e!1189145))))

(assert (=> d!568289 (= res!833937 (isBalanced!2151 lt!717930))))

(assert (=> d!568289 (= lt!717930 e!1189141)))

(assert (=> d!568289 (= c!303261 ((_ is Leaf!10043) (right!16958 t!4595)))))

(assert (=> d!568289 (isBalanced!2151 (right!16958 t!4595))))

(assert (=> d!568289 (= (tail!2807 (right!16958 t!4595)) lt!717930)))

(declare-fun b!1862280 () Bool)

(declare-fun lt!717929 () Unit!35267)

(declare-fun lt!717934 () Unit!35267)

(assert (=> b!1862280 (= lt!717929 lt!717934)))

(declare-fun slice!564 (List!20737 Int Int) List!20737)

(declare-fun size!16351 (List!20737) Int)

(assert (=> b!1862280 (= call!115704 (slice!564 lt!717931 1 (size!16351 lt!717931)))))

(declare-fun sliceTailLemma!28 (List!20737) Unit!35267)

(assert (=> b!1862280 (= lt!717934 (sliceTailLemma!28 lt!717931))))

(declare-fun list!8420 (IArray!13705) List!20737)

(assert (=> b!1862280 (= lt!717931 (list!8420 (xs!9726 (right!16958 t!4595))))))

(declare-fun slice!565 (IArray!13705 Int Int) IArray!13705)

(assert (=> b!1862280 (= e!1189143 (Leaf!10043 (slice!565 (xs!9726 (right!16958 t!4595)) 1 (csize!13931 (right!16958 t!4595))) (- (csize!13931 (right!16958 t!4595)) 1)))))

(declare-fun b!1862281 () Bool)

(assert (=> b!1862281 (= e!1189142 (isEmpty!12857 (left!16628 (right!16958 t!4595))))))

(assert (= (and d!568289 c!303261) b!1862274))

(assert (= (and d!568289 (not c!303261)) b!1862277))

(assert (= (and b!1862274 c!303262) b!1862275))

(assert (= (and b!1862274 (not c!303262)) b!1862280))

(assert (= (and b!1862277 res!833936) b!1862281))

(assert (= (and b!1862277 c!303263) b!1862279))

(assert (= (and b!1862277 (not c!303263)) b!1862278))

(assert (= (or b!1862279 b!1862278) bm!115700))

(assert (= (or b!1862280 b!1862278) bm!115699))

(assert (= (and d!568289 res!833937) b!1862276))

(declare-fun m!2285975 () Bool)

(assert (=> bm!115700 m!2285975))

(declare-fun m!2285977 () Bool)

(assert (=> b!1862280 m!2285977))

(declare-fun m!2285979 () Bool)

(assert (=> b!1862280 m!2285979))

(declare-fun m!2285981 () Bool)

(assert (=> b!1862280 m!2285981))

(declare-fun m!2285983 () Bool)

(assert (=> b!1862280 m!2285983))

(declare-fun m!2285985 () Bool)

(assert (=> b!1862280 m!2285985))

(assert (=> b!1862280 m!2285979))

(declare-fun m!2285987 () Bool)

(assert (=> d!568289 m!2285987))

(assert (=> d!568289 m!2285879))

(declare-fun m!2285989 () Bool)

(assert (=> b!1862281 m!2285989))

(declare-fun m!2285991 () Bool)

(assert (=> b!1862278 m!2285991))

(assert (=> b!1862278 m!2285991))

(declare-fun m!2285993 () Bool)

(assert (=> b!1862278 m!2285993))

(declare-fun m!2285995 () Bool)

(assert (=> b!1862278 m!2285995))

(declare-fun m!2285997 () Bool)

(assert (=> b!1862278 m!2285997))

(declare-fun m!2285999 () Bool)

(assert (=> b!1862278 m!2285999))

(declare-fun m!2286001 () Bool)

(assert (=> b!1862278 m!2286001))

(declare-fun m!2286003 () Bool)

(assert (=> b!1862278 m!2286003))

(declare-fun m!2286007 () Bool)

(assert (=> bm!115699 m!2286007))

(declare-fun m!2286009 () Bool)

(assert (=> b!1862276 m!2286009))

(declare-fun m!2286011 () Bool)

(assert (=> b!1862276 m!2286011))

(assert (=> b!1862276 m!2286011))

(declare-fun m!2286013 () Bool)

(assert (=> b!1862276 m!2286013))

(assert (=> b!1862164 d!568289))

(declare-fun b!1862310 () Bool)

(declare-fun e!1189161 () List!20737)

(assert (=> b!1862310 (= e!1189161 (list!8420 (xs!9726 t!4595)))))

(declare-fun b!1862311 () Bool)

(assert (=> b!1862311 (= e!1189161 (++!5579 (list!8418 (left!16628 t!4595)) (list!8418 (right!16958 t!4595))))))

(declare-fun b!1862309 () Bool)

(declare-fun e!1189160 () List!20737)

(assert (=> b!1862309 (= e!1189160 e!1189161)))

(declare-fun c!303277 () Bool)

(assert (=> b!1862309 (= c!303277 ((_ is Leaf!10043) t!4595))))

(declare-fun b!1862308 () Bool)

(assert (=> b!1862308 (= e!1189160 Nil!20655)))

(declare-fun d!568305 () Bool)

(declare-fun c!303276 () Bool)

(assert (=> d!568305 (= c!303276 ((_ is Empty!6850) t!4595))))

(assert (=> d!568305 (= (list!8418 t!4595) e!1189160)))

(assert (= (and d!568305 c!303276) b!1862308))

(assert (= (and d!568305 (not c!303276)) b!1862309))

(assert (= (and b!1862309 c!303277) b!1862310))

(assert (= (and b!1862309 (not c!303277)) b!1862311))

(declare-fun m!2286025 () Bool)

(assert (=> b!1862310 m!2286025))

(assert (=> b!1862311 m!2285893))

(assert (=> b!1862311 m!2286011))

(assert (=> b!1862311 m!2285893))

(assert (=> b!1862311 m!2286011))

(declare-fun m!2286027 () Bool)

(assert (=> b!1862311 m!2286027))

(assert (=> b!1862160 d!568305))

(declare-fun d!568309 () Bool)

(declare-fun lt!717937 () Bool)

(assert (=> d!568309 (= lt!717937 (isEmpty!12858 (list!8418 t!4595)))))

(assert (=> d!568309 (= lt!717937 (= (size!16350 t!4595) 0))))

(assert (=> d!568309 (= (isEmpty!12857 t!4595) lt!717937)))

(declare-fun bs!411552 () Bool)

(assert (= bs!411552 d!568309))

(assert (=> bs!411552 m!2285849))

(assert (=> bs!411552 m!2285849))

(declare-fun m!2286029 () Bool)

(assert (=> bs!411552 m!2286029))

(declare-fun m!2286031 () Bool)

(assert (=> bs!411552 m!2286031))

(assert (=> b!1862165 d!568309))

(declare-fun d!568311 () Bool)

(declare-fun c!303278 () Bool)

(assert (=> d!568311 (= c!303278 ((_ is Node!6850) (left!16628 t!4595)))))

(declare-fun e!1189166 () Bool)

(assert (=> d!568311 (= (inv!27243 (left!16628 t!4595)) e!1189166)))

(declare-fun b!1862320 () Bool)

(assert (=> b!1862320 (= e!1189166 (inv!27245 (left!16628 t!4595)))))

(declare-fun b!1862321 () Bool)

(declare-fun e!1189167 () Bool)

(assert (=> b!1862321 (= e!1189166 e!1189167)))

(declare-fun res!833940 () Bool)

(assert (=> b!1862321 (= res!833940 (not ((_ is Leaf!10043) (left!16628 t!4595))))))

(assert (=> b!1862321 (=> res!833940 e!1189167)))

(declare-fun b!1862322 () Bool)

(assert (=> b!1862322 (= e!1189167 (inv!27246 (left!16628 t!4595)))))

(assert (= (and d!568311 c!303278) b!1862320))

(assert (= (and d!568311 (not c!303278)) b!1862321))

(assert (= (and b!1862321 (not res!833940)) b!1862322))

(declare-fun m!2286033 () Bool)

(assert (=> b!1862320 m!2286033))

(declare-fun m!2286035 () Bool)

(assert (=> b!1862322 m!2286035))

(assert (=> b!1862161 d!568311))

(declare-fun d!568313 () Bool)

(declare-fun c!303279 () Bool)

(assert (=> d!568313 (= c!303279 ((_ is Node!6850) (right!16958 t!4595)))))

(declare-fun e!1189168 () Bool)

(assert (=> d!568313 (= (inv!27243 (right!16958 t!4595)) e!1189168)))

(declare-fun b!1862323 () Bool)

(assert (=> b!1862323 (= e!1189168 (inv!27245 (right!16958 t!4595)))))

(declare-fun b!1862324 () Bool)

(declare-fun e!1189169 () Bool)

(assert (=> b!1862324 (= e!1189168 e!1189169)))

(declare-fun res!833941 () Bool)

(assert (=> b!1862324 (= res!833941 (not ((_ is Leaf!10043) (right!16958 t!4595))))))

(assert (=> b!1862324 (=> res!833941 e!1189169)))

(declare-fun b!1862325 () Bool)

(assert (=> b!1862325 (= e!1189169 (inv!27246 (right!16958 t!4595)))))

(assert (= (and d!568313 c!303279) b!1862323))

(assert (= (and d!568313 (not c!303279)) b!1862324))

(assert (= (and b!1862324 (not res!833941)) b!1862325))

(declare-fun m!2286037 () Bool)

(assert (=> b!1862323 m!2286037))

(declare-fun m!2286039 () Bool)

(assert (=> b!1862325 m!2286039))

(assert (=> b!1862161 d!568313))

(declare-fun d!568315 () Bool)

(assert (=> d!568315 (= (inv!27244 (xs!9726 t!4595)) (<= (size!16351 (innerList!6910 (xs!9726 t!4595))) 2147483647))))

(declare-fun bs!411553 () Bool)

(assert (= bs!411553 d!568315))

(declare-fun m!2286053 () Bool)

(assert (=> bs!411553 m!2286053))

(assert (=> b!1862162 d!568315))

(declare-fun b!1862341 () Bool)

(declare-fun e!1189179 () Bool)

(declare-fun tp_is_empty!8631 () Bool)

(declare-fun tp!530626 () Bool)

(assert (=> b!1862341 (= e!1189179 (and tp_is_empty!8631 tp!530626))))

(assert (=> b!1862166 (= tp!530607 e!1189179)))

(assert (= (and b!1862166 ((_ is Cons!20655) (innerList!6910 (xs!9726 t!4595)))) b!1862341))

(declare-fun tp!530634 () Bool)

(declare-fun tp!530633 () Bool)

(declare-fun b!1862350 () Bool)

(declare-fun e!1189185 () Bool)

(assert (=> b!1862350 (= e!1189185 (and (inv!27243 (left!16628 (left!16628 t!4595))) tp!530633 (inv!27243 (right!16958 (left!16628 t!4595))) tp!530634))))

(declare-fun b!1862352 () Bool)

(declare-fun e!1189184 () Bool)

(declare-fun tp!530635 () Bool)

(assert (=> b!1862352 (= e!1189184 tp!530635)))

(declare-fun b!1862351 () Bool)

(assert (=> b!1862351 (= e!1189185 (and (inv!27244 (xs!9726 (left!16628 t!4595))) e!1189184))))

(assert (=> b!1862161 (= tp!530606 (and (inv!27243 (left!16628 t!4595)) e!1189185))))

(assert (= (and b!1862161 ((_ is Node!6850) (left!16628 t!4595))) b!1862350))

(assert (= b!1862351 b!1862352))

(assert (= (and b!1862161 ((_ is Leaf!10043) (left!16628 t!4595))) b!1862351))

(declare-fun m!2286055 () Bool)

(assert (=> b!1862350 m!2286055))

(declare-fun m!2286057 () Bool)

(assert (=> b!1862350 m!2286057))

(declare-fun m!2286059 () Bool)

(assert (=> b!1862351 m!2286059))

(assert (=> b!1862161 m!2285861))

(declare-fun tp!530636 () Bool)

(declare-fun e!1189187 () Bool)

(declare-fun tp!530637 () Bool)

(declare-fun b!1862353 () Bool)

(assert (=> b!1862353 (= e!1189187 (and (inv!27243 (left!16628 (right!16958 t!4595))) tp!530636 (inv!27243 (right!16958 (right!16958 t!4595))) tp!530637))))

(declare-fun b!1862355 () Bool)

(declare-fun e!1189186 () Bool)

(declare-fun tp!530638 () Bool)

(assert (=> b!1862355 (= e!1189186 tp!530638)))

(declare-fun b!1862354 () Bool)

(assert (=> b!1862354 (= e!1189187 (and (inv!27244 (xs!9726 (right!16958 t!4595))) e!1189186))))

(assert (=> b!1862161 (= tp!530608 (and (inv!27243 (right!16958 t!4595)) e!1189187))))

(assert (= (and b!1862161 ((_ is Node!6850) (right!16958 t!4595))) b!1862353))

(assert (= b!1862354 b!1862355))

(assert (= (and b!1862161 ((_ is Leaf!10043) (right!16958 t!4595))) b!1862354))

(declare-fun m!2286061 () Bool)

(assert (=> b!1862353 m!2286061))

(declare-fun m!2286063 () Bool)

(assert (=> b!1862353 m!2286063))

(declare-fun m!2286065 () Bool)

(assert (=> b!1862354 m!2286065))

(assert (=> b!1862161 m!2285863))

(check-sat (not bm!115700) (not b!1862352) (not d!568289) (not b!1862202) (not b!1862322) tp_is_empty!8631 (not b!1862320) (not b!1862198) (not b!1862217) (not b!1862351) (not b!1862323) (not b!1862325) (not d!568315) (not b!1862201) (not b!1862215) (not b!1862200) (not b!1862350) (not b!1862353) (not b!1862218) (not d!568309) (not b!1862161) (not b!1862213) (not d!568285) (not b!1862199) (not b!1862341) (not bm!115699) (not b!1862280) (not b!1862276) (not b!1862214) (not b!1862355) (not b!1862212) (not b!1862216) (not b!1862311) (not b!1862203) (not b!1862354) (not b!1862210) (not b!1862281) (not b!1862310) (not b!1862278))
(check-sat)
