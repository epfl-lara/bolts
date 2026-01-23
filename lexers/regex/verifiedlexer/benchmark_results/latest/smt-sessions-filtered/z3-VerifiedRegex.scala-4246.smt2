; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!229350 () Bool)

(assert start!229350)

(declare-fun b!2323885 () Bool)

(declare-fun e!1489189 () Bool)

(declare-datatypes ((T!43922 0))(
  ( (T!43923 (val!7982 Int)) )
))
(declare-datatypes ((List!27768 0))(
  ( (Nil!27670) (Cons!27670 (h!33071 T!43922) (t!207458 List!27768)) )
))
(declare-datatypes ((IArray!18155 0))(
  ( (IArray!18156 (innerList!9135 List!27768)) )
))
(declare-fun arr!18 () IArray!18155)

(declare-fun size!21939 (List!27768) Int)

(declare-fun list!11016 (IArray!18155) List!27768)

(assert (=> b!2323885 (= e!1489189 (<= 512 (size!21939 (list!11016 arr!18))))))

(declare-datatypes ((Conc!9075 0))(
  ( (Node!9075 (left!21009 Conc!9075) (right!21339 Conc!9075) (csize!18380 Int) (cheight!9286 Int)) (Leaf!13322 (xs!12047 IArray!18155) (csize!18381 Int)) (Empty!9075) )
))
(declare-fun acc!252 () Conc!9075)

(declare-fun tp!736933 () Bool)

(declare-fun b!2323886 () Bool)

(declare-fun e!1489188 () Bool)

(declare-fun tp!736932 () Bool)

(declare-fun inv!37650 (Conc!9075) Bool)

(assert (=> b!2323886 (= e!1489188 (and (inv!37650 (left!21009 acc!252)) tp!736932 (inv!37650 (right!21339 acc!252)) tp!736933))))

(declare-fun b!2323887 () Bool)

(declare-fun e!1489191 () Bool)

(declare-fun tp!736934 () Bool)

(assert (=> b!2323887 (= e!1489191 tp!736934)))

(declare-fun b!2323889 () Bool)

(declare-fun res!992667 () Bool)

(assert (=> b!2323889 (=> res!992667 e!1489189)))

(declare-fun lt!860845 () Conc!9075)

(declare-fun isBalanced!2769 (Conc!9075) Bool)

(assert (=> b!2323889 (= res!992667 (not (isBalanced!2769 lt!860845)))))

(declare-fun b!2323890 () Bool)

(declare-fun e!1489193 () Bool)

(declare-fun tp!736935 () Bool)

(assert (=> b!2323890 (= e!1489193 tp!736935)))

(declare-fun b!2323891 () Bool)

(declare-fun e!1489192 () Bool)

(declare-fun e!1489190 () Bool)

(assert (=> b!2323891 (= e!1489192 e!1489190)))

(declare-fun res!992665 () Bool)

(assert (=> b!2323891 (=> (not res!992665) (not e!1489190))))

(declare-fun lt!860841 () Int)

(assert (=> b!2323891 (= res!992665 (> lt!860841 512))))

(declare-fun size!21940 (IArray!18155) Int)

(assert (=> b!2323891 (= lt!860841 (size!21940 arr!18))))

(declare-fun b!2323892 () Bool)

(declare-fun e!1489187 () Bool)

(assert (=> b!2323892 (= e!1489187 (not e!1489189))))

(declare-fun res!992664 () Bool)

(assert (=> b!2323892 (=> res!992664 e!1489189)))

(declare-fun lt!860848 () List!27768)

(declare-fun lt!860843 () List!27768)

(assert (=> b!2323892 (= res!992664 (not (= lt!860848 lt!860843)))))

(declare-fun lt!860842 () List!27768)

(assert (=> b!2323892 (= lt!860842 lt!860848)))

(declare-fun lt!860844 () List!27768)

(declare-fun lt!860850 () List!27768)

(declare-fun lt!860847 () List!27768)

(declare-fun ++!6827 (List!27768 List!27768) List!27768)

(assert (=> b!2323892 (= lt!860848 (++!6827 lt!860850 (++!6827 lt!860844 lt!860847)))))

(declare-datatypes ((Unit!40518 0))(
  ( (Unit!40519) )
))
(declare-fun lt!860849 () Unit!40518)

(declare-fun lemmaConcatAssociativity!1457 (List!27768 List!27768 List!27768) Unit!40518)

(assert (=> b!2323892 (= lt!860849 (lemmaConcatAssociativity!1457 lt!860850 lt!860844 lt!860847))))

(declare-fun b!2323893 () Bool)

(declare-fun inv!37651 (IArray!18155) Bool)

(assert (=> b!2323893 (= e!1489188 (and (inv!37651 (xs!12047 acc!252)) e!1489191))))

(declare-fun b!2323888 () Bool)

(assert (=> b!2323888 (= e!1489190 e!1489187)))

(declare-fun res!992666 () Bool)

(assert (=> b!2323888 (=> (not res!992666) (not e!1489187))))

(assert (=> b!2323888 (= res!992666 (= lt!860842 lt!860843))))

(declare-fun list!11017 (Conc!9075) List!27768)

(assert (=> b!2323888 (= lt!860843 (list!11017 lt!860845))))

(assert (=> b!2323888 (= lt!860842 (++!6827 (++!6827 lt!860850 lt!860844) lt!860847))))

(declare-fun lt!860846 () IArray!18155)

(assert (=> b!2323888 (= lt!860847 (list!11016 lt!860846))))

(declare-fun lt!860851 () Conc!9075)

(assert (=> b!2323888 (= lt!860844 (list!11017 lt!860851))))

(assert (=> b!2323888 (= lt!860850 (list!11017 acc!252))))

(declare-fun fromArray!33 (IArray!18155 Conc!9075) Conc!9075)

(declare-fun ++!6828 (Conc!9075 Conc!9075) Conc!9075)

(assert (=> b!2323888 (= lt!860845 (fromArray!33 lt!860846 (++!6828 acc!252 lt!860851)))))

(declare-fun slice!703 (IArray!18155 Int Int) IArray!18155)

(assert (=> b!2323888 (= lt!860846 (slice!703 arr!18 512 lt!860841))))

(assert (=> b!2323888 (= lt!860851 (Leaf!13322 (slice!703 arr!18 0 512) 512))))

(declare-fun res!992668 () Bool)

(assert (=> start!229350 (=> (not res!992668) (not e!1489192))))

(assert (=> start!229350 (= res!992668 (isBalanced!2769 acc!252))))

(assert (=> start!229350 e!1489192))

(assert (=> start!229350 (and (inv!37650 acc!252) e!1489188)))

(assert (=> start!229350 (and (inv!37651 arr!18) e!1489193)))

(assert (= (and start!229350 res!992668) b!2323891))

(assert (= (and b!2323891 res!992665) b!2323888))

(assert (= (and b!2323888 res!992666) b!2323892))

(assert (= (and b!2323892 (not res!992664)) b!2323889))

(assert (= (and b!2323889 (not res!992667)) b!2323885))

(get-info :version)

(assert (= (and start!229350 ((_ is Node!9075) acc!252)) b!2323886))

(assert (= b!2323893 b!2323887))

(assert (= (and start!229350 ((_ is Leaf!13322) acc!252)) b!2323893))

(assert (= start!229350 b!2323890))

(declare-fun m!2754241 () Bool)

(assert (=> b!2323892 m!2754241))

(assert (=> b!2323892 m!2754241))

(declare-fun m!2754243 () Bool)

(assert (=> b!2323892 m!2754243))

(declare-fun m!2754245 () Bool)

(assert (=> b!2323892 m!2754245))

(declare-fun m!2754247 () Bool)

(assert (=> b!2323886 m!2754247))

(declare-fun m!2754249 () Bool)

(assert (=> b!2323886 m!2754249))

(declare-fun m!2754251 () Bool)

(assert (=> b!2323889 m!2754251))

(declare-fun m!2754253 () Bool)

(assert (=> b!2323888 m!2754253))

(declare-fun m!2754255 () Bool)

(assert (=> b!2323888 m!2754255))

(declare-fun m!2754257 () Bool)

(assert (=> b!2323888 m!2754257))

(declare-fun m!2754259 () Bool)

(assert (=> b!2323888 m!2754259))

(declare-fun m!2754261 () Bool)

(assert (=> b!2323888 m!2754261))

(declare-fun m!2754263 () Bool)

(assert (=> b!2323888 m!2754263))

(assert (=> b!2323888 m!2754255))

(declare-fun m!2754265 () Bool)

(assert (=> b!2323888 m!2754265))

(declare-fun m!2754267 () Bool)

(assert (=> b!2323888 m!2754267))

(assert (=> b!2323888 m!2754259))

(declare-fun m!2754269 () Bool)

(assert (=> b!2323888 m!2754269))

(declare-fun m!2754271 () Bool)

(assert (=> b!2323888 m!2754271))

(declare-fun m!2754273 () Bool)

(assert (=> b!2323891 m!2754273))

(declare-fun m!2754275 () Bool)

(assert (=> b!2323885 m!2754275))

(assert (=> b!2323885 m!2754275))

(declare-fun m!2754277 () Bool)

(assert (=> b!2323885 m!2754277))

(declare-fun m!2754279 () Bool)

(assert (=> start!229350 m!2754279))

(declare-fun m!2754281 () Bool)

(assert (=> start!229350 m!2754281))

(declare-fun m!2754283 () Bool)

(assert (=> start!229350 m!2754283))

(declare-fun m!2754285 () Bool)

(assert (=> b!2323893 m!2754285))

(check-sat (not b!2323885) (not b!2323889) (not b!2323887) (not b!2323893) (not b!2323886) (not b!2323888) (not b!2323892) (not b!2323890) (not start!229350) (not b!2323891))
(check-sat)
(get-model)

(declare-fun d!688005 () Bool)

(declare-fun c!368779 () Bool)

(assert (=> d!688005 (= c!368779 ((_ is Node!9075) (left!21009 acc!252)))))

(declare-fun e!1489204 () Bool)

(assert (=> d!688005 (= (inv!37650 (left!21009 acc!252)) e!1489204)))

(declare-fun b!2323912 () Bool)

(declare-fun inv!37654 (Conc!9075) Bool)

(assert (=> b!2323912 (= e!1489204 (inv!37654 (left!21009 acc!252)))))

(declare-fun b!2323913 () Bool)

(declare-fun e!1489205 () Bool)

(assert (=> b!2323913 (= e!1489204 e!1489205)))

(declare-fun res!992677 () Bool)

(assert (=> b!2323913 (= res!992677 (not ((_ is Leaf!13322) (left!21009 acc!252))))))

(assert (=> b!2323913 (=> res!992677 e!1489205)))

(declare-fun b!2323914 () Bool)

(declare-fun inv!37655 (Conc!9075) Bool)

(assert (=> b!2323914 (= e!1489205 (inv!37655 (left!21009 acc!252)))))

(assert (= (and d!688005 c!368779) b!2323912))

(assert (= (and d!688005 (not c!368779)) b!2323913))

(assert (= (and b!2323913 (not res!992677)) b!2323914))

(declare-fun m!2754287 () Bool)

(assert (=> b!2323912 m!2754287))

(declare-fun m!2754289 () Bool)

(assert (=> b!2323914 m!2754289))

(assert (=> b!2323886 d!688005))

(declare-fun d!688007 () Bool)

(declare-fun c!368780 () Bool)

(assert (=> d!688007 (= c!368780 ((_ is Node!9075) (right!21339 acc!252)))))

(declare-fun e!1489206 () Bool)

(assert (=> d!688007 (= (inv!37650 (right!21339 acc!252)) e!1489206)))

(declare-fun b!2323915 () Bool)

(assert (=> b!2323915 (= e!1489206 (inv!37654 (right!21339 acc!252)))))

(declare-fun b!2323916 () Bool)

(declare-fun e!1489207 () Bool)

(assert (=> b!2323916 (= e!1489206 e!1489207)))

(declare-fun res!992678 () Bool)

(assert (=> b!2323916 (= res!992678 (not ((_ is Leaf!13322) (right!21339 acc!252))))))

(assert (=> b!2323916 (=> res!992678 e!1489207)))

(declare-fun b!2323917 () Bool)

(assert (=> b!2323917 (= e!1489207 (inv!37655 (right!21339 acc!252)))))

(assert (= (and d!688007 c!368780) b!2323915))

(assert (= (and d!688007 (not c!368780)) b!2323916))

(assert (= (and b!2323916 (not res!992678)) b!2323917))

(declare-fun m!2754305 () Bool)

(assert (=> b!2323915 m!2754305))

(declare-fun m!2754307 () Bool)

(assert (=> b!2323917 m!2754307))

(assert (=> b!2323886 d!688007))

(declare-fun b!2323935 () Bool)

(declare-fun res!992697 () Bool)

(declare-fun e!1489214 () Bool)

(assert (=> b!2323935 (=> (not res!992697) (not e!1489214))))

(assert (=> b!2323935 (= res!992697 (isBalanced!2769 (left!21009 acc!252)))))

(declare-fun b!2323936 () Bool)

(declare-fun res!992698 () Bool)

(assert (=> b!2323936 (=> (not res!992698) (not e!1489214))))

(assert (=> b!2323936 (= res!992698 (isBalanced!2769 (right!21339 acc!252)))))

(declare-fun b!2323937 () Bool)

(declare-fun e!1489215 () Bool)

(assert (=> b!2323937 (= e!1489215 e!1489214)))

(declare-fun res!992694 () Bool)

(assert (=> b!2323937 (=> (not res!992694) (not e!1489214))))

(declare-fun height!1334 (Conc!9075) Int)

(assert (=> b!2323937 (= res!992694 (<= (- 1) (- (height!1334 (left!21009 acc!252)) (height!1334 (right!21339 acc!252)))))))

(declare-fun b!2323934 () Bool)

(declare-fun isEmpty!15802 (Conc!9075) Bool)

(assert (=> b!2323934 (= e!1489214 (not (isEmpty!15802 (right!21339 acc!252))))))

(declare-fun d!688011 () Bool)

(declare-fun res!992696 () Bool)

(assert (=> d!688011 (=> res!992696 e!1489215)))

(assert (=> d!688011 (= res!992696 (not ((_ is Node!9075) acc!252)))))

(assert (=> d!688011 (= (isBalanced!2769 acc!252) e!1489215)))

(declare-fun b!2323938 () Bool)

(declare-fun res!992693 () Bool)

(assert (=> b!2323938 (=> (not res!992693) (not e!1489214))))

(assert (=> b!2323938 (= res!992693 (not (isEmpty!15802 (left!21009 acc!252))))))

(declare-fun b!2323939 () Bool)

(declare-fun res!992695 () Bool)

(assert (=> b!2323939 (=> (not res!992695) (not e!1489214))))

(assert (=> b!2323939 (= res!992695 (<= (- (height!1334 (left!21009 acc!252)) (height!1334 (right!21339 acc!252))) 1))))

(assert (= (and d!688011 (not res!992696)) b!2323937))

(assert (= (and b!2323937 res!992694) b!2323939))

(assert (= (and b!2323939 res!992695) b!2323935))

(assert (= (and b!2323935 res!992697) b!2323936))

(assert (= (and b!2323936 res!992698) b!2323938))

(assert (= (and b!2323938 res!992693) b!2323934))

(declare-fun m!2754327 () Bool)

(assert (=> b!2323938 m!2754327))

(declare-fun m!2754329 () Bool)

(assert (=> b!2323939 m!2754329))

(declare-fun m!2754331 () Bool)

(assert (=> b!2323939 m!2754331))

(declare-fun m!2754333 () Bool)

(assert (=> b!2323936 m!2754333))

(assert (=> b!2323937 m!2754329))

(assert (=> b!2323937 m!2754331))

(declare-fun m!2754335 () Bool)

(assert (=> b!2323935 m!2754335))

(declare-fun m!2754337 () Bool)

(assert (=> b!2323934 m!2754337))

(assert (=> start!229350 d!688011))

(declare-fun d!688019 () Bool)

(declare-fun c!368782 () Bool)

(assert (=> d!688019 (= c!368782 ((_ is Node!9075) acc!252))))

(declare-fun e!1489216 () Bool)

(assert (=> d!688019 (= (inv!37650 acc!252) e!1489216)))

(declare-fun b!2323940 () Bool)

(assert (=> b!2323940 (= e!1489216 (inv!37654 acc!252))))

(declare-fun b!2323941 () Bool)

(declare-fun e!1489217 () Bool)

(assert (=> b!2323941 (= e!1489216 e!1489217)))

(declare-fun res!992699 () Bool)

(assert (=> b!2323941 (= res!992699 (not ((_ is Leaf!13322) acc!252)))))

(assert (=> b!2323941 (=> res!992699 e!1489217)))

(declare-fun b!2323942 () Bool)

(assert (=> b!2323942 (= e!1489217 (inv!37655 acc!252))))

(assert (= (and d!688019 c!368782) b!2323940))

(assert (= (and d!688019 (not c!368782)) b!2323941))

(assert (= (and b!2323941 (not res!992699)) b!2323942))

(declare-fun m!2754339 () Bool)

(assert (=> b!2323940 m!2754339))

(declare-fun m!2754341 () Bool)

(assert (=> b!2323942 m!2754341))

(assert (=> start!229350 d!688019))

(declare-fun d!688021 () Bool)

(assert (=> d!688021 (= (inv!37651 arr!18) (<= (size!21939 (innerList!9135 arr!18)) 2147483647))))

(declare-fun bs!459188 () Bool)

(assert (= bs!459188 d!688021))

(declare-fun m!2754343 () Bool)

(assert (=> bs!459188 m!2754343))

(assert (=> start!229350 d!688021))

(declare-fun e!1489229 () List!27768)

(declare-fun b!2323970 () Bool)

(assert (=> b!2323970 (= e!1489229 (Cons!27670 (h!33071 lt!860850) (++!6827 (t!207458 lt!860850) (++!6827 lt!860844 lt!860847))))))

(declare-fun d!688023 () Bool)

(declare-fun e!1489228 () Bool)

(assert (=> d!688023 e!1489228))

(declare-fun res!992723 () Bool)

(assert (=> d!688023 (=> (not res!992723) (not e!1489228))))

(declare-fun lt!860864 () List!27768)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3746 (List!27768) (InoxSet T!43922))

(assert (=> d!688023 (= res!992723 (= (content!3746 lt!860864) ((_ map or) (content!3746 lt!860850) (content!3746 (++!6827 lt!860844 lt!860847)))))))

(assert (=> d!688023 (= lt!860864 e!1489229)))

(declare-fun c!368785 () Bool)

(assert (=> d!688023 (= c!368785 ((_ is Nil!27670) lt!860850))))

(assert (=> d!688023 (= (++!6827 lt!860850 (++!6827 lt!860844 lt!860847)) lt!860864)))

(declare-fun b!2323971 () Bool)

(declare-fun res!992722 () Bool)

(assert (=> b!2323971 (=> (not res!992722) (not e!1489228))))

(assert (=> b!2323971 (= res!992722 (= (size!21939 lt!860864) (+ (size!21939 lt!860850) (size!21939 (++!6827 lt!860844 lt!860847)))))))

(declare-fun b!2323969 () Bool)

(assert (=> b!2323969 (= e!1489229 (++!6827 lt!860844 lt!860847))))

(declare-fun b!2323972 () Bool)

(assert (=> b!2323972 (= e!1489228 (or (not (= (++!6827 lt!860844 lt!860847) Nil!27670)) (= lt!860864 lt!860850)))))

(assert (= (and d!688023 c!368785) b!2323969))

(assert (= (and d!688023 (not c!368785)) b!2323970))

(assert (= (and d!688023 res!992723) b!2323971))

(assert (= (and b!2323971 res!992722) b!2323972))

(assert (=> b!2323970 m!2754241))

(declare-fun m!2754357 () Bool)

(assert (=> b!2323970 m!2754357))

(declare-fun m!2754359 () Bool)

(assert (=> d!688023 m!2754359))

(declare-fun m!2754361 () Bool)

(assert (=> d!688023 m!2754361))

(assert (=> d!688023 m!2754241))

(declare-fun m!2754363 () Bool)

(assert (=> d!688023 m!2754363))

(declare-fun m!2754365 () Bool)

(assert (=> b!2323971 m!2754365))

(declare-fun m!2754367 () Bool)

(assert (=> b!2323971 m!2754367))

(assert (=> b!2323971 m!2754241))

(declare-fun m!2754369 () Bool)

(assert (=> b!2323971 m!2754369))

(assert (=> b!2323892 d!688023))

(declare-fun b!2323974 () Bool)

(declare-fun e!1489231 () List!27768)

(assert (=> b!2323974 (= e!1489231 (Cons!27670 (h!33071 lt!860844) (++!6827 (t!207458 lt!860844) lt!860847)))))

(declare-fun d!688027 () Bool)

(declare-fun e!1489230 () Bool)

(assert (=> d!688027 e!1489230))

(declare-fun res!992725 () Bool)

(assert (=> d!688027 (=> (not res!992725) (not e!1489230))))

(declare-fun lt!860865 () List!27768)

(assert (=> d!688027 (= res!992725 (= (content!3746 lt!860865) ((_ map or) (content!3746 lt!860844) (content!3746 lt!860847))))))

(assert (=> d!688027 (= lt!860865 e!1489231)))

(declare-fun c!368786 () Bool)

(assert (=> d!688027 (= c!368786 ((_ is Nil!27670) lt!860844))))

(assert (=> d!688027 (= (++!6827 lt!860844 lt!860847) lt!860865)))

(declare-fun b!2323975 () Bool)

(declare-fun res!992724 () Bool)

(assert (=> b!2323975 (=> (not res!992724) (not e!1489230))))

(assert (=> b!2323975 (= res!992724 (= (size!21939 lt!860865) (+ (size!21939 lt!860844) (size!21939 lt!860847))))))

(declare-fun b!2323973 () Bool)

(assert (=> b!2323973 (= e!1489231 lt!860847)))

(declare-fun b!2323976 () Bool)

(assert (=> b!2323976 (= e!1489230 (or (not (= lt!860847 Nil!27670)) (= lt!860865 lt!860844)))))

(assert (= (and d!688027 c!368786) b!2323973))

(assert (= (and d!688027 (not c!368786)) b!2323974))

(assert (= (and d!688027 res!992725) b!2323975))

(assert (= (and b!2323975 res!992724) b!2323976))

(declare-fun m!2754371 () Bool)

(assert (=> b!2323974 m!2754371))

(declare-fun m!2754373 () Bool)

(assert (=> d!688027 m!2754373))

(declare-fun m!2754375 () Bool)

(assert (=> d!688027 m!2754375))

(declare-fun m!2754377 () Bool)

(assert (=> d!688027 m!2754377))

(declare-fun m!2754379 () Bool)

(assert (=> b!2323975 m!2754379))

(declare-fun m!2754381 () Bool)

(assert (=> b!2323975 m!2754381))

(declare-fun m!2754383 () Bool)

(assert (=> b!2323975 m!2754383))

(assert (=> b!2323892 d!688027))

(declare-fun d!688029 () Bool)

(assert (=> d!688029 (= (++!6827 (++!6827 lt!860850 lt!860844) lt!860847) (++!6827 lt!860850 (++!6827 lt!860844 lt!860847)))))

(declare-fun lt!860868 () Unit!40518)

(declare-fun choose!13604 (List!27768 List!27768 List!27768) Unit!40518)

(assert (=> d!688029 (= lt!860868 (choose!13604 lt!860850 lt!860844 lt!860847))))

(assert (=> d!688029 (= (lemmaConcatAssociativity!1457 lt!860850 lt!860844 lt!860847) lt!860868)))

(declare-fun bs!459190 () Bool)

(assert (= bs!459190 d!688029))

(assert (=> bs!459190 m!2754259))

(assert (=> bs!459190 m!2754241))

(assert (=> bs!459190 m!2754243))

(assert (=> bs!459190 m!2754259))

(assert (=> bs!459190 m!2754261))

(declare-fun m!2754391 () Bool)

(assert (=> bs!459190 m!2754391))

(assert (=> bs!459190 m!2754241))

(assert (=> b!2323892 d!688029))

(declare-fun d!688035 () Bool)

(assert (=> d!688035 (= (inv!37651 (xs!12047 acc!252)) (<= (size!21939 (innerList!9135 (xs!12047 acc!252))) 2147483647))))

(declare-fun bs!459191 () Bool)

(assert (= bs!459191 d!688035))

(declare-fun m!2754393 () Bool)

(assert (=> bs!459191 m!2754393))

(assert (=> b!2323893 d!688035))

(declare-fun b!2324006 () Bool)

(declare-fun e!1489248 () List!27768)

(assert (=> b!2324006 (= e!1489248 Nil!27670)))

(declare-fun b!2324008 () Bool)

(declare-fun e!1489249 () List!27768)

(assert (=> b!2324008 (= e!1489249 (list!11016 (xs!12047 lt!860851)))))

(declare-fun d!688037 () Bool)

(declare-fun c!368800 () Bool)

(assert (=> d!688037 (= c!368800 ((_ is Empty!9075) lt!860851))))

(assert (=> d!688037 (= (list!11017 lt!860851) e!1489248)))

(declare-fun b!2324007 () Bool)

(assert (=> b!2324007 (= e!1489248 e!1489249)))

(declare-fun c!368801 () Bool)

(assert (=> b!2324007 (= c!368801 ((_ is Leaf!13322) lt!860851))))

(declare-fun b!2324009 () Bool)

(assert (=> b!2324009 (= e!1489249 (++!6827 (list!11017 (left!21009 lt!860851)) (list!11017 (right!21339 lt!860851))))))

(assert (= (and d!688037 c!368800) b!2324006))

(assert (= (and d!688037 (not c!368800)) b!2324007))

(assert (= (and b!2324007 c!368801) b!2324008))

(assert (= (and b!2324007 (not c!368801)) b!2324009))

(declare-fun m!2754403 () Bool)

(assert (=> b!2324008 m!2754403))

(declare-fun m!2754405 () Bool)

(assert (=> b!2324009 m!2754405))

(declare-fun m!2754407 () Bool)

(assert (=> b!2324009 m!2754407))

(assert (=> b!2324009 m!2754405))

(assert (=> b!2324009 m!2754407))

(declare-fun m!2754411 () Bool)

(assert (=> b!2324009 m!2754411))

(assert (=> b!2323888 d!688037))

(declare-fun d!688041 () Bool)

(declare-fun lt!860875 () IArray!18155)

(declare-fun slice!705 (List!27768 Int Int) List!27768)

(assert (=> d!688041 (= lt!860875 (IArray!18156 (slice!705 (list!11016 arr!18) 512 lt!860841)))))

(declare-fun choose!13605 (IArray!18155 Int Int) IArray!18155)

(assert (=> d!688041 (= lt!860875 (choose!13605 arr!18 512 lt!860841))))

(declare-fun e!1489257 () Bool)

(assert (=> d!688041 e!1489257))

(declare-fun res!992736 () Bool)

(assert (=> d!688041 (=> (not res!992736) (not e!1489257))))

(assert (=> d!688041 (= res!992736 (and (<= 0 512) (<= 512 lt!860841)))))

(assert (=> d!688041 (= (slice!703 arr!18 512 lt!860841) lt!860875)))

(declare-fun b!2324019 () Bool)

(assert (=> b!2324019 (= e!1489257 (<= lt!860841 (size!21940 arr!18)))))

(assert (= (and d!688041 res!992736) b!2324019))

(assert (=> d!688041 m!2754275))

(assert (=> d!688041 m!2754275))

(declare-fun m!2754425 () Bool)

(assert (=> d!688041 m!2754425))

(declare-fun m!2754427 () Bool)

(assert (=> d!688041 m!2754427))

(assert (=> b!2324019 m!2754273))

(assert (=> b!2323888 d!688041))

(declare-fun b!2324020 () Bool)

(declare-fun e!1489258 () List!27768)

(assert (=> b!2324020 (= e!1489258 Nil!27670)))

(declare-fun b!2324022 () Bool)

(declare-fun e!1489259 () List!27768)

(assert (=> b!2324022 (= e!1489259 (list!11016 (xs!12047 lt!860845)))))

(declare-fun d!688047 () Bool)

(declare-fun c!368803 () Bool)

(assert (=> d!688047 (= c!368803 ((_ is Empty!9075) lt!860845))))

(assert (=> d!688047 (= (list!11017 lt!860845) e!1489258)))

(declare-fun b!2324021 () Bool)

(assert (=> b!2324021 (= e!1489258 e!1489259)))

(declare-fun c!368804 () Bool)

(assert (=> b!2324021 (= c!368804 ((_ is Leaf!13322) lt!860845))))

(declare-fun b!2324023 () Bool)

(assert (=> b!2324023 (= e!1489259 (++!6827 (list!11017 (left!21009 lt!860845)) (list!11017 (right!21339 lt!860845))))))

(assert (= (and d!688047 c!368803) b!2324020))

(assert (= (and d!688047 (not c!368803)) b!2324021))

(assert (= (and b!2324021 c!368804) b!2324022))

(assert (= (and b!2324021 (not c!368804)) b!2324023))

(declare-fun m!2754429 () Bool)

(assert (=> b!2324022 m!2754429))

(declare-fun m!2754431 () Bool)

(assert (=> b!2324023 m!2754431))

(declare-fun m!2754433 () Bool)

(assert (=> b!2324023 m!2754433))

(assert (=> b!2324023 m!2754431))

(assert (=> b!2324023 m!2754433))

(declare-fun m!2754435 () Bool)

(assert (=> b!2324023 m!2754435))

(assert (=> b!2323888 d!688047))

(declare-fun bm!138704 () Bool)

(declare-fun call!138714 () Conc!9075)

(declare-fun call!138722 () Conc!9075)

(assert (=> bm!138704 (= call!138714 call!138722)))

(declare-fun call!138718 () Int)

(declare-fun bm!138705 () Bool)

(declare-fun c!368843 () Bool)

(declare-fun lt!860929 () Conc!9075)

(assert (=> bm!138705 (= call!138718 (height!1334 (ite c!368843 (left!21009 acc!252) lt!860929)))))

(declare-fun b!2324116 () Bool)

(declare-fun c!368847 () Bool)

(declare-fun call!138709 () Int)

(assert (=> b!2324116 (= c!368847 (>= call!138718 call!138709))))

(declare-fun e!1489315 () Conc!9075)

(declare-fun e!1489317 () Conc!9075)

(assert (=> b!2324116 (= e!1489315 e!1489317)))

(declare-fun lt!860930 () Conc!9075)

(declare-fun call!138716 () Int)

(declare-fun bm!138706 () Bool)

(assert (=> bm!138706 (= call!138716 (height!1334 (ite c!368843 lt!860930 (right!21339 lt!860851))))))

(declare-fun b!2324117 () Bool)

(declare-fun e!1489313 () Conc!9075)

(declare-fun e!1489310 () Conc!9075)

(assert (=> b!2324117 (= e!1489313 e!1489310)))

(declare-fun call!138719 () Conc!9075)

(assert (=> b!2324117 (= lt!860929 call!138719)))

(declare-fun c!368845 () Bool)

(assert (=> b!2324117 (= c!368845 (= call!138718 (- call!138709 3)))))

(declare-fun b!2324118 () Bool)

(declare-fun c!368848 () Bool)

(declare-fun call!138720 () Int)

(assert (=> b!2324118 (= c!368848 (>= call!138716 call!138720))))

(assert (=> b!2324118 (= e!1489315 e!1489313)))

(declare-fun call!138723 () Conc!9075)

(declare-fun bm!138707 () Bool)

(declare-fun c!368844 () Bool)

(declare-fun <>!216 (Conc!9075 Conc!9075) Conc!9075)

(assert (=> bm!138707 (= call!138723 (<>!216 (ite c!368843 (ite c!368844 (left!21009 (right!21339 acc!252)) (left!21009 acc!252)) (ite c!368845 lt!860929 (right!21339 (left!21009 lt!860851)))) (ite c!368843 (ite c!368844 lt!860930 (left!21009 (right!21339 acc!252))) (ite c!368845 (right!21339 (left!21009 lt!860851)) (right!21339 lt!860851)))))))

(declare-fun b!2324119 () Bool)

(declare-fun e!1489314 () Conc!9075)

(declare-fun call!138713 () Conc!9075)

(assert (=> b!2324119 (= e!1489314 call!138713)))

(declare-fun b!2324120 () Bool)

(declare-fun call!138721 () Conc!9075)

(assert (=> b!2324120 (= e!1489310 call!138721)))

(declare-fun call!138717 () Conc!9075)

(declare-fun bm!138709 () Bool)

(assert (=> bm!138709 (= call!138717 (++!6828 (ite c!368843 (ite c!368847 (right!21339 acc!252) (right!21339 (right!21339 acc!252))) acc!252) (ite c!368843 lt!860851 (ite c!368848 (left!21009 lt!860851) (left!21009 (left!21009 lt!860851))))))))

(declare-fun bm!138710 () Bool)

(declare-fun c!368850 () Bool)

(declare-fun call!138711 () Conc!9075)

(declare-fun call!138724 () Conc!9075)

(declare-fun call!138710 () Conc!9075)

(assert (=> bm!138710 (= call!138722 (<>!216 (ite c!368850 acc!252 (ite c!368843 (ite (or c!368847 c!368844) (left!21009 acc!252) call!138710) (ite c!368848 call!138719 (ite c!368845 call!138724 lt!860929)))) (ite c!368850 lt!860851 (ite c!368843 (ite c!368847 call!138711 (ite c!368844 call!138710 lt!860930)) (ite (or c!368848 c!368845) (right!21339 lt!860851) call!138724)))))))

(declare-fun b!2324121 () Bool)

(assert (=> b!2324121 (= e!1489310 call!138721)))

(declare-fun bm!138711 () Bool)

(declare-fun call!138712 () Conc!9075)

(assert (=> bm!138711 (= call!138721 call!138712)))

(declare-fun b!2324122 () Bool)

(assert (=> b!2324122 (= e!1489313 call!138712)))

(declare-fun b!2324123 () Bool)

(declare-fun e!1489311 () Bool)

(assert (=> b!2324123 (= e!1489311 (isBalanced!2769 lt!860851))))

(declare-fun bm!138712 () Bool)

(assert (=> bm!138712 (= call!138719 call!138717)))

(declare-fun e!1489316 () Bool)

(declare-fun b!2324124 () Bool)

(declare-fun lt!860932 () Conc!9075)

(assert (=> b!2324124 (= e!1489316 (= (list!11017 lt!860932) (++!6827 (list!11017 acc!252) (list!11017 lt!860851))))))

(declare-fun bm!138713 () Bool)

(assert (=> bm!138713 (= call!138709 (height!1334 (ite c!368843 (right!21339 acc!252) lt!860851)))))

(declare-fun bm!138714 () Bool)

(assert (=> bm!138714 (= call!138710 call!138723)))

(declare-fun b!2324125 () Bool)

(declare-fun e!1489312 () Conc!9075)

(assert (=> b!2324125 (= e!1489312 acc!252)))

(declare-fun b!2324126 () Bool)

(declare-fun res!992757 () Bool)

(assert (=> b!2324126 (=> (not res!992757) (not e!1489316))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2324126 (= res!992757 (<= (height!1334 lt!860932) (+ (max!0 (height!1334 acc!252) (height!1334 lt!860851)) 1)))))

(declare-fun bm!138715 () Bool)

(declare-fun call!138715 () Conc!9075)

(assert (=> bm!138715 (= call!138713 call!138715)))

(declare-fun b!2324127 () Bool)

(declare-fun e!1489309 () Conc!9075)

(assert (=> b!2324127 (= e!1489309 call!138722)))

(declare-fun bm!138716 () Bool)

(assert (=> bm!138716 (= call!138712 call!138714)))

(declare-fun b!2324128 () Bool)

(assert (=> b!2324128 (= e!1489317 e!1489314)))

(assert (=> b!2324128 (= lt!860930 call!138711)))

(assert (=> b!2324128 (= c!368844 (= call!138716 (- call!138720 3)))))

(declare-fun b!2324129 () Bool)

(declare-fun e!1489308 () Conc!9075)

(assert (=> b!2324129 (= e!1489308 lt!860851)))

(declare-fun b!2324130 () Bool)

(declare-fun res!992756 () Bool)

(assert (=> b!2324130 (=> (not res!992756) (not e!1489316))))

(assert (=> b!2324130 (= res!992756 (isBalanced!2769 lt!860932))))

(declare-fun b!2324131 () Bool)

(declare-fun res!992755 () Bool)

(assert (=> b!2324131 (=> (not res!992755) (not e!1489316))))

(assert (=> b!2324131 (= res!992755 (>= (height!1334 lt!860932) (max!0 (height!1334 acc!252) (height!1334 lt!860851))))))

(declare-fun b!2324132 () Bool)

(assert (=> b!2324132 (= e!1489308 e!1489312)))

(declare-fun c!368849 () Bool)

(assert (=> b!2324132 (= c!368849 (= lt!860851 Empty!9075))))

(declare-fun bm!138717 () Bool)

(assert (=> bm!138717 (= call!138724 call!138723)))

(declare-fun b!2324133 () Bool)

(assert (=> b!2324133 (= e!1489309 e!1489315)))

(declare-fun lt!860931 () Int)

(assert (=> b!2324133 (= c!368843 (< lt!860931 (- 1)))))

(declare-fun bm!138708 () Bool)

(assert (=> bm!138708 (= call!138715 call!138714)))

(declare-fun d!688049 () Bool)

(assert (=> d!688049 e!1489316))

(declare-fun res!992753 () Bool)

(assert (=> d!688049 (=> (not res!992753) (not e!1489316))))

(declare-fun appendAssocInst!610 (Conc!9075 Conc!9075) Bool)

(assert (=> d!688049 (= res!992753 (appendAssocInst!610 acc!252 lt!860851))))

(assert (=> d!688049 (= lt!860932 e!1489308)))

(declare-fun c!368846 () Bool)

(assert (=> d!688049 (= c!368846 (= acc!252 Empty!9075))))

(assert (=> d!688049 e!1489311))

(declare-fun res!992754 () Bool)

(assert (=> d!688049 (=> (not res!992754) (not e!1489311))))

(assert (=> d!688049 (= res!992754 (isBalanced!2769 acc!252))))

(assert (=> d!688049 (= (++!6828 acc!252 lt!860851) lt!860932)))

(declare-fun b!2324134 () Bool)

(assert (=> b!2324134 (= e!1489314 call!138713)))

(declare-fun b!2324135 () Bool)

(assert (=> b!2324135 (= c!368850 (and (<= (- 1) lt!860931) (<= lt!860931 1)))))

(assert (=> b!2324135 (= lt!860931 (- (height!1334 lt!860851) (height!1334 acc!252)))))

(assert (=> b!2324135 (= e!1489312 e!1489309)))

(declare-fun b!2324136 () Bool)

(assert (=> b!2324136 (= e!1489317 call!138715)))

(declare-fun bm!138718 () Bool)

(assert (=> bm!138718 (= call!138711 call!138717)))

(declare-fun bm!138719 () Bool)

(assert (=> bm!138719 (= call!138720 (height!1334 (ite c!368843 acc!252 (left!21009 lt!860851))))))

(assert (= (and d!688049 res!992754) b!2324123))

(assert (= (and d!688049 c!368846) b!2324129))

(assert (= (and d!688049 (not c!368846)) b!2324132))

(assert (= (and b!2324132 c!368849) b!2324125))

(assert (= (and b!2324132 (not c!368849)) b!2324135))

(assert (= (and b!2324135 c!368850) b!2324127))

(assert (= (and b!2324135 (not c!368850)) b!2324133))

(assert (= (and b!2324133 c!368843) b!2324116))

(assert (= (and b!2324133 (not c!368843)) b!2324118))

(assert (= (and b!2324116 c!368847) b!2324136))

(assert (= (and b!2324116 (not c!368847)) b!2324128))

(assert (= (and b!2324128 c!368844) b!2324119))

(assert (= (and b!2324128 (not c!368844)) b!2324134))

(assert (= (or b!2324119 b!2324134) bm!138714))

(assert (= (or b!2324119 b!2324134) bm!138715))

(assert (= (or b!2324136 b!2324128) bm!138718))

(assert (= (or b!2324136 bm!138715) bm!138708))

(assert (= (and b!2324118 c!368848) b!2324122))

(assert (= (and b!2324118 (not c!368848)) b!2324117))

(assert (= (and b!2324117 c!368845) b!2324121))

(assert (= (and b!2324117 (not c!368845)) b!2324120))

(assert (= (or b!2324121 b!2324120) bm!138717))

(assert (= (or b!2324121 b!2324120) bm!138711))

(assert (= (or b!2324122 b!2324117) bm!138712))

(assert (= (or b!2324122 bm!138711) bm!138716))

(assert (= (or b!2324128 b!2324118) bm!138706))

(assert (= (or bm!138708 bm!138716) bm!138704))

(assert (= (or b!2324116 b!2324117) bm!138713))

(assert (= (or b!2324116 b!2324117) bm!138705))

(assert (= (or bm!138714 bm!138717) bm!138707))

(assert (= (or bm!138718 bm!138712) bm!138709))

(assert (= (or b!2324128 b!2324118) bm!138719))

(assert (= (or b!2324127 bm!138704) bm!138710))

(assert (= (and d!688049 res!992753) b!2324130))

(assert (= (and b!2324130 res!992756) b!2324126))

(assert (= (and b!2324126 res!992757) b!2324131))

(assert (= (and b!2324131 res!992755) b!2324124))

(declare-fun m!2754485 () Bool)

(assert (=> bm!138705 m!2754485))

(declare-fun m!2754487 () Bool)

(assert (=> bm!138710 m!2754487))

(declare-fun m!2754489 () Bool)

(assert (=> bm!138707 m!2754489))

(declare-fun m!2754491 () Bool)

(assert (=> b!2324135 m!2754491))

(declare-fun m!2754493 () Bool)

(assert (=> b!2324135 m!2754493))

(declare-fun m!2754495 () Bool)

(assert (=> bm!138719 m!2754495))

(declare-fun m!2754497 () Bool)

(assert (=> d!688049 m!2754497))

(assert (=> d!688049 m!2754279))

(declare-fun m!2754499 () Bool)

(assert (=> b!2324130 m!2754499))

(declare-fun m!2754501 () Bool)

(assert (=> bm!138706 m!2754501))

(declare-fun m!2754503 () Bool)

(assert (=> bm!138713 m!2754503))

(declare-fun m!2754505 () Bool)

(assert (=> b!2324123 m!2754505))

(declare-fun m!2754507 () Bool)

(assert (=> bm!138709 m!2754507))

(declare-fun m!2754509 () Bool)

(assert (=> b!2324124 m!2754509))

(assert (=> b!2324124 m!2754257))

(assert (=> b!2324124 m!2754267))

(assert (=> b!2324124 m!2754257))

(assert (=> b!2324124 m!2754267))

(declare-fun m!2754511 () Bool)

(assert (=> b!2324124 m!2754511))

(declare-fun m!2754513 () Bool)

(assert (=> b!2324126 m!2754513))

(assert (=> b!2324126 m!2754493))

(assert (=> b!2324126 m!2754491))

(assert (=> b!2324126 m!2754493))

(assert (=> b!2324126 m!2754491))

(declare-fun m!2754515 () Bool)

(assert (=> b!2324126 m!2754515))

(assert (=> b!2324131 m!2754513))

(assert (=> b!2324131 m!2754493))

(assert (=> b!2324131 m!2754491))

(assert (=> b!2324131 m!2754493))

(assert (=> b!2324131 m!2754491))

(assert (=> b!2324131 m!2754515))

(assert (=> b!2323888 d!688049))

(declare-fun d!688057 () Bool)

(assert (=> d!688057 (= (list!11016 lt!860846) (innerList!9135 lt!860846))))

(assert (=> b!2323888 d!688057))

(declare-fun d!688059 () Bool)

(declare-fun lt!860933 () IArray!18155)

(assert (=> d!688059 (= lt!860933 (IArray!18156 (slice!705 (list!11016 arr!18) 0 512)))))

(assert (=> d!688059 (= lt!860933 (choose!13605 arr!18 0 512))))

(declare-fun e!1489320 () Bool)

(assert (=> d!688059 e!1489320))

(declare-fun res!992766 () Bool)

(assert (=> d!688059 (=> (not res!992766) (not e!1489320))))

(assert (=> d!688059 (= res!992766 (and (<= 0 0) (<= 0 512)))))

(assert (=> d!688059 (= (slice!703 arr!18 0 512) lt!860933)))

(declare-fun b!2324145 () Bool)

(assert (=> b!2324145 (= e!1489320 (<= 512 (size!21940 arr!18)))))

(assert (= (and d!688059 res!992766) b!2324145))

(assert (=> d!688059 m!2754275))

(assert (=> d!688059 m!2754275))

(declare-fun m!2754517 () Bool)

(assert (=> d!688059 m!2754517))

(declare-fun m!2754519 () Bool)

(assert (=> d!688059 m!2754519))

(assert (=> b!2324145 m!2754273))

(assert (=> b!2323888 d!688059))

(declare-fun b!2324146 () Bool)

(declare-fun e!1489321 () List!27768)

(assert (=> b!2324146 (= e!1489321 Nil!27670)))

(declare-fun b!2324148 () Bool)

(declare-fun e!1489322 () List!27768)

(assert (=> b!2324148 (= e!1489322 (list!11016 (xs!12047 acc!252)))))

(declare-fun d!688061 () Bool)

(declare-fun c!368851 () Bool)

(assert (=> d!688061 (= c!368851 ((_ is Empty!9075) acc!252))))

(assert (=> d!688061 (= (list!11017 acc!252) e!1489321)))

(declare-fun b!2324147 () Bool)

(assert (=> b!2324147 (= e!1489321 e!1489322)))

(declare-fun c!368852 () Bool)

(assert (=> b!2324147 (= c!368852 ((_ is Leaf!13322) acc!252))))

(declare-fun b!2324149 () Bool)

(assert (=> b!2324149 (= e!1489322 (++!6827 (list!11017 (left!21009 acc!252)) (list!11017 (right!21339 acc!252))))))

(assert (= (and d!688061 c!368851) b!2324146))

(assert (= (and d!688061 (not c!368851)) b!2324147))

(assert (= (and b!2324147 c!368852) b!2324148))

(assert (= (and b!2324147 (not c!368852)) b!2324149))

(declare-fun m!2754521 () Bool)

(assert (=> b!2324148 m!2754521))

(declare-fun m!2754523 () Bool)

(assert (=> b!2324149 m!2754523))

(declare-fun m!2754525 () Bool)

(assert (=> b!2324149 m!2754525))

(assert (=> b!2324149 m!2754523))

(assert (=> b!2324149 m!2754525))

(declare-fun m!2754527 () Bool)

(assert (=> b!2324149 m!2754527))

(assert (=> b!2323888 d!688061))

(declare-fun bm!138740 () Bool)

(declare-fun call!138745 () Int)

(assert (=> bm!138740 (= call!138745 (size!21940 lt!860846))))

(declare-fun e!1489368 () Conc!9075)

(declare-fun call!138746 () Conc!9075)

(declare-fun b!2324231 () Bool)

(assert (=> b!2324231 (= e!1489368 (fromArray!33 (slice!703 lt!860846 512 call!138745) call!138746))))

(declare-fun lt!860977 () Conc!9075)

(assert (=> b!2324231 (= lt!860977 (Leaf!13322 (slice!703 lt!860846 0 512) 512))))

(declare-fun lt!860968 () Conc!9075)

(assert (=> b!2324231 (= lt!860968 (fromArray!33 (slice!703 lt!860846 512 call!138745) call!138746))))

(declare-fun lt!860970 () List!27768)

(assert (=> b!2324231 (= lt!860970 (list!11017 (++!6828 acc!252 lt!860851)))))

(declare-fun lt!860972 () List!27768)

(assert (=> b!2324231 (= lt!860972 (list!11017 lt!860977))))

(declare-fun lt!860973 () List!27768)

(assert (=> b!2324231 (= lt!860973 (list!11016 (slice!703 lt!860846 512 call!138745)))))

(declare-fun lt!860969 () Unit!40518)

(assert (=> b!2324231 (= lt!860969 (lemmaConcatAssociativity!1457 lt!860970 lt!860972 lt!860973))))

(assert (=> b!2324231 (= (++!6827 (++!6827 lt!860970 lt!860972) lt!860973) (++!6827 lt!860970 (++!6827 lt!860972 lt!860973)))))

(declare-fun lt!860974 () Unit!40518)

(assert (=> b!2324231 (= lt!860974 lt!860969)))

(declare-fun lt!860976 () List!27768)

(assert (=> b!2324231 (= lt!860976 (list!11016 lt!860846))))

(declare-fun lt!860966 () Int)

(assert (=> b!2324231 (= lt!860966 512)))

(declare-fun lt!860967 () Unit!40518)

(declare-fun sliceSplit!22 (List!27768 Int) Unit!40518)

(assert (=> b!2324231 (= lt!860967 (sliceSplit!22 lt!860976 lt!860966))))

(assert (=> b!2324231 (= (++!6827 (slice!705 lt!860976 0 lt!860966) (slice!705 lt!860976 lt!860966 (size!21939 lt!860976))) lt!860976)))

(declare-fun lt!860975 () Unit!40518)

(assert (=> b!2324231 (= lt!860975 lt!860967)))

(declare-fun b!2324232 () Bool)

(declare-fun e!1489366 () Conc!9075)

(assert (=> b!2324232 (= e!1489366 (++!6828 acc!252 lt!860851))))

(declare-fun c!368876 () Bool)

(declare-fun bm!138741 () Bool)

(assert (=> bm!138741 (= call!138746 (++!6828 (++!6828 acc!252 lt!860851) (ite c!368876 (Leaf!13322 lt!860846 call!138745) lt!860977)))))

(declare-fun d!688063 () Bool)

(declare-fun e!1489367 () Bool)

(assert (=> d!688063 e!1489367))

(declare-fun res!992784 () Bool)

(assert (=> d!688063 (=> (not res!992784) (not e!1489367))))

(declare-fun lt!860971 () Conc!9075)

(assert (=> d!688063 (= res!992784 (isBalanced!2769 lt!860971))))

(assert (=> d!688063 (= lt!860971 e!1489368)))

(assert (=> d!688063 (= c!368876 (<= (size!21940 lt!860846) 512))))

(assert (=> d!688063 (isBalanced!2769 (++!6828 acc!252 lt!860851))))

(assert (=> d!688063 (= (fromArray!33 lt!860846 (++!6828 acc!252 lt!860851)) lt!860971)))

(declare-fun b!2324233 () Bool)

(assert (=> b!2324233 (= e!1489366 call!138746)))

(declare-fun b!2324234 () Bool)

(assert (=> b!2324234 (= e!1489367 (= (list!11017 lt!860971) (++!6827 (list!11017 (++!6828 acc!252 lt!860851)) (list!11016 lt!860846))))))

(declare-fun b!2324235 () Bool)

(assert (=> b!2324235 (= e!1489368 e!1489366)))

(declare-fun c!368875 () Bool)

(assert (=> b!2324235 (= c!368875 (= call!138745 0))))

(assert (= (and d!688063 c!368876) b!2324235))

(assert (= (and d!688063 (not c!368876)) b!2324231))

(assert (= (and b!2324235 c!368875) b!2324232))

(assert (= (and b!2324235 (not c!368875)) b!2324233))

(assert (= (or b!2324235 b!2324233 b!2324231) bm!138740))

(assert (= (or b!2324233 b!2324231) bm!138741))

(assert (= (and d!688063 res!992784) b!2324234))

(declare-fun m!2754619 () Bool)

(assert (=> bm!138740 m!2754619))

(declare-fun m!2754621 () Bool)

(assert (=> b!2324234 m!2754621))

(assert (=> b!2324234 m!2754255))

(declare-fun m!2754623 () Bool)

(assert (=> b!2324234 m!2754623))

(assert (=> b!2324234 m!2754263))

(assert (=> b!2324234 m!2754623))

(assert (=> b!2324234 m!2754263))

(declare-fun m!2754625 () Bool)

(assert (=> b!2324234 m!2754625))

(declare-fun m!2754627 () Bool)

(assert (=> d!688063 m!2754627))

(assert (=> d!688063 m!2754619))

(assert (=> d!688063 m!2754255))

(declare-fun m!2754629 () Bool)

(assert (=> d!688063 m!2754629))

(assert (=> bm!138741 m!2754255))

(declare-fun m!2754631 () Bool)

(assert (=> bm!138741 m!2754631))

(declare-fun m!2754633 () Bool)

(assert (=> b!2324231 m!2754633))

(declare-fun m!2754635 () Bool)

(assert (=> b!2324231 m!2754635))

(assert (=> b!2324231 m!2754263))

(declare-fun m!2754637 () Bool)

(assert (=> b!2324231 m!2754637))

(declare-fun m!2754639 () Bool)

(assert (=> b!2324231 m!2754639))

(declare-fun m!2754641 () Bool)

(assert (=> b!2324231 m!2754641))

(declare-fun m!2754643 () Bool)

(assert (=> b!2324231 m!2754643))

(declare-fun m!2754645 () Bool)

(assert (=> b!2324231 m!2754645))

(declare-fun m!2754647 () Bool)

(assert (=> b!2324231 m!2754647))

(declare-fun m!2754649 () Bool)

(assert (=> b!2324231 m!2754649))

(assert (=> b!2324231 m!2754647))

(declare-fun m!2754651 () Bool)

(assert (=> b!2324231 m!2754651))

(assert (=> b!2324231 m!2754649))

(declare-fun m!2754653 () Bool)

(assert (=> b!2324231 m!2754653))

(declare-fun m!2754655 () Bool)

(assert (=> b!2324231 m!2754655))

(assert (=> b!2324231 m!2754643))

(assert (=> b!2324231 m!2754651))

(declare-fun m!2754657 () Bool)

(assert (=> b!2324231 m!2754657))

(assert (=> b!2324231 m!2754255))

(assert (=> b!2324231 m!2754623))

(assert (=> b!2324231 m!2754633))

(assert (=> b!2324231 m!2754633))

(declare-fun m!2754659 () Bool)

(assert (=> b!2324231 m!2754659))

(declare-fun m!2754661 () Bool)

(assert (=> b!2324231 m!2754661))

(assert (=> b!2324231 m!2754639))

(assert (=> b!2323888 d!688063))

(declare-fun b!2324237 () Bool)

(declare-fun e!1489370 () List!27768)

(assert (=> b!2324237 (= e!1489370 (Cons!27670 (h!33071 lt!860850) (++!6827 (t!207458 lt!860850) lt!860844)))))

(declare-fun d!688083 () Bool)

(declare-fun e!1489369 () Bool)

(assert (=> d!688083 e!1489369))

(declare-fun res!992786 () Bool)

(assert (=> d!688083 (=> (not res!992786) (not e!1489369))))

(declare-fun lt!860978 () List!27768)

(assert (=> d!688083 (= res!992786 (= (content!3746 lt!860978) ((_ map or) (content!3746 lt!860850) (content!3746 lt!860844))))))

(assert (=> d!688083 (= lt!860978 e!1489370)))

(declare-fun c!368877 () Bool)

(assert (=> d!688083 (= c!368877 ((_ is Nil!27670) lt!860850))))

(assert (=> d!688083 (= (++!6827 lt!860850 lt!860844) lt!860978)))

(declare-fun b!2324238 () Bool)

(declare-fun res!992785 () Bool)

(assert (=> b!2324238 (=> (not res!992785) (not e!1489369))))

(assert (=> b!2324238 (= res!992785 (= (size!21939 lt!860978) (+ (size!21939 lt!860850) (size!21939 lt!860844))))))

(declare-fun b!2324236 () Bool)

(assert (=> b!2324236 (= e!1489370 lt!860844)))

(declare-fun b!2324239 () Bool)

(assert (=> b!2324239 (= e!1489369 (or (not (= lt!860844 Nil!27670)) (= lt!860978 lt!860850)))))

(assert (= (and d!688083 c!368877) b!2324236))

(assert (= (and d!688083 (not c!368877)) b!2324237))

(assert (= (and d!688083 res!992786) b!2324238))

(assert (= (and b!2324238 res!992785) b!2324239))

(declare-fun m!2754663 () Bool)

(assert (=> b!2324237 m!2754663))

(declare-fun m!2754665 () Bool)

(assert (=> d!688083 m!2754665))

(assert (=> d!688083 m!2754361))

(assert (=> d!688083 m!2754375))

(declare-fun m!2754667 () Bool)

(assert (=> b!2324238 m!2754667))

(assert (=> b!2324238 m!2754367))

(assert (=> b!2324238 m!2754381))

(assert (=> b!2323888 d!688083))

(declare-fun b!2324241 () Bool)

(declare-fun e!1489372 () List!27768)

(assert (=> b!2324241 (= e!1489372 (Cons!27670 (h!33071 (++!6827 lt!860850 lt!860844)) (++!6827 (t!207458 (++!6827 lt!860850 lt!860844)) lt!860847)))))

(declare-fun d!688085 () Bool)

(declare-fun e!1489371 () Bool)

(assert (=> d!688085 e!1489371))

(declare-fun res!992788 () Bool)

(assert (=> d!688085 (=> (not res!992788) (not e!1489371))))

(declare-fun lt!860979 () List!27768)

(assert (=> d!688085 (= res!992788 (= (content!3746 lt!860979) ((_ map or) (content!3746 (++!6827 lt!860850 lt!860844)) (content!3746 lt!860847))))))

(assert (=> d!688085 (= lt!860979 e!1489372)))

(declare-fun c!368878 () Bool)

(assert (=> d!688085 (= c!368878 ((_ is Nil!27670) (++!6827 lt!860850 lt!860844)))))

(assert (=> d!688085 (= (++!6827 (++!6827 lt!860850 lt!860844) lt!860847) lt!860979)))

(declare-fun b!2324242 () Bool)

(declare-fun res!992787 () Bool)

(assert (=> b!2324242 (=> (not res!992787) (not e!1489371))))

(assert (=> b!2324242 (= res!992787 (= (size!21939 lt!860979) (+ (size!21939 (++!6827 lt!860850 lt!860844)) (size!21939 lt!860847))))))

(declare-fun b!2324240 () Bool)

(assert (=> b!2324240 (= e!1489372 lt!860847)))

(declare-fun b!2324243 () Bool)

(assert (=> b!2324243 (= e!1489371 (or (not (= lt!860847 Nil!27670)) (= lt!860979 (++!6827 lt!860850 lt!860844))))))

(assert (= (and d!688085 c!368878) b!2324240))

(assert (= (and d!688085 (not c!368878)) b!2324241))

(assert (= (and d!688085 res!992788) b!2324242))

(assert (= (and b!2324242 res!992787) b!2324243))

(declare-fun m!2754669 () Bool)

(assert (=> b!2324241 m!2754669))

(declare-fun m!2754671 () Bool)

(assert (=> d!688085 m!2754671))

(assert (=> d!688085 m!2754259))

(declare-fun m!2754673 () Bool)

(assert (=> d!688085 m!2754673))

(assert (=> d!688085 m!2754377))

(declare-fun m!2754675 () Bool)

(assert (=> b!2324242 m!2754675))

(assert (=> b!2324242 m!2754259))

(declare-fun m!2754677 () Bool)

(assert (=> b!2324242 m!2754677))

(assert (=> b!2324242 m!2754383))

(assert (=> b!2323888 d!688085))

(declare-fun b!2324245 () Bool)

(declare-fun res!992793 () Bool)

(declare-fun e!1489373 () Bool)

(assert (=> b!2324245 (=> (not res!992793) (not e!1489373))))

(assert (=> b!2324245 (= res!992793 (isBalanced!2769 (left!21009 lt!860845)))))

(declare-fun b!2324246 () Bool)

(declare-fun res!992794 () Bool)

(assert (=> b!2324246 (=> (not res!992794) (not e!1489373))))

(assert (=> b!2324246 (= res!992794 (isBalanced!2769 (right!21339 lt!860845)))))

(declare-fun b!2324247 () Bool)

(declare-fun e!1489374 () Bool)

(assert (=> b!2324247 (= e!1489374 e!1489373)))

(declare-fun res!992790 () Bool)

(assert (=> b!2324247 (=> (not res!992790) (not e!1489373))))

(assert (=> b!2324247 (= res!992790 (<= (- 1) (- (height!1334 (left!21009 lt!860845)) (height!1334 (right!21339 lt!860845)))))))

(declare-fun b!2324244 () Bool)

(assert (=> b!2324244 (= e!1489373 (not (isEmpty!15802 (right!21339 lt!860845))))))

(declare-fun d!688087 () Bool)

(declare-fun res!992792 () Bool)

(assert (=> d!688087 (=> res!992792 e!1489374)))

(assert (=> d!688087 (= res!992792 (not ((_ is Node!9075) lt!860845)))))

(assert (=> d!688087 (= (isBalanced!2769 lt!860845) e!1489374)))

(declare-fun b!2324248 () Bool)

(declare-fun res!992789 () Bool)

(assert (=> b!2324248 (=> (not res!992789) (not e!1489373))))

(assert (=> b!2324248 (= res!992789 (not (isEmpty!15802 (left!21009 lt!860845))))))

(declare-fun b!2324249 () Bool)

(declare-fun res!992791 () Bool)

(assert (=> b!2324249 (=> (not res!992791) (not e!1489373))))

(assert (=> b!2324249 (= res!992791 (<= (- (height!1334 (left!21009 lt!860845)) (height!1334 (right!21339 lt!860845))) 1))))

(assert (= (and d!688087 (not res!992792)) b!2324247))

(assert (= (and b!2324247 res!992790) b!2324249))

(assert (= (and b!2324249 res!992791) b!2324245))

(assert (= (and b!2324245 res!992793) b!2324246))

(assert (= (and b!2324246 res!992794) b!2324248))

(assert (= (and b!2324248 res!992789) b!2324244))

(declare-fun m!2754679 () Bool)

(assert (=> b!2324248 m!2754679))

(declare-fun m!2754681 () Bool)

(assert (=> b!2324249 m!2754681))

(declare-fun m!2754683 () Bool)

(assert (=> b!2324249 m!2754683))

(declare-fun m!2754685 () Bool)

(assert (=> b!2324246 m!2754685))

(assert (=> b!2324247 m!2754681))

(assert (=> b!2324247 m!2754683))

(declare-fun m!2754687 () Bool)

(assert (=> b!2324245 m!2754687))

(declare-fun m!2754689 () Bool)

(assert (=> b!2324244 m!2754689))

(assert (=> b!2323889 d!688087))

(declare-fun d!688089 () Bool)

(declare-fun lt!860982 () Int)

(assert (=> d!688089 (>= lt!860982 0)))

(declare-fun e!1489377 () Int)

(assert (=> d!688089 (= lt!860982 e!1489377)))

(declare-fun c!368881 () Bool)

(assert (=> d!688089 (= c!368881 ((_ is Nil!27670) (list!11016 arr!18)))))

(assert (=> d!688089 (= (size!21939 (list!11016 arr!18)) lt!860982)))

(declare-fun b!2324254 () Bool)

(assert (=> b!2324254 (= e!1489377 0)))

(declare-fun b!2324255 () Bool)

(assert (=> b!2324255 (= e!1489377 (+ 1 (size!21939 (t!207458 (list!11016 arr!18)))))))

(assert (= (and d!688089 c!368881) b!2324254))

(assert (= (and d!688089 (not c!368881)) b!2324255))

(declare-fun m!2754691 () Bool)

(assert (=> b!2324255 m!2754691))

(assert (=> b!2323885 d!688089))

(declare-fun d!688091 () Bool)

(assert (=> d!688091 (= (list!11016 arr!18) (innerList!9135 arr!18))))

(assert (=> b!2323885 d!688091))

(declare-fun d!688093 () Bool)

(declare-fun lt!860985 () Int)

(assert (=> d!688093 (= lt!860985 (size!21939 (list!11016 arr!18)))))

(declare-fun choose!13606 (IArray!18155) Int)

(assert (=> d!688093 (= lt!860985 (choose!13606 arr!18))))

(assert (=> d!688093 (= (size!21940 arr!18) lt!860985)))

(declare-fun bs!459193 () Bool)

(assert (= bs!459193 d!688093))

(assert (=> bs!459193 m!2754275))

(assert (=> bs!459193 m!2754275))

(assert (=> bs!459193 m!2754277))

(declare-fun m!2754693 () Bool)

(assert (=> bs!459193 m!2754693))

(assert (=> b!2323891 d!688093))

(declare-fun b!2324264 () Bool)

(declare-fun e!1489383 () Bool)

(declare-fun tp!736960 () Bool)

(declare-fun tp!736958 () Bool)

(assert (=> b!2324264 (= e!1489383 (and (inv!37650 (left!21009 (left!21009 acc!252))) tp!736960 (inv!37650 (right!21339 (left!21009 acc!252))) tp!736958))))

(declare-fun b!2324266 () Bool)

(declare-fun e!1489382 () Bool)

(declare-fun tp!736959 () Bool)

(assert (=> b!2324266 (= e!1489382 tp!736959)))

(declare-fun b!2324265 () Bool)

(assert (=> b!2324265 (= e!1489383 (and (inv!37651 (xs!12047 (left!21009 acc!252))) e!1489382))))

(assert (=> b!2323886 (= tp!736932 (and (inv!37650 (left!21009 acc!252)) e!1489383))))

(assert (= (and b!2323886 ((_ is Node!9075) (left!21009 acc!252))) b!2324264))

(assert (= b!2324265 b!2324266))

(assert (= (and b!2323886 ((_ is Leaf!13322) (left!21009 acc!252))) b!2324265))

(declare-fun m!2754695 () Bool)

(assert (=> b!2324264 m!2754695))

(declare-fun m!2754697 () Bool)

(assert (=> b!2324264 m!2754697))

(declare-fun m!2754699 () Bool)

(assert (=> b!2324265 m!2754699))

(assert (=> b!2323886 m!2754247))

(declare-fun b!2324267 () Bool)

(declare-fun e!1489385 () Bool)

(declare-fun tp!736961 () Bool)

(declare-fun tp!736963 () Bool)

(assert (=> b!2324267 (= e!1489385 (and (inv!37650 (left!21009 (right!21339 acc!252))) tp!736963 (inv!37650 (right!21339 (right!21339 acc!252))) tp!736961))))

(declare-fun b!2324269 () Bool)

(declare-fun e!1489384 () Bool)

(declare-fun tp!736962 () Bool)

(assert (=> b!2324269 (= e!1489384 tp!736962)))

(declare-fun b!2324268 () Bool)

(assert (=> b!2324268 (= e!1489385 (and (inv!37651 (xs!12047 (right!21339 acc!252))) e!1489384))))

(assert (=> b!2323886 (= tp!736933 (and (inv!37650 (right!21339 acc!252)) e!1489385))))

(assert (= (and b!2323886 ((_ is Node!9075) (right!21339 acc!252))) b!2324267))

(assert (= b!2324268 b!2324269))

(assert (= (and b!2323886 ((_ is Leaf!13322) (right!21339 acc!252))) b!2324268))

(declare-fun m!2754701 () Bool)

(assert (=> b!2324267 m!2754701))

(declare-fun m!2754703 () Bool)

(assert (=> b!2324267 m!2754703))

(declare-fun m!2754705 () Bool)

(assert (=> b!2324268 m!2754705))

(assert (=> b!2323886 m!2754249))

(declare-fun b!2324274 () Bool)

(declare-fun e!1489388 () Bool)

(declare-fun tp_is_empty!10833 () Bool)

(declare-fun tp!736966 () Bool)

(assert (=> b!2324274 (= e!1489388 (and tp_is_empty!10833 tp!736966))))

(assert (=> b!2323887 (= tp!736934 e!1489388)))

(assert (= (and b!2323887 ((_ is Cons!27670) (innerList!9135 (xs!12047 acc!252)))) b!2324274))

(declare-fun b!2324275 () Bool)

(declare-fun e!1489389 () Bool)

(declare-fun tp!736967 () Bool)

(assert (=> b!2324275 (= e!1489389 (and tp_is_empty!10833 tp!736967))))

(assert (=> b!2323890 (= tp!736935 e!1489389)))

(assert (= (and b!2323890 ((_ is Cons!27670) (innerList!9135 arr!18))) b!2324275))

(check-sat (not b!2323917) (not b!2324124) (not b!2323886) (not b!2323974) (not d!688093) (not b!2324130) (not b!2323970) (not b!2324247) (not b!2324237) (not b!2324019) (not d!688085) (not d!688021) (not b!2323971) (not b!2323934) (not b!2324244) (not b!2324249) (not bm!138741) (not d!688083) (not b!2324126) (not d!688023) (not b!2324242) (not b!2323940) (not b!2324145) (not bm!138740) (not b!2323937) (not b!2323939) (not b!2324231) (not bm!138719) (not b!2324266) (not b!2324008) (not b!2324009) (not b!2324238) (not b!2324135) (not b!2324131) (not b!2324022) (not b!2324264) (not b!2323914) (not b!2324274) (not d!688063) (not d!688059) (not b!2323935) (not b!2323915) (not b!2324246) (not bm!138710) (not b!2324023) (not bm!138709) (not d!688029) (not d!688041) (not b!2323975) (not b!2324148) (not bm!138707) (not bm!138706) (not b!2324267) (not b!2323912) (not bm!138713) (not b!2324255) (not b!2323938) (not b!2324234) (not b!2323936) (not b!2324268) (not d!688027) (not d!688049) (not b!2323942) (not b!2324275) (not b!2324265) (not b!2324149) (not b!2324248) (not b!2324245) (not b!2324241) (not bm!138705) tp_is_empty!10833 (not b!2324123) (not d!688035) (not b!2324269))
(check-sat)
