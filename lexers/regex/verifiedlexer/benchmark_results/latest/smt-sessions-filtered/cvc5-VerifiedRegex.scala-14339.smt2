; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!749000 () Bool)

(assert start!749000)

(declare-fun b!7936041 () Bool)

(declare-fun e!4682807 () Bool)

(declare-fun e!4682811 () Bool)

(assert (=> b!7936041 (= e!4682807 e!4682811)))

(declare-fun res!3148656 () Bool)

(assert (=> b!7936041 (=> res!3148656 e!4682811)))

(declare-fun lt!2695321 () Int)

(declare-fun lt!2695320 () Int)

(assert (=> b!7936041 (= res!3148656 (or (> lt!2695321 lt!2695320) (> lt!2695320 (+ 1 lt!2695321))))))

(declare-datatypes ((T!145914 0))(
  ( (T!145915 (val!32075 Int)) )
))
(declare-datatypes ((List!74587 0))(
  ( (Nil!74463) (Cons!74463 (h!80911 T!145914) (t!390288 List!74587)) )
))
(declare-datatypes ((IArray!31895 0))(
  ( (IArray!31896 (innerList!16005 List!74587)) )
))
(declare-datatypes ((Conc!15917 0))(
  ( (Node!15917 (left!56896 Conc!15917) (right!57226 Conc!15917) (csize!32064 Int) (cheight!16128 Int)) (Leaf!30257 (xs!19313 IArray!31895) (csize!32065 Int)) (Empty!15917) )
))
(declare-fun lt!2695319 () Conc!15917)

(declare-fun height!2230 (Conc!15917) Int)

(assert (=> b!7936041 (= lt!2695320 (height!2230 lt!2695319))))

(declare-fun t!4440 () Conc!15917)

(assert (=> b!7936041 (= lt!2695321 (height!2230 t!4440))))

(declare-fun res!3148657 () Bool)

(declare-fun e!4682810 () Bool)

(assert (=> start!749000 (=> (not res!3148657) (not e!4682810))))

(declare-fun isBalanced!4543 (Conc!15917) Bool)

(assert (=> start!749000 (= res!3148657 (isBalanced!4543 t!4440))))

(assert (=> start!749000 e!4682810))

(declare-fun e!4682809 () Bool)

(declare-fun inv!95801 (Conc!15917) Bool)

(assert (=> start!749000 (and (inv!95801 t!4440) e!4682809)))

(declare-fun tp_is_empty!53259 () Bool)

(assert (=> start!749000 tp_is_empty!53259))

(declare-fun b!7936042 () Bool)

(declare-fun res!3148658 () Bool)

(assert (=> b!7936042 (=> (not res!3148658) (not e!4682810))))

(assert (=> b!7936042 (= res!3148658 (and (not (is-Empty!15917 t!4440)) (not (is-Node!15917 t!4440)) (>= (csize!32065 t!4440) 512)))))

(declare-fun b!7936043 () Bool)

(declare-fun v!5484 () T!145914)

(declare-fun list!19440 (Conc!15917) List!74587)

(declare-fun $colon+!326 (List!74587 T!145914) List!74587)

(assert (=> b!7936043 (= e!4682811 (not (= (list!19440 lt!2695319) ($colon+!326 (list!19440 t!4440) v!5484))))))

(declare-fun b!7936044 () Bool)

(assert (=> b!7936044 (= e!4682810 e!4682807)))

(declare-fun res!3148655 () Bool)

(assert (=> b!7936044 (=> res!3148655 e!4682807)))

(assert (=> b!7936044 (= res!3148655 (not (isBalanced!4543 lt!2695319)))))

(declare-fun <>!431 (Conc!15917 Conc!15917) Conc!15917)

(declare-fun fill!300 (Int T!145914) IArray!31895)

(assert (=> b!7936044 (= lt!2695319 (<>!431 t!4440 (Leaf!30257 (fill!300 1 v!5484) 1)))))

(declare-fun tp!2359609 () Bool)

(declare-fun b!7936045 () Bool)

(declare-fun tp!2359610 () Bool)

(assert (=> b!7936045 (= e!4682809 (and (inv!95801 (left!56896 t!4440)) tp!2359609 (inv!95801 (right!57226 t!4440)) tp!2359610))))

(declare-fun b!7936046 () Bool)

(declare-fun e!4682808 () Bool)

(declare-fun inv!95802 (IArray!31895) Bool)

(assert (=> b!7936046 (= e!4682809 (and (inv!95802 (xs!19313 t!4440)) e!4682808))))

(declare-fun b!7936047 () Bool)

(declare-fun tp!2359611 () Bool)

(assert (=> b!7936047 (= e!4682808 tp!2359611)))

(assert (= (and start!749000 res!3148657) b!7936042))

(assert (= (and b!7936042 res!3148658) b!7936044))

(assert (= (and b!7936044 (not res!3148655)) b!7936041))

(assert (= (and b!7936041 (not res!3148656)) b!7936043))

(assert (= (and start!749000 (is-Node!15917 t!4440)) b!7936045))

(assert (= b!7936046 b!7936047))

(assert (= (and start!749000 (is-Leaf!30257 t!4440)) b!7936046))

(declare-fun m!8324148 () Bool)

(assert (=> b!7936046 m!8324148))

(declare-fun m!8324150 () Bool)

(assert (=> b!7936044 m!8324150))

(declare-fun m!8324152 () Bool)

(assert (=> b!7936044 m!8324152))

(declare-fun m!8324154 () Bool)

(assert (=> b!7936044 m!8324154))

(declare-fun m!8324156 () Bool)

(assert (=> b!7936043 m!8324156))

(declare-fun m!8324158 () Bool)

(assert (=> b!7936043 m!8324158))

(assert (=> b!7936043 m!8324158))

(declare-fun m!8324160 () Bool)

(assert (=> b!7936043 m!8324160))

(declare-fun m!8324162 () Bool)

(assert (=> b!7936041 m!8324162))

(declare-fun m!8324164 () Bool)

(assert (=> b!7936041 m!8324164))

(declare-fun m!8324166 () Bool)

(assert (=> start!749000 m!8324166))

(declare-fun m!8324168 () Bool)

(assert (=> start!749000 m!8324168))

(declare-fun m!8324170 () Bool)

(assert (=> b!7936045 m!8324170))

(declare-fun m!8324172 () Bool)

(assert (=> b!7936045 m!8324172))

(push 1)

(assert (not b!7936041))

(assert (not b!7936044))

(assert (not b!7936046))

(assert tp_is_empty!53259)

(assert (not b!7936045))

(assert (not start!749000))

(assert (not b!7936047))

(assert (not b!7936043))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2373154 () Bool)

(declare-fun res!3148684 () Bool)

(declare-fun e!4682832 () Bool)

(assert (=> d!2373154 (=> res!3148684 e!4682832)))

(assert (=> d!2373154 (= res!3148684 (not (is-Node!15917 lt!2695319)))))

(assert (=> d!2373154 (= (isBalanced!4543 lt!2695319) e!4682832)))

(declare-fun b!7936081 () Bool)

(declare-fun res!3148688 () Bool)

(declare-fun e!4682831 () Bool)

(assert (=> b!7936081 (=> (not res!3148688) (not e!4682831))))

(declare-fun isEmpty!42803 (Conc!15917) Bool)

(assert (=> b!7936081 (= res!3148688 (not (isEmpty!42803 (left!56896 lt!2695319))))))

(declare-fun b!7936082 () Bool)

(assert (=> b!7936082 (= e!4682832 e!4682831)))

(declare-fun res!3148685 () Bool)

(assert (=> b!7936082 (=> (not res!3148685) (not e!4682831))))

(assert (=> b!7936082 (= res!3148685 (<= (- 1) (- (height!2230 (left!56896 lt!2695319)) (height!2230 (right!57226 lt!2695319)))))))

(declare-fun b!7936083 () Bool)

(declare-fun res!3148687 () Bool)

(assert (=> b!7936083 (=> (not res!3148687) (not e!4682831))))

(assert (=> b!7936083 (= res!3148687 (<= (- (height!2230 (left!56896 lt!2695319)) (height!2230 (right!57226 lt!2695319))) 1))))

(declare-fun b!7936084 () Bool)

(assert (=> b!7936084 (= e!4682831 (not (isEmpty!42803 (right!57226 lt!2695319))))))

(declare-fun b!7936085 () Bool)

(declare-fun res!3148686 () Bool)

(assert (=> b!7936085 (=> (not res!3148686) (not e!4682831))))

(assert (=> b!7936085 (= res!3148686 (isBalanced!4543 (right!57226 lt!2695319)))))

(declare-fun b!7936086 () Bool)

(declare-fun res!3148683 () Bool)

(assert (=> b!7936086 (=> (not res!3148683) (not e!4682831))))

(assert (=> b!7936086 (= res!3148683 (isBalanced!4543 (left!56896 lt!2695319)))))

(assert (= (and d!2373154 (not res!3148684)) b!7936082))

(assert (= (and b!7936082 res!3148685) b!7936083))

(assert (= (and b!7936083 res!3148687) b!7936086))

(assert (= (and b!7936086 res!3148683) b!7936085))

(assert (= (and b!7936085 res!3148686) b!7936081))

(assert (= (and b!7936081 res!3148688) b!7936084))

(declare-fun m!8324200 () Bool)

(assert (=> b!7936083 m!8324200))

(declare-fun m!8324202 () Bool)

(assert (=> b!7936083 m!8324202))

(declare-fun m!8324204 () Bool)

(assert (=> b!7936086 m!8324204))

(declare-fun m!8324206 () Bool)

(assert (=> b!7936084 m!8324206))

(assert (=> b!7936082 m!8324200))

(assert (=> b!7936082 m!8324202))

(declare-fun m!8324208 () Bool)

(assert (=> b!7936081 m!8324208))

(declare-fun m!8324210 () Bool)

(assert (=> b!7936085 m!8324210))

(assert (=> b!7936044 d!2373154))

(declare-fun b!7936110 () Bool)

(declare-fun e!4682846 () Conc!15917)

(declare-fun size!43285 (Conc!15917) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!7936110 (= e!4682846 (Node!15917 t!4440 (Leaf!30257 (fill!300 1 v!5484) 1) (+ (size!43285 t!4440) (size!43285 (Leaf!30257 (fill!300 1 v!5484) 1))) (+ (max!0 (height!2230 t!4440) (height!2230 (Leaf!30257 (fill!300 1 v!5484) 1))) 1)))))

(declare-fun b!7936109 () Bool)

(assert (=> b!7936109 (= e!4682846 t!4440)))

(declare-fun b!7936108 () Bool)

(declare-fun e!4682845 () Conc!15917)

(assert (=> b!7936108 (= e!4682845 e!4682846)))

(declare-fun c!1457970 () Bool)

(assert (=> b!7936108 (= c!1457970 (= (Leaf!30257 (fill!300 1 v!5484) 1) Empty!15917))))

(declare-fun d!2373158 () Bool)

(declare-fun lt!2695333 () Conc!15917)

(declare-fun ++!18272 (List!74587 List!74587) List!74587)

(assert (=> d!2373158 (= (list!19440 lt!2695333) (++!18272 (list!19440 t!4440) (list!19440 (Leaf!30257 (fill!300 1 v!5484) 1))))))

(assert (=> d!2373158 (= lt!2695333 e!4682845)))

(declare-fun c!1457969 () Bool)

(assert (=> d!2373158 (= c!1457969 (= t!4440 Empty!15917))))

(assert (=> d!2373158 (= (<>!431 t!4440 (Leaf!30257 (fill!300 1 v!5484) 1)) lt!2695333)))

(declare-fun b!7936107 () Bool)

(assert (=> b!7936107 (= e!4682845 (Leaf!30257 (fill!300 1 v!5484) 1))))

(assert (= (and d!2373158 c!1457969) b!7936107))

(assert (= (and d!2373158 (not c!1457969)) b!7936108))

(assert (= (and b!7936108 c!1457970) b!7936109))

(assert (= (and b!7936108 (not c!1457970)) b!7936110))

(assert (=> b!7936110 m!8324164))

(declare-fun m!8324220 () Bool)

(assert (=> b!7936110 m!8324220))

(declare-fun m!8324222 () Bool)

(assert (=> b!7936110 m!8324222))

(declare-fun m!8324224 () Bool)

(assert (=> b!7936110 m!8324224))

(assert (=> b!7936110 m!8324164))

(assert (=> b!7936110 m!8324220))

(declare-fun m!8324226 () Bool)

(assert (=> b!7936110 m!8324226))

(declare-fun m!8324228 () Bool)

(assert (=> d!2373158 m!8324228))

(assert (=> d!2373158 m!8324158))

(declare-fun m!8324230 () Bool)

(assert (=> d!2373158 m!8324230))

(assert (=> d!2373158 m!8324158))

(assert (=> d!2373158 m!8324230))

(declare-fun m!8324232 () Bool)

(assert (=> d!2373158 m!8324232))

(assert (=> b!7936044 d!2373158))

(declare-fun d!2373164 () Bool)

(declare-fun lt!2695336 () IArray!31895)

(declare-fun fill!302 (Int T!145914) List!74587)

(assert (=> d!2373164 (= lt!2695336 (IArray!31896 (fill!302 1 v!5484)))))

(declare-fun choose!59862 (Int T!145914) IArray!31895)

(assert (=> d!2373164 (= lt!2695336 (choose!59862 1 v!5484))))

(assert (=> d!2373164 (and (<= 0 1) (<= 1 2147483647))))

(assert (=> d!2373164 (= (fill!300 1 v!5484) lt!2695336)))

(declare-fun bs!1969199 () Bool)

(assert (= bs!1969199 d!2373164))

(declare-fun m!8324234 () Bool)

(assert (=> bs!1969199 m!8324234))

(declare-fun m!8324236 () Bool)

(assert (=> bs!1969199 m!8324236))

(assert (=> b!7936044 d!2373164))

(declare-fun d!2373166 () Bool)

(declare-fun size!43286 (List!74587) Int)

(assert (=> d!2373166 (= (inv!95802 (xs!19313 t!4440)) (<= (size!43286 (innerList!16005 (xs!19313 t!4440))) 2147483647))))

(declare-fun bs!1969200 () Bool)

(assert (= bs!1969200 d!2373166))

(declare-fun m!8324238 () Bool)

(assert (=> bs!1969200 m!8324238))

(assert (=> b!7936046 d!2373166))

(declare-fun d!2373168 () Bool)

(declare-fun c!1457977 () Bool)

(assert (=> d!2373168 (= c!1457977 (is-Node!15917 (left!56896 t!4440)))))

(declare-fun e!4682855 () Bool)

(assert (=> d!2373168 (= (inv!95801 (left!56896 t!4440)) e!4682855)))

(declare-fun b!7936125 () Bool)

(declare-fun inv!95805 (Conc!15917) Bool)

(assert (=> b!7936125 (= e!4682855 (inv!95805 (left!56896 t!4440)))))

(declare-fun b!7936126 () Bool)

(declare-fun e!4682856 () Bool)

(assert (=> b!7936126 (= e!4682855 e!4682856)))

(declare-fun res!3148695 () Bool)

(assert (=> b!7936126 (= res!3148695 (not (is-Leaf!30257 (left!56896 t!4440))))))

(assert (=> b!7936126 (=> res!3148695 e!4682856)))

(declare-fun b!7936127 () Bool)

(declare-fun inv!95806 (Conc!15917) Bool)

(assert (=> b!7936127 (= e!4682856 (inv!95806 (left!56896 t!4440)))))

(assert (= (and d!2373168 c!1457977) b!7936125))

(assert (= (and d!2373168 (not c!1457977)) b!7936126))

(assert (= (and b!7936126 (not res!3148695)) b!7936127))

(declare-fun m!8324240 () Bool)

(assert (=> b!7936125 m!8324240))

(declare-fun m!8324242 () Bool)

(assert (=> b!7936127 m!8324242))

(assert (=> b!7936045 d!2373168))

(declare-fun d!2373170 () Bool)

(declare-fun c!1457978 () Bool)

(assert (=> d!2373170 (= c!1457978 (is-Node!15917 (right!57226 t!4440)))))

(declare-fun e!4682857 () Bool)

(assert (=> d!2373170 (= (inv!95801 (right!57226 t!4440)) e!4682857)))

(declare-fun b!7936128 () Bool)

(assert (=> b!7936128 (= e!4682857 (inv!95805 (right!57226 t!4440)))))

(declare-fun b!7936129 () Bool)

(declare-fun e!4682858 () Bool)

(assert (=> b!7936129 (= e!4682857 e!4682858)))

(declare-fun res!3148696 () Bool)

(assert (=> b!7936129 (= res!3148696 (not (is-Leaf!30257 (right!57226 t!4440))))))

(assert (=> b!7936129 (=> res!3148696 e!4682858)))

(declare-fun b!7936130 () Bool)

(assert (=> b!7936130 (= e!4682858 (inv!95806 (right!57226 t!4440)))))

(assert (= (and d!2373170 c!1457978) b!7936128))

(assert (= (and d!2373170 (not c!1457978)) b!7936129))

(assert (= (and b!7936129 (not res!3148696)) b!7936130))

(declare-fun m!8324244 () Bool)

(assert (=> b!7936128 m!8324244))

(declare-fun m!8324246 () Bool)

(assert (=> b!7936130 m!8324246))

(assert (=> b!7936045 d!2373170))

(declare-fun d!2373172 () Bool)

(assert (=> d!2373172 (= (height!2230 lt!2695319) (ite (is-Empty!15917 lt!2695319) 0 (ite (is-Leaf!30257 lt!2695319) 1 (cheight!16128 lt!2695319))))))

(assert (=> b!7936041 d!2373172))

(declare-fun d!2373174 () Bool)

(assert (=> d!2373174 (= (height!2230 t!4440) (ite (is-Empty!15917 t!4440) 0 (ite (is-Leaf!30257 t!4440) 1 (cheight!16128 t!4440))))))

(assert (=> b!7936041 d!2373174))

(declare-fun b!7936143 () Bool)

(declare-fun e!4682865 () List!74587)

(assert (=> b!7936143 (= e!4682865 Nil!74463)))

(declare-fun b!7936144 () Bool)

(declare-fun e!4682866 () List!74587)

(assert (=> b!7936144 (= e!4682865 e!4682866)))

(declare-fun c!1457986 () Bool)

(assert (=> b!7936144 (= c!1457986 (is-Leaf!30257 lt!2695319))))

(declare-fun b!7936145 () Bool)

(declare-fun list!19442 (IArray!31895) List!74587)

(assert (=> b!7936145 (= e!4682866 (list!19442 (xs!19313 lt!2695319)))))

(declare-fun b!7936146 () Bool)

(assert (=> b!7936146 (= e!4682866 (++!18272 (list!19440 (left!56896 lt!2695319)) (list!19440 (right!57226 lt!2695319))))))

(declare-fun d!2373176 () Bool)

(declare-fun c!1457985 () Bool)

(assert (=> d!2373176 (= c!1457985 (is-Empty!15917 lt!2695319))))

(assert (=> d!2373176 (= (list!19440 lt!2695319) e!4682865)))

(assert (= (and d!2373176 c!1457985) b!7936143))

(assert (= (and d!2373176 (not c!1457985)) b!7936144))

(assert (= (and b!7936144 c!1457986) b!7936145))

(assert (= (and b!7936144 (not c!1457986)) b!7936146))

(declare-fun m!8324256 () Bool)

(assert (=> b!7936145 m!8324256))

(declare-fun m!8324258 () Bool)

(assert (=> b!7936146 m!8324258))

(declare-fun m!8324260 () Bool)

(assert (=> b!7936146 m!8324260))

(assert (=> b!7936146 m!8324258))

(assert (=> b!7936146 m!8324260))

(declare-fun m!8324262 () Bool)

(assert (=> b!7936146 m!8324262))

(assert (=> b!7936043 d!2373176))

(declare-fun b!7936176 () Bool)

(declare-fun e!4682880 () Bool)

(declare-fun lt!2695341 () List!74587)

(assert (=> b!7936176 (= e!4682880 (= lt!2695341 (++!18272 (list!19440 t!4440) (Cons!74463 v!5484 Nil!74463))))))

(declare-fun b!7936177 () Bool)

(declare-fun e!4682877 () Bool)

(declare-fun call!735664 () (_ BitVec 32))

(declare-fun call!735663 () (_ BitVec 32))

(assert (=> b!7936177 (= e!4682877 (= call!735664 (bvadd call!735663 #b00000000000000000000000000000001)))))

(declare-fun b!7936178 () Bool)

(declare-fun res!3148713 () Bool)

(assert (=> b!7936178 (=> (not res!3148713) (not e!4682880))))

(declare-fun content!15796 (List!74587) (Set T!145914))

(assert (=> b!7936178 (= res!3148713 (= (content!15796 lt!2695341) (set.union (content!15796 (list!19440 t!4440)) (set.insert v!5484 (as set.empty (Set T!145914))))))))

(declare-fun b!7936175 () Bool)

(assert (=> b!7936175 (= e!4682877 (= call!735664 call!735663))))

(declare-fun d!2373180 () Bool)

(assert (=> d!2373180 e!4682880))

(declare-fun res!3148714 () Bool)

(assert (=> d!2373180 (=> (not res!3148714) (not e!4682880))))

(assert (=> d!2373180 (= res!3148714 (is-Cons!74463 lt!2695341))))

(declare-fun e!4682879 () List!74587)

(assert (=> d!2373180 (= lt!2695341 e!4682879)))

(declare-fun c!1457993 () Bool)

(assert (=> d!2373180 (= c!1457993 (is-Nil!74463 (list!19440 t!4440)))))

(assert (=> d!2373180 (= ($colon+!326 (list!19440 t!4440) v!5484) lt!2695341)))

(declare-fun b!7936179 () Bool)

(assert (=> b!7936179 (= e!4682879 (Cons!74463 (h!80911 (list!19440 t!4440)) ($colon+!326 (t!390288 (list!19440 t!4440)) v!5484)))))

(declare-fun b!7936180 () Bool)

(assert (=> b!7936180 (= e!4682879 (Cons!74463 v!5484 (list!19440 t!4440)))))

(declare-fun b!7936181 () Bool)

(declare-fun res!3148712 () Bool)

(assert (=> b!7936181 (=> (not res!3148712) (not e!4682880))))

(assert (=> b!7936181 (= res!3148712 e!4682877)))

(declare-fun c!1457994 () Bool)

(declare-fun isize!130 (List!74587) (_ BitVec 32))

(assert (=> b!7936181 (= c!1457994 (bvslt (isize!130 (list!19440 t!4440)) #b01111111111111111111111111111111))))

(declare-fun bm!735658 () Bool)

(assert (=> bm!735658 (= call!735663 (isize!130 (list!19440 t!4440)))))

(declare-fun b!7936182 () Bool)

(declare-fun res!3148711 () Bool)

(assert (=> b!7936182 (=> (not res!3148711) (not e!4682880))))

(assert (=> b!7936182 (= res!3148711 (= (size!43286 lt!2695341) (+ (size!43286 (list!19440 t!4440)) 1)))))

(declare-fun bm!735659 () Bool)

(assert (=> bm!735659 (= call!735664 (isize!130 lt!2695341))))

(assert (= (and d!2373180 c!1457993) b!7936180))

(assert (= (and d!2373180 (not c!1457993)) b!7936179))

(assert (= (and d!2373180 res!3148714) b!7936182))

(assert (= (and b!7936182 res!3148711) b!7936181))

(assert (= (and b!7936181 c!1457994) b!7936177))

(assert (= (and b!7936181 (not c!1457994)) b!7936175))

(assert (= (or b!7936177 b!7936175) bm!735659))

(assert (= (or b!7936177 b!7936175) bm!735658))

(assert (= (and b!7936181 res!3148712) b!7936178))

(assert (= (and b!7936178 res!3148713) b!7936176))

(declare-fun m!8324264 () Bool)

(assert (=> b!7936178 m!8324264))

(assert (=> b!7936178 m!8324158))

(declare-fun m!8324266 () Bool)

(assert (=> b!7936178 m!8324266))

(declare-fun m!8324268 () Bool)

(assert (=> b!7936178 m!8324268))

(declare-fun m!8324270 () Bool)

(assert (=> b!7936179 m!8324270))

(declare-fun m!8324272 () Bool)

(assert (=> bm!735659 m!8324272))

(declare-fun m!8324274 () Bool)

(assert (=> b!7936182 m!8324274))

(assert (=> b!7936182 m!8324158))

(declare-fun m!8324276 () Bool)

(assert (=> b!7936182 m!8324276))

(assert (=> b!7936181 m!8324158))

(declare-fun m!8324278 () Bool)

(assert (=> b!7936181 m!8324278))

(assert (=> bm!735658 m!8324158))

(assert (=> bm!735658 m!8324278))

(assert (=> b!7936176 m!8324158))

(declare-fun m!8324280 () Bool)

(assert (=> b!7936176 m!8324280))

(assert (=> b!7936043 d!2373180))

(declare-fun b!7936183 () Bool)

(declare-fun e!4682882 () List!74587)

(assert (=> b!7936183 (= e!4682882 Nil!74463)))

(declare-fun b!7936184 () Bool)

(declare-fun e!4682883 () List!74587)

(assert (=> b!7936184 (= e!4682882 e!4682883)))

(declare-fun c!1457998 () Bool)

(assert (=> b!7936184 (= c!1457998 (is-Leaf!30257 t!4440))))

(declare-fun b!7936185 () Bool)

(assert (=> b!7936185 (= e!4682883 (list!19442 (xs!19313 t!4440)))))

(declare-fun b!7936186 () Bool)

(assert (=> b!7936186 (= e!4682883 (++!18272 (list!19440 (left!56896 t!4440)) (list!19440 (right!57226 t!4440))))))

(declare-fun d!2373182 () Bool)

(declare-fun c!1457997 () Bool)

(assert (=> d!2373182 (= c!1457997 (is-Empty!15917 t!4440))))

(assert (=> d!2373182 (= (list!19440 t!4440) e!4682882)))

(assert (= (and d!2373182 c!1457997) b!7936183))

(assert (= (and d!2373182 (not c!1457997)) b!7936184))

(assert (= (and b!7936184 c!1457998) b!7936185))

(assert (= (and b!7936184 (not c!1457998)) b!7936186))

(declare-fun m!8324282 () Bool)

(assert (=> b!7936185 m!8324282))

(declare-fun m!8324284 () Bool)

(assert (=> b!7936186 m!8324284))

(declare-fun m!8324286 () Bool)

(assert (=> b!7936186 m!8324286))

(assert (=> b!7936186 m!8324284))

(assert (=> b!7936186 m!8324286))

(declare-fun m!8324288 () Bool)

(assert (=> b!7936186 m!8324288))

(assert (=> b!7936043 d!2373182))

(declare-fun d!2373184 () Bool)

(declare-fun res!3148718 () Bool)

(declare-fun e!4682885 () Bool)

(assert (=> d!2373184 (=> res!3148718 e!4682885)))

(assert (=> d!2373184 (= res!3148718 (not (is-Node!15917 t!4440)))))

(assert (=> d!2373184 (= (isBalanced!4543 t!4440) e!4682885)))

(declare-fun b!7936191 () Bool)

(declare-fun res!3148722 () Bool)

(declare-fun e!4682884 () Bool)

(assert (=> b!7936191 (=> (not res!3148722) (not e!4682884))))

(assert (=> b!7936191 (= res!3148722 (not (isEmpty!42803 (left!56896 t!4440))))))

(declare-fun b!7936192 () Bool)

(assert (=> b!7936192 (= e!4682885 e!4682884)))

(declare-fun res!3148719 () Bool)

(assert (=> b!7936192 (=> (not res!3148719) (not e!4682884))))

(assert (=> b!7936192 (= res!3148719 (<= (- 1) (- (height!2230 (left!56896 t!4440)) (height!2230 (right!57226 t!4440)))))))

(declare-fun b!7936193 () Bool)

(declare-fun res!3148721 () Bool)

(assert (=> b!7936193 (=> (not res!3148721) (not e!4682884))))

(assert (=> b!7936193 (= res!3148721 (<= (- (height!2230 (left!56896 t!4440)) (height!2230 (right!57226 t!4440))) 1))))

(declare-fun b!7936194 () Bool)

(assert (=> b!7936194 (= e!4682884 (not (isEmpty!42803 (right!57226 t!4440))))))

(declare-fun b!7936195 () Bool)

(declare-fun res!3148720 () Bool)

(assert (=> b!7936195 (=> (not res!3148720) (not e!4682884))))

(assert (=> b!7936195 (= res!3148720 (isBalanced!4543 (right!57226 t!4440)))))

(declare-fun b!7936196 () Bool)

(declare-fun res!3148717 () Bool)

(assert (=> b!7936196 (=> (not res!3148717) (not e!4682884))))

(assert (=> b!7936196 (= res!3148717 (isBalanced!4543 (left!56896 t!4440)))))

(assert (= (and d!2373184 (not res!3148718)) b!7936192))

(assert (= (and b!7936192 res!3148719) b!7936193))

(assert (= (and b!7936193 res!3148721) b!7936196))

(assert (= (and b!7936196 res!3148717) b!7936195))

(assert (= (and b!7936195 res!3148720) b!7936191))

(assert (= (and b!7936191 res!3148722) b!7936194))

(declare-fun m!8324290 () Bool)

(assert (=> b!7936193 m!8324290))

(declare-fun m!8324292 () Bool)

(assert (=> b!7936193 m!8324292))

(declare-fun m!8324294 () Bool)

(assert (=> b!7936196 m!8324294))

(declare-fun m!8324296 () Bool)

(assert (=> b!7936194 m!8324296))

(assert (=> b!7936192 m!8324290))

(assert (=> b!7936192 m!8324292))

(declare-fun m!8324298 () Bool)

(assert (=> b!7936191 m!8324298))

(declare-fun m!8324300 () Bool)

(assert (=> b!7936195 m!8324300))

(assert (=> start!749000 d!2373184))

(declare-fun d!2373186 () Bool)

(declare-fun c!1457999 () Bool)

(assert (=> d!2373186 (= c!1457999 (is-Node!15917 t!4440))))

(declare-fun e!4682886 () Bool)

(assert (=> d!2373186 (= (inv!95801 t!4440) e!4682886)))

(declare-fun b!7936197 () Bool)

(assert (=> b!7936197 (= e!4682886 (inv!95805 t!4440))))

(declare-fun b!7936198 () Bool)

(declare-fun e!4682887 () Bool)

(assert (=> b!7936198 (= e!4682886 e!4682887)))

(declare-fun res!3148723 () Bool)

(assert (=> b!7936198 (= res!3148723 (not (is-Leaf!30257 t!4440)))))

(assert (=> b!7936198 (=> res!3148723 e!4682887)))

(declare-fun b!7936199 () Bool)

(assert (=> b!7936199 (= e!4682887 (inv!95806 t!4440))))

(assert (= (and d!2373186 c!1457999) b!7936197))

(assert (= (and d!2373186 (not c!1457999)) b!7936198))

(assert (= (and b!7936198 (not res!3148723)) b!7936199))

(declare-fun m!8324302 () Bool)

(assert (=> b!7936197 m!8324302))

(declare-fun m!8324304 () Bool)

(assert (=> b!7936199 m!8324304))

(assert (=> start!749000 d!2373186))

(declare-fun b!7936208 () Bool)

(declare-fun e!4682892 () Bool)

(declare-fun tp!2359627 () Bool)

(declare-fun tp!2359629 () Bool)

(assert (=> b!7936208 (= e!4682892 (and (inv!95801 (left!56896 (left!56896 t!4440))) tp!2359627 (inv!95801 (right!57226 (left!56896 t!4440))) tp!2359629))))

(declare-fun b!7936210 () Bool)

(declare-fun e!4682893 () Bool)

(declare-fun tp!2359628 () Bool)

(assert (=> b!7936210 (= e!4682893 tp!2359628)))

(declare-fun b!7936209 () Bool)

(assert (=> b!7936209 (= e!4682892 (and (inv!95802 (xs!19313 (left!56896 t!4440))) e!4682893))))

(assert (=> b!7936045 (= tp!2359609 (and (inv!95801 (left!56896 t!4440)) e!4682892))))

(assert (= (and b!7936045 (is-Node!15917 (left!56896 t!4440))) b!7936208))

(assert (= b!7936209 b!7936210))

(assert (= (and b!7936045 (is-Leaf!30257 (left!56896 t!4440))) b!7936209))

(declare-fun m!8324306 () Bool)

(assert (=> b!7936208 m!8324306))

(declare-fun m!8324308 () Bool)

(assert (=> b!7936208 m!8324308))

(declare-fun m!8324310 () Bool)

(assert (=> b!7936209 m!8324310))

(assert (=> b!7936045 m!8324170))

(declare-fun b!7936211 () Bool)

(declare-fun tp!2359632 () Bool)

(declare-fun tp!2359630 () Bool)

(declare-fun e!4682894 () Bool)

(assert (=> b!7936211 (= e!4682894 (and (inv!95801 (left!56896 (right!57226 t!4440))) tp!2359630 (inv!95801 (right!57226 (right!57226 t!4440))) tp!2359632))))

(declare-fun b!7936213 () Bool)

(declare-fun e!4682895 () Bool)

(declare-fun tp!2359631 () Bool)

(assert (=> b!7936213 (= e!4682895 tp!2359631)))

(declare-fun b!7936212 () Bool)

(assert (=> b!7936212 (= e!4682894 (and (inv!95802 (xs!19313 (right!57226 t!4440))) e!4682895))))

(assert (=> b!7936045 (= tp!2359610 (and (inv!95801 (right!57226 t!4440)) e!4682894))))

(assert (= (and b!7936045 (is-Node!15917 (right!57226 t!4440))) b!7936211))

(assert (= b!7936212 b!7936213))

(assert (= (and b!7936045 (is-Leaf!30257 (right!57226 t!4440))) b!7936212))

(declare-fun m!8324312 () Bool)

(assert (=> b!7936211 m!8324312))

(declare-fun m!8324314 () Bool)

(assert (=> b!7936211 m!8324314))

(declare-fun m!8324316 () Bool)

(assert (=> b!7936212 m!8324316))

(assert (=> b!7936045 m!8324172))

(declare-fun b!7936218 () Bool)

(declare-fun e!4682898 () Bool)

(declare-fun tp!2359635 () Bool)

(assert (=> b!7936218 (= e!4682898 (and tp_is_empty!53259 tp!2359635))))

(assert (=> b!7936047 (= tp!2359611 e!4682898)))

(assert (= (and b!7936047 (is-Cons!74463 (innerList!16005 (xs!19313 t!4440)))) b!7936218))

(push 1)

(assert (not b!7936194))

(assert (not d!2373164))

(assert (not b!7936193))

(assert (not b!7936082))

(assert (not b!7936182))

(assert (not b!7936196))

(assert tp_is_empty!53259)

(assert (not b!7936125))

(assert (not b!7936186))

(assert (not b!7936211))

(assert (not b!7936127))

(assert (not bm!735659))

(assert (not b!7936081))

(assert (not b!7936185))

(assert (not b!7936212))

(assert (not b!7936199))

(assert (not b!7936191))

(assert (not b!7936084))

(assert (not d!2373158))

(assert (not b!7936179))

(assert (not b!7936110))

(assert (not b!7936145))

(assert (not b!7936209))

(assert (not b!7936085))

(assert (not d!2373166))

(assert (not b!7936192))

(assert (not b!7936146))

(assert (not b!7936208))

(assert (not b!7936130))

(assert (not b!7936128))

(assert (not b!7936218))

(assert (not b!7936045))

(assert (not b!7936210))

(assert (not bm!735658))

(assert (not b!7936178))

(assert (not b!7936197))

(assert (not b!7936086))

(assert (not b!7936213))

(assert (not b!7936176))

(assert (not b!7936195))

(assert (not b!7936083))

(assert (not b!7936181))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2373206 () Bool)

(assert (=> d!2373206 (= (inv!95802 (xs!19313 (right!57226 t!4440))) (<= (size!43286 (innerList!16005 (xs!19313 (right!57226 t!4440)))) 2147483647))))

(declare-fun bs!1969203 () Bool)

(assert (= bs!1969203 d!2373206))

(declare-fun m!8324404 () Bool)

(assert (=> bs!1969203 m!8324404))

(assert (=> b!7936212 d!2373206))

(declare-fun d!2373208 () Bool)

(declare-fun lt!2695351 () Bool)

(declare-fun isEmpty!42805 (List!74587) Bool)

(assert (=> d!2373208 (= lt!2695351 (isEmpty!42805 (list!19440 (right!57226 lt!2695319))))))

(assert (=> d!2373208 (= lt!2695351 (= (size!43285 (right!57226 lt!2695319)) 0))))

(assert (=> d!2373208 (= (isEmpty!42803 (right!57226 lt!2695319)) lt!2695351)))

(declare-fun bs!1969204 () Bool)

(assert (= bs!1969204 d!2373208))

(assert (=> bs!1969204 m!8324260))

(assert (=> bs!1969204 m!8324260))

(declare-fun m!8324406 () Bool)

(assert (=> bs!1969204 m!8324406))

(declare-fun m!8324408 () Bool)

(assert (=> bs!1969204 m!8324408))

(assert (=> b!7936084 d!2373208))

(declare-fun d!2373210 () Bool)

(assert (=> d!2373210 (= (height!2230 (left!56896 lt!2695319)) (ite (is-Empty!15917 (left!56896 lt!2695319)) 0 (ite (is-Leaf!30257 (left!56896 lt!2695319)) 1 (cheight!16128 (left!56896 lt!2695319)))))))

(assert (=> b!7936083 d!2373210))

(declare-fun d!2373212 () Bool)

(assert (=> d!2373212 (= (height!2230 (right!57226 lt!2695319)) (ite (is-Empty!15917 (right!57226 lt!2695319)) 0 (ite (is-Leaf!30257 (right!57226 lt!2695319)) 1 (cheight!16128 (right!57226 lt!2695319)))))))

(assert (=> b!7936083 d!2373212))

(declare-fun d!2373214 () Bool)

(declare-fun e!4682936 () Bool)

(assert (=> d!2373214 e!4682936))

(declare-fun res!3148755 () Bool)

(assert (=> d!2373214 (=> (not res!3148755) (not e!4682936))))

(declare-fun lt!2695354 () List!74587)

(assert (=> d!2373214 (= res!3148755 (= (content!15796 lt!2695354) (ite (<= 1 0) (as set.empty (Set T!145914)) (set.insert v!5484 (as set.empty (Set T!145914))))))))

(declare-fun e!4682935 () List!74587)

(assert (=> d!2373214 (= lt!2695354 e!4682935)))

(declare-fun c!1458013 () Bool)

(assert (=> d!2373214 (= c!1458013 (<= 1 0))))

(assert (=> d!2373214 (= (fill!302 1 v!5484) lt!2695354)))

(declare-fun b!7936295 () Bool)

(assert (=> b!7936295 (= e!4682935 Nil!74463)))

(declare-fun b!7936296 () Bool)

(assert (=> b!7936296 (= e!4682935 (Cons!74463 v!5484 (fill!302 (- 1 1) v!5484)))))

(declare-fun b!7936297 () Bool)

(assert (=> b!7936297 (= e!4682936 (= (size!43286 lt!2695354) (ite (<= 1 0) 0 1)))))

(assert (= (and d!2373214 c!1458013) b!7936295))

(assert (= (and d!2373214 (not c!1458013)) b!7936296))

(assert (= (and d!2373214 res!3148755) b!7936297))

(declare-fun m!8324410 () Bool)

(assert (=> d!2373214 m!8324410))

(assert (=> d!2373214 m!8324268))

(declare-fun m!8324412 () Bool)

(assert (=> b!7936296 m!8324412))

(declare-fun m!8324414 () Bool)

(assert (=> b!7936297 m!8324414))

(assert (=> d!2373164 d!2373214))

(declare-fun d!2373216 () Bool)

(declare-fun _$14!1645 () IArray!31895)

(assert (=> d!2373216 (= _$14!1645 (IArray!31896 (fill!302 1 v!5484)))))

(declare-fun e!4682939 () Bool)

(assert (=> d!2373216 (and (inv!95802 _$14!1645) e!4682939)))

(assert (=> d!2373216 (= (choose!59862 1 v!5484) _$14!1645)))

(declare-fun b!7936300 () Bool)

(declare-fun tp!2359653 () Bool)

(assert (=> b!7936300 (= e!4682939 tp!2359653)))

(assert (= d!2373216 b!7936300))

(assert (=> d!2373216 m!8324234))

(declare-fun m!8324416 () Bool)

(assert (=> d!2373216 m!8324416))

(assert (=> d!2373164 d!2373216))

(declare-fun d!2373218 () Bool)

(declare-fun res!3148757 () Bool)

(declare-fun e!4682941 () Bool)

(assert (=> d!2373218 (=> res!3148757 e!4682941)))

(assert (=> d!2373218 (= res!3148757 (not (is-Node!15917 (right!57226 lt!2695319))))))

(assert (=> d!2373218 (= (isBalanced!4543 (right!57226 lt!2695319)) e!4682941)))

(declare-fun b!7936301 () Bool)

(declare-fun res!3148761 () Bool)

(declare-fun e!4682940 () Bool)

(assert (=> b!7936301 (=> (not res!3148761) (not e!4682940))))

(assert (=> b!7936301 (= res!3148761 (not (isEmpty!42803 (left!56896 (right!57226 lt!2695319)))))))

(declare-fun b!7936302 () Bool)

(assert (=> b!7936302 (= e!4682941 e!4682940)))

(declare-fun res!3148758 () Bool)

(assert (=> b!7936302 (=> (not res!3148758) (not e!4682940))))

(assert (=> b!7936302 (= res!3148758 (<= (- 1) (- (height!2230 (left!56896 (right!57226 lt!2695319))) (height!2230 (right!57226 (right!57226 lt!2695319))))))))

(declare-fun b!7936303 () Bool)

(declare-fun res!3148760 () Bool)

(assert (=> b!7936303 (=> (not res!3148760) (not e!4682940))))

(assert (=> b!7936303 (= res!3148760 (<= (- (height!2230 (left!56896 (right!57226 lt!2695319))) (height!2230 (right!57226 (right!57226 lt!2695319)))) 1))))

(declare-fun b!7936304 () Bool)

(assert (=> b!7936304 (= e!4682940 (not (isEmpty!42803 (right!57226 (right!57226 lt!2695319)))))))

(declare-fun b!7936305 () Bool)

(declare-fun res!3148759 () Bool)

(assert (=> b!7936305 (=> (not res!3148759) (not e!4682940))))

(assert (=> b!7936305 (= res!3148759 (isBalanced!4543 (right!57226 (right!57226 lt!2695319))))))

(declare-fun b!7936306 () Bool)

(declare-fun res!3148756 () Bool)

(assert (=> b!7936306 (=> (not res!3148756) (not e!4682940))))

(assert (=> b!7936306 (= res!3148756 (isBalanced!4543 (left!56896 (right!57226 lt!2695319))))))

(assert (= (and d!2373218 (not res!3148757)) b!7936302))

(assert (= (and b!7936302 res!3148758) b!7936303))

(assert (= (and b!7936303 res!3148760) b!7936306))

(assert (= (and b!7936306 res!3148756) b!7936305))

(assert (= (and b!7936305 res!3148759) b!7936301))

(assert (= (and b!7936301 res!3148761) b!7936304))

(declare-fun m!8324418 () Bool)

(assert (=> b!7936303 m!8324418))

(declare-fun m!8324420 () Bool)

(assert (=> b!7936303 m!8324420))

(declare-fun m!8324422 () Bool)

(assert (=> b!7936306 m!8324422))

(declare-fun m!8324424 () Bool)

(assert (=> b!7936304 m!8324424))

(assert (=> b!7936302 m!8324418))

(assert (=> b!7936302 m!8324420))

(declare-fun m!8324426 () Bool)

(assert (=> b!7936301 m!8324426))

(declare-fun m!8324428 () Bool)

(assert (=> b!7936305 m!8324428))

(assert (=> b!7936085 d!2373218))

(declare-fun d!2373220 () Bool)

(declare-fun res!3148766 () Bool)

(declare-fun e!4682944 () Bool)

(assert (=> d!2373220 (=> (not res!3148766) (not e!4682944))))

(assert (=> d!2373220 (= res!3148766 (<= (size!43286 (list!19442 (xs!19313 (left!56896 t!4440)))) 512))))

(assert (=> d!2373220 (= (inv!95806 (left!56896 t!4440)) e!4682944)))

(declare-fun b!7936311 () Bool)

(declare-fun res!3148767 () Bool)

(assert (=> b!7936311 (=> (not res!3148767) (not e!4682944))))

(assert (=> b!7936311 (= res!3148767 (= (csize!32065 (left!56896 t!4440)) (size!43286 (list!19442 (xs!19313 (left!56896 t!4440))))))))

(declare-fun b!7936312 () Bool)

(assert (=> b!7936312 (= e!4682944 (and (> (csize!32065 (left!56896 t!4440)) 0) (<= (csize!32065 (left!56896 t!4440)) 512)))))

(assert (= (and d!2373220 res!3148766) b!7936311))

(assert (= (and b!7936311 res!3148767) b!7936312))

(declare-fun m!8324430 () Bool)

(assert (=> d!2373220 m!8324430))

(assert (=> d!2373220 m!8324430))

(declare-fun m!8324432 () Bool)

(assert (=> d!2373220 m!8324432))

(assert (=> b!7936311 m!8324430))

(assert (=> b!7936311 m!8324430))

(assert (=> b!7936311 m!8324432))

(assert (=> b!7936127 d!2373220))

(declare-fun d!2373222 () Bool)

(declare-fun res!3148769 () Bool)

(declare-fun e!4682946 () Bool)

(assert (=> d!2373222 (=> res!3148769 e!4682946)))

(assert (=> d!2373222 (= res!3148769 (not (is-Node!15917 (left!56896 lt!2695319))))))

(assert (=> d!2373222 (= (isBalanced!4543 (left!56896 lt!2695319)) e!4682946)))

(declare-fun b!7936313 () Bool)

(declare-fun res!3148773 () Bool)

(declare-fun e!4682945 () Bool)

(assert (=> b!7936313 (=> (not res!3148773) (not e!4682945))))

(assert (=> b!7936313 (= res!3148773 (not (isEmpty!42803 (left!56896 (left!56896 lt!2695319)))))))

(declare-fun b!7936314 () Bool)

(assert (=> b!7936314 (= e!4682946 e!4682945)))

(declare-fun res!3148770 () Bool)

(assert (=> b!7936314 (=> (not res!3148770) (not e!4682945))))

(assert (=> b!7936314 (= res!3148770 (<= (- 1) (- (height!2230 (left!56896 (left!56896 lt!2695319))) (height!2230 (right!57226 (left!56896 lt!2695319))))))))

(declare-fun b!7936315 () Bool)

(declare-fun res!3148772 () Bool)

(assert (=> b!7936315 (=> (not res!3148772) (not e!4682945))))

(assert (=> b!7936315 (= res!3148772 (<= (- (height!2230 (left!56896 (left!56896 lt!2695319))) (height!2230 (right!57226 (left!56896 lt!2695319)))) 1))))

(declare-fun b!7936316 () Bool)

(assert (=> b!7936316 (= e!4682945 (not (isEmpty!42803 (right!57226 (left!56896 lt!2695319)))))))

(declare-fun b!7936317 () Bool)

(declare-fun res!3148771 () Bool)

(assert (=> b!7936317 (=> (not res!3148771) (not e!4682945))))

(assert (=> b!7936317 (= res!3148771 (isBalanced!4543 (right!57226 (left!56896 lt!2695319))))))

(declare-fun b!7936318 () Bool)

(declare-fun res!3148768 () Bool)

(assert (=> b!7936318 (=> (not res!3148768) (not e!4682945))))

(assert (=> b!7936318 (= res!3148768 (isBalanced!4543 (left!56896 (left!56896 lt!2695319))))))

(assert (= (and d!2373222 (not res!3148769)) b!7936314))

(assert (= (and b!7936314 res!3148770) b!7936315))

(assert (= (and b!7936315 res!3148772) b!7936318))

(assert (= (and b!7936318 res!3148768) b!7936317))

(assert (= (and b!7936317 res!3148771) b!7936313))

(assert (= (and b!7936313 res!3148773) b!7936316))

(declare-fun m!8324434 () Bool)

(assert (=> b!7936315 m!8324434))

(declare-fun m!8324436 () Bool)

(assert (=> b!7936315 m!8324436))

(declare-fun m!8324438 () Bool)

(assert (=> b!7936318 m!8324438))

(declare-fun m!8324440 () Bool)

(assert (=> b!7936316 m!8324440))

(assert (=> b!7936314 m!8324434))

(assert (=> b!7936314 m!8324436))

(declare-fun m!8324442 () Bool)

(assert (=> b!7936313 m!8324442))

(declare-fun m!8324444 () Bool)

(assert (=> b!7936317 m!8324444))

(assert (=> b!7936086 d!2373222))

(declare-fun b!7936319 () Bool)

(declare-fun e!4682947 () List!74587)

(assert (=> b!7936319 (= e!4682947 Nil!74463)))

(declare-fun b!7936320 () Bool)

(declare-fun e!4682948 () List!74587)

(assert (=> b!7936320 (= e!4682947 e!4682948)))

(declare-fun c!1458015 () Bool)

(assert (=> b!7936320 (= c!1458015 (is-Leaf!30257 lt!2695333))))

(declare-fun b!7936321 () Bool)

(assert (=> b!7936321 (= e!4682948 (list!19442 (xs!19313 lt!2695333)))))

(declare-fun b!7936322 () Bool)

(assert (=> b!7936322 (= e!4682948 (++!18272 (list!19440 (left!56896 lt!2695333)) (list!19440 (right!57226 lt!2695333))))))

(declare-fun d!2373224 () Bool)

(declare-fun c!1458014 () Bool)

(assert (=> d!2373224 (= c!1458014 (is-Empty!15917 lt!2695333))))

(assert (=> d!2373224 (= (list!19440 lt!2695333) e!4682947)))

(assert (= (and d!2373224 c!1458014) b!7936319))

(assert (= (and d!2373224 (not c!1458014)) b!7936320))

(assert (= (and b!7936320 c!1458015) b!7936321))

(assert (= (and b!7936320 (not c!1458015)) b!7936322))

(declare-fun m!8324446 () Bool)

(assert (=> b!7936321 m!8324446))

(declare-fun m!8324448 () Bool)

(assert (=> b!7936322 m!8324448))

(declare-fun m!8324450 () Bool)

(assert (=> b!7936322 m!8324450))

(assert (=> b!7936322 m!8324448))

(assert (=> b!7936322 m!8324450))

(declare-fun m!8324452 () Bool)

(assert (=> b!7936322 m!8324452))

(assert (=> d!2373158 d!2373224))

(declare-fun b!7936331 () Bool)

(declare-fun e!4682953 () List!74587)

(assert (=> b!7936331 (= e!4682953 (list!19440 (Leaf!30257 (fill!300 1 v!5484) 1)))))

(declare-fun b!7936332 () Bool)

(assert (=> b!7936332 (= e!4682953 (Cons!74463 (h!80911 (list!19440 t!4440)) (++!18272 (t!390288 (list!19440 t!4440)) (list!19440 (Leaf!30257 (fill!300 1 v!5484) 1)))))))

(declare-fun e!4682954 () Bool)

(declare-fun b!7936334 () Bool)

(declare-fun lt!2695357 () List!74587)

(assert (=> b!7936334 (= e!4682954 (or (not (= (list!19440 (Leaf!30257 (fill!300 1 v!5484) 1)) Nil!74463)) (= lt!2695357 (list!19440 t!4440))))))

(declare-fun d!2373226 () Bool)

(assert (=> d!2373226 e!4682954))

(declare-fun res!3148778 () Bool)

(assert (=> d!2373226 (=> (not res!3148778) (not e!4682954))))

(assert (=> d!2373226 (= res!3148778 (= (content!15796 lt!2695357) (set.union (content!15796 (list!19440 t!4440)) (content!15796 (list!19440 (Leaf!30257 (fill!300 1 v!5484) 1))))))))

(assert (=> d!2373226 (= lt!2695357 e!4682953)))

(declare-fun c!1458018 () Bool)

(assert (=> d!2373226 (= c!1458018 (is-Nil!74463 (list!19440 t!4440)))))

(assert (=> d!2373226 (= (++!18272 (list!19440 t!4440) (list!19440 (Leaf!30257 (fill!300 1 v!5484) 1))) lt!2695357)))

(declare-fun b!7936333 () Bool)

(declare-fun res!3148779 () Bool)

(assert (=> b!7936333 (=> (not res!3148779) (not e!4682954))))

(assert (=> b!7936333 (= res!3148779 (= (size!43286 lt!2695357) (+ (size!43286 (list!19440 t!4440)) (size!43286 (list!19440 (Leaf!30257 (fill!300 1 v!5484) 1))))))))

(assert (= (and d!2373226 c!1458018) b!7936331))

(assert (= (and d!2373226 (not c!1458018)) b!7936332))

(assert (= (and d!2373226 res!3148778) b!7936333))

(assert (= (and b!7936333 res!3148779) b!7936334))

(assert (=> b!7936332 m!8324230))

(declare-fun m!8324454 () Bool)

(assert (=> b!7936332 m!8324454))

(declare-fun m!8324456 () Bool)

(assert (=> d!2373226 m!8324456))

(assert (=> d!2373226 m!8324158))

(assert (=> d!2373226 m!8324266))

(assert (=> d!2373226 m!8324230))

(declare-fun m!8324458 () Bool)

(assert (=> d!2373226 m!8324458))

(declare-fun m!8324460 () Bool)

(assert (=> b!7936333 m!8324460))

(assert (=> b!7936333 m!8324158))

(assert (=> b!7936333 m!8324276))

(assert (=> b!7936333 m!8324230))

(declare-fun m!8324462 () Bool)

(assert (=> b!7936333 m!8324462))

(assert (=> d!2373158 d!2373226))

(assert (=> d!2373158 d!2373182))

(declare-fun b!7936335 () Bool)

(declare-fun e!4682955 () List!74587)

(assert (=> b!7936335 (= e!4682955 Nil!74463)))

(declare-fun b!7936336 () Bool)

(declare-fun e!4682956 () List!74587)

(assert (=> b!7936336 (= e!4682955 e!4682956)))

(declare-fun c!1458020 () Bool)

(assert (=> b!7936336 (= c!1458020 (is-Leaf!30257 (Leaf!30257 (fill!300 1 v!5484) 1)))))

(declare-fun b!7936337 () Bool)

(assert (=> b!7936337 (= e!4682956 (list!19442 (xs!19313 (Leaf!30257 (fill!300 1 v!5484) 1))))))

(declare-fun b!7936338 () Bool)

(assert (=> b!7936338 (= e!4682956 (++!18272 (list!19440 (left!56896 (Leaf!30257 (fill!300 1 v!5484) 1))) (list!19440 (right!57226 (Leaf!30257 (fill!300 1 v!5484) 1)))))))

(declare-fun d!2373228 () Bool)

(declare-fun c!1458019 () Bool)

(assert (=> d!2373228 (= c!1458019 (is-Empty!15917 (Leaf!30257 (fill!300 1 v!5484) 1)))))

(assert (=> d!2373228 (= (list!19440 (Leaf!30257 (fill!300 1 v!5484) 1)) e!4682955)))

(assert (= (and d!2373228 c!1458019) b!7936335))

(assert (= (and d!2373228 (not c!1458019)) b!7936336))

(assert (= (and b!7936336 c!1458020) b!7936337))

(assert (= (and b!7936336 (not c!1458020)) b!7936338))

(declare-fun m!8324464 () Bool)

(assert (=> b!7936337 m!8324464))

(declare-fun m!8324466 () Bool)

(assert (=> b!7936338 m!8324466))

(declare-fun m!8324468 () Bool)

(assert (=> b!7936338 m!8324468))

(assert (=> b!7936338 m!8324466))

(assert (=> b!7936338 m!8324468))

(declare-fun m!8324470 () Bool)

(assert (=> b!7936338 m!8324470))

(assert (=> d!2373158 d!2373228))

(declare-fun d!2373230 () Bool)

(declare-fun res!3148781 () Bool)

(declare-fun e!4682958 () Bool)

(assert (=> d!2373230 (=> res!3148781 e!4682958)))

(assert (=> d!2373230 (= res!3148781 (not (is-Node!15917 (right!57226 t!4440))))))

(assert (=> d!2373230 (= (isBalanced!4543 (right!57226 t!4440)) e!4682958)))

(declare-fun b!7936339 () Bool)

(declare-fun res!3148785 () Bool)

(declare-fun e!4682957 () Bool)

(assert (=> b!7936339 (=> (not res!3148785) (not e!4682957))))

(assert (=> b!7936339 (= res!3148785 (not (isEmpty!42803 (left!56896 (right!57226 t!4440)))))))

(declare-fun b!7936340 () Bool)

(assert (=> b!7936340 (= e!4682958 e!4682957)))

(declare-fun res!3148782 () Bool)

(assert (=> b!7936340 (=> (not res!3148782) (not e!4682957))))

(assert (=> b!7936340 (= res!3148782 (<= (- 1) (- (height!2230 (left!56896 (right!57226 t!4440))) (height!2230 (right!57226 (right!57226 t!4440))))))))

(declare-fun b!7936341 () Bool)

(declare-fun res!3148784 () Bool)

(assert (=> b!7936341 (=> (not res!3148784) (not e!4682957))))

(assert (=> b!7936341 (= res!3148784 (<= (- (height!2230 (left!56896 (right!57226 t!4440))) (height!2230 (right!57226 (right!57226 t!4440)))) 1))))

(declare-fun b!7936342 () Bool)

(assert (=> b!7936342 (= e!4682957 (not (isEmpty!42803 (right!57226 (right!57226 t!4440)))))))

(declare-fun b!7936343 () Bool)

(declare-fun res!3148783 () Bool)

(assert (=> b!7936343 (=> (not res!3148783) (not e!4682957))))

(assert (=> b!7936343 (= res!3148783 (isBalanced!4543 (right!57226 (right!57226 t!4440))))))

(declare-fun b!7936344 () Bool)

(declare-fun res!3148780 () Bool)

(assert (=> b!7936344 (=> (not res!3148780) (not e!4682957))))

(assert (=> b!7936344 (= res!3148780 (isBalanced!4543 (left!56896 (right!57226 t!4440))))))

(assert (= (and d!2373230 (not res!3148781)) b!7936340))

(assert (= (and b!7936340 res!3148782) b!7936341))

(assert (= (and b!7936341 res!3148784) b!7936344))

(assert (= (and b!7936344 res!3148780) b!7936343))

(assert (= (and b!7936343 res!3148783) b!7936339))

(assert (= (and b!7936339 res!3148785) b!7936342))

(declare-fun m!8324472 () Bool)

(assert (=> b!7936341 m!8324472))

(declare-fun m!8324474 () Bool)

(assert (=> b!7936341 m!8324474))

(declare-fun m!8324476 () Bool)

(assert (=> b!7936344 m!8324476))

(declare-fun m!8324478 () Bool)

(assert (=> b!7936342 m!8324478))

(assert (=> b!7936340 m!8324472))

(assert (=> b!7936340 m!8324474))

(declare-fun m!8324480 () Bool)

(assert (=> b!7936339 m!8324480))

(declare-fun m!8324482 () Bool)

(assert (=> b!7936343 m!8324482))

(assert (=> b!7936195 d!2373230))

(declare-fun d!2373232 () Bool)

(declare-fun res!3148787 () Bool)

(declare-fun e!4682960 () Bool)

(assert (=> d!2373232 (=> res!3148787 e!4682960)))

(assert (=> d!2373232 (= res!3148787 (not (is-Node!15917 (left!56896 t!4440))))))

(assert (=> d!2373232 (= (isBalanced!4543 (left!56896 t!4440)) e!4682960)))

(declare-fun b!7936345 () Bool)

(declare-fun res!3148791 () Bool)

(declare-fun e!4682959 () Bool)

(assert (=> b!7936345 (=> (not res!3148791) (not e!4682959))))

(assert (=> b!7936345 (= res!3148791 (not (isEmpty!42803 (left!56896 (left!56896 t!4440)))))))

(declare-fun b!7936346 () Bool)

(assert (=> b!7936346 (= e!4682960 e!4682959)))

(declare-fun res!3148788 () Bool)

(assert (=> b!7936346 (=> (not res!3148788) (not e!4682959))))

(assert (=> b!7936346 (= res!3148788 (<= (- 1) (- (height!2230 (left!56896 (left!56896 t!4440))) (height!2230 (right!57226 (left!56896 t!4440))))))))

(declare-fun b!7936347 () Bool)

(declare-fun res!3148790 () Bool)

(assert (=> b!7936347 (=> (not res!3148790) (not e!4682959))))

(assert (=> b!7936347 (= res!3148790 (<= (- (height!2230 (left!56896 (left!56896 t!4440))) (height!2230 (right!57226 (left!56896 t!4440)))) 1))))

(declare-fun b!7936348 () Bool)

(assert (=> b!7936348 (= e!4682959 (not (isEmpty!42803 (right!57226 (left!56896 t!4440)))))))

(declare-fun b!7936349 () Bool)

(declare-fun res!3148789 () Bool)

(assert (=> b!7936349 (=> (not res!3148789) (not e!4682959))))

(assert (=> b!7936349 (= res!3148789 (isBalanced!4543 (right!57226 (left!56896 t!4440))))))

(declare-fun b!7936350 () Bool)

(declare-fun res!3148786 () Bool)

(assert (=> b!7936350 (=> (not res!3148786) (not e!4682959))))

(assert (=> b!7936350 (= res!3148786 (isBalanced!4543 (left!56896 (left!56896 t!4440))))))

(assert (= (and d!2373232 (not res!3148787)) b!7936346))

(assert (= (and b!7936346 res!3148788) b!7936347))

(assert (= (and b!7936347 res!3148790) b!7936350))

(assert (= (and b!7936350 res!3148786) b!7936349))

(assert (= (and b!7936349 res!3148789) b!7936345))

(assert (= (and b!7936345 res!3148791) b!7936348))

(declare-fun m!8324484 () Bool)

(assert (=> b!7936347 m!8324484))

(declare-fun m!8324486 () Bool)

(assert (=> b!7936347 m!8324486))

(declare-fun m!8324488 () Bool)

(assert (=> b!7936350 m!8324488))

(declare-fun m!8324490 () Bool)

(assert (=> b!7936348 m!8324490))

(assert (=> b!7936346 m!8324484))

(assert (=> b!7936346 m!8324486))

(declare-fun m!8324492 () Bool)

(assert (=> b!7936345 m!8324492))

(declare-fun m!8324494 () Bool)

(assert (=> b!7936349 m!8324494))

(assert (=> b!7936196 d!2373232))

(declare-fun d!2373234 () Bool)

(declare-fun res!3148792 () Bool)

(declare-fun e!4682961 () Bool)

(assert (=> d!2373234 (=> (not res!3148792) (not e!4682961))))

(assert (=> d!2373234 (= res!3148792 (<= (size!43286 (list!19442 (xs!19313 t!4440))) 512))))

(assert (=> d!2373234 (= (inv!95806 t!4440) e!4682961)))

(declare-fun b!7936351 () Bool)

(declare-fun res!3148793 () Bool)

(assert (=> b!7936351 (=> (not res!3148793) (not e!4682961))))

(assert (=> b!7936351 (= res!3148793 (= (csize!32065 t!4440) (size!43286 (list!19442 (xs!19313 t!4440)))))))

(declare-fun b!7936352 () Bool)

(assert (=> b!7936352 (= e!4682961 (and (> (csize!32065 t!4440) 0) (<= (csize!32065 t!4440) 512)))))

(assert (= (and d!2373234 res!3148792) b!7936351))

(assert (= (and b!7936351 res!3148793) b!7936352))

(assert (=> d!2373234 m!8324282))

(assert (=> d!2373234 m!8324282))

(declare-fun m!8324496 () Bool)

(assert (=> d!2373234 m!8324496))

(assert (=> b!7936351 m!8324282))

(assert (=> b!7936351 m!8324282))

(assert (=> b!7936351 m!8324496))

(assert (=> b!7936199 d!2373234))

(declare-fun d!2373236 () Bool)

(declare-fun lt!2695358 () Bool)

(assert (=> d!2373236 (= lt!2695358 (isEmpty!42805 (list!19440 (left!56896 lt!2695319))))))

(assert (=> d!2373236 (= lt!2695358 (= (size!43285 (left!56896 lt!2695319)) 0))))

(assert (=> d!2373236 (= (isEmpty!42803 (left!56896 lt!2695319)) lt!2695358)))

(declare-fun bs!1969205 () Bool)

(assert (= bs!1969205 d!2373236))

(assert (=> bs!1969205 m!8324258))

(assert (=> bs!1969205 m!8324258))

(declare-fun m!8324498 () Bool)

(assert (=> bs!1969205 m!8324498))

(declare-fun m!8324500 () Bool)

(assert (=> bs!1969205 m!8324500))

(assert (=> b!7936081 d!2373236))

(declare-fun d!2373238 () Bool)

(declare-fun res!3148800 () Bool)

(declare-fun e!4682964 () Bool)

(assert (=> d!2373238 (=> (not res!3148800) (not e!4682964))))

(assert (=> d!2373238 (= res!3148800 (= (csize!32064 (left!56896 t!4440)) (+ (size!43285 (left!56896 (left!56896 t!4440))) (size!43285 (right!57226 (left!56896 t!4440))))))))

(assert (=> d!2373238 (= (inv!95805 (left!56896 t!4440)) e!4682964)))

(declare-fun b!7936359 () Bool)

(declare-fun res!3148801 () Bool)

(assert (=> b!7936359 (=> (not res!3148801) (not e!4682964))))

(assert (=> b!7936359 (= res!3148801 (and (not (= (left!56896 (left!56896 t!4440)) Empty!15917)) (not (= (right!57226 (left!56896 t!4440)) Empty!15917))))))

(declare-fun b!7936360 () Bool)

(declare-fun res!3148802 () Bool)

(assert (=> b!7936360 (=> (not res!3148802) (not e!4682964))))

(assert (=> b!7936360 (= res!3148802 (= (cheight!16128 (left!56896 t!4440)) (+ (max!0 (height!2230 (left!56896 (left!56896 t!4440))) (height!2230 (right!57226 (left!56896 t!4440)))) 1)))))

(declare-fun b!7936361 () Bool)

(assert (=> b!7936361 (= e!4682964 (<= 0 (cheight!16128 (left!56896 t!4440))))))

(assert (= (and d!2373238 res!3148800) b!7936359))

(assert (= (and b!7936359 res!3148801) b!7936360))

(assert (= (and b!7936360 res!3148802) b!7936361))

(declare-fun m!8324502 () Bool)

(assert (=> d!2373238 m!8324502))

(declare-fun m!8324504 () Bool)

(assert (=> d!2373238 m!8324504))

(assert (=> b!7936360 m!8324484))

(assert (=> b!7936360 m!8324486))

(assert (=> b!7936360 m!8324484))

(assert (=> b!7936360 m!8324486))

(declare-fun m!8324506 () Bool)

(assert (=> b!7936360 m!8324506))

(assert (=> b!7936125 d!2373238))

(assert (=> b!7936082 d!2373210))

(assert (=> b!7936082 d!2373212))

(declare-fun d!2373240 () Bool)

(declare-fun c!1458021 () Bool)

(assert (=> d!2373240 (= c!1458021 (is-Node!15917 (left!56896 (right!57226 t!4440))))))

(declare-fun e!4682965 () Bool)

(assert (=> d!2373240 (= (inv!95801 (left!56896 (right!57226 t!4440))) e!4682965)))

(declare-fun b!7936362 () Bool)

(assert (=> b!7936362 (= e!4682965 (inv!95805 (left!56896 (right!57226 t!4440))))))

(declare-fun b!7936363 () Bool)

(declare-fun e!4682966 () Bool)

(assert (=> b!7936363 (= e!4682965 e!4682966)))

(declare-fun res!3148803 () Bool)

(assert (=> b!7936363 (= res!3148803 (not (is-Leaf!30257 (left!56896 (right!57226 t!4440)))))))

(assert (=> b!7936363 (=> res!3148803 e!4682966)))

(declare-fun b!7936364 () Bool)

(assert (=> b!7936364 (= e!4682966 (inv!95806 (left!56896 (right!57226 t!4440))))))

(assert (= (and d!2373240 c!1458021) b!7936362))

(assert (= (and d!2373240 (not c!1458021)) b!7936363))

(assert (= (and b!7936363 (not res!3148803)) b!7936364))

(declare-fun m!8324508 () Bool)

(assert (=> b!7936362 m!8324508))

(declare-fun m!8324510 () Bool)

(assert (=> b!7936364 m!8324510))

(assert (=> b!7936211 d!2373240))

(declare-fun d!2373242 () Bool)

(declare-fun c!1458022 () Bool)

(assert (=> d!2373242 (= c!1458022 (is-Node!15917 (right!57226 (right!57226 t!4440))))))

(declare-fun e!4682967 () Bool)

(assert (=> d!2373242 (= (inv!95801 (right!57226 (right!57226 t!4440))) e!4682967)))

(declare-fun b!7936365 () Bool)

(assert (=> b!7936365 (= e!4682967 (inv!95805 (right!57226 (right!57226 t!4440))))))

(declare-fun b!7936366 () Bool)

(declare-fun e!4682968 () Bool)

(assert (=> b!7936366 (= e!4682967 e!4682968)))

(declare-fun res!3148804 () Bool)

(assert (=> b!7936366 (= res!3148804 (not (is-Leaf!30257 (right!57226 (right!57226 t!4440)))))))

(assert (=> b!7936366 (=> res!3148804 e!4682968)))

(declare-fun b!7936367 () Bool)

(assert (=> b!7936367 (= e!4682968 (inv!95806 (right!57226 (right!57226 t!4440))))))

(assert (= (and d!2373242 c!1458022) b!7936365))

(assert (= (and d!2373242 (not c!1458022)) b!7936366))

(assert (= (and b!7936366 (not res!3148804)) b!7936367))

(declare-fun m!8324512 () Bool)

(assert (=> b!7936365 m!8324512))

(declare-fun m!8324514 () Bool)

(assert (=> b!7936367 m!8324514))

(assert (=> b!7936211 d!2373242))

(declare-fun e!4682971 () Bool)

(declare-fun lt!2695359 () List!74587)

(declare-fun b!7936369 () Bool)

(assert (=> b!7936369 (= e!4682971 (= lt!2695359 (++!18272 (t!390288 (list!19440 t!4440)) (Cons!74463 v!5484 Nil!74463))))))

(declare-fun b!7936370 () Bool)

(declare-fun e!4682969 () Bool)

(declare-fun call!735672 () (_ BitVec 32))

(declare-fun call!735671 () (_ BitVec 32))

(assert (=> b!7936370 (= e!4682969 (= call!735672 (bvadd call!735671 #b00000000000000000000000000000001)))))

(declare-fun b!7936371 () Bool)

(declare-fun res!3148807 () Bool)

(assert (=> b!7936371 (=> (not res!3148807) (not e!4682971))))

(assert (=> b!7936371 (= res!3148807 (= (content!15796 lt!2695359) (set.union (content!15796 (t!390288 (list!19440 t!4440))) (set.insert v!5484 (as set.empty (Set T!145914))))))))

(declare-fun b!7936368 () Bool)

(assert (=> b!7936368 (= e!4682969 (= call!735672 call!735671))))

(declare-fun d!2373244 () Bool)

(assert (=> d!2373244 e!4682971))

(declare-fun res!3148808 () Bool)

(assert (=> d!2373244 (=> (not res!3148808) (not e!4682971))))

(assert (=> d!2373244 (= res!3148808 (is-Cons!74463 lt!2695359))))

(declare-fun e!4682970 () List!74587)

(assert (=> d!2373244 (= lt!2695359 e!4682970)))

(declare-fun c!1458023 () Bool)

(assert (=> d!2373244 (= c!1458023 (is-Nil!74463 (t!390288 (list!19440 t!4440))))))

(assert (=> d!2373244 (= ($colon+!326 (t!390288 (list!19440 t!4440)) v!5484) lt!2695359)))

(declare-fun b!7936372 () Bool)

(assert (=> b!7936372 (= e!4682970 (Cons!74463 (h!80911 (t!390288 (list!19440 t!4440))) ($colon+!326 (t!390288 (t!390288 (list!19440 t!4440))) v!5484)))))

(declare-fun b!7936373 () Bool)

(assert (=> b!7936373 (= e!4682970 (Cons!74463 v!5484 (t!390288 (list!19440 t!4440))))))

(declare-fun b!7936374 () Bool)

(declare-fun res!3148806 () Bool)

(assert (=> b!7936374 (=> (not res!3148806) (not e!4682971))))

(assert (=> b!7936374 (= res!3148806 e!4682969)))

(declare-fun c!1458024 () Bool)

(assert (=> b!7936374 (= c!1458024 (bvslt (isize!130 (t!390288 (list!19440 t!4440))) #b01111111111111111111111111111111))))

(declare-fun bm!735666 () Bool)

(assert (=> bm!735666 (= call!735671 (isize!130 (t!390288 (list!19440 t!4440))))))

(declare-fun b!7936375 () Bool)

(declare-fun res!3148805 () Bool)

(assert (=> b!7936375 (=> (not res!3148805) (not e!4682971))))

(assert (=> b!7936375 (= res!3148805 (= (size!43286 lt!2695359) (+ (size!43286 (t!390288 (list!19440 t!4440))) 1)))))

(declare-fun bm!735667 () Bool)

(assert (=> bm!735667 (= call!735672 (isize!130 lt!2695359))))

(assert (= (and d!2373244 c!1458023) b!7936373))

(assert (= (and d!2373244 (not c!1458023)) b!7936372))

(assert (= (and d!2373244 res!3148808) b!7936375))

(assert (= (and b!7936375 res!3148805) b!7936374))

(assert (= (and b!7936374 c!1458024) b!7936370))

(assert (= (and b!7936374 (not c!1458024)) b!7936368))

(assert (= (or b!7936370 b!7936368) bm!735667))

(assert (= (or b!7936370 b!7936368) bm!735666))

(assert (= (and b!7936374 res!3148806) b!7936371))

(assert (= (and b!7936371 res!3148807) b!7936369))

(declare-fun m!8324516 () Bool)

(assert (=> b!7936371 m!8324516))

(declare-fun m!8324518 () Bool)

(assert (=> b!7936371 m!8324518))

(assert (=> b!7936371 m!8324268))

(declare-fun m!8324520 () Bool)

(assert (=> b!7936372 m!8324520))

(declare-fun m!8324522 () Bool)

(assert (=> bm!735667 m!8324522))

(declare-fun m!8324524 () Bool)

(assert (=> b!7936375 m!8324524))

(declare-fun m!8324526 () Bool)

(assert (=> b!7936375 m!8324526))

(declare-fun m!8324528 () Bool)

(assert (=> b!7936374 m!8324528))

(assert (=> bm!735666 m!8324528))

(declare-fun m!8324530 () Bool)

(assert (=> b!7936369 m!8324530))

(assert (=> b!7936179 d!2373244))

(declare-fun d!2373246 () Bool)

(declare-fun res!3148809 () Bool)

(declare-fun e!4682972 () Bool)

(assert (=> d!2373246 (=> (not res!3148809) (not e!4682972))))

(assert (=> d!2373246 (= res!3148809 (= (csize!32064 (right!57226 t!4440)) (+ (size!43285 (left!56896 (right!57226 t!4440))) (size!43285 (right!57226 (right!57226 t!4440))))))))

(assert (=> d!2373246 (= (inv!95805 (right!57226 t!4440)) e!4682972)))

(declare-fun b!7936376 () Bool)

(declare-fun res!3148810 () Bool)

(assert (=> b!7936376 (=> (not res!3148810) (not e!4682972))))

(assert (=> b!7936376 (= res!3148810 (and (not (= (left!56896 (right!57226 t!4440)) Empty!15917)) (not (= (right!57226 (right!57226 t!4440)) Empty!15917))))))

(declare-fun b!7936377 () Bool)

(declare-fun res!3148811 () Bool)

(assert (=> b!7936377 (=> (not res!3148811) (not e!4682972))))

(assert (=> b!7936377 (= res!3148811 (= (cheight!16128 (right!57226 t!4440)) (+ (max!0 (height!2230 (left!56896 (right!57226 t!4440))) (height!2230 (right!57226 (right!57226 t!4440)))) 1)))))

(declare-fun b!7936378 () Bool)

(assert (=> b!7936378 (= e!4682972 (<= 0 (cheight!16128 (right!57226 t!4440))))))

(assert (= (and d!2373246 res!3148809) b!7936376))

(assert (= (and b!7936376 res!3148810) b!7936377))

(assert (= (and b!7936377 res!3148811) b!7936378))

(declare-fun m!8324532 () Bool)

(assert (=> d!2373246 m!8324532))

(declare-fun m!8324534 () Bool)

(assert (=> d!2373246 m!8324534))

(assert (=> b!7936377 m!8324472))

(assert (=> b!7936377 m!8324474))

(assert (=> b!7936377 m!8324472))

(assert (=> b!7936377 m!8324474))

(declare-fun m!8324536 () Bool)

(assert (=> b!7936377 m!8324536))

(assert (=> b!7936128 d!2373246))

(declare-fun d!2373248 () Bool)

(declare-fun lt!2695364 () (_ BitVec 32))

(assert (=> d!2373248 (and (bvsle #b00000000000000000000000000000000 lt!2695364) (bvsle lt!2695364 #b01111111111111111111111111111111))))

(declare-fun e!4682975 () (_ BitVec 32))

(assert (=> d!2373248 (= lt!2695364 e!4682975)))

(declare-fun c!1458027 () Bool)

(assert (=> d!2373248 (= c!1458027 (is-Nil!74463 (list!19440 t!4440)))))

(assert (=> d!2373248 (= (isize!130 (list!19440 t!4440)) lt!2695364)))

(declare-fun b!7936383 () Bool)

(assert (=> b!7936383 (= e!4682975 #b00000000000000000000000000000000)))

(declare-fun b!7936384 () Bool)

(declare-fun lt!2695365 () (_ BitVec 32))

(assert (=> b!7936384 (= e!4682975 (ite (= lt!2695365 #b01111111111111111111111111111111) lt!2695365 (bvadd #b00000000000000000000000000000001 lt!2695365)))))

(assert (=> b!7936384 (= lt!2695365 (isize!130 (t!390288 (list!19440 t!4440))))))

(assert (= (and d!2373248 c!1458027) b!7936383))

(assert (= (and d!2373248 (not c!1458027)) b!7936384))

(assert (=> b!7936384 m!8324528))

(assert (=> b!7936181 d!2373248))

(declare-fun d!2373250 () Bool)

(declare-fun lt!2695366 () Bool)

(assert (=> d!2373250 (= lt!2695366 (isEmpty!42805 (list!19440 (left!56896 t!4440))))))

(assert (=> d!2373250 (= lt!2695366 (= (size!43285 (left!56896 t!4440)) 0))))

(assert (=> d!2373250 (= (isEmpty!42803 (left!56896 t!4440)) lt!2695366)))

(declare-fun bs!1969206 () Bool)

(assert (= bs!1969206 d!2373250))

(assert (=> bs!1969206 m!8324284))

(assert (=> bs!1969206 m!8324284))

(declare-fun m!8324538 () Bool)

(assert (=> bs!1969206 m!8324538))

(declare-fun m!8324540 () Bool)

(assert (=> bs!1969206 m!8324540))

(assert (=> b!7936191 d!2373250))

(assert (=> bm!735658 d!2373248))

(declare-fun d!2373252 () Bool)

(assert (=> d!2373252 (= (height!2230 (left!56896 t!4440)) (ite (is-Empty!15917 (left!56896 t!4440)) 0 (ite (is-Leaf!30257 (left!56896 t!4440)) 1 (cheight!16128 (left!56896 t!4440)))))))

(assert (=> b!7936192 d!2373252))

(declare-fun d!2373254 () Bool)

(assert (=> d!2373254 (= (height!2230 (right!57226 t!4440)) (ite (is-Empty!15917 (right!57226 t!4440)) 0 (ite (is-Leaf!30257 (right!57226 t!4440)) 1 (cheight!16128 (right!57226 t!4440)))))))

(assert (=> b!7936192 d!2373254))

(declare-fun d!2373256 () Bool)

(declare-fun res!3148812 () Bool)

(declare-fun e!4682976 () Bool)

(assert (=> d!2373256 (=> (not res!3148812) (not e!4682976))))

(assert (=> d!2373256 (= res!3148812 (<= (size!43286 (list!19442 (xs!19313 (right!57226 t!4440)))) 512))))

(assert (=> d!2373256 (= (inv!95806 (right!57226 t!4440)) e!4682976)))

(declare-fun b!7936385 () Bool)

(declare-fun res!3148813 () Bool)

(assert (=> b!7936385 (=> (not res!3148813) (not e!4682976))))

(assert (=> b!7936385 (= res!3148813 (= (csize!32065 (right!57226 t!4440)) (size!43286 (list!19442 (xs!19313 (right!57226 t!4440))))))))

(declare-fun b!7936386 () Bool)

(assert (=> b!7936386 (= e!4682976 (and (> (csize!32065 (right!57226 t!4440)) 0) (<= (csize!32065 (right!57226 t!4440)) 512)))))

(assert (= (and d!2373256 res!3148812) b!7936385))

(assert (= (and b!7936385 res!3148813) b!7936386))

(declare-fun m!8324542 () Bool)

(assert (=> d!2373256 m!8324542))

(assert (=> d!2373256 m!8324542))

(declare-fun m!8324544 () Bool)

(assert (=> d!2373256 m!8324544))

(assert (=> b!7936385 m!8324542))

(assert (=> b!7936385 m!8324542))

(assert (=> b!7936385 m!8324544))

(assert (=> b!7936130 d!2373256))

(declare-fun d!2373258 () Bool)

(declare-fun lt!2695369 () Int)

(assert (=> d!2373258 (>= lt!2695369 0)))

(declare-fun e!4682979 () Int)

(assert (=> d!2373258 (= lt!2695369 e!4682979)))

(declare-fun c!1458030 () Bool)

(assert (=> d!2373258 (= c!1458030 (is-Nil!74463 (innerList!16005 (xs!19313 t!4440))))))

(assert (=> d!2373258 (= (size!43286 (innerList!16005 (xs!19313 t!4440))) lt!2695369)))

(declare-fun b!7936391 () Bool)

(assert (=> b!7936391 (= e!4682979 0)))

(declare-fun b!7936392 () Bool)

(assert (=> b!7936392 (= e!4682979 (+ 1 (size!43286 (t!390288 (innerList!16005 (xs!19313 t!4440))))))))

(assert (= (and d!2373258 c!1458030) b!7936391))

(assert (= (and d!2373258 (not c!1458030)) b!7936392))

(declare-fun m!8324546 () Bool)

(assert (=> b!7936392 m!8324546))

(assert (=> d!2373166 d!2373258))

(assert (=> b!7936193 d!2373252))

(assert (=> b!7936193 d!2373254))

(declare-fun d!2373260 () Bool)

(declare-fun lt!2695370 () Int)

(assert (=> d!2373260 (>= lt!2695370 0)))

(declare-fun e!4682980 () Int)

(assert (=> d!2373260 (= lt!2695370 e!4682980)))

(declare-fun c!1458031 () Bool)

(assert (=> d!2373260 (= c!1458031 (is-Nil!74463 lt!2695341))))

(assert (=> d!2373260 (= (size!43286 lt!2695341) lt!2695370)))

(declare-fun b!7936393 () Bool)

(assert (=> b!7936393 (= e!4682980 0)))

(declare-fun b!7936394 () Bool)

(assert (=> b!7936394 (= e!4682980 (+ 1 (size!43286 (t!390288 lt!2695341))))))

(assert (= (and d!2373260 c!1458031) b!7936393))

(assert (= (and d!2373260 (not c!1458031)) b!7936394))

(declare-fun m!8324548 () Bool)

(assert (=> b!7936394 m!8324548))

(assert (=> b!7936182 d!2373260))

(declare-fun d!2373262 () Bool)

(declare-fun lt!2695371 () Int)

(assert (=> d!2373262 (>= lt!2695371 0)))

(declare-fun e!4682981 () Int)

(assert (=> d!2373262 (= lt!2695371 e!4682981)))

(declare-fun c!1458032 () Bool)

(assert (=> d!2373262 (= c!1458032 (is-Nil!74463 (list!19440 t!4440)))))

(assert (=> d!2373262 (= (size!43286 (list!19440 t!4440)) lt!2695371)))

(declare-fun b!7936395 () Bool)

(assert (=> b!7936395 (= e!4682981 0)))

(declare-fun b!7936396 () Bool)

(assert (=> b!7936396 (= e!4682981 (+ 1 (size!43286 (t!390288 (list!19440 t!4440)))))))

(assert (= (and d!2373262 c!1458032) b!7936395))

(assert (= (and d!2373262 (not c!1458032)) b!7936396))

(assert (=> b!7936396 m!8324526))

(assert (=> b!7936182 d!2373262))

(declare-fun d!2373264 () Bool)

(declare-fun lt!2695372 () Bool)

(assert (=> d!2373264 (= lt!2695372 (isEmpty!42805 (list!19440 (right!57226 t!4440))))))

(assert (=> d!2373264 (= lt!2695372 (= (size!43285 (right!57226 t!4440)) 0))))

(assert (=> d!2373264 (= (isEmpty!42803 (right!57226 t!4440)) lt!2695372)))

(declare-fun bs!1969207 () Bool)

(assert (= bs!1969207 d!2373264))

(assert (=> bs!1969207 m!8324286))

(assert (=> bs!1969207 m!8324286))

(declare-fun m!8324550 () Bool)

(assert (=> bs!1969207 m!8324550))

(declare-fun m!8324552 () Bool)

(assert (=> bs!1969207 m!8324552))

(assert (=> b!7936194 d!2373264))

(declare-fun d!2373266 () Bool)

(declare-fun lt!2695373 () (_ BitVec 32))

(assert (=> d!2373266 (and (bvsle #b00000000000000000000000000000000 lt!2695373) (bvsle lt!2695373 #b01111111111111111111111111111111))))

(declare-fun e!4682982 () (_ BitVec 32))

(assert (=> d!2373266 (= lt!2695373 e!4682982)))

(declare-fun c!1458033 () Bool)

(assert (=> d!2373266 (= c!1458033 (is-Nil!74463 lt!2695341))))

(assert (=> d!2373266 (= (isize!130 lt!2695341) lt!2695373)))

(declare-fun b!7936397 () Bool)

(assert (=> b!7936397 (= e!4682982 #b00000000000000000000000000000000)))

(declare-fun b!7936398 () Bool)

(declare-fun lt!2695374 () (_ BitVec 32))

(assert (=> b!7936398 (= e!4682982 (ite (= lt!2695374 #b01111111111111111111111111111111) lt!2695374 (bvadd #b00000000000000000000000000000001 lt!2695374)))))

(assert (=> b!7936398 (= lt!2695374 (isize!130 (t!390288 lt!2695341)))))

(assert (= (and d!2373266 c!1458033) b!7936397))

(assert (= (and d!2373266 (not c!1458033)) b!7936398))

(declare-fun m!8324554 () Bool)

(assert (=> b!7936398 m!8324554))

(assert (=> bm!735659 d!2373266))

(declare-fun d!2373268 () Bool)

(declare-fun res!3148814 () Bool)

(declare-fun e!4682983 () Bool)

(assert (=> d!2373268 (=> (not res!3148814) (not e!4682983))))

(assert (=> d!2373268 (= res!3148814 (= (csize!32064 t!4440) (+ (size!43285 (left!56896 t!4440)) (size!43285 (right!57226 t!4440)))))))

(assert (=> d!2373268 (= (inv!95805 t!4440) e!4682983)))

(declare-fun b!7936399 () Bool)

(declare-fun res!3148815 () Bool)

(assert (=> b!7936399 (=> (not res!3148815) (not e!4682983))))

(assert (=> b!7936399 (= res!3148815 (and (not (= (left!56896 t!4440) Empty!15917)) (not (= (right!57226 t!4440) Empty!15917))))))

(declare-fun b!7936400 () Bool)

(declare-fun res!3148816 () Bool)

(assert (=> b!7936400 (=> (not res!3148816) (not e!4682983))))

(assert (=> b!7936400 (= res!3148816 (= (cheight!16128 t!4440) (+ (max!0 (height!2230 (left!56896 t!4440)) (height!2230 (right!57226 t!4440))) 1)))))

(declare-fun b!7936401 () Bool)

(assert (=> b!7936401 (= e!4682983 (<= 0 (cheight!16128 t!4440)))))

(assert (= (and d!2373268 res!3148814) b!7936399))

(assert (= (and b!7936399 res!3148815) b!7936400))

(assert (= (and b!7936400 res!3148816) b!7936401))

(assert (=> d!2373268 m!8324540))

(assert (=> d!2373268 m!8324552))

(assert (=> b!7936400 m!8324290))

(assert (=> b!7936400 m!8324292))

(assert (=> b!7936400 m!8324290))

(assert (=> b!7936400 m!8324292))

(declare-fun m!8324556 () Bool)

(assert (=> b!7936400 m!8324556))

(assert (=> b!7936197 d!2373268))

(declare-fun d!2373270 () Bool)

(declare-fun lt!2695377 () Int)

(assert (=> d!2373270 (= lt!2695377 (size!43286 (list!19440 t!4440)))))

(assert (=> d!2373270 (= lt!2695377 (ite (is-Empty!15917 t!4440) 0 (ite (is-Leaf!30257 t!4440) (csize!32065 t!4440) (csize!32064 t!4440))))))

(assert (=> d!2373270 (= (size!43285 t!4440) lt!2695377)))

(declare-fun bs!1969208 () Bool)

(assert (= bs!1969208 d!2373270))

(assert (=> bs!1969208 m!8324158))

(assert (=> bs!1969208 m!8324158))

(assert (=> bs!1969208 m!8324276))

(assert (=> b!7936110 d!2373270))

(declare-fun d!2373272 () Bool)

(declare-fun lt!2695378 () Int)

(assert (=> d!2373272 (= lt!2695378 (size!43286 (list!19440 (Leaf!30257 (fill!300 1 v!5484) 1))))))

(assert (=> d!2373272 (= lt!2695378 (ite (is-Empty!15917 (Leaf!30257 (fill!300 1 v!5484) 1)) 0 (ite (is-Leaf!30257 (Leaf!30257 (fill!300 1 v!5484) 1)) (csize!32065 (Leaf!30257 (fill!300 1 v!5484) 1)) (csize!32064 (Leaf!30257 (fill!300 1 v!5484) 1)))))))

(assert (=> d!2373272 (= (size!43285 (Leaf!30257 (fill!300 1 v!5484) 1)) lt!2695378)))

(declare-fun bs!1969209 () Bool)

(assert (= bs!1969209 d!2373272))

(assert (=> bs!1969209 m!8324230))

(assert (=> bs!1969209 m!8324230))

(assert (=> bs!1969209 m!8324462))

(assert (=> b!7936110 d!2373272))

(declare-fun d!2373274 () Bool)

(assert (=> d!2373274 (= (max!0 (height!2230 t!4440) (height!2230 (Leaf!30257 (fill!300 1 v!5484) 1))) (ite (< (height!2230 t!4440) (height!2230 (Leaf!30257 (fill!300 1 v!5484) 1))) (height!2230 (Leaf!30257 (fill!300 1 v!5484) 1)) (height!2230 t!4440)))))

(assert (=> b!7936110 d!2373274))

(declare-fun d!2373276 () Bool)

(assert (=> d!2373276 (= (height!2230 (Leaf!30257 (fill!300 1 v!5484) 1)) (ite (is-Empty!15917 (Leaf!30257 (fill!300 1 v!5484) 1)) 0 (ite (is-Leaf!30257 (Leaf!30257 (fill!300 1 v!5484) 1)) 1 (cheight!16128 (Leaf!30257 (fill!300 1 v!5484) 1)))))))

(assert (=> b!7936110 d!2373276))

(assert (=> b!7936110 d!2373174))

(declare-fun b!7936402 () Bool)

(declare-fun e!4682984 () List!74587)

(assert (=> b!7936402 (= e!4682984 (Cons!74463 v!5484 Nil!74463))))

(declare-fun b!7936403 () Bool)

(assert (=> b!7936403 (= e!4682984 (Cons!74463 (h!80911 (list!19440 t!4440)) (++!18272 (t!390288 (list!19440 t!4440)) (Cons!74463 v!5484 Nil!74463))))))

(declare-fun b!7936405 () Bool)

(declare-fun e!4682985 () Bool)

(declare-fun lt!2695379 () List!74587)

(assert (=> b!7936405 (= e!4682985 (or (not (= (Cons!74463 v!5484 Nil!74463) Nil!74463)) (= lt!2695379 (list!19440 t!4440))))))

(declare-fun d!2373278 () Bool)

(assert (=> d!2373278 e!4682985))

(declare-fun res!3148817 () Bool)

(assert (=> d!2373278 (=> (not res!3148817) (not e!4682985))))

(assert (=> d!2373278 (= res!3148817 (= (content!15796 lt!2695379) (set.union (content!15796 (list!19440 t!4440)) (content!15796 (Cons!74463 v!5484 Nil!74463)))))))

(assert (=> d!2373278 (= lt!2695379 e!4682984)))

(declare-fun c!1458034 () Bool)

(assert (=> d!2373278 (= c!1458034 (is-Nil!74463 (list!19440 t!4440)))))

(assert (=> d!2373278 (= (++!18272 (list!19440 t!4440) (Cons!74463 v!5484 Nil!74463)) lt!2695379)))

(declare-fun b!7936404 () Bool)

(declare-fun res!3148818 () Bool)

(assert (=> b!7936404 (=> (not res!3148818) (not e!4682985))))

(assert (=> b!7936404 (= res!3148818 (= (size!43286 lt!2695379) (+ (size!43286 (list!19440 t!4440)) (size!43286 (Cons!74463 v!5484 Nil!74463)))))))

(assert (= (and d!2373278 c!1458034) b!7936402))

(assert (= (and d!2373278 (not c!1458034)) b!7936403))

(assert (= (and d!2373278 res!3148817) b!7936404))

(assert (= (and b!7936404 res!3148818) b!7936405))

(assert (=> b!7936403 m!8324530))

(declare-fun m!8324558 () Bool)

(assert (=> d!2373278 m!8324558))

(assert (=> d!2373278 m!8324158))

(assert (=> d!2373278 m!8324266))

(declare-fun m!8324560 () Bool)

(assert (=> d!2373278 m!8324560))

(declare-fun m!8324562 () Bool)

(assert (=> b!7936404 m!8324562))

(assert (=> b!7936404 m!8324158))

(assert (=> b!7936404 m!8324276))

(declare-fun m!8324564 () Bool)

(assert (=> b!7936404 m!8324564))

(assert (=> b!7936176 d!2373278))

(declare-fun d!2373280 () Bool)

(declare-fun c!1458035 () Bool)

(assert (=> d!2373280 (= c!1458035 (is-Node!15917 (left!56896 (left!56896 t!4440))))))

(declare-fun e!4682986 () Bool)

(assert (=> d!2373280 (= (inv!95801 (left!56896 (left!56896 t!4440))) e!4682986)))

(declare-fun b!7936406 () Bool)

(assert (=> b!7936406 (= e!4682986 (inv!95805 (left!56896 (left!56896 t!4440))))))

(declare-fun b!7936407 () Bool)

(declare-fun e!4682987 () Bool)

(assert (=> b!7936407 (= e!4682986 e!4682987)))

(declare-fun res!3148819 () Bool)

(assert (=> b!7936407 (= res!3148819 (not (is-Leaf!30257 (left!56896 (left!56896 t!4440)))))))

(assert (=> b!7936407 (=> res!3148819 e!4682987)))

(declare-fun b!7936408 () Bool)

(assert (=> b!7936408 (= e!4682987 (inv!95806 (left!56896 (left!56896 t!4440))))))

(assert (= (and d!2373280 c!1458035) b!7936406))

(assert (= (and d!2373280 (not c!1458035)) b!7936407))

(assert (= (and b!7936407 (not res!3148819)) b!7936408))

(declare-fun m!8324566 () Bool)

(assert (=> b!7936406 m!8324566))

(declare-fun m!8324568 () Bool)

(assert (=> b!7936408 m!8324568))

(assert (=> b!7936208 d!2373280))

(declare-fun d!2373282 () Bool)

(declare-fun c!1458036 () Bool)

(assert (=> d!2373282 (= c!1458036 (is-Node!15917 (right!57226 (left!56896 t!4440))))))

(declare-fun e!4682988 () Bool)

(assert (=> d!2373282 (= (inv!95801 (right!57226 (left!56896 t!4440))) e!4682988)))

(declare-fun b!7936409 () Bool)

(assert (=> b!7936409 (= e!4682988 (inv!95805 (right!57226 (left!56896 t!4440))))))

(declare-fun b!7936410 () Bool)

(declare-fun e!4682989 () Bool)

(assert (=> b!7936410 (= e!4682988 e!4682989)))

(declare-fun res!3148820 () Bool)

(assert (=> b!7936410 (= res!3148820 (not (is-Leaf!30257 (right!57226 (left!56896 t!4440)))))))

(assert (=> b!7936410 (=> res!3148820 e!4682989)))

(declare-fun b!7936411 () Bool)

(assert (=> b!7936411 (= e!4682989 (inv!95806 (right!57226 (left!56896 t!4440))))))

(assert (= (and d!2373282 c!1458036) b!7936409))

(assert (= (and d!2373282 (not c!1458036)) b!7936410))

(assert (= (and b!7936410 (not res!3148820)) b!7936411))

(declare-fun m!8324570 () Bool)

(assert (=> b!7936409 m!8324570))

(declare-fun m!8324572 () Bool)

(assert (=> b!7936411 m!8324572))

(assert (=> b!7936208 d!2373282))

(assert (=> b!7936045 d!2373168))

(assert (=> b!7936045 d!2373170))

(declare-fun d!2373284 () Bool)

(assert (=> d!2373284 (= (inv!95802 (xs!19313 (left!56896 t!4440))) (<= (size!43286 (innerList!16005 (xs!19313 (left!56896 t!4440)))) 2147483647))))

(declare-fun bs!1969210 () Bool)

(assert (= bs!1969210 d!2373284))

(declare-fun m!8324574 () Bool)

(assert (=> bs!1969210 m!8324574))

(assert (=> b!7936209 d!2373284))

(declare-fun d!2373286 () Bool)

(assert (=> d!2373286 (= (list!19442 (xs!19313 lt!2695319)) (innerList!16005 (xs!19313 lt!2695319)))))

(assert (=> b!7936145 d!2373286))

(declare-fun b!7936412 () Bool)

(declare-fun e!4682990 () List!74587)

(assert (=> b!7936412 (= e!4682990 (list!19440 (right!57226 lt!2695319)))))

(declare-fun b!7936413 () Bool)

(assert (=> b!7936413 (= e!4682990 (Cons!74463 (h!80911 (list!19440 (left!56896 lt!2695319))) (++!18272 (t!390288 (list!19440 (left!56896 lt!2695319))) (list!19440 (right!57226 lt!2695319)))))))

(declare-fun b!7936415 () Bool)

(declare-fun e!4682991 () Bool)

(declare-fun lt!2695380 () List!74587)

(assert (=> b!7936415 (= e!4682991 (or (not (= (list!19440 (right!57226 lt!2695319)) Nil!74463)) (= lt!2695380 (list!19440 (left!56896 lt!2695319)))))))

(declare-fun d!2373288 () Bool)

(assert (=> d!2373288 e!4682991))

(declare-fun res!3148821 () Bool)

(assert (=> d!2373288 (=> (not res!3148821) (not e!4682991))))

(assert (=> d!2373288 (= res!3148821 (= (content!15796 lt!2695380) (set.union (content!15796 (list!19440 (left!56896 lt!2695319))) (content!15796 (list!19440 (right!57226 lt!2695319))))))))

(assert (=> d!2373288 (= lt!2695380 e!4682990)))

(declare-fun c!1458037 () Bool)

(assert (=> d!2373288 (= c!1458037 (is-Nil!74463 (list!19440 (left!56896 lt!2695319))))))

(assert (=> d!2373288 (= (++!18272 (list!19440 (left!56896 lt!2695319)) (list!19440 (right!57226 lt!2695319))) lt!2695380)))

(declare-fun b!7936414 () Bool)

(declare-fun res!3148822 () Bool)

(assert (=> b!7936414 (=> (not res!3148822) (not e!4682991))))

(assert (=> b!7936414 (= res!3148822 (= (size!43286 lt!2695380) (+ (size!43286 (list!19440 (left!56896 lt!2695319))) (size!43286 (list!19440 (right!57226 lt!2695319))))))))

(assert (= (and d!2373288 c!1458037) b!7936412))

(assert (= (and d!2373288 (not c!1458037)) b!7936413))

(assert (= (and d!2373288 res!3148821) b!7936414))

(assert (= (and b!7936414 res!3148822) b!7936415))

(assert (=> b!7936413 m!8324260))

(declare-fun m!8324576 () Bool)

(assert (=> b!7936413 m!8324576))

(declare-fun m!8324578 () Bool)

(assert (=> d!2373288 m!8324578))

(assert (=> d!2373288 m!8324258))

(declare-fun m!8324580 () Bool)

(assert (=> d!2373288 m!8324580))

(assert (=> d!2373288 m!8324260))

(declare-fun m!8324582 () Bool)

(assert (=> d!2373288 m!8324582))

(declare-fun m!8324584 () Bool)

(assert (=> b!7936414 m!8324584))

(assert (=> b!7936414 m!8324258))

(declare-fun m!8324586 () Bool)

(assert (=> b!7936414 m!8324586))

(assert (=> b!7936414 m!8324260))

(declare-fun m!8324588 () Bool)

(assert (=> b!7936414 m!8324588))

(assert (=> b!7936146 d!2373288))

(declare-fun b!7936416 () Bool)

(declare-fun e!4682992 () List!74587)

(assert (=> b!7936416 (= e!4682992 Nil!74463)))

(declare-fun b!7936417 () Bool)

(declare-fun e!4682993 () List!74587)

(assert (=> b!7936417 (= e!4682992 e!4682993)))

(declare-fun c!1458039 () Bool)

(assert (=> b!7936417 (= c!1458039 (is-Leaf!30257 (left!56896 lt!2695319)))))

(declare-fun b!7936418 () Bool)

(assert (=> b!7936418 (= e!4682993 (list!19442 (xs!19313 (left!56896 lt!2695319))))))

(declare-fun b!7936419 () Bool)

(assert (=> b!7936419 (= e!4682993 (++!18272 (list!19440 (left!56896 (left!56896 lt!2695319))) (list!19440 (right!57226 (left!56896 lt!2695319)))))))

(declare-fun d!2373290 () Bool)

(declare-fun c!1458038 () Bool)

(assert (=> d!2373290 (= c!1458038 (is-Empty!15917 (left!56896 lt!2695319)))))

(assert (=> d!2373290 (= (list!19440 (left!56896 lt!2695319)) e!4682992)))

(assert (= (and d!2373290 c!1458038) b!7936416))

(assert (= (and d!2373290 (not c!1458038)) b!7936417))

(assert (= (and b!7936417 c!1458039) b!7936418))

(assert (= (and b!7936417 (not c!1458039)) b!7936419))

(declare-fun m!8324590 () Bool)

(assert (=> b!7936418 m!8324590))

(declare-fun m!8324592 () Bool)

(assert (=> b!7936419 m!8324592))

(declare-fun m!8324594 () Bool)

(assert (=> b!7936419 m!8324594))

(assert (=> b!7936419 m!8324592))

(assert (=> b!7936419 m!8324594))

(declare-fun m!8324596 () Bool)

(assert (=> b!7936419 m!8324596))

(assert (=> b!7936146 d!2373290))

(declare-fun b!7936420 () Bool)

(declare-fun e!4682994 () List!74587)

(assert (=> b!7936420 (= e!4682994 Nil!74463)))

(declare-fun b!7936421 () Bool)

(declare-fun e!4682995 () List!74587)

(assert (=> b!7936421 (= e!4682994 e!4682995)))

(declare-fun c!1458041 () Bool)

(assert (=> b!7936421 (= c!1458041 (is-Leaf!30257 (right!57226 lt!2695319)))))

(declare-fun b!7936422 () Bool)

(assert (=> b!7936422 (= e!4682995 (list!19442 (xs!19313 (right!57226 lt!2695319))))))

(declare-fun b!7936423 () Bool)

(assert (=> b!7936423 (= e!4682995 (++!18272 (list!19440 (left!56896 (right!57226 lt!2695319))) (list!19440 (right!57226 (right!57226 lt!2695319)))))))

(declare-fun d!2373292 () Bool)

(declare-fun c!1458040 () Bool)

(assert (=> d!2373292 (= c!1458040 (is-Empty!15917 (right!57226 lt!2695319)))))

(assert (=> d!2373292 (= (list!19440 (right!57226 lt!2695319)) e!4682994)))

(assert (= (and d!2373292 c!1458040) b!7936420))

(assert (= (and d!2373292 (not c!1458040)) b!7936421))

(assert (= (and b!7936421 c!1458041) b!7936422))

(assert (= (and b!7936421 (not c!1458041)) b!7936423))

(declare-fun m!8324598 () Bool)

(assert (=> b!7936422 m!8324598))

(declare-fun m!8324600 () Bool)

(assert (=> b!7936423 m!8324600))

(declare-fun m!8324602 () Bool)

(assert (=> b!7936423 m!8324602))

(assert (=> b!7936423 m!8324600))

(assert (=> b!7936423 m!8324602))

(declare-fun m!8324604 () Bool)

(assert (=> b!7936423 m!8324604))

(assert (=> b!7936146 d!2373292))

(declare-fun d!2373294 () Bool)

(assert (=> d!2373294 (= (list!19442 (xs!19313 t!4440)) (innerList!16005 (xs!19313 t!4440)))))

(assert (=> b!7936185 d!2373294))

(declare-fun b!7936424 () Bool)

(declare-fun e!4682996 () List!74587)

(assert (=> b!7936424 (= e!4682996 (list!19440 (right!57226 t!4440)))))

(declare-fun b!7936425 () Bool)

(assert (=> b!7936425 (= e!4682996 (Cons!74463 (h!80911 (list!19440 (left!56896 t!4440))) (++!18272 (t!390288 (list!19440 (left!56896 t!4440))) (list!19440 (right!57226 t!4440)))))))

(declare-fun b!7936427 () Bool)

(declare-fun e!4682997 () Bool)

(declare-fun lt!2695381 () List!74587)

(assert (=> b!7936427 (= e!4682997 (or (not (= (list!19440 (right!57226 t!4440)) Nil!74463)) (= lt!2695381 (list!19440 (left!56896 t!4440)))))))

(declare-fun d!2373296 () Bool)

(assert (=> d!2373296 e!4682997))

(declare-fun res!3148823 () Bool)

(assert (=> d!2373296 (=> (not res!3148823) (not e!4682997))))

(assert (=> d!2373296 (= res!3148823 (= (content!15796 lt!2695381) (set.union (content!15796 (list!19440 (left!56896 t!4440))) (content!15796 (list!19440 (right!57226 t!4440))))))))

(assert (=> d!2373296 (= lt!2695381 e!4682996)))

(declare-fun c!1458042 () Bool)

(assert (=> d!2373296 (= c!1458042 (is-Nil!74463 (list!19440 (left!56896 t!4440))))))

(assert (=> d!2373296 (= (++!18272 (list!19440 (left!56896 t!4440)) (list!19440 (right!57226 t!4440))) lt!2695381)))

(declare-fun b!7936426 () Bool)

(declare-fun res!3148824 () Bool)

(assert (=> b!7936426 (=> (not res!3148824) (not e!4682997))))

(assert (=> b!7936426 (= res!3148824 (= (size!43286 lt!2695381) (+ (size!43286 (list!19440 (left!56896 t!4440))) (size!43286 (list!19440 (right!57226 t!4440))))))))

(assert (= (and d!2373296 c!1458042) b!7936424))

(assert (= (and d!2373296 (not c!1458042)) b!7936425))

(assert (= (and d!2373296 res!3148823) b!7936426))

(assert (= (and b!7936426 res!3148824) b!7936427))

(assert (=> b!7936425 m!8324286))

(declare-fun m!8324606 () Bool)

(assert (=> b!7936425 m!8324606))

(declare-fun m!8324608 () Bool)

(assert (=> d!2373296 m!8324608))

(assert (=> d!2373296 m!8324284))

(declare-fun m!8324610 () Bool)

(assert (=> d!2373296 m!8324610))

(assert (=> d!2373296 m!8324286))

(declare-fun m!8324612 () Bool)

(assert (=> d!2373296 m!8324612))

(declare-fun m!8324614 () Bool)

(assert (=> b!7936426 m!8324614))

(assert (=> b!7936426 m!8324284))

(declare-fun m!8324616 () Bool)

(assert (=> b!7936426 m!8324616))

(assert (=> b!7936426 m!8324286))

(declare-fun m!8324618 () Bool)

(assert (=> b!7936426 m!8324618))

(assert (=> b!7936186 d!2373296))

(declare-fun b!7936428 () Bool)

(declare-fun e!4682998 () List!74587)

(assert (=> b!7936428 (= e!4682998 Nil!74463)))

(declare-fun b!7936429 () Bool)

(declare-fun e!4682999 () List!74587)

(assert (=> b!7936429 (= e!4682998 e!4682999)))

(declare-fun c!1458044 () Bool)

(assert (=> b!7936429 (= c!1458044 (is-Leaf!30257 (left!56896 t!4440)))))

(declare-fun b!7936430 () Bool)

(assert (=> b!7936430 (= e!4682999 (list!19442 (xs!19313 (left!56896 t!4440))))))

(declare-fun b!7936431 () Bool)

(assert (=> b!7936431 (= e!4682999 (++!18272 (list!19440 (left!56896 (left!56896 t!4440))) (list!19440 (right!57226 (left!56896 t!4440)))))))

(declare-fun d!2373298 () Bool)

(declare-fun c!1458043 () Bool)

(assert (=> d!2373298 (= c!1458043 (is-Empty!15917 (left!56896 t!4440)))))

(assert (=> d!2373298 (= (list!19440 (left!56896 t!4440)) e!4682998)))

(assert (= (and d!2373298 c!1458043) b!7936428))

(assert (= (and d!2373298 (not c!1458043)) b!7936429))

(assert (= (and b!7936429 c!1458044) b!7936430))

(assert (= (and b!7936429 (not c!1458044)) b!7936431))

(assert (=> b!7936430 m!8324430))

(declare-fun m!8324620 () Bool)

(assert (=> b!7936431 m!8324620))

(declare-fun m!8324622 () Bool)

(assert (=> b!7936431 m!8324622))

(assert (=> b!7936431 m!8324620))

(assert (=> b!7936431 m!8324622))

(declare-fun m!8324624 () Bool)

(assert (=> b!7936431 m!8324624))

(assert (=> b!7936186 d!2373298))

(declare-fun b!7936432 () Bool)

(declare-fun e!4683000 () List!74587)

(assert (=> b!7936432 (= e!4683000 Nil!74463)))

(declare-fun b!7936433 () Bool)

(declare-fun e!4683001 () List!74587)

(assert (=> b!7936433 (= e!4683000 e!4683001)))

(declare-fun c!1458046 () Bool)

(assert (=> b!7936433 (= c!1458046 (is-Leaf!30257 (right!57226 t!4440)))))

(declare-fun b!7936434 () Bool)

(assert (=> b!7936434 (= e!4683001 (list!19442 (xs!19313 (right!57226 t!4440))))))

(declare-fun b!7936435 () Bool)

(assert (=> b!7936435 (= e!4683001 (++!18272 (list!19440 (left!56896 (right!57226 t!4440))) (list!19440 (right!57226 (right!57226 t!4440)))))))

(declare-fun d!2373300 () Bool)

(declare-fun c!1458045 () Bool)

(assert (=> d!2373300 (= c!1458045 (is-Empty!15917 (right!57226 t!4440)))))

(assert (=> d!2373300 (= (list!19440 (right!57226 t!4440)) e!4683000)))

(assert (= (and d!2373300 c!1458045) b!7936432))

(assert (= (and d!2373300 (not c!1458045)) b!7936433))

(assert (= (and b!7936433 c!1458046) b!7936434))

(assert (= (and b!7936433 (not c!1458046)) b!7936435))

(assert (=> b!7936434 m!8324542))

(declare-fun m!8324626 () Bool)

(assert (=> b!7936435 m!8324626))

(declare-fun m!8324628 () Bool)

(assert (=> b!7936435 m!8324628))

(assert (=> b!7936435 m!8324626))

(assert (=> b!7936435 m!8324628))

(declare-fun m!8324630 () Bool)

(assert (=> b!7936435 m!8324630))

(assert (=> b!7936186 d!2373300))

(declare-fun d!2373302 () Bool)

(declare-fun c!1458049 () Bool)

(assert (=> d!2373302 (= c!1458049 (is-Nil!74463 lt!2695341))))

(declare-fun e!4683004 () (Set T!145914))

(assert (=> d!2373302 (= (content!15796 lt!2695341) e!4683004)))

(declare-fun b!7936440 () Bool)

(assert (=> b!7936440 (= e!4683004 (as set.empty (Set T!145914)))))

(declare-fun b!7936441 () Bool)

(assert (=> b!7936441 (= e!4683004 (set.union (set.insert (h!80911 lt!2695341) (as set.empty (Set T!145914))) (content!15796 (t!390288 lt!2695341))))))

(assert (= (and d!2373302 c!1458049) b!7936440))

(assert (= (and d!2373302 (not c!1458049)) b!7936441))

(declare-fun m!8324632 () Bool)

(assert (=> b!7936441 m!8324632))

(declare-fun m!8324634 () Bool)

(assert (=> b!7936441 m!8324634))

(assert (=> b!7936178 d!2373302))

(declare-fun d!2373304 () Bool)

(declare-fun c!1458050 () Bool)

(assert (=> d!2373304 (= c!1458050 (is-Nil!74463 (list!19440 t!4440)))))

(declare-fun e!4683005 () (Set T!145914))

(assert (=> d!2373304 (= (content!15796 (list!19440 t!4440)) e!4683005)))

(declare-fun b!7936442 () Bool)

(assert (=> b!7936442 (= e!4683005 (as set.empty (Set T!145914)))))

(declare-fun b!7936443 () Bool)

(assert (=> b!7936443 (= e!4683005 (set.union (set.insert (h!80911 (list!19440 t!4440)) (as set.empty (Set T!145914))) (content!15796 (t!390288 (list!19440 t!4440)))))))

(assert (= (and d!2373304 c!1458050) b!7936442))

(assert (= (and d!2373304 (not c!1458050)) b!7936443))

(declare-fun m!8324636 () Bool)

(assert (=> b!7936443 m!8324636))

(assert (=> b!7936443 m!8324518))

(assert (=> b!7936178 d!2373304))

(declare-fun b!7936444 () Bool)

(declare-fun e!4683006 () Bool)

(declare-fun tp!2359654 () Bool)

(assert (=> b!7936444 (= e!4683006 (and tp_is_empty!53259 tp!2359654))))

(assert (=> b!7936218 (= tp!2359635 e!4683006)))

(assert (= (and b!7936218 (is-Cons!74463 (t!390288 (innerList!16005 (xs!19313 t!4440))))) b!7936444))

(declare-fun tp!2359657 () Bool)

(declare-fun tp!2359655 () Bool)

(declare-fun e!4683007 () Bool)

(declare-fun b!7936445 () Bool)

(assert (=> b!7936445 (= e!4683007 (and (inv!95801 (left!56896 (left!56896 (left!56896 t!4440)))) tp!2359655 (inv!95801 (right!57226 (left!56896 (left!56896 t!4440)))) tp!2359657))))

(declare-fun b!7936447 () Bool)

(declare-fun e!4683008 () Bool)

(declare-fun tp!2359656 () Bool)

(assert (=> b!7936447 (= e!4683008 tp!2359656)))

(declare-fun b!7936446 () Bool)

(assert (=> b!7936446 (= e!4683007 (and (inv!95802 (xs!19313 (left!56896 (left!56896 t!4440)))) e!4683008))))

(assert (=> b!7936208 (= tp!2359627 (and (inv!95801 (left!56896 (left!56896 t!4440))) e!4683007))))

(assert (= (and b!7936208 (is-Node!15917 (left!56896 (left!56896 t!4440)))) b!7936445))

(assert (= b!7936446 b!7936447))

(assert (= (and b!7936208 (is-Leaf!30257 (left!56896 (left!56896 t!4440)))) b!7936446))

(declare-fun m!8324638 () Bool)

(assert (=> b!7936445 m!8324638))

(declare-fun m!8324640 () Bool)

(assert (=> b!7936445 m!8324640))

(declare-fun m!8324642 () Bool)

(assert (=> b!7936446 m!8324642))

(assert (=> b!7936208 m!8324306))

(declare-fun tp!2359658 () Bool)

(declare-fun tp!2359660 () Bool)

(declare-fun e!4683009 () Bool)

(declare-fun b!7936448 () Bool)

(assert (=> b!7936448 (= e!4683009 (and (inv!95801 (left!56896 (right!57226 (left!56896 t!4440)))) tp!2359658 (inv!95801 (right!57226 (right!57226 (left!56896 t!4440)))) tp!2359660))))

(declare-fun b!7936450 () Bool)

(declare-fun e!4683010 () Bool)

(declare-fun tp!2359659 () Bool)

(assert (=> b!7936450 (= e!4683010 tp!2359659)))

(declare-fun b!7936449 () Bool)

(assert (=> b!7936449 (= e!4683009 (and (inv!95802 (xs!19313 (right!57226 (left!56896 t!4440)))) e!4683010))))

(assert (=> b!7936208 (= tp!2359629 (and (inv!95801 (right!57226 (left!56896 t!4440))) e!4683009))))

(assert (= (and b!7936208 (is-Node!15917 (right!57226 (left!56896 t!4440)))) b!7936448))

(assert (= b!7936449 b!7936450))

(assert (= (and b!7936208 (is-Leaf!30257 (right!57226 (left!56896 t!4440)))) b!7936449))

(declare-fun m!8324644 () Bool)

(assert (=> b!7936448 m!8324644))

(declare-fun m!8324646 () Bool)

(assert (=> b!7936448 m!8324646))

(declare-fun m!8324648 () Bool)

(assert (=> b!7936449 m!8324648))

(assert (=> b!7936208 m!8324308))

(declare-fun b!7936451 () Bool)

(declare-fun e!4683011 () Bool)

(declare-fun tp!2359661 () Bool)

(assert (=> b!7936451 (= e!4683011 (and tp_is_empty!53259 tp!2359661))))

(assert (=> b!7936213 (= tp!2359631 e!4683011)))

(assert (= (and b!7936213 (is-Cons!74463 (innerList!16005 (xs!19313 (right!57226 t!4440))))) b!7936451))

(declare-fun b!7936452 () Bool)

(declare-fun e!4683012 () Bool)

(declare-fun tp!2359662 () Bool)

(assert (=> b!7936452 (= e!4683012 (and tp_is_empty!53259 tp!2359662))))

(assert (=> b!7936210 (= tp!2359628 e!4683012)))

(assert (= (and b!7936210 (is-Cons!74463 (innerList!16005 (xs!19313 (left!56896 t!4440))))) b!7936452))

(declare-fun e!4683013 () Bool)

(declare-fun tp!2359665 () Bool)

(declare-fun b!7936453 () Bool)

(declare-fun tp!2359663 () Bool)

(assert (=> b!7936453 (= e!4683013 (and (inv!95801 (left!56896 (left!56896 (right!57226 t!4440)))) tp!2359663 (inv!95801 (right!57226 (left!56896 (right!57226 t!4440)))) tp!2359665))))

(declare-fun b!7936455 () Bool)

(declare-fun e!4683014 () Bool)

(declare-fun tp!2359664 () Bool)

(assert (=> b!7936455 (= e!4683014 tp!2359664)))

(declare-fun b!7936454 () Bool)

(assert (=> b!7936454 (= e!4683013 (and (inv!95802 (xs!19313 (left!56896 (right!57226 t!4440)))) e!4683014))))

(assert (=> b!7936211 (= tp!2359630 (and (inv!95801 (left!56896 (right!57226 t!4440))) e!4683013))))

(assert (= (and b!7936211 (is-Node!15917 (left!56896 (right!57226 t!4440)))) b!7936453))

(assert (= b!7936454 b!7936455))

(assert (= (and b!7936211 (is-Leaf!30257 (left!56896 (right!57226 t!4440)))) b!7936454))

(declare-fun m!8324650 () Bool)

(assert (=> b!7936453 m!8324650))

(declare-fun m!8324652 () Bool)

(assert (=> b!7936453 m!8324652))

(declare-fun m!8324654 () Bool)

(assert (=> b!7936454 m!8324654))

(assert (=> b!7936211 m!8324312))

(declare-fun b!7936456 () Bool)

(declare-fun tp!2359666 () Bool)

(declare-fun tp!2359668 () Bool)

(declare-fun e!4683015 () Bool)

(assert (=> b!7936456 (= e!4683015 (and (inv!95801 (left!56896 (right!57226 (right!57226 t!4440)))) tp!2359666 (inv!95801 (right!57226 (right!57226 (right!57226 t!4440)))) tp!2359668))))

(declare-fun b!7936458 () Bool)

(declare-fun e!4683016 () Bool)

(declare-fun tp!2359667 () Bool)

(assert (=> b!7936458 (= e!4683016 tp!2359667)))

(declare-fun b!7936457 () Bool)

(assert (=> b!7936457 (= e!4683015 (and (inv!95802 (xs!19313 (right!57226 (right!57226 t!4440)))) e!4683016))))

(assert (=> b!7936211 (= tp!2359632 (and (inv!95801 (right!57226 (right!57226 t!4440))) e!4683015))))

(assert (= (and b!7936211 (is-Node!15917 (right!57226 (right!57226 t!4440)))) b!7936456))

(assert (= b!7936457 b!7936458))

(assert (= (and b!7936211 (is-Leaf!30257 (right!57226 (right!57226 t!4440)))) b!7936457))

(declare-fun m!8324656 () Bool)

(assert (=> b!7936456 m!8324656))

(declare-fun m!8324658 () Bool)

(assert (=> b!7936456 m!8324658))

(declare-fun m!8324660 () Bool)

(assert (=> b!7936457 m!8324660))

(assert (=> b!7936211 m!8324314))

(push 1)

(assert (not b!7936443))

(assert (not b!7936315))

(assert (not b!7936333))

(assert (not b!7936371))

(assert (not d!2373236))

(assert (not b!7936457))

(assert (not b!7936447))

(assert (not b!7936450))

(assert (not b!7936322))

(assert (not d!2373278))

(assert (not d!2373296))

(assert (not b!7936302))

(assert (not b!7936345))

(assert (not d!2373214))

(assert (not b!7936422))

(assert (not b!7936452))

(assert (not b!7936296))

(assert (not b!7936342))

(assert (not d!2373264))

(assert (not b!7936444))

(assert (not b!7936344))

(assert (not b!7936364))

(assert (not d!2373206))

(assert (not b!7936374))

(assert (not b!7936446))

(assert (not d!2373216))

(assert (not b!7936455))

(assert (not b!7936303))

(assert (not b!7936456))

(assert (not b!7936377))

(assert (not b!7936448))

(assert (not b!7936369))

(assert (not b!7936384))

(assert (not b!7936332))

(assert (not b!7936414))

(assert (not b!7936348))

(assert (not b!7936351))

(assert (not b!7936316))

(assert (not d!2373234))

(assert (not b!7936208))

(assert (not b!7936347))

(assert (not b!7936409))

(assert (not b!7936400))

(assert (not b!7936314))

(assert (not b!7936341))

(assert (not b!7936318))

(assert (not d!2373250))

(assert (not b!7936349))

(assert (not b!7936453))

(assert (not b!7936449))

(assert (not d!2373288))

(assert (not d!2373284))

(assert tp_is_empty!53259)

(assert (not b!7936425))

(assert (not b!7936458))

(assert (not b!7936426))

(assert (not b!7936411))

(assert (not b!7936454))

(assert (not b!7936394))

(assert (not b!7936297))

(assert (not b!7936300))

(assert (not d!2373270))

(assert (not b!7936337))

(assert (not b!7936338))

(assert (not b!7936435))

(assert (not b!7936413))

(assert (not d!2373272))

(assert (not b!7936211))

(assert (not b!7936398))

(assert (not b!7936311))

(assert (not b!7936362))

(assert (not b!7936418))

(assert (not b!7936321))

(assert (not b!7936406))

(assert (not b!7936340))

(assert (not b!7936375))

(assert (not b!7936339))

(assert (not b!7936396))

(assert (not d!2373238))

(assert (not b!7936385))

(assert (not b!7936317))

(assert (not b!7936431))

(assert (not b!7936305))

(assert (not d!2373268))

(assert (not b!7936445))

(assert (not b!7936367))

(assert (not b!7936301))

(assert (not b!7936404))

(assert (not b!7936441))

(assert (not d!2373220))

(assert (not b!7936343))

(assert (not d!2373208))

(assert (not b!7936350))

(assert (not bm!735667))

(assert (not b!7936360))

(assert (not b!7936372))

(assert (not b!7936419))

(assert (not b!7936430))

(assert (not b!7936434))

(assert (not b!7936346))

(assert (not b!7936365))

(assert (not d!2373256))

(assert (not d!2373246))

(assert (not bm!735666))

(assert (not b!7936408))

(assert (not b!7936392))

(assert (not b!7936451))

(assert (not b!7936304))

(assert (not d!2373226))

(assert (not b!7936403))

(assert (not b!7936313))

(assert (not b!7936423))

(assert (not b!7936306))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2373406 () Bool)

(declare-fun lt!2695415 () Bool)

(assert (=> d!2373406 (= lt!2695415 (isEmpty!42805 (list!19440 (left!56896 (right!57226 lt!2695319)))))))

(assert (=> d!2373406 (= lt!2695415 (= (size!43285 (left!56896 (right!57226 lt!2695319))) 0))))

(assert (=> d!2373406 (= (isEmpty!42803 (left!56896 (right!57226 lt!2695319))) lt!2695415)))

(declare-fun bs!1969219 () Bool)

(assert (= bs!1969219 d!2373406))

(assert (=> bs!1969219 m!8324600))

(assert (=> bs!1969219 m!8324600))

(declare-fun m!8324920 () Bool)

(assert (=> bs!1969219 m!8324920))

(declare-fun m!8324922 () Bool)

(assert (=> bs!1969219 m!8324922))

(assert (=> b!7936301 d!2373406))

(declare-fun d!2373408 () Bool)

(declare-fun c!1458091 () Bool)

(assert (=> d!2373408 (= c!1458091 (is-Nil!74463 lt!2695380))))

(declare-fun e!4683103 () (Set T!145914))

(assert (=> d!2373408 (= (content!15796 lt!2695380) e!4683103)))

(declare-fun b!7936629 () Bool)

(assert (=> b!7936629 (= e!4683103 (as set.empty (Set T!145914)))))

(declare-fun b!7936630 () Bool)

(assert (=> b!7936630 (= e!4683103 (set.union (set.insert (h!80911 lt!2695380) (as set.empty (Set T!145914))) (content!15796 (t!390288 lt!2695380))))))

(assert (= (and d!2373408 c!1458091) b!7936629))

(assert (= (and d!2373408 (not c!1458091)) b!7936630))

(declare-fun m!8324924 () Bool)

(assert (=> b!7936630 m!8324924))

(declare-fun m!8324926 () Bool)

(assert (=> b!7936630 m!8324926))

(assert (=> d!2373288 d!2373408))

(declare-fun d!2373410 () Bool)

(declare-fun c!1458092 () Bool)

(assert (=> d!2373410 (= c!1458092 (is-Nil!74463 (list!19440 (left!56896 lt!2695319))))))

(declare-fun e!4683104 () (Set T!145914))

(assert (=> d!2373410 (= (content!15796 (list!19440 (left!56896 lt!2695319))) e!4683104)))

(declare-fun b!7936631 () Bool)

(assert (=> b!7936631 (= e!4683104 (as set.empty (Set T!145914)))))

(declare-fun b!7936632 () Bool)

(assert (=> b!7936632 (= e!4683104 (set.union (set.insert (h!80911 (list!19440 (left!56896 lt!2695319))) (as set.empty (Set T!145914))) (content!15796 (t!390288 (list!19440 (left!56896 lt!2695319))))))))

(assert (= (and d!2373410 c!1458092) b!7936631))

(assert (= (and d!2373410 (not c!1458092)) b!7936632))

(declare-fun m!8324928 () Bool)

(assert (=> b!7936632 m!8324928))

(declare-fun m!8324930 () Bool)

(assert (=> b!7936632 m!8324930))

(assert (=> d!2373288 d!2373410))

(declare-fun d!2373412 () Bool)

(declare-fun c!1458093 () Bool)

(assert (=> d!2373412 (= c!1458093 (is-Nil!74463 (list!19440 (right!57226 lt!2695319))))))

(declare-fun e!4683105 () (Set T!145914))

(assert (=> d!2373412 (= (content!15796 (list!19440 (right!57226 lt!2695319))) e!4683105)))

(declare-fun b!7936633 () Bool)

(assert (=> b!7936633 (= e!4683105 (as set.empty (Set T!145914)))))

(declare-fun b!7936634 () Bool)

(assert (=> b!7936634 (= e!4683105 (set.union (set.insert (h!80911 (list!19440 (right!57226 lt!2695319))) (as set.empty (Set T!145914))) (content!15796 (t!390288 (list!19440 (right!57226 lt!2695319))))))))

(assert (= (and d!2373412 c!1458093) b!7936633))

(assert (= (and d!2373412 (not c!1458093)) b!7936634))

(declare-fun m!8324932 () Bool)

(assert (=> b!7936634 m!8324932))

(declare-fun m!8324934 () Bool)

(assert (=> b!7936634 m!8324934))

(assert (=> d!2373288 d!2373412))

(declare-fun d!2373414 () Bool)

(assert (=> d!2373414 (= (inv!95802 (xs!19313 (left!56896 (right!57226 t!4440)))) (<= (size!43286 (innerList!16005 (xs!19313 (left!56896 (right!57226 t!4440))))) 2147483647))))

(declare-fun bs!1969220 () Bool)

(assert (= bs!1969220 d!2373414))

(declare-fun m!8324936 () Bool)

(assert (=> bs!1969220 m!8324936))

(assert (=> b!7936454 d!2373414))

(declare-fun d!2373416 () Bool)

(declare-fun c!1458094 () Bool)

(assert (=> d!2373416 (= c!1458094 (is-Node!15917 (left!56896 (right!57226 (left!56896 t!4440)))))))

(declare-fun e!4683106 () Bool)

(assert (=> d!2373416 (= (inv!95801 (left!56896 (right!57226 (left!56896 t!4440)))) e!4683106)))

(declare-fun b!7936635 () Bool)

(assert (=> b!7936635 (= e!4683106 (inv!95805 (left!56896 (right!57226 (left!56896 t!4440)))))))

(declare-fun b!7936636 () Bool)

(declare-fun e!4683107 () Bool)

(assert (=> b!7936636 (= e!4683106 e!4683107)))

(declare-fun res!3148897 () Bool)

(assert (=> b!7936636 (= res!3148897 (not (is-Leaf!30257 (left!56896 (right!57226 (left!56896 t!4440))))))))

(assert (=> b!7936636 (=> res!3148897 e!4683107)))

(declare-fun b!7936637 () Bool)

(assert (=> b!7936637 (= e!4683107 (inv!95806 (left!56896 (right!57226 (left!56896 t!4440)))))))

(assert (= (and d!2373416 c!1458094) b!7936635))

(assert (= (and d!2373416 (not c!1458094)) b!7936636))

(assert (= (and b!7936636 (not res!3148897)) b!7936637))

(declare-fun m!8324938 () Bool)

(assert (=> b!7936635 m!8324938))

(declare-fun m!8324940 () Bool)

(assert (=> b!7936637 m!8324940))

(assert (=> b!7936448 d!2373416))

(declare-fun d!2373418 () Bool)

(declare-fun c!1458095 () Bool)

(assert (=> d!2373418 (= c!1458095 (is-Node!15917 (right!57226 (right!57226 (left!56896 t!4440)))))))

(declare-fun e!4683108 () Bool)

(assert (=> d!2373418 (= (inv!95801 (right!57226 (right!57226 (left!56896 t!4440)))) e!4683108)))

(declare-fun b!7936638 () Bool)

(assert (=> b!7936638 (= e!4683108 (inv!95805 (right!57226 (right!57226 (left!56896 t!4440)))))))

(declare-fun b!7936639 () Bool)

(declare-fun e!4683109 () Bool)

(assert (=> b!7936639 (= e!4683108 e!4683109)))

(declare-fun res!3148898 () Bool)

(assert (=> b!7936639 (= res!3148898 (not (is-Leaf!30257 (right!57226 (right!57226 (left!56896 t!4440))))))))

(assert (=> b!7936639 (=> res!3148898 e!4683109)))

(declare-fun b!7936640 () Bool)

(assert (=> b!7936640 (= e!4683109 (inv!95806 (right!57226 (right!57226 (left!56896 t!4440)))))))

(assert (= (and d!2373418 c!1458095) b!7936638))

(assert (= (and d!2373418 (not c!1458095)) b!7936639))

(assert (= (and b!7936639 (not res!3148898)) b!7936640))

(declare-fun m!8324942 () Bool)

(assert (=> b!7936638 m!8324942))

(declare-fun m!8324944 () Bool)

(assert (=> b!7936640 m!8324944))

(assert (=> b!7936448 d!2373418))

(declare-fun d!2373420 () Bool)

(assert (=> d!2373420 (= (height!2230 (left!56896 (left!56896 t!4440))) (ite (is-Empty!15917 (left!56896 (left!56896 t!4440))) 0 (ite (is-Leaf!30257 (left!56896 (left!56896 t!4440))) 1 (cheight!16128 (left!56896 (left!56896 t!4440))))))))

(assert (=> b!7936346 d!2373420))

(declare-fun d!2373422 () Bool)

(assert (=> d!2373422 (= (height!2230 (right!57226 (left!56896 t!4440))) (ite (is-Empty!15917 (right!57226 (left!56896 t!4440))) 0 (ite (is-Leaf!30257 (right!57226 (left!56896 t!4440))) 1 (cheight!16128 (right!57226 (left!56896 t!4440))))))))

(assert (=> b!7936346 d!2373422))

(declare-fun d!2373424 () Bool)

(declare-fun lt!2695416 () Int)

(assert (=> d!2373424 (>= lt!2695416 0)))

(declare-fun e!4683110 () Int)

(assert (=> d!2373424 (= lt!2695416 e!4683110)))

(declare-fun c!1458096 () Bool)

(assert (=> d!2373424 (= c!1458096 (is-Nil!74463 (t!390288 (innerList!16005 (xs!19313 t!4440)))))))

(assert (=> d!2373424 (= (size!43286 (t!390288 (innerList!16005 (xs!19313 t!4440)))) lt!2695416)))

(declare-fun b!7936641 () Bool)

(assert (=> b!7936641 (= e!4683110 0)))

(declare-fun b!7936642 () Bool)

(assert (=> b!7936642 (= e!4683110 (+ 1 (size!43286 (t!390288 (t!390288 (innerList!16005 (xs!19313 t!4440)))))))))

(assert (= (and d!2373424 c!1458096) b!7936641))

(assert (= (and d!2373424 (not c!1458096)) b!7936642))

(declare-fun m!8324946 () Bool)

(assert (=> b!7936642 m!8324946))

(assert (=> b!7936392 d!2373424))

(declare-fun b!7936643 () Bool)

(declare-fun e!4683111 () List!74587)

(assert (=> b!7936643 (= e!4683111 (Cons!74463 v!5484 Nil!74463))))

(declare-fun b!7936644 () Bool)

(assert (=> b!7936644 (= e!4683111 (Cons!74463 (h!80911 (t!390288 (list!19440 t!4440))) (++!18272 (t!390288 (t!390288 (list!19440 t!4440))) (Cons!74463 v!5484 Nil!74463))))))

(declare-fun lt!2695417 () List!74587)

(declare-fun b!7936646 () Bool)

(declare-fun e!4683112 () Bool)

(assert (=> b!7936646 (= e!4683112 (or (not (= (Cons!74463 v!5484 Nil!74463) Nil!74463)) (= lt!2695417 (t!390288 (list!19440 t!4440)))))))

(declare-fun d!2373426 () Bool)

(assert (=> d!2373426 e!4683112))

(declare-fun res!3148899 () Bool)

(assert (=> d!2373426 (=> (not res!3148899) (not e!4683112))))

(assert (=> d!2373426 (= res!3148899 (= (content!15796 lt!2695417) (set.union (content!15796 (t!390288 (list!19440 t!4440))) (content!15796 (Cons!74463 v!5484 Nil!74463)))))))

(assert (=> d!2373426 (= lt!2695417 e!4683111)))

(declare-fun c!1458097 () Bool)

(assert (=> d!2373426 (= c!1458097 (is-Nil!74463 (t!390288 (list!19440 t!4440))))))

(assert (=> d!2373426 (= (++!18272 (t!390288 (list!19440 t!4440)) (Cons!74463 v!5484 Nil!74463)) lt!2695417)))

(declare-fun b!7936645 () Bool)

(declare-fun res!3148900 () Bool)

(assert (=> b!7936645 (=> (not res!3148900) (not e!4683112))))

(assert (=> b!7936645 (= res!3148900 (= (size!43286 lt!2695417) (+ (size!43286 (t!390288 (list!19440 t!4440))) (size!43286 (Cons!74463 v!5484 Nil!74463)))))))

(assert (= (and d!2373426 c!1458097) b!7936643))

(assert (= (and d!2373426 (not c!1458097)) b!7936644))

(assert (= (and d!2373426 res!3148899) b!7936645))

(assert (= (and b!7936645 res!3148900) b!7936646))

(declare-fun m!8324948 () Bool)

(assert (=> b!7936644 m!8324948))

(declare-fun m!8324950 () Bool)

(assert (=> d!2373426 m!8324950))

(assert (=> d!2373426 m!8324518))

(assert (=> d!2373426 m!8324560))

(declare-fun m!8324952 () Bool)

(assert (=> b!7936645 m!8324952))

(assert (=> b!7936645 m!8324526))

(assert (=> b!7936645 m!8324564))

(assert (=> b!7936369 d!2373426))

(declare-fun d!2373428 () Bool)

(declare-fun lt!2695418 () Bool)

(assert (=> d!2373428 (= lt!2695418 (isEmpty!42805 (list!19440 (left!56896 (right!57226 t!4440)))))))

(assert (=> d!2373428 (= lt!2695418 (= (size!43285 (left!56896 (right!57226 t!4440))) 0))))

(assert (=> d!2373428 (= (isEmpty!42803 (left!56896 (right!57226 t!4440))) lt!2695418)))

(declare-fun bs!1969221 () Bool)

(assert (= bs!1969221 d!2373428))

(assert (=> bs!1969221 m!8324626))

(assert (=> bs!1969221 m!8324626))

(declare-fun m!8324954 () Bool)

(assert (=> bs!1969221 m!8324954))

(assert (=> bs!1969221 m!8324532))

(assert (=> b!7936339 d!2373428))

(declare-fun d!2373430 () Bool)

(declare-fun lt!2695419 () (_ BitVec 32))

(assert (=> d!2373430 (and (bvsle #b00000000000000000000000000000000 lt!2695419) (bvsle lt!2695419 #b01111111111111111111111111111111))))

(declare-fun e!4683113 () (_ BitVec 32))

(assert (=> d!2373430 (= lt!2695419 e!4683113)))

(declare-fun c!1458098 () Bool)

(assert (=> d!2373430 (= c!1458098 (is-Nil!74463 (t!390288 lt!2695341)))))

(assert (=> d!2373430 (= (isize!130 (t!390288 lt!2695341)) lt!2695419)))

(declare-fun b!7936647 () Bool)

(assert (=> b!7936647 (= e!4683113 #b00000000000000000000000000000000)))

(declare-fun b!7936648 () Bool)

(declare-fun lt!2695420 () (_ BitVec 32))

(assert (=> b!7936648 (= e!4683113 (ite (= lt!2695420 #b01111111111111111111111111111111) lt!2695420 (bvadd #b00000000000000000000000000000001 lt!2695420)))))

(assert (=> b!7936648 (= lt!2695420 (isize!130 (t!390288 (t!390288 lt!2695341))))))

(assert (= (and d!2373430 c!1458098) b!7936647))

(assert (= (and d!2373430 (not c!1458098)) b!7936648))

(declare-fun m!8324956 () Bool)

(assert (=> b!7936648 m!8324956))

(assert (=> b!7936398 d!2373430))

(declare-fun d!2373432 () Bool)

(declare-fun lt!2695421 () Int)

(assert (=> d!2373432 (>= lt!2695421 0)))

(declare-fun e!4683114 () Int)

(assert (=> d!2373432 (= lt!2695421 e!4683114)))

(declare-fun c!1458099 () Bool)

(assert (=> d!2373432 (= c!1458099 (is-Nil!74463 (list!19442 (xs!19313 (right!57226 t!4440)))))))

(assert (=> d!2373432 (= (size!43286 (list!19442 (xs!19313 (right!57226 t!4440)))) lt!2695421)))

(declare-fun b!7936649 () Bool)

(assert (=> b!7936649 (= e!4683114 0)))

(declare-fun b!7936650 () Bool)

(assert (=> b!7936650 (= e!4683114 (+ 1 (size!43286 (t!390288 (list!19442 (xs!19313 (right!57226 t!4440)))))))))

(assert (= (and d!2373432 c!1458099) b!7936649))

(assert (= (and d!2373432 (not c!1458099)) b!7936650))

(declare-fun m!8324958 () Bool)

(assert (=> b!7936650 m!8324958))

(assert (=> d!2373256 d!2373432))

(declare-fun d!2373434 () Bool)

(assert (=> d!2373434 (= (list!19442 (xs!19313 (right!57226 t!4440))) (innerList!16005 (xs!19313 (right!57226 t!4440))))))

(assert (=> d!2373256 d!2373434))

(declare-fun b!7936651 () Bool)

(declare-fun e!4683115 () List!74587)

(assert (=> b!7936651 (= e!4683115 (list!19440 (right!57226 lt!2695333)))))

(declare-fun b!7936652 () Bool)

(assert (=> b!7936652 (= e!4683115 (Cons!74463 (h!80911 (list!19440 (left!56896 lt!2695333))) (++!18272 (t!390288 (list!19440 (left!56896 lt!2695333))) (list!19440 (right!57226 lt!2695333)))))))

(declare-fun b!7936654 () Bool)

(declare-fun e!4683116 () Bool)

(declare-fun lt!2695422 () List!74587)

(assert (=> b!7936654 (= e!4683116 (or (not (= (list!19440 (right!57226 lt!2695333)) Nil!74463)) (= lt!2695422 (list!19440 (left!56896 lt!2695333)))))))

(declare-fun d!2373436 () Bool)

(assert (=> d!2373436 e!4683116))

(declare-fun res!3148901 () Bool)

(assert (=> d!2373436 (=> (not res!3148901) (not e!4683116))))

(assert (=> d!2373436 (= res!3148901 (= (content!15796 lt!2695422) (set.union (content!15796 (list!19440 (left!56896 lt!2695333))) (content!15796 (list!19440 (right!57226 lt!2695333))))))))

(assert (=> d!2373436 (= lt!2695422 e!4683115)))

(declare-fun c!1458100 () Bool)

(assert (=> d!2373436 (= c!1458100 (is-Nil!74463 (list!19440 (left!56896 lt!2695333))))))

(assert (=> d!2373436 (= (++!18272 (list!19440 (left!56896 lt!2695333)) (list!19440 (right!57226 lt!2695333))) lt!2695422)))

(declare-fun b!7936653 () Bool)

(declare-fun res!3148902 () Bool)

(assert (=> b!7936653 (=> (not res!3148902) (not e!4683116))))

(assert (=> b!7936653 (= res!3148902 (= (size!43286 lt!2695422) (+ (size!43286 (list!19440 (left!56896 lt!2695333))) (size!43286 (list!19440 (right!57226 lt!2695333))))))))

(assert (= (and d!2373436 c!1458100) b!7936651))

(assert (= (and d!2373436 (not c!1458100)) b!7936652))

(assert (= (and d!2373436 res!3148901) b!7936653))

(assert (= (and b!7936653 res!3148902) b!7936654))

(assert (=> b!7936652 m!8324450))

(declare-fun m!8324960 () Bool)

(assert (=> b!7936652 m!8324960))

(declare-fun m!8324962 () Bool)

(assert (=> d!2373436 m!8324962))

(assert (=> d!2373436 m!8324448))

(declare-fun m!8324964 () Bool)

(assert (=> d!2373436 m!8324964))

(assert (=> d!2373436 m!8324450))

(declare-fun m!8324966 () Bool)

(assert (=> d!2373436 m!8324966))

(declare-fun m!8324968 () Bool)

(assert (=> b!7936653 m!8324968))

(assert (=> b!7936653 m!8324448))

(declare-fun m!8324970 () Bool)

(assert (=> b!7936653 m!8324970))

(assert (=> b!7936653 m!8324450))

(declare-fun m!8324972 () Bool)

(assert (=> b!7936653 m!8324972))

(assert (=> b!7936322 d!2373436))

(declare-fun b!7936655 () Bool)

(declare-fun e!4683117 () List!74587)

(assert (=> b!7936655 (= e!4683117 Nil!74463)))

(declare-fun b!7936656 () Bool)

(declare-fun e!4683118 () List!74587)

(assert (=> b!7936656 (= e!4683117 e!4683118)))

(declare-fun c!1458102 () Bool)

(assert (=> b!7936656 (= c!1458102 (is-Leaf!30257 (left!56896 lt!2695333)))))

(declare-fun b!7936657 () Bool)

(assert (=> b!7936657 (= e!4683118 (list!19442 (xs!19313 (left!56896 lt!2695333))))))

(declare-fun b!7936658 () Bool)

(assert (=> b!7936658 (= e!4683118 (++!18272 (list!19440 (left!56896 (left!56896 lt!2695333))) (list!19440 (right!57226 (left!56896 lt!2695333)))))))

(declare-fun d!2373438 () Bool)

(declare-fun c!1458101 () Bool)

(assert (=> d!2373438 (= c!1458101 (is-Empty!15917 (left!56896 lt!2695333)))))

(assert (=> d!2373438 (= (list!19440 (left!56896 lt!2695333)) e!4683117)))

(assert (= (and d!2373438 c!1458101) b!7936655))

(assert (= (and d!2373438 (not c!1458101)) b!7936656))

(assert (= (and b!7936656 c!1458102) b!7936657))

(assert (= (and b!7936656 (not c!1458102)) b!7936658))

(declare-fun m!8324974 () Bool)

(assert (=> b!7936657 m!8324974))

(declare-fun m!8324976 () Bool)

(assert (=> b!7936658 m!8324976))

(declare-fun m!8324978 () Bool)

(assert (=> b!7936658 m!8324978))

(assert (=> b!7936658 m!8324976))

(assert (=> b!7936658 m!8324978))

(declare-fun m!8324980 () Bool)

(assert (=> b!7936658 m!8324980))

(assert (=> b!7936322 d!2373438))

(declare-fun b!7936659 () Bool)

(declare-fun e!4683119 () List!74587)

(assert (=> b!7936659 (= e!4683119 Nil!74463)))

(declare-fun b!7936660 () Bool)

(declare-fun e!4683120 () List!74587)

(assert (=> b!7936660 (= e!4683119 e!4683120)))

(declare-fun c!1458104 () Bool)

(assert (=> b!7936660 (= c!1458104 (is-Leaf!30257 (right!57226 lt!2695333)))))

(declare-fun b!7936661 () Bool)

(assert (=> b!7936661 (= e!4683120 (list!19442 (xs!19313 (right!57226 lt!2695333))))))

(declare-fun b!7936662 () Bool)

(assert (=> b!7936662 (= e!4683120 (++!18272 (list!19440 (left!56896 (right!57226 lt!2695333))) (list!19440 (right!57226 (right!57226 lt!2695333)))))))

(declare-fun d!2373440 () Bool)

(declare-fun c!1458103 () Bool)

(assert (=> d!2373440 (= c!1458103 (is-Empty!15917 (right!57226 lt!2695333)))))

(assert (=> d!2373440 (= (list!19440 (right!57226 lt!2695333)) e!4683119)))

(assert (= (and d!2373440 c!1458103) b!7936659))

(assert (= (and d!2373440 (not c!1458103)) b!7936660))

(assert (= (and b!7936660 c!1458104) b!7936661))

(assert (= (and b!7936660 (not c!1458104)) b!7936662))

(declare-fun m!8324982 () Bool)

(assert (=> b!7936661 m!8324982))

(declare-fun m!8324984 () Bool)

(assert (=> b!7936662 m!8324984))

(declare-fun m!8324986 () Bool)

(assert (=> b!7936662 m!8324986))

(assert (=> b!7936662 m!8324984))

(assert (=> b!7936662 m!8324986))

(declare-fun m!8324988 () Bool)

(assert (=> b!7936662 m!8324988))

(assert (=> b!7936322 d!2373440))

(declare-fun d!2373442 () Bool)

(declare-fun res!3148904 () Bool)

(declare-fun e!4683122 () Bool)

(assert (=> d!2373442 (=> res!3148904 e!4683122)))

(assert (=> d!2373442 (= res!3148904 (not (is-Node!15917 (right!57226 (right!57226 t!4440)))))))

(assert (=> d!2373442 (= (isBalanced!4543 (right!57226 (right!57226 t!4440))) e!4683122)))

(declare-fun b!7936663 () Bool)

(declare-fun res!3148908 () Bool)

(declare-fun e!4683121 () Bool)

(assert (=> b!7936663 (=> (not res!3148908) (not e!4683121))))

(assert (=> b!7936663 (= res!3148908 (not (isEmpty!42803 (left!56896 (right!57226 (right!57226 t!4440))))))))

(declare-fun b!7936664 () Bool)

(assert (=> b!7936664 (= e!4683122 e!4683121)))

(declare-fun res!3148905 () Bool)

(assert (=> b!7936664 (=> (not res!3148905) (not e!4683121))))

(assert (=> b!7936664 (= res!3148905 (<= (- 1) (- (height!2230 (left!56896 (right!57226 (right!57226 t!4440)))) (height!2230 (right!57226 (right!57226 (right!57226 t!4440)))))))))

(declare-fun b!7936665 () Bool)

(declare-fun res!3148907 () Bool)

(assert (=> b!7936665 (=> (not res!3148907) (not e!4683121))))

(assert (=> b!7936665 (= res!3148907 (<= (- (height!2230 (left!56896 (right!57226 (right!57226 t!4440)))) (height!2230 (right!57226 (right!57226 (right!57226 t!4440))))) 1))))

(declare-fun b!7936666 () Bool)

(assert (=> b!7936666 (= e!4683121 (not (isEmpty!42803 (right!57226 (right!57226 (right!57226 t!4440))))))))

(declare-fun b!7936667 () Bool)

(declare-fun res!3148906 () Bool)

(assert (=> b!7936667 (=> (not res!3148906) (not e!4683121))))

(assert (=> b!7936667 (= res!3148906 (isBalanced!4543 (right!57226 (right!57226 (right!57226 t!4440)))))))

(declare-fun b!7936668 () Bool)

(declare-fun res!3148903 () Bool)

(assert (=> b!7936668 (=> (not res!3148903) (not e!4683121))))

(assert (=> b!7936668 (= res!3148903 (isBalanced!4543 (left!56896 (right!57226 (right!57226 t!4440)))))))

(assert (= (and d!2373442 (not res!3148904)) b!7936664))

(assert (= (and b!7936664 res!3148905) b!7936665))

(assert (= (and b!7936665 res!3148907) b!7936668))

(assert (= (and b!7936668 res!3148903) b!7936667))

(assert (= (and b!7936667 res!3148906) b!7936663))

(assert (= (and b!7936663 res!3148908) b!7936666))

(declare-fun m!8324990 () Bool)

(assert (=> b!7936665 m!8324990))

(declare-fun m!8324992 () Bool)

(assert (=> b!7936665 m!8324992))

(declare-fun m!8324994 () Bool)

(assert (=> b!7936668 m!8324994))

(declare-fun m!8324996 () Bool)

(assert (=> b!7936666 m!8324996))

(assert (=> b!7936664 m!8324990))

(assert (=> b!7936664 m!8324992))

(declare-fun m!8324998 () Bool)

(assert (=> b!7936663 m!8324998))

(declare-fun m!8325000 () Bool)

(assert (=> b!7936667 m!8325000))

(assert (=> b!7936343 d!2373442))

(declare-fun d!2373444 () Bool)

(declare-fun lt!2695423 () Int)

(assert (=> d!2373444 (= lt!2695423 (size!43286 (list!19440 (left!56896 t!4440))))))

(assert (=> d!2373444 (= lt!2695423 (ite (is-Empty!15917 (left!56896 t!4440)) 0 (ite (is-Leaf!30257 (left!56896 t!4440)) (csize!32065 (left!56896 t!4440)) (csize!32064 (left!56896 t!4440)))))))

(assert (=> d!2373444 (= (size!43285 (left!56896 t!4440)) lt!2695423)))

(declare-fun bs!1969222 () Bool)

(assert (= bs!1969222 d!2373444))

(assert (=> bs!1969222 m!8324284))

(assert (=> bs!1969222 m!8324284))

(assert (=> bs!1969222 m!8324616))

(assert (=> d!2373268 d!2373444))

(declare-fun d!2373446 () Bool)

(declare-fun lt!2695424 () Int)

(assert (=> d!2373446 (= lt!2695424 (size!43286 (list!19440 (right!57226 t!4440))))))

(assert (=> d!2373446 (= lt!2695424 (ite (is-Empty!15917 (right!57226 t!4440)) 0 (ite (is-Leaf!30257 (right!57226 t!4440)) (csize!32065 (right!57226 t!4440)) (csize!32064 (right!57226 t!4440)))))))

(assert (=> d!2373446 (= (size!43285 (right!57226 t!4440)) lt!2695424)))

(declare-fun bs!1969223 () Bool)

(assert (= bs!1969223 d!2373446))

(assert (=> bs!1969223 m!8324286))

(assert (=> bs!1969223 m!8324286))

(assert (=> bs!1969223 m!8324618))

(assert (=> d!2373268 d!2373446))

(declare-fun d!2373448 () Bool)

(declare-fun c!1458105 () Bool)

(assert (=> d!2373448 (= c!1458105 (is-Nil!74463 (t!390288 (list!19440 t!4440))))))

(declare-fun e!4683123 () (Set T!145914))

(assert (=> d!2373448 (= (content!15796 (t!390288 (list!19440 t!4440))) e!4683123)))

(declare-fun b!7936669 () Bool)

(assert (=> b!7936669 (= e!4683123 (as set.empty (Set T!145914)))))

(declare-fun b!7936670 () Bool)

(assert (=> b!7936670 (= e!4683123 (set.union (set.insert (h!80911 (t!390288 (list!19440 t!4440))) (as set.empty (Set T!145914))) (content!15796 (t!390288 (t!390288 (list!19440 t!4440))))))))

(assert (= (and d!2373448 c!1458105) b!7936669))

(assert (= (and d!2373448 (not c!1458105)) b!7936670))

(declare-fun m!8325002 () Bool)

(assert (=> b!7936670 m!8325002))

(declare-fun m!8325004 () Bool)

(assert (=> b!7936670 m!8325004))

(assert (=> b!7936443 d!2373448))

(assert (=> b!7936385 d!2373432))

(assert (=> b!7936385 d!2373434))

(declare-fun d!2373450 () Bool)

(declare-fun lt!2695425 () Int)

(assert (=> d!2373450 (>= lt!2695425 0)))

(declare-fun e!4683124 () Int)

(assert (=> d!2373450 (= lt!2695425 e!4683124)))

(declare-fun c!1458106 () Bool)

(assert (=> d!2373450 (= c!1458106 (is-Nil!74463 (t!390288 lt!2695341)))))

(assert (=> d!2373450 (= (size!43286 (t!390288 lt!2695341)) lt!2695425)))

(declare-fun b!7936671 () Bool)

(assert (=> b!7936671 (= e!4683124 0)))

(declare-fun b!7936672 () Bool)

(assert (=> b!7936672 (= e!4683124 (+ 1 (size!43286 (t!390288 (t!390288 lt!2695341)))))))

(assert (= (and d!2373450 c!1458106) b!7936671))

(assert (= (and d!2373450 (not c!1458106)) b!7936672))

(declare-fun m!8325006 () Bool)

(assert (=> b!7936672 m!8325006))

(assert (=> b!7936394 d!2373450))

(declare-fun d!2373452 () Bool)

(assert (=> d!2373452 (= (list!19442 (xs!19313 (left!56896 t!4440))) (innerList!16005 (xs!19313 (left!56896 t!4440))))))

(assert (=> b!7936430 d!2373452))

(declare-fun b!7936673 () Bool)

(declare-fun e!4683125 () List!74587)

(assert (=> b!7936673 (= e!4683125 (list!19440 (right!57226 (left!56896 lt!2695319))))))

(declare-fun b!7936674 () Bool)

(assert (=> b!7936674 (= e!4683125 (Cons!74463 (h!80911 (list!19440 (left!56896 (left!56896 lt!2695319)))) (++!18272 (t!390288 (list!19440 (left!56896 (left!56896 lt!2695319)))) (list!19440 (right!57226 (left!56896 lt!2695319))))))))

(declare-fun b!7936676 () Bool)

(declare-fun e!4683126 () Bool)

(declare-fun lt!2695426 () List!74587)

(assert (=> b!7936676 (= e!4683126 (or (not (= (list!19440 (right!57226 (left!56896 lt!2695319))) Nil!74463)) (= lt!2695426 (list!19440 (left!56896 (left!56896 lt!2695319))))))))

(declare-fun d!2373454 () Bool)

(assert (=> d!2373454 e!4683126))

(declare-fun res!3148909 () Bool)

(assert (=> d!2373454 (=> (not res!3148909) (not e!4683126))))

(assert (=> d!2373454 (= res!3148909 (= (content!15796 lt!2695426) (set.union (content!15796 (list!19440 (left!56896 (left!56896 lt!2695319)))) (content!15796 (list!19440 (right!57226 (left!56896 lt!2695319)))))))))

(assert (=> d!2373454 (= lt!2695426 e!4683125)))

(declare-fun c!1458107 () Bool)

(assert (=> d!2373454 (= c!1458107 (is-Nil!74463 (list!19440 (left!56896 (left!56896 lt!2695319)))))))

(assert (=> d!2373454 (= (++!18272 (list!19440 (left!56896 (left!56896 lt!2695319))) (list!19440 (right!57226 (left!56896 lt!2695319)))) lt!2695426)))

(declare-fun b!7936675 () Bool)

(declare-fun res!3148910 () Bool)

(assert (=> b!7936675 (=> (not res!3148910) (not e!4683126))))

(assert (=> b!7936675 (= res!3148910 (= (size!43286 lt!2695426) (+ (size!43286 (list!19440 (left!56896 (left!56896 lt!2695319)))) (size!43286 (list!19440 (right!57226 (left!56896 lt!2695319)))))))))

(assert (= (and d!2373454 c!1458107) b!7936673))

(assert (= (and d!2373454 (not c!1458107)) b!7936674))

(assert (= (and d!2373454 res!3148909) b!7936675))

(assert (= (and b!7936675 res!3148910) b!7936676))

(assert (=> b!7936674 m!8324594))

(declare-fun m!8325008 () Bool)

(assert (=> b!7936674 m!8325008))

(declare-fun m!8325010 () Bool)

(assert (=> d!2373454 m!8325010))

(assert (=> d!2373454 m!8324592))

(declare-fun m!8325012 () Bool)

(assert (=> d!2373454 m!8325012))

(assert (=> d!2373454 m!8324594))

(declare-fun m!8325014 () Bool)

(assert (=> d!2373454 m!8325014))

(declare-fun m!8325016 () Bool)

(assert (=> b!7936675 m!8325016))

(assert (=> b!7936675 m!8324592))

(declare-fun m!8325018 () Bool)

(assert (=> b!7936675 m!8325018))

(assert (=> b!7936675 m!8324594))

(declare-fun m!8325020 () Bool)

(assert (=> b!7936675 m!8325020))

(assert (=> b!7936419 d!2373454))

(declare-fun b!7936677 () Bool)

(declare-fun e!4683127 () List!74587)

(assert (=> b!7936677 (= e!4683127 Nil!74463)))

(declare-fun b!7936678 () Bool)

(declare-fun e!4683128 () List!74587)

(assert (=> b!7936678 (= e!4683127 e!4683128)))

(declare-fun c!1458109 () Bool)

(assert (=> b!7936678 (= c!1458109 (is-Leaf!30257 (left!56896 (left!56896 lt!2695319))))))

(declare-fun b!7936679 () Bool)

(assert (=> b!7936679 (= e!4683128 (list!19442 (xs!19313 (left!56896 (left!56896 lt!2695319)))))))

(declare-fun b!7936680 () Bool)

(assert (=> b!7936680 (= e!4683128 (++!18272 (list!19440 (left!56896 (left!56896 (left!56896 lt!2695319)))) (list!19440 (right!57226 (left!56896 (left!56896 lt!2695319))))))))

(declare-fun d!2373456 () Bool)

(declare-fun c!1458108 () Bool)

(assert (=> d!2373456 (= c!1458108 (is-Empty!15917 (left!56896 (left!56896 lt!2695319))))))

(assert (=> d!2373456 (= (list!19440 (left!56896 (left!56896 lt!2695319))) e!4683127)))

(assert (= (and d!2373456 c!1458108) b!7936677))

(assert (= (and d!2373456 (not c!1458108)) b!7936678))

(assert (= (and b!7936678 c!1458109) b!7936679))

(assert (= (and b!7936678 (not c!1458109)) b!7936680))

(declare-fun m!8325022 () Bool)

(assert (=> b!7936679 m!8325022))

(declare-fun m!8325024 () Bool)

(assert (=> b!7936680 m!8325024))

(declare-fun m!8325026 () Bool)

(assert (=> b!7936680 m!8325026))

(assert (=> b!7936680 m!8325024))

(assert (=> b!7936680 m!8325026))

(declare-fun m!8325028 () Bool)

(assert (=> b!7936680 m!8325028))

(assert (=> b!7936419 d!2373456))

(declare-fun b!7936681 () Bool)

(declare-fun e!4683129 () List!74587)

(assert (=> b!7936681 (= e!4683129 Nil!74463)))

(declare-fun b!7936682 () Bool)

(declare-fun e!4683130 () List!74587)

(assert (=> b!7936682 (= e!4683129 e!4683130)))

(declare-fun c!1458111 () Bool)

(assert (=> b!7936682 (= c!1458111 (is-Leaf!30257 (right!57226 (left!56896 lt!2695319))))))

(declare-fun b!7936683 () Bool)

(assert (=> b!7936683 (= e!4683130 (list!19442 (xs!19313 (right!57226 (left!56896 lt!2695319)))))))

(declare-fun b!7936684 () Bool)

(assert (=> b!7936684 (= e!4683130 (++!18272 (list!19440 (left!56896 (right!57226 (left!56896 lt!2695319)))) (list!19440 (right!57226 (right!57226 (left!56896 lt!2695319))))))))

(declare-fun d!2373458 () Bool)

(declare-fun c!1458110 () Bool)

(assert (=> d!2373458 (= c!1458110 (is-Empty!15917 (right!57226 (left!56896 lt!2695319))))))

(assert (=> d!2373458 (= (list!19440 (right!57226 (left!56896 lt!2695319))) e!4683129)))

(assert (= (and d!2373458 c!1458110) b!7936681))

(assert (= (and d!2373458 (not c!1458110)) b!7936682))

(assert (= (and b!7936682 c!1458111) b!7936683))

(assert (= (and b!7936682 (not c!1458111)) b!7936684))

(declare-fun m!8325030 () Bool)

(assert (=> b!7936683 m!8325030))

(declare-fun m!8325032 () Bool)

(assert (=> b!7936684 m!8325032))

(declare-fun m!8325034 () Bool)

(assert (=> b!7936684 m!8325034))

(assert (=> b!7936684 m!8325032))

(assert (=> b!7936684 m!8325034))

(declare-fun m!8325036 () Bool)

(assert (=> b!7936684 m!8325036))

(assert (=> b!7936419 d!2373458))

(declare-fun d!2373460 () Bool)

(assert (=> d!2373460 (= (height!2230 (left!56896 (left!56896 lt!2695319))) (ite (is-Empty!15917 (left!56896 (left!56896 lt!2695319))) 0 (ite (is-Leaf!30257 (left!56896 (left!56896 lt!2695319))) 1 (cheight!16128 (left!56896 (left!56896 lt!2695319))))))))

(assert (=> b!7936315 d!2373460))

(declare-fun d!2373462 () Bool)

(assert (=> d!2373462 (= (height!2230 (right!57226 (left!56896 lt!2695319))) (ite (is-Empty!15917 (right!57226 (left!56896 lt!2695319))) 0 (ite (is-Leaf!30257 (right!57226 (left!56896 lt!2695319))) 1 (cheight!16128 (right!57226 (left!56896 lt!2695319))))))))

(assert (=> b!7936315 d!2373462))

(declare-fun d!2373464 () Bool)

(declare-fun res!3148911 () Bool)

(declare-fun e!4683131 () Bool)

(assert (=> d!2373464 (=> (not res!3148911) (not e!4683131))))

(assert (=> d!2373464 (= res!3148911 (<= (size!43286 (list!19442 (xs!19313 (left!56896 (right!57226 t!4440))))) 512))))

(assert (=> d!2373464 (= (inv!95806 (left!56896 (right!57226 t!4440))) e!4683131)))

(declare-fun b!7936685 () Bool)

(declare-fun res!3148912 () Bool)

(assert (=> b!7936685 (=> (not res!3148912) (not e!4683131))))

(assert (=> b!7936685 (= res!3148912 (= (csize!32065 (left!56896 (right!57226 t!4440))) (size!43286 (list!19442 (xs!19313 (left!56896 (right!57226 t!4440)))))))))

(declare-fun b!7936686 () Bool)

(assert (=> b!7936686 (= e!4683131 (and (> (csize!32065 (left!56896 (right!57226 t!4440))) 0) (<= (csize!32065 (left!56896 (right!57226 t!4440))) 512)))))

(assert (= (and d!2373464 res!3148911) b!7936685))

(assert (= (and b!7936685 res!3148912) b!7936686))

(declare-fun m!8325038 () Bool)

(assert (=> d!2373464 m!8325038))

(assert (=> d!2373464 m!8325038))

(declare-fun m!8325040 () Bool)

(assert (=> d!2373464 m!8325040))

(assert (=> b!7936685 m!8325038))

(assert (=> b!7936685 m!8325038))

(assert (=> b!7936685 m!8325040))

(assert (=> b!7936364 d!2373464))

(declare-fun d!2373466 () Bool)

(declare-fun res!3148913 () Bool)

(declare-fun e!4683132 () Bool)

(assert (=> d!2373466 (=> (not res!3148913) (not e!4683132))))

(assert (=> d!2373466 (= res!3148913 (<= (size!43286 (list!19442 (xs!19313 (left!56896 (left!56896 t!4440))))) 512))))

(assert (=> d!2373466 (= (inv!95806 (left!56896 (left!56896 t!4440))) e!4683132)))

(declare-fun b!7936687 () Bool)

(declare-fun res!3148914 () Bool)

(assert (=> b!7936687 (=> (not res!3148914) (not e!4683132))))

(assert (=> b!7936687 (= res!3148914 (= (csize!32065 (left!56896 (left!56896 t!4440))) (size!43286 (list!19442 (xs!19313 (left!56896 (left!56896 t!4440)))))))))

(declare-fun b!7936688 () Bool)

(assert (=> b!7936688 (= e!4683132 (and (> (csize!32065 (left!56896 (left!56896 t!4440))) 0) (<= (csize!32065 (left!56896 (left!56896 t!4440))) 512)))))

(assert (= (and d!2373466 res!3148913) b!7936687))

(assert (= (and b!7936687 res!3148914) b!7936688))

(declare-fun m!8325042 () Bool)

(assert (=> d!2373466 m!8325042))

(assert (=> d!2373466 m!8325042))

(declare-fun m!8325044 () Bool)

(assert (=> d!2373466 m!8325044))

(assert (=> b!7936687 m!8325042))

(assert (=> b!7936687 m!8325042))

(assert (=> b!7936687 m!8325044))

(assert (=> b!7936408 d!2373466))

(declare-fun d!2373468 () Bool)

(declare-fun c!1458112 () Bool)

(assert (=> d!2373468 (= c!1458112 (is-Node!15917 (left!56896 (right!57226 (right!57226 t!4440)))))))

(declare-fun e!4683133 () Bool)

(assert (=> d!2373468 (= (inv!95801 (left!56896 (right!57226 (right!57226 t!4440)))) e!4683133)))

(declare-fun b!7936689 () Bool)

(assert (=> b!7936689 (= e!4683133 (inv!95805 (left!56896 (right!57226 (right!57226 t!4440)))))))

(declare-fun b!7936690 () Bool)

(declare-fun e!4683134 () Bool)

(assert (=> b!7936690 (= e!4683133 e!4683134)))

(declare-fun res!3148915 () Bool)

(assert (=> b!7936690 (= res!3148915 (not (is-Leaf!30257 (left!56896 (right!57226 (right!57226 t!4440))))))))

(assert (=> b!7936690 (=> res!3148915 e!4683134)))

(declare-fun b!7936691 () Bool)

(assert (=> b!7936691 (= e!4683134 (inv!95806 (left!56896 (right!57226 (right!57226 t!4440)))))))

(assert (= (and d!2373468 c!1458112) b!7936689))

(assert (= (and d!2373468 (not c!1458112)) b!7936690))

(assert (= (and b!7936690 (not res!3148915)) b!7936691))

(declare-fun m!8325046 () Bool)

(assert (=> b!7936689 m!8325046))

(declare-fun m!8325048 () Bool)

(assert (=> b!7936691 m!8325048))

(assert (=> b!7936456 d!2373468))

(declare-fun d!2373470 () Bool)

(declare-fun c!1458113 () Bool)

(assert (=> d!2373470 (= c!1458113 (is-Node!15917 (right!57226 (right!57226 (right!57226 t!4440)))))))

(declare-fun e!4683135 () Bool)

(assert (=> d!2373470 (= (inv!95801 (right!57226 (right!57226 (right!57226 t!4440)))) e!4683135)))

(declare-fun b!7936692 () Bool)

(assert (=> b!7936692 (= e!4683135 (inv!95805 (right!57226 (right!57226 (right!57226 t!4440)))))))

(declare-fun b!7936693 () Bool)

(declare-fun e!4683136 () Bool)

(assert (=> b!7936693 (= e!4683135 e!4683136)))

(declare-fun res!3148916 () Bool)

(assert (=> b!7936693 (= res!3148916 (not (is-Leaf!30257 (right!57226 (right!57226 (right!57226 t!4440))))))))

(assert (=> b!7936693 (=> res!3148916 e!4683136)))

(declare-fun b!7936694 () Bool)

(assert (=> b!7936694 (= e!4683136 (inv!95806 (right!57226 (right!57226 (right!57226 t!4440)))))))

(assert (= (and d!2373470 c!1458113) b!7936692))

(assert (= (and d!2373470 (not c!1458113)) b!7936693))

(assert (= (and b!7936693 (not res!3148916)) b!7936694))

(declare-fun m!8325050 () Bool)

(assert (=> b!7936692 m!8325050))

(declare-fun m!8325052 () Bool)

(assert (=> b!7936694 m!8325052))

(assert (=> b!7936456 d!2373470))

(assert (=> d!2373216 d!2373214))

(declare-fun d!2373472 () Bool)

(assert (=> d!2373472 (= (inv!95802 _$14!1645) (<= (size!43286 (innerList!16005 _$14!1645)) 2147483647))))

(declare-fun bs!1969224 () Bool)

(assert (= bs!1969224 d!2373472))

(declare-fun m!8325054 () Bool)

(assert (=> bs!1969224 m!8325054))

(assert (=> d!2373216 d!2373472))

(declare-fun d!2373474 () Bool)

(declare-fun res!3148917 () Bool)

(declare-fun e!4683137 () Bool)

(assert (=> d!2373474 (=> (not res!3148917) (not e!4683137))))

(assert (=> d!2373474 (= res!3148917 (<= (size!43286 (list!19442 (xs!19313 (right!57226 (right!57226 t!4440))))) 512))))

(assert (=> d!2373474 (= (inv!95806 (right!57226 (right!57226 t!4440))) e!4683137)))

(declare-fun b!7936695 () Bool)

(declare-fun res!3148918 () Bool)

(assert (=> b!7936695 (=> (not res!3148918) (not e!4683137))))

(assert (=> b!7936695 (= res!3148918 (= (csize!32065 (right!57226 (right!57226 t!4440))) (size!43286 (list!19442 (xs!19313 (right!57226 (right!57226 t!4440)))))))))

(declare-fun b!7936696 () Bool)

(assert (=> b!7936696 (= e!4683137 (and (> (csize!32065 (right!57226 (right!57226 t!4440))) 0) (<= (csize!32065 (right!57226 (right!57226 t!4440))) 512)))))

(assert (= (and d!2373474 res!3148917) b!7936695))

(assert (= (and b!7936695 res!3148918) b!7936696))

(declare-fun m!8325056 () Bool)

(assert (=> d!2373474 m!8325056))

(assert (=> d!2373474 m!8325056))

(declare-fun m!8325058 () Bool)

(assert (=> d!2373474 m!8325058))

(assert (=> b!7936695 m!8325056))

(assert (=> b!7936695 m!8325056))

(assert (=> b!7936695 m!8325058))

(assert (=> b!7936367 d!2373474))

(declare-fun d!2373476 () Bool)

(declare-fun res!3148919 () Bool)

(declare-fun e!4683138 () Bool)

(assert (=> d!2373476 (=> (not res!3148919) (not e!4683138))))

(assert (=> d!2373476 (= res!3148919 (<= (size!43286 (list!19442 (xs!19313 (right!57226 (left!56896 t!4440))))) 512))))

(assert (=> d!2373476 (= (inv!95806 (right!57226 (left!56896 t!4440))) e!4683138)))

(declare-fun b!7936697 () Bool)

(declare-fun res!3148920 () Bool)

(assert (=> b!7936697 (=> (not res!3148920) (not e!4683138))))

(assert (=> b!7936697 (= res!3148920 (= (csize!32065 (right!57226 (left!56896 t!4440))) (size!43286 (list!19442 (xs!19313 (right!57226 (left!56896 t!4440)))))))))

(declare-fun b!7936698 () Bool)

(assert (=> b!7936698 (= e!4683138 (and (> (csize!32065 (right!57226 (left!56896 t!4440))) 0) (<= (csize!32065 (right!57226 (left!56896 t!4440))) 512)))))

(assert (= (and d!2373476 res!3148919) b!7936697))

(assert (= (and b!7936697 res!3148920) b!7936698))

(declare-fun m!8325060 () Bool)

(assert (=> d!2373476 m!8325060))

(assert (=> d!2373476 m!8325060))

(declare-fun m!8325062 () Bool)

(assert (=> d!2373476 m!8325062))

(assert (=> b!7936697 m!8325060))

(assert (=> b!7936697 m!8325060))

(assert (=> b!7936697 m!8325062))

(assert (=> b!7936411 d!2373476))

(declare-fun d!2373478 () Bool)

(declare-fun res!3148922 () Bool)

(declare-fun e!4683140 () Bool)

(assert (=> d!2373478 (=> res!3148922 e!4683140)))

(assert (=> d!2373478 (= res!3148922 (not (is-Node!15917 (left!56896 (right!57226 lt!2695319)))))))

(assert (=> d!2373478 (= (isBalanced!4543 (left!56896 (right!57226 lt!2695319))) e!4683140)))

(declare-fun b!7936699 () Bool)

(declare-fun res!3148926 () Bool)

(declare-fun e!4683139 () Bool)

(assert (=> b!7936699 (=> (not res!3148926) (not e!4683139))))

(assert (=> b!7936699 (= res!3148926 (not (isEmpty!42803 (left!56896 (left!56896 (right!57226 lt!2695319))))))))

(declare-fun b!7936700 () Bool)

(assert (=> b!7936700 (= e!4683140 e!4683139)))

(declare-fun res!3148923 () Bool)

(assert (=> b!7936700 (=> (not res!3148923) (not e!4683139))))

(assert (=> b!7936700 (= res!3148923 (<= (- 1) (- (height!2230 (left!56896 (left!56896 (right!57226 lt!2695319)))) (height!2230 (right!57226 (left!56896 (right!57226 lt!2695319)))))))))

(declare-fun b!7936701 () Bool)

(declare-fun res!3148925 () Bool)

(assert (=> b!7936701 (=> (not res!3148925) (not e!4683139))))

(assert (=> b!7936701 (= res!3148925 (<= (- (height!2230 (left!56896 (left!56896 (right!57226 lt!2695319)))) (height!2230 (right!57226 (left!56896 (right!57226 lt!2695319))))) 1))))

(declare-fun b!7936702 () Bool)

(assert (=> b!7936702 (= e!4683139 (not (isEmpty!42803 (right!57226 (left!56896 (right!57226 lt!2695319))))))))

(declare-fun b!7936703 () Bool)

(declare-fun res!3148924 () Bool)

(assert (=> b!7936703 (=> (not res!3148924) (not e!4683139))))

(assert (=> b!7936703 (= res!3148924 (isBalanced!4543 (right!57226 (left!56896 (right!57226 lt!2695319)))))))

(declare-fun b!7936704 () Bool)

(declare-fun res!3148921 () Bool)

(assert (=> b!7936704 (=> (not res!3148921) (not e!4683139))))

(assert (=> b!7936704 (= res!3148921 (isBalanced!4543 (left!56896 (left!56896 (right!57226 lt!2695319)))))))

(assert (= (and d!2373478 (not res!3148922)) b!7936700))

(assert (= (and b!7936700 res!3148923) b!7936701))

(assert (= (and b!7936701 res!3148925) b!7936704))

(assert (= (and b!7936704 res!3148921) b!7936703))

(assert (= (and b!7936703 res!3148924) b!7936699))

(assert (= (and b!7936699 res!3148926) b!7936702))

(declare-fun m!8325064 () Bool)

(assert (=> b!7936701 m!8325064))

(declare-fun m!8325066 () Bool)

(assert (=> b!7936701 m!8325066))

(declare-fun m!8325068 () Bool)

(assert (=> b!7936704 m!8325068))

(declare-fun m!8325070 () Bool)

(assert (=> b!7936702 m!8325070))

(assert (=> b!7936700 m!8325064))

(assert (=> b!7936700 m!8325066))

(declare-fun m!8325072 () Bool)

(assert (=> b!7936699 m!8325072))

(declare-fun m!8325074 () Bool)

(assert (=> b!7936703 m!8325074))

(assert (=> b!7936306 d!2373478))

(declare-fun d!2373480 () Bool)

(declare-fun lt!2695427 () Int)

(assert (=> d!2373480 (>= lt!2695427 0)))

(declare-fun e!4683141 () Int)

(assert (=> d!2373480 (= lt!2695427 e!4683141)))

(declare-fun c!1458114 () Bool)

(assert (=> d!2373480 (= c!1458114 (is-Nil!74463 lt!2695354))))

(assert (=> d!2373480 (= (size!43286 lt!2695354) lt!2695427)))

(declare-fun b!7936705 () Bool)

(assert (=> b!7936705 (= e!4683141 0)))

(declare-fun b!7936706 () Bool)

(assert (=> b!7936706 (= e!4683141 (+ 1 (size!43286 (t!390288 lt!2695354))))))

(assert (= (and d!2373480 c!1458114) b!7936705))

(assert (= (and d!2373480 (not c!1458114)) b!7936706))

(declare-fun m!8325076 () Bool)

(assert (=> b!7936706 m!8325076))

(assert (=> b!7936297 d!2373480))

(declare-fun b!7936707 () Bool)

(declare-fun e!4683142 () List!74587)

(assert (=> b!7936707 (= e!4683142 (list!19440 (right!57226 (right!57226 t!4440))))))

(declare-fun b!7936708 () Bool)

(assert (=> b!7936708 (= e!4683142 (Cons!74463 (h!80911 (list!19440 (left!56896 (right!57226 t!4440)))) (++!18272 (t!390288 (list!19440 (left!56896 (right!57226 t!4440)))) (list!19440 (right!57226 (right!57226 t!4440))))))))

(declare-fun b!7936710 () Bool)

(declare-fun e!4683143 () Bool)

(declare-fun lt!2695428 () List!74587)

(assert (=> b!7936710 (= e!4683143 (or (not (= (list!19440 (right!57226 (right!57226 t!4440))) Nil!74463)) (= lt!2695428 (list!19440 (left!56896 (right!57226 t!4440))))))))

(declare-fun d!2373482 () Bool)

(assert (=> d!2373482 e!4683143))

(declare-fun res!3148927 () Bool)

(assert (=> d!2373482 (=> (not res!3148927) (not e!4683143))))

(assert (=> d!2373482 (= res!3148927 (= (content!15796 lt!2695428) (set.union (content!15796 (list!19440 (left!56896 (right!57226 t!4440)))) (content!15796 (list!19440 (right!57226 (right!57226 t!4440)))))))))

(assert (=> d!2373482 (= lt!2695428 e!4683142)))

(declare-fun c!1458115 () Bool)

(assert (=> d!2373482 (= c!1458115 (is-Nil!74463 (list!19440 (left!56896 (right!57226 t!4440)))))))

(assert (=> d!2373482 (= (++!18272 (list!19440 (left!56896 (right!57226 t!4440))) (list!19440 (right!57226 (right!57226 t!4440)))) lt!2695428)))

(declare-fun b!7936709 () Bool)

(declare-fun res!3148928 () Bool)

(assert (=> b!7936709 (=> (not res!3148928) (not e!4683143))))

(assert (=> b!7936709 (= res!3148928 (= (size!43286 lt!2695428) (+ (size!43286 (list!19440 (left!56896 (right!57226 t!4440)))) (size!43286 (list!19440 (right!57226 (right!57226 t!4440)))))))))

(assert (= (and d!2373482 c!1458115) b!7936707))

(assert (= (and d!2373482 (not c!1458115)) b!7936708))

(assert (= (and d!2373482 res!3148927) b!7936709))

(assert (= (and b!7936709 res!3148928) b!7936710))

(assert (=> b!7936708 m!8324628))

(declare-fun m!8325078 () Bool)

(assert (=> b!7936708 m!8325078))

(declare-fun m!8325080 () Bool)

(assert (=> d!2373482 m!8325080))

(assert (=> d!2373482 m!8324626))

(declare-fun m!8325082 () Bool)

(assert (=> d!2373482 m!8325082))

(assert (=> d!2373482 m!8324628))

(declare-fun m!8325084 () Bool)

(assert (=> d!2373482 m!8325084))

(declare-fun m!8325086 () Bool)

(assert (=> b!7936709 m!8325086))

(assert (=> b!7936709 m!8324626))

(declare-fun m!8325088 () Bool)

(assert (=> b!7936709 m!8325088))

(assert (=> b!7936709 m!8324628))

(declare-fun m!8325090 () Bool)

(assert (=> b!7936709 m!8325090))

(assert (=> b!7936435 d!2373482))

(declare-fun b!7936711 () Bool)

(declare-fun e!4683144 () List!74587)

(assert (=> b!7936711 (= e!4683144 Nil!74463)))

(declare-fun b!7936712 () Bool)

(declare-fun e!4683145 () List!74587)

(assert (=> b!7936712 (= e!4683144 e!4683145)))

(declare-fun c!1458117 () Bool)

(assert (=> b!7936712 (= c!1458117 (is-Leaf!30257 (left!56896 (right!57226 t!4440))))))

(declare-fun b!7936713 () Bool)

(assert (=> b!7936713 (= e!4683145 (list!19442 (xs!19313 (left!56896 (right!57226 t!4440)))))))

(declare-fun b!7936714 () Bool)

(assert (=> b!7936714 (= e!4683145 (++!18272 (list!19440 (left!56896 (left!56896 (right!57226 t!4440)))) (list!19440 (right!57226 (left!56896 (right!57226 t!4440))))))))

(declare-fun d!2373484 () Bool)

(declare-fun c!1458116 () Bool)

(assert (=> d!2373484 (= c!1458116 (is-Empty!15917 (left!56896 (right!57226 t!4440))))))

(assert (=> d!2373484 (= (list!19440 (left!56896 (right!57226 t!4440))) e!4683144)))

(assert (= (and d!2373484 c!1458116) b!7936711))

(assert (= (and d!2373484 (not c!1458116)) b!7936712))

(assert (= (and b!7936712 c!1458117) b!7936713))

(assert (= (and b!7936712 (not c!1458117)) b!7936714))

(assert (=> b!7936713 m!8325038))

(declare-fun m!8325092 () Bool)

(assert (=> b!7936714 m!8325092))

(declare-fun m!8325094 () Bool)

(assert (=> b!7936714 m!8325094))

(assert (=> b!7936714 m!8325092))

(assert (=> b!7936714 m!8325094))

(declare-fun m!8325096 () Bool)

(assert (=> b!7936714 m!8325096))

(assert (=> b!7936435 d!2373484))

(declare-fun b!7936715 () Bool)

(declare-fun e!4683146 () List!74587)

(assert (=> b!7936715 (= e!4683146 Nil!74463)))

(declare-fun b!7936716 () Bool)

(declare-fun e!4683147 () List!74587)

(assert (=> b!7936716 (= e!4683146 e!4683147)))

(declare-fun c!1458119 () Bool)

(assert (=> b!7936716 (= c!1458119 (is-Leaf!30257 (right!57226 (right!57226 t!4440))))))

(declare-fun b!7936717 () Bool)

(assert (=> b!7936717 (= e!4683147 (list!19442 (xs!19313 (right!57226 (right!57226 t!4440)))))))

(declare-fun b!7936718 () Bool)

(assert (=> b!7936718 (= e!4683147 (++!18272 (list!19440 (left!56896 (right!57226 (right!57226 t!4440)))) (list!19440 (right!57226 (right!57226 (right!57226 t!4440))))))))

(declare-fun d!2373486 () Bool)

(declare-fun c!1458118 () Bool)

(assert (=> d!2373486 (= c!1458118 (is-Empty!15917 (right!57226 (right!57226 t!4440))))))

(assert (=> d!2373486 (= (list!19440 (right!57226 (right!57226 t!4440))) e!4683146)))

(assert (= (and d!2373486 c!1458118) b!7936715))

(assert (= (and d!2373486 (not c!1458118)) b!7936716))

(assert (= (and b!7936716 c!1458119) b!7936717))

(assert (= (and b!7936716 (not c!1458119)) b!7936718))

(assert (=> b!7936717 m!8325056))

(declare-fun m!8325098 () Bool)

(assert (=> b!7936718 m!8325098))

(declare-fun m!8325100 () Bool)

(assert (=> b!7936718 m!8325100))

(assert (=> b!7936718 m!8325098))

(assert (=> b!7936718 m!8325100))

(declare-fun m!8325102 () Bool)

(assert (=> b!7936718 m!8325102))

(assert (=> b!7936435 d!2373486))

(declare-fun d!2373488 () Bool)

(declare-fun lt!2695429 () Int)

(assert (=> d!2373488 (= lt!2695429 (size!43286 (list!19440 (left!56896 (right!57226 t!4440)))))))

(assert (=> d!2373488 (= lt!2695429 (ite (is-Empty!15917 (left!56896 (right!57226 t!4440))) 0 (ite (is-Leaf!30257 (left!56896 (right!57226 t!4440))) (csize!32065 (left!56896 (right!57226 t!4440))) (csize!32064 (left!56896 (right!57226 t!4440))))))))

(assert (=> d!2373488 (= (size!43285 (left!56896 (right!57226 t!4440))) lt!2695429)))

(declare-fun bs!1969225 () Bool)

(assert (= bs!1969225 d!2373488))

(assert (=> bs!1969225 m!8324626))

(assert (=> bs!1969225 m!8324626))

(assert (=> bs!1969225 m!8325088))

(assert (=> d!2373246 d!2373488))

(declare-fun d!2373490 () Bool)

(declare-fun lt!2695430 () Int)

(assert (=> d!2373490 (= lt!2695430 (size!43286 (list!19440 (right!57226 (right!57226 t!4440)))))))

(assert (=> d!2373490 (= lt!2695430 (ite (is-Empty!15917 (right!57226 (right!57226 t!4440))) 0 (ite (is-Leaf!30257 (right!57226 (right!57226 t!4440))) (csize!32065 (right!57226 (right!57226 t!4440))) (csize!32064 (right!57226 (right!57226 t!4440))))))))

(assert (=> d!2373490 (= (size!43285 (right!57226 (right!57226 t!4440))) lt!2695430)))

(declare-fun bs!1969226 () Bool)

(assert (= bs!1969226 d!2373490))

(assert (=> bs!1969226 m!8324628))

(assert (=> bs!1969226 m!8324628))

(assert (=> bs!1969226 m!8325090))

(assert (=> d!2373246 d!2373490))

(declare-fun b!7936719 () Bool)

(declare-fun e!4683148 () List!74587)

(assert (=> b!7936719 (= e!4683148 (list!19440 (right!57226 t!4440)))))

(declare-fun b!7936720 () Bool)

(assert (=> b!7936720 (= e!4683148 (Cons!74463 (h!80911 (t!390288 (list!19440 (left!56896 t!4440)))) (++!18272 (t!390288 (t!390288 (list!19440 (left!56896 t!4440)))) (list!19440 (right!57226 t!4440)))))))

(declare-fun b!7936722 () Bool)

(declare-fun e!4683149 () Bool)

(declare-fun lt!2695431 () List!74587)

(assert (=> b!7936722 (= e!4683149 (or (not (= (list!19440 (right!57226 t!4440)) Nil!74463)) (= lt!2695431 (t!390288 (list!19440 (left!56896 t!4440))))))))

(declare-fun d!2373492 () Bool)

(assert (=> d!2373492 e!4683149))

(declare-fun res!3148929 () Bool)

(assert (=> d!2373492 (=> (not res!3148929) (not e!4683149))))

(assert (=> d!2373492 (= res!3148929 (= (content!15796 lt!2695431) (set.union (content!15796 (t!390288 (list!19440 (left!56896 t!4440)))) (content!15796 (list!19440 (right!57226 t!4440))))))))

(assert (=> d!2373492 (= lt!2695431 e!4683148)))

(declare-fun c!1458120 () Bool)

(assert (=> d!2373492 (= c!1458120 (is-Nil!74463 (t!390288 (list!19440 (left!56896 t!4440)))))))

(assert (=> d!2373492 (= (++!18272 (t!390288 (list!19440 (left!56896 t!4440))) (list!19440 (right!57226 t!4440))) lt!2695431)))

(declare-fun b!7936721 () Bool)

(declare-fun res!3148930 () Bool)

(assert (=> b!7936721 (=> (not res!3148930) (not e!4683149))))

(assert (=> b!7936721 (= res!3148930 (= (size!43286 lt!2695431) (+ (size!43286 (t!390288 (list!19440 (left!56896 t!4440)))) (size!43286 (list!19440 (right!57226 t!4440))))))))

(assert (= (and d!2373492 c!1458120) b!7936719))

(assert (= (and d!2373492 (not c!1458120)) b!7936720))

(assert (= (and d!2373492 res!3148929) b!7936721))

(assert (= (and b!7936721 res!3148930) b!7936722))

(assert (=> b!7936720 m!8324286))

(declare-fun m!8325104 () Bool)

(assert (=> b!7936720 m!8325104))

(declare-fun m!8325106 () Bool)

(assert (=> d!2373492 m!8325106))

(declare-fun m!8325108 () Bool)

(assert (=> d!2373492 m!8325108))

(assert (=> d!2373492 m!8324286))

(assert (=> d!2373492 m!8324612))

(declare-fun m!8325110 () Bool)

(assert (=> b!7936721 m!8325110))

(declare-fun m!8325112 () Bool)

(assert (=> b!7936721 m!8325112))

(assert (=> b!7936721 m!8324286))

(assert (=> b!7936721 m!8324618))

(assert (=> b!7936425 d!2373492))

(declare-fun d!2373494 () Bool)

(assert (=> d!2373494 (= (list!19442 (xs!19313 (right!57226 lt!2695319))) (innerList!16005 (xs!19313 (right!57226 lt!2695319))))))

(assert (=> b!7936422 d!2373494))

(declare-fun d!2373496 () Bool)

(declare-fun lt!2695432 () (_ BitVec 32))

(assert (=> d!2373496 (and (bvsle #b00000000000000000000000000000000 lt!2695432) (bvsle lt!2695432 #b01111111111111111111111111111111))))

(declare-fun e!4683150 () (_ BitVec 32))

(assert (=> d!2373496 (= lt!2695432 e!4683150)))

(declare-fun c!1458121 () Bool)

(assert (=> d!2373496 (= c!1458121 (is-Nil!74463 (t!390288 (list!19440 t!4440))))))

(assert (=> d!2373496 (= (isize!130 (t!390288 (list!19440 t!4440))) lt!2695432)))

(declare-fun b!7936723 () Bool)

(assert (=> b!7936723 (= e!4683150 #b00000000000000000000000000000000)))

(declare-fun b!7936724 () Bool)

(declare-fun lt!2695433 () (_ BitVec 32))

(assert (=> b!7936724 (= e!4683150 (ite (= lt!2695433 #b01111111111111111111111111111111) lt!2695433 (bvadd #b00000000000000000000000000000001 lt!2695433)))))

(assert (=> b!7936724 (= lt!2695433 (isize!130 (t!390288 (t!390288 (list!19440 t!4440)))))))

(assert (= (and d!2373496 c!1458121) b!7936723))

(assert (= (and d!2373496 (not c!1458121)) b!7936724))

(declare-fun m!8325114 () Bool)

(assert (=> b!7936724 m!8325114))

(assert (=> b!7936374 d!2373496))

(declare-fun d!2373498 () Bool)

(declare-fun lt!2695434 () Int)

(assert (=> d!2373498 (>= lt!2695434 0)))

(declare-fun e!4683151 () Int)

(assert (=> d!2373498 (= lt!2695434 e!4683151)))

(declare-fun c!1458122 () Bool)

(assert (=> d!2373498 (= c!1458122 (is-Nil!74463 lt!2695380))))

(assert (=> d!2373498 (= (size!43286 lt!2695380) lt!2695434)))

(declare-fun b!7936725 () Bool)

(assert (=> b!7936725 (= e!4683151 0)))

(declare-fun b!7936726 () Bool)

(assert (=> b!7936726 (= e!4683151 (+ 1 (size!43286 (t!390288 lt!2695380))))))

(assert (= (and d!2373498 c!1458122) b!7936725))

(assert (= (and d!2373498 (not c!1458122)) b!7936726))

(declare-fun m!8325116 () Bool)

(assert (=> b!7936726 m!8325116))

(assert (=> b!7936414 d!2373498))

(declare-fun d!2373500 () Bool)

(declare-fun lt!2695435 () Int)

(assert (=> d!2373500 (>= lt!2695435 0)))

(declare-fun e!4683152 () Int)

(assert (=> d!2373500 (= lt!2695435 e!4683152)))

(declare-fun c!1458123 () Bool)

(assert (=> d!2373500 (= c!1458123 (is-Nil!74463 (list!19440 (left!56896 lt!2695319))))))

(assert (=> d!2373500 (= (size!43286 (list!19440 (left!56896 lt!2695319))) lt!2695435)))

(declare-fun b!7936727 () Bool)

(assert (=> b!7936727 (= e!4683152 0)))

(declare-fun b!7936728 () Bool)

(assert (=> b!7936728 (= e!4683152 (+ 1 (size!43286 (t!390288 (list!19440 (left!56896 lt!2695319))))))))

(assert (= (and d!2373500 c!1458123) b!7936727))

(assert (= (and d!2373500 (not c!1458123)) b!7936728))

(declare-fun m!8325118 () Bool)

(assert (=> b!7936728 m!8325118))

(assert (=> b!7936414 d!2373500))

(declare-fun d!2373502 () Bool)

(declare-fun lt!2695436 () Int)

(assert (=> d!2373502 (>= lt!2695436 0)))

(declare-fun e!4683153 () Int)

(assert (=> d!2373502 (= lt!2695436 e!4683153)))

(declare-fun c!1458124 () Bool)

(assert (=> d!2373502 (= c!1458124 (is-Nil!74463 (list!19440 (right!57226 lt!2695319))))))

(assert (=> d!2373502 (= (size!43286 (list!19440 (right!57226 lt!2695319))) lt!2695436)))

(declare-fun b!7936729 () Bool)

(assert (=> b!7936729 (= e!4683153 0)))

(declare-fun b!7936730 () Bool)

(assert (=> b!7936730 (= e!4683153 (+ 1 (size!43286 (t!390288 (list!19440 (right!57226 lt!2695319))))))))

(assert (= (and d!2373502 c!1458124) b!7936729))

(assert (= (and d!2373502 (not c!1458124)) b!7936730))

(declare-fun m!8325120 () Bool)

(assert (=> b!7936730 m!8325120))

(assert (=> b!7936414 d!2373502))

(declare-fun d!2373504 () Bool)

(declare-fun lt!2695437 () Bool)

(assert (=> d!2373504 (= lt!2695437 (isEmpty!42805 (list!19440 (left!56896 (left!56896 t!4440)))))))

(assert (=> d!2373504 (= lt!2695437 (= (size!43285 (left!56896 (left!56896 t!4440))) 0))))

(assert (=> d!2373504 (= (isEmpty!42803 (left!56896 (left!56896 t!4440))) lt!2695437)))

(declare-fun bs!1969227 () Bool)

(assert (= bs!1969227 d!2373504))

(assert (=> bs!1969227 m!8324620))

(assert (=> bs!1969227 m!8324620))

(declare-fun m!8325122 () Bool)

(assert (=> bs!1969227 m!8325122))

(assert (=> bs!1969227 m!8324502))

(assert (=> b!7936345 d!2373504))

(declare-fun d!2373506 () Bool)

(declare-fun c!1458125 () Bool)

(assert (=> d!2373506 (= c!1458125 (is-Node!15917 (left!56896 (left!56896 (right!57226 t!4440)))))))

(declare-fun e!4683154 () Bool)

(assert (=> d!2373506 (= (inv!95801 (left!56896 (left!56896 (right!57226 t!4440)))) e!4683154)))

(declare-fun b!7936731 () Bool)

(assert (=> b!7936731 (= e!4683154 (inv!95805 (left!56896 (left!56896 (right!57226 t!4440)))))))

(declare-fun b!7936732 () Bool)

(declare-fun e!4683155 () Bool)

(assert (=> b!7936732 (= e!4683154 e!4683155)))

(declare-fun res!3148931 () Bool)

(assert (=> b!7936732 (= res!3148931 (not (is-Leaf!30257 (left!56896 (left!56896 (right!57226 t!4440))))))))

(assert (=> b!7936732 (=> res!3148931 e!4683155)))

(declare-fun b!7936733 () Bool)

(assert (=> b!7936733 (= e!4683155 (inv!95806 (left!56896 (left!56896 (right!57226 t!4440)))))))

(assert (= (and d!2373506 c!1458125) b!7936731))

(assert (= (and d!2373506 (not c!1458125)) b!7936732))

(assert (= (and b!7936732 (not res!3148931)) b!7936733))

(declare-fun m!8325124 () Bool)

(assert (=> b!7936731 m!8325124))

(declare-fun m!8325126 () Bool)

(assert (=> b!7936733 m!8325126))

(assert (=> b!7936453 d!2373506))

(declare-fun d!2373508 () Bool)

(declare-fun c!1458126 () Bool)

(assert (=> d!2373508 (= c!1458126 (is-Node!15917 (right!57226 (left!56896 (right!57226 t!4440)))))))

(declare-fun e!4683156 () Bool)

(assert (=> d!2373508 (= (inv!95801 (right!57226 (left!56896 (right!57226 t!4440)))) e!4683156)))

(declare-fun b!7936734 () Bool)

(assert (=> b!7936734 (= e!4683156 (inv!95805 (right!57226 (left!56896 (right!57226 t!4440)))))))

(declare-fun b!7936735 () Bool)

(declare-fun e!4683157 () Bool)

(assert (=> b!7936735 (= e!4683156 e!4683157)))

(declare-fun res!3148932 () Bool)

(assert (=> b!7936735 (= res!3148932 (not (is-Leaf!30257 (right!57226 (left!56896 (right!57226 t!4440))))))))

(assert (=> b!7936735 (=> res!3148932 e!4683157)))

(declare-fun b!7936736 () Bool)

(assert (=> b!7936736 (= e!4683157 (inv!95806 (right!57226 (left!56896 (right!57226 t!4440)))))))

(assert (= (and d!2373508 c!1458126) b!7936734))

(assert (= (and d!2373508 (not c!1458126)) b!7936735))

(assert (= (and b!7936735 (not res!3148932)) b!7936736))

(declare-fun m!8325128 () Bool)

(assert (=> b!7936734 m!8325128))

(declare-fun m!8325130 () Bool)

(assert (=> b!7936736 m!8325130))

(assert (=> b!7936453 d!2373508))

(declare-fun d!2373510 () Bool)

(assert (=> d!2373510 (= (isEmpty!42805 (list!19440 (right!57226 t!4440))) (is-Nil!74463 (list!19440 (right!57226 t!4440))))))

(assert (=> d!2373264 d!2373510))

(assert (=> d!2373264 d!2373300))

(assert (=> d!2373264 d!2373446))

(assert (=> b!7936384 d!2373496))

(declare-fun d!2373512 () Bool)

(declare-fun res!3148933 () Bool)

(declare-fun e!4683158 () Bool)

(assert (=> d!2373512 (=> (not res!3148933) (not e!4683158))))

(assert (=> d!2373512 (= res!3148933 (= (csize!32064 (right!57226 (right!57226 t!4440))) (+ (size!43285 (left!56896 (right!57226 (right!57226 t!4440)))) (size!43285 (right!57226 (right!57226 (right!57226 t!4440)))))))))

(assert (=> d!2373512 (= (inv!95805 (right!57226 (right!57226 t!4440))) e!4683158)))

(declare-fun b!7936737 () Bool)

(declare-fun res!3148934 () Bool)

(assert (=> b!7936737 (=> (not res!3148934) (not e!4683158))))

(assert (=> b!7936737 (= res!3148934 (and (not (= (left!56896 (right!57226 (right!57226 t!4440))) Empty!15917)) (not (= (right!57226 (right!57226 (right!57226 t!4440))) Empty!15917))))))

(declare-fun b!7936738 () Bool)

(declare-fun res!3148935 () Bool)

(assert (=> b!7936738 (=> (not res!3148935) (not e!4683158))))

(assert (=> b!7936738 (= res!3148935 (= (cheight!16128 (right!57226 (right!57226 t!4440))) (+ (max!0 (height!2230 (left!56896 (right!57226 (right!57226 t!4440)))) (height!2230 (right!57226 (right!57226 (right!57226 t!4440))))) 1)))))

(declare-fun b!7936739 () Bool)

(assert (=> b!7936739 (= e!4683158 (<= 0 (cheight!16128 (right!57226 (right!57226 t!4440)))))))

(assert (= (and d!2373512 res!3148933) b!7936737))

(assert (= (and b!7936737 res!3148934) b!7936738))

(assert (= (and b!7936738 res!3148935) b!7936739))

(declare-fun m!8325132 () Bool)

(assert (=> d!2373512 m!8325132))

(declare-fun m!8325134 () Bool)

(assert (=> d!2373512 m!8325134))

(assert (=> b!7936738 m!8324990))

(assert (=> b!7936738 m!8324992))

(assert (=> b!7936738 m!8324990))

(assert (=> b!7936738 m!8324992))

(declare-fun m!8325136 () Bool)

(assert (=> b!7936738 m!8325136))

(assert (=> b!7936365 d!2373512))

(declare-fun d!2373514 () Bool)

(declare-fun res!3148936 () Bool)

(declare-fun e!4683159 () Bool)

(assert (=> d!2373514 (=> (not res!3148936) (not e!4683159))))

(assert (=> d!2373514 (= res!3148936 (= (csize!32064 (right!57226 (left!56896 t!4440))) (+ (size!43285 (left!56896 (right!57226 (left!56896 t!4440)))) (size!43285 (right!57226 (right!57226 (left!56896 t!4440)))))))))

(assert (=> d!2373514 (= (inv!95805 (right!57226 (left!56896 t!4440))) e!4683159)))

(declare-fun b!7936740 () Bool)

(declare-fun res!3148937 () Bool)

(assert (=> b!7936740 (=> (not res!3148937) (not e!4683159))))

(assert (=> b!7936740 (= res!3148937 (and (not (= (left!56896 (right!57226 (left!56896 t!4440))) Empty!15917)) (not (= (right!57226 (right!57226 (left!56896 t!4440))) Empty!15917))))))

(declare-fun b!7936741 () Bool)

(declare-fun res!3148938 () Bool)

(assert (=> b!7936741 (=> (not res!3148938) (not e!4683159))))

(assert (=> b!7936741 (= res!3148938 (= (cheight!16128 (right!57226 (left!56896 t!4440))) (+ (max!0 (height!2230 (left!56896 (right!57226 (left!56896 t!4440)))) (height!2230 (right!57226 (right!57226 (left!56896 t!4440))))) 1)))))

(declare-fun b!7936742 () Bool)

(assert (=> b!7936742 (= e!4683159 (<= 0 (cheight!16128 (right!57226 (left!56896 t!4440)))))))

(assert (= (and d!2373514 res!3148936) b!7936740))

(assert (= (and b!7936740 res!3148937) b!7936741))

(assert (= (and b!7936741 res!3148938) b!7936742))

(declare-fun m!8325138 () Bool)

(assert (=> d!2373514 m!8325138))

(declare-fun m!8325140 () Bool)

(assert (=> d!2373514 m!8325140))

(declare-fun m!8325142 () Bool)

(assert (=> b!7936741 m!8325142))

(declare-fun m!8325144 () Bool)

(assert (=> b!7936741 m!8325144))

(assert (=> b!7936741 m!8325142))

(assert (=> b!7936741 m!8325144))

(declare-fun m!8325146 () Bool)

(assert (=> b!7936741 m!8325146))

(assert (=> b!7936409 d!2373514))

(declare-fun d!2373516 () Bool)

(declare-fun lt!2695438 () Bool)

(assert (=> d!2373516 (= lt!2695438 (isEmpty!42805 (list!19440 (right!57226 (right!57226 lt!2695319)))))))

(assert (=> d!2373516 (= lt!2695438 (= (size!43285 (right!57226 (right!57226 lt!2695319))) 0))))

(assert (=> d!2373516 (= (isEmpty!42803 (right!57226 (right!57226 lt!2695319))) lt!2695438)))

(declare-fun bs!1969228 () Bool)

(assert (= bs!1969228 d!2373516))

(assert (=> bs!1969228 m!8324602))

(assert (=> bs!1969228 m!8324602))

(declare-fun m!8325148 () Bool)

(assert (=> bs!1969228 m!8325148))

(declare-fun m!8325150 () Bool)

(assert (=> bs!1969228 m!8325150))

(assert (=> b!7936304 d!2373516))

(declare-fun d!2373518 () Bool)

(declare-fun res!3148940 () Bool)

(declare-fun e!4683161 () Bool)

(assert (=> d!2373518 (=> res!3148940 e!4683161)))

(assert (=> d!2373518 (= res!3148940 (not (is-Node!15917 (left!56896 (left!56896 lt!2695319)))))))

(assert (=> d!2373518 (= (isBalanced!4543 (left!56896 (left!56896 lt!2695319))) e!4683161)))

(declare-fun b!7936743 () Bool)

(declare-fun res!3148944 () Bool)

(declare-fun e!4683160 () Bool)

(assert (=> b!7936743 (=> (not res!3148944) (not e!4683160))))

(assert (=> b!7936743 (= res!3148944 (not (isEmpty!42803 (left!56896 (left!56896 (left!56896 lt!2695319))))))))

(declare-fun b!7936744 () Bool)

(assert (=> b!7936744 (= e!4683161 e!4683160)))

(declare-fun res!3148941 () Bool)

(assert (=> b!7936744 (=> (not res!3148941) (not e!4683160))))

(assert (=> b!7936744 (= res!3148941 (<= (- 1) (- (height!2230 (left!56896 (left!56896 (left!56896 lt!2695319)))) (height!2230 (right!57226 (left!56896 (left!56896 lt!2695319)))))))))

(declare-fun b!7936745 () Bool)

(declare-fun res!3148943 () Bool)

(assert (=> b!7936745 (=> (not res!3148943) (not e!4683160))))

(assert (=> b!7936745 (= res!3148943 (<= (- (height!2230 (left!56896 (left!56896 (left!56896 lt!2695319)))) (height!2230 (right!57226 (left!56896 (left!56896 lt!2695319))))) 1))))

(declare-fun b!7936746 () Bool)

(assert (=> b!7936746 (= e!4683160 (not (isEmpty!42803 (right!57226 (left!56896 (left!56896 lt!2695319))))))))

(declare-fun b!7936747 () Bool)

(declare-fun res!3148942 () Bool)

(assert (=> b!7936747 (=> (not res!3148942) (not e!4683160))))

(assert (=> b!7936747 (= res!3148942 (isBalanced!4543 (right!57226 (left!56896 (left!56896 lt!2695319)))))))

(declare-fun b!7936748 () Bool)

(declare-fun res!3148939 () Bool)

(assert (=> b!7936748 (=> (not res!3148939) (not e!4683160))))

(assert (=> b!7936748 (= res!3148939 (isBalanced!4543 (left!56896 (left!56896 (left!56896 lt!2695319)))))))

(assert (= (and d!2373518 (not res!3148940)) b!7936744))

(assert (= (and b!7936744 res!3148941) b!7936745))

(assert (= (and b!7936745 res!3148943) b!7936748))

(assert (= (and b!7936748 res!3148939) b!7936747))

(assert (= (and b!7936747 res!3148942) b!7936743))

(assert (= (and b!7936743 res!3148944) b!7936746))

(declare-fun m!8325152 () Bool)

(assert (=> b!7936745 m!8325152))

(declare-fun m!8325154 () Bool)

(assert (=> b!7936745 m!8325154))

(declare-fun m!8325156 () Bool)

(assert (=> b!7936748 m!8325156))

(declare-fun m!8325158 () Bool)

(assert (=> b!7936746 m!8325158))

(assert (=> b!7936744 m!8325152))

(assert (=> b!7936744 m!8325154))

(declare-fun m!8325160 () Bool)

(assert (=> b!7936743 m!8325160))

(declare-fun m!8325162 () Bool)

(assert (=> b!7936747 m!8325162))

(assert (=> b!7936318 d!2373518))

(declare-fun d!2373520 () Bool)

(assert (=> d!2373520 (= (list!19442 (xs!19313 lt!2695333)) (innerList!16005 (xs!19313 lt!2695333)))))

(assert (=> b!7936321 d!2373520))

(declare-fun d!2373522 () Bool)

(declare-fun lt!2695439 () Int)

(assert (=> d!2373522 (>= lt!2695439 0)))

(declare-fun e!4683162 () Int)

(assert (=> d!2373522 (= lt!2695439 e!4683162)))

(declare-fun c!1458127 () Bool)

(assert (=> d!2373522 (= c!1458127 (is-Nil!74463 (list!19442 (xs!19313 (left!56896 t!4440)))))))

(assert (=> d!2373522 (= (size!43286 (list!19442 (xs!19313 (left!56896 t!4440)))) lt!2695439)))

(declare-fun b!7936749 () Bool)

(assert (=> b!7936749 (= e!4683162 0)))

(declare-fun b!7936750 () Bool)

(assert (=> b!7936750 (= e!4683162 (+ 1 (size!43286 (t!390288 (list!19442 (xs!19313 (left!56896 t!4440)))))))))

(assert (= (and d!2373522 c!1458127) b!7936749))

(assert (= (and d!2373522 (not c!1458127)) b!7936750))

(declare-fun m!8325164 () Bool)

(assert (=> b!7936750 m!8325164))

(assert (=> b!7936311 d!2373522))

(assert (=> b!7936311 d!2373452))

(declare-fun d!2373524 () Bool)

(assert (=> d!2373524 (= (max!0 (height!2230 (left!56896 (left!56896 t!4440))) (height!2230 (right!57226 (left!56896 t!4440)))) (ite (< (height!2230 (left!56896 (left!56896 t!4440))) (height!2230 (right!57226 (left!56896 t!4440)))) (height!2230 (right!57226 (left!56896 t!4440))) (height!2230 (left!56896 (left!56896 t!4440)))))))

(assert (=> b!7936360 d!2373524))

(assert (=> b!7936360 d!2373420))

(assert (=> b!7936360 d!2373422))

(declare-fun d!2373526 () Bool)

(declare-fun lt!2695440 () Int)

(assert (=> d!2373526 (>= lt!2695440 0)))

(declare-fun e!4683163 () Int)

(assert (=> d!2373526 (= lt!2695440 e!4683163)))

(declare-fun c!1458128 () Bool)

(assert (=> d!2373526 (= c!1458128 (is-Nil!74463 lt!2695379))))

(assert (=> d!2373526 (= (size!43286 lt!2695379) lt!2695440)))

(declare-fun b!7936751 () Bool)

(assert (=> b!7936751 (= e!4683163 0)))

(declare-fun b!7936752 () Bool)

(assert (=> b!7936752 (= e!4683163 (+ 1 (size!43286 (t!390288 lt!2695379))))))

(assert (= (and d!2373526 c!1458128) b!7936751))

(assert (= (and d!2373526 (not c!1458128)) b!7936752))

(declare-fun m!8325166 () Bool)

(assert (=> b!7936752 m!8325166))

(assert (=> b!7936404 d!2373526))

(assert (=> b!7936404 d!2373262))

(declare-fun d!2373528 () Bool)

(declare-fun lt!2695441 () Int)

(assert (=> d!2373528 (>= lt!2695441 0)))

(declare-fun e!4683164 () Int)

(assert (=> d!2373528 (= lt!2695441 e!4683164)))

(declare-fun c!1458129 () Bool)

(assert (=> d!2373528 (= c!1458129 (is-Nil!74463 (Cons!74463 v!5484 Nil!74463)))))

(assert (=> d!2373528 (= (size!43286 (Cons!74463 v!5484 Nil!74463)) lt!2695441)))

(declare-fun b!7936753 () Bool)

(assert (=> b!7936753 (= e!4683164 0)))

(declare-fun b!7936754 () Bool)

(assert (=> b!7936754 (= e!4683164 (+ 1 (size!43286 (t!390288 (Cons!74463 v!5484 Nil!74463)))))))

(assert (= (and d!2373528 c!1458129) b!7936753))

(assert (= (and d!2373528 (not c!1458129)) b!7936754))

(declare-fun m!8325168 () Bool)

(assert (=> b!7936754 m!8325168))

(assert (=> b!7936404 d!2373528))

(declare-fun d!2373530 () Bool)

(declare-fun lt!2695442 () Int)

(assert (=> d!2373530 (>= lt!2695442 0)))

(declare-fun e!4683165 () Int)

(assert (=> d!2373530 (= lt!2695442 e!4683165)))

(declare-fun c!1458130 () Bool)

(assert (=> d!2373530 (= c!1458130 (is-Nil!74463 (list!19440 (Leaf!30257 (fill!300 1 v!5484) 1))))))

(assert (=> d!2373530 (= (size!43286 (list!19440 (Leaf!30257 (fill!300 1 v!5484) 1))) lt!2695442)))

(declare-fun b!7936755 () Bool)

(assert (=> b!7936755 (= e!4683165 0)))

(declare-fun b!7936756 () Bool)

(assert (=> b!7936756 (= e!4683165 (+ 1 (size!43286 (t!390288 (list!19440 (Leaf!30257 (fill!300 1 v!5484) 1))))))))

(assert (= (and d!2373530 c!1458130) b!7936755))

(assert (= (and d!2373530 (not c!1458130)) b!7936756))

(declare-fun m!8325170 () Bool)

(assert (=> b!7936756 m!8325170))

(assert (=> d!2373272 d!2373530))

(assert (=> d!2373272 d!2373228))

(declare-fun d!2373532 () Bool)

(declare-fun lt!2695443 () Bool)

(assert (=> d!2373532 (= lt!2695443 (isEmpty!42805 (list!19440 (right!57226 (right!57226 t!4440)))))))

(assert (=> d!2373532 (= lt!2695443 (= (size!43285 (right!57226 (right!57226 t!4440))) 0))))

(assert (=> d!2373532 (= (isEmpty!42803 (right!57226 (right!57226 t!4440))) lt!2695443)))

(declare-fun bs!1969229 () Bool)

(assert (= bs!1969229 d!2373532))

(assert (=> bs!1969229 m!8324628))

(assert (=> bs!1969229 m!8324628))

(declare-fun m!8325172 () Bool)

(assert (=> bs!1969229 m!8325172))

(assert (=> bs!1969229 m!8324534))

(assert (=> b!7936342 d!2373532))

(assert (=> b!7936211 d!2373240))

(assert (=> b!7936211 d!2373242))

(declare-fun d!2373534 () Bool)

(assert (=> d!2373534 (= (inv!95802 (xs!19313 (left!56896 (left!56896 t!4440)))) (<= (size!43286 (innerList!16005 (xs!19313 (left!56896 (left!56896 t!4440))))) 2147483647))))

(declare-fun bs!1969230 () Bool)

(assert (= bs!1969230 d!2373534))

(declare-fun m!8325174 () Bool)

(assert (=> bs!1969230 m!8325174))

(assert (=> b!7936446 d!2373534))

(assert (=> b!7936314 d!2373460))

(assert (=> b!7936314 d!2373462))

(declare-fun d!2373536 () Bool)

(declare-fun lt!2695444 () (_ BitVec 32))

(assert (=> d!2373536 (and (bvsle #b00000000000000000000000000000000 lt!2695444) (bvsle lt!2695444 #b01111111111111111111111111111111))))

(declare-fun e!4683166 () (_ BitVec 32))

(assert (=> d!2373536 (= lt!2695444 e!4683166)))

(declare-fun c!1458131 () Bool)

(assert (=> d!2373536 (= c!1458131 (is-Nil!74463 lt!2695359))))

(assert (=> d!2373536 (= (isize!130 lt!2695359) lt!2695444)))

(declare-fun b!7936757 () Bool)

(assert (=> b!7936757 (= e!4683166 #b00000000000000000000000000000000)))

(declare-fun b!7936758 () Bool)

(declare-fun lt!2695445 () (_ BitVec 32))

(assert (=> b!7936758 (= e!4683166 (ite (= lt!2695445 #b01111111111111111111111111111111) lt!2695445 (bvadd #b00000000000000000000000000000001 lt!2695445)))))

(assert (=> b!7936758 (= lt!2695445 (isize!130 (t!390288 lt!2695359)))))

(assert (= (and d!2373536 c!1458131) b!7936757))

(assert (= (and d!2373536 (not c!1458131)) b!7936758))

(declare-fun m!8325176 () Bool)

(assert (=> b!7936758 m!8325176))

(assert (=> bm!735667 d!2373536))

(declare-fun d!2373538 () Bool)

(assert (=> d!2373538 (= (list!19442 (xs!19313 (left!56896 lt!2695319))) (innerList!16005 (xs!19313 (left!56896 lt!2695319))))))

(assert (=> b!7936418 d!2373538))

(declare-fun d!2373540 () Bool)

(declare-fun res!3148946 () Bool)

(declare-fun e!4683168 () Bool)

(assert (=> d!2373540 (=> res!3148946 e!4683168)))

(assert (=> d!2373540 (= res!3148946 (not (is-Node!15917 (right!57226 (right!57226 lt!2695319)))))))

(assert (=> d!2373540 (= (isBalanced!4543 (right!57226 (right!57226 lt!2695319))) e!4683168)))

(declare-fun b!7936759 () Bool)

(declare-fun res!3148950 () Bool)

(declare-fun e!4683167 () Bool)

(assert (=> b!7936759 (=> (not res!3148950) (not e!4683167))))

(assert (=> b!7936759 (= res!3148950 (not (isEmpty!42803 (left!56896 (right!57226 (right!57226 lt!2695319))))))))

(declare-fun b!7936760 () Bool)

(assert (=> b!7936760 (= e!4683168 e!4683167)))

(declare-fun res!3148947 () Bool)

(assert (=> b!7936760 (=> (not res!3148947) (not e!4683167))))

(assert (=> b!7936760 (= res!3148947 (<= (- 1) (- (height!2230 (left!56896 (right!57226 (right!57226 lt!2695319)))) (height!2230 (right!57226 (right!57226 (right!57226 lt!2695319)))))))))

(declare-fun b!7936761 () Bool)

(declare-fun res!3148949 () Bool)

(assert (=> b!7936761 (=> (not res!3148949) (not e!4683167))))

(assert (=> b!7936761 (= res!3148949 (<= (- (height!2230 (left!56896 (right!57226 (right!57226 lt!2695319)))) (height!2230 (right!57226 (right!57226 (right!57226 lt!2695319))))) 1))))

(declare-fun b!7936762 () Bool)

(assert (=> b!7936762 (= e!4683167 (not (isEmpty!42803 (right!57226 (right!57226 (right!57226 lt!2695319))))))))

(declare-fun b!7936763 () Bool)

(declare-fun res!3148948 () Bool)

(assert (=> b!7936763 (=> (not res!3148948) (not e!4683167))))

(assert (=> b!7936763 (= res!3148948 (isBalanced!4543 (right!57226 (right!57226 (right!57226 lt!2695319)))))))

(declare-fun b!7936764 () Bool)

(declare-fun res!3148945 () Bool)

(assert (=> b!7936764 (=> (not res!3148945) (not e!4683167))))

(assert (=> b!7936764 (= res!3148945 (isBalanced!4543 (left!56896 (right!57226 (right!57226 lt!2695319)))))))

(assert (= (and d!2373540 (not res!3148946)) b!7936760))

(assert (= (and b!7936760 res!3148947) b!7936761))

(assert (= (and b!7936761 res!3148949) b!7936764))

(assert (= (and b!7936764 res!3148945) b!7936763))

(assert (= (and b!7936763 res!3148948) b!7936759))

(assert (= (and b!7936759 res!3148950) b!7936762))

(declare-fun m!8325178 () Bool)

(assert (=> b!7936761 m!8325178))

(declare-fun m!8325180 () Bool)

(assert (=> b!7936761 m!8325180))

(declare-fun m!8325182 () Bool)

(assert (=> b!7936764 m!8325182))

(declare-fun m!8325184 () Bool)

(assert (=> b!7936762 m!8325184))

(assert (=> b!7936760 m!8325178))

(assert (=> b!7936760 m!8325180))

(declare-fun m!8325186 () Bool)

(assert (=> b!7936759 m!8325186))

(declare-fun m!8325188 () Bool)

(assert (=> b!7936763 m!8325188))

(assert (=> b!7936305 d!2373540))

(declare-fun d!2373542 () Bool)

(declare-fun e!4683170 () Bool)

(assert (=> d!2373542 e!4683170))

(declare-fun res!3148951 () Bool)

(assert (=> d!2373542 (=> (not res!3148951) (not e!4683170))))

(declare-fun lt!2695446 () List!74587)

(assert (=> d!2373542 (= res!3148951 (= (content!15796 lt!2695446) (ite (<= (- 1 1) 0) (as set.empty (Set T!145914)) (set.insert v!5484 (as set.empty (Set T!145914))))))))

(declare-fun e!4683169 () List!74587)

(assert (=> d!2373542 (= lt!2695446 e!4683169)))

(declare-fun c!1458132 () Bool)

(assert (=> d!2373542 (= c!1458132 (<= (- 1 1) 0))))

(assert (=> d!2373542 (= (fill!302 (- 1 1) v!5484) lt!2695446)))

(declare-fun b!7936765 () Bool)

(assert (=> b!7936765 (= e!4683169 Nil!74463)))

(declare-fun b!7936766 () Bool)

(assert (=> b!7936766 (= e!4683169 (Cons!74463 v!5484 (fill!302 (- (- 1 1) 1) v!5484)))))

(declare-fun b!7936767 () Bool)

(assert (=> b!7936767 (= e!4683170 (= (size!43286 lt!2695446) (ite (<= (- 1 1) 0) 0 (- 1 1))))))

(assert (= (and d!2373542 c!1458132) b!7936765))

(assert (= (and d!2373542 (not c!1458132)) b!7936766))

(assert (= (and d!2373542 res!3148951) b!7936767))

(declare-fun m!8325190 () Bool)

(assert (=> d!2373542 m!8325190))

(assert (=> d!2373542 m!8324268))

(declare-fun m!8325192 () Bool)

(assert (=> b!7936766 m!8325192))

(declare-fun m!8325194 () Bool)

(assert (=> b!7936767 m!8325194))

(assert (=> b!7936296 d!2373542))

(declare-fun d!2373544 () Bool)

(declare-fun res!3148953 () Bool)

(declare-fun e!4683172 () Bool)

(assert (=> d!2373544 (=> res!3148953 e!4683172)))

(assert (=> d!2373544 (= res!3148953 (not (is-Node!15917 (left!56896 (left!56896 t!4440)))))))

(assert (=> d!2373544 (= (isBalanced!4543 (left!56896 (left!56896 t!4440))) e!4683172)))

(declare-fun b!7936768 () Bool)

(declare-fun res!3148957 () Bool)

(declare-fun e!4683171 () Bool)

(assert (=> b!7936768 (=> (not res!3148957) (not e!4683171))))

(assert (=> b!7936768 (= res!3148957 (not (isEmpty!42803 (left!56896 (left!56896 (left!56896 t!4440))))))))

(declare-fun b!7936769 () Bool)

(assert (=> b!7936769 (= e!4683172 e!4683171)))

(declare-fun res!3148954 () Bool)

(assert (=> b!7936769 (=> (not res!3148954) (not e!4683171))))

(assert (=> b!7936769 (= res!3148954 (<= (- 1) (- (height!2230 (left!56896 (left!56896 (left!56896 t!4440)))) (height!2230 (right!57226 (left!56896 (left!56896 t!4440)))))))))

(declare-fun b!7936770 () Bool)

(declare-fun res!3148956 () Bool)

(assert (=> b!7936770 (=> (not res!3148956) (not e!4683171))))

(assert (=> b!7936770 (= res!3148956 (<= (- (height!2230 (left!56896 (left!56896 (left!56896 t!4440)))) (height!2230 (right!57226 (left!56896 (left!56896 t!4440))))) 1))))

(declare-fun b!7936771 () Bool)

(assert (=> b!7936771 (= e!4683171 (not (isEmpty!42803 (right!57226 (left!56896 (left!56896 t!4440))))))))

(declare-fun b!7936772 () Bool)

(declare-fun res!3148955 () Bool)

(assert (=> b!7936772 (=> (not res!3148955) (not e!4683171))))

(assert (=> b!7936772 (= res!3148955 (isBalanced!4543 (right!57226 (left!56896 (left!56896 t!4440)))))))

(declare-fun b!7936773 () Bool)

(declare-fun res!3148952 () Bool)

(assert (=> b!7936773 (=> (not res!3148952) (not e!4683171))))

(assert (=> b!7936773 (= res!3148952 (isBalanced!4543 (left!56896 (left!56896 (left!56896 t!4440)))))))

(assert (= (and d!2373544 (not res!3148953)) b!7936769))

(assert (= (and b!7936769 res!3148954) b!7936770))

(assert (= (and b!7936770 res!3148956) b!7936773))

(assert (= (and b!7936773 res!3148952) b!7936772))

(assert (= (and b!7936772 res!3148955) b!7936768))

(assert (= (and b!7936768 res!3148957) b!7936771))

(declare-fun m!8325196 () Bool)

(assert (=> b!7936770 m!8325196))

(declare-fun m!8325198 () Bool)

(assert (=> b!7936770 m!8325198))

(declare-fun m!8325200 () Bool)

(assert (=> b!7936773 m!8325200))

(declare-fun m!8325202 () Bool)

(assert (=> b!7936771 m!8325202))

(assert (=> b!7936769 m!8325196))

(assert (=> b!7936769 m!8325198))

(declare-fun m!8325204 () Bool)

(assert (=> b!7936768 m!8325204))

(declare-fun m!8325206 () Bool)

(assert (=> b!7936772 m!8325206))

(assert (=> b!7936350 d!2373544))

(assert (=> b!7936434 d!2373434))

(declare-fun b!7936774 () Bool)

(declare-fun e!4683173 () List!74587)

(assert (=> b!7936774 (= e!4683173 (list!19440 (right!57226 lt!2695319)))))

(declare-fun b!7936775 () Bool)

(assert (=> b!7936775 (= e!4683173 (Cons!74463 (h!80911 (t!390288 (list!19440 (left!56896 lt!2695319)))) (++!18272 (t!390288 (t!390288 (list!19440 (left!56896 lt!2695319)))) (list!19440 (right!57226 lt!2695319)))))))

(declare-fun b!7936777 () Bool)

(declare-fun e!4683174 () Bool)

(declare-fun lt!2695447 () List!74587)

(assert (=> b!7936777 (= e!4683174 (or (not (= (list!19440 (right!57226 lt!2695319)) Nil!74463)) (= lt!2695447 (t!390288 (list!19440 (left!56896 lt!2695319))))))))

(declare-fun d!2373546 () Bool)

(assert (=> d!2373546 e!4683174))

(declare-fun res!3148958 () Bool)

(assert (=> d!2373546 (=> (not res!3148958) (not e!4683174))))

(assert (=> d!2373546 (= res!3148958 (= (content!15796 lt!2695447) (set.union (content!15796 (t!390288 (list!19440 (left!56896 lt!2695319)))) (content!15796 (list!19440 (right!57226 lt!2695319))))))))

(assert (=> d!2373546 (= lt!2695447 e!4683173)))

(declare-fun c!1458133 () Bool)

(assert (=> d!2373546 (= c!1458133 (is-Nil!74463 (t!390288 (list!19440 (left!56896 lt!2695319)))))))

(assert (=> d!2373546 (= (++!18272 (t!390288 (list!19440 (left!56896 lt!2695319))) (list!19440 (right!57226 lt!2695319))) lt!2695447)))

(declare-fun b!7936776 () Bool)

(declare-fun res!3148959 () Bool)

(assert (=> b!7936776 (=> (not res!3148959) (not e!4683174))))

(assert (=> b!7936776 (= res!3148959 (= (size!43286 lt!2695447) (+ (size!43286 (t!390288 (list!19440 (left!56896 lt!2695319)))) (size!43286 (list!19440 (right!57226 lt!2695319))))))))

(assert (= (and d!2373546 c!1458133) b!7936774))

(assert (= (and d!2373546 (not c!1458133)) b!7936775))

(assert (= (and d!2373546 res!3148958) b!7936776))

(assert (= (and b!7936776 res!3148959) b!7936777))

(assert (=> b!7936775 m!8324260))

(declare-fun m!8325208 () Bool)

(assert (=> b!7936775 m!8325208))

(declare-fun m!8325210 () Bool)

(assert (=> d!2373546 m!8325210))

(assert (=> d!2373546 m!8324930))

(assert (=> d!2373546 m!8324260))

(assert (=> d!2373546 m!8324582))

(declare-fun m!8325212 () Bool)

(assert (=> b!7936776 m!8325212))

(assert (=> b!7936776 m!8325118))

(assert (=> b!7936776 m!8324260))

(assert (=> b!7936776 m!8324588))

(assert (=> b!7936413 d!2373546))

(declare-fun d!2373548 () Bool)

(declare-fun c!1458134 () Bool)

(assert (=> d!2373548 (= c!1458134 (is-Nil!74463 lt!2695354))))

(declare-fun e!4683175 () (Set T!145914))

(assert (=> d!2373548 (= (content!15796 lt!2695354) e!4683175)))

(declare-fun b!7936778 () Bool)

(assert (=> b!7936778 (= e!4683175 (as set.empty (Set T!145914)))))

(declare-fun b!7936779 () Bool)

(assert (=> b!7936779 (= e!4683175 (set.union (set.insert (h!80911 lt!2695354) (as set.empty (Set T!145914))) (content!15796 (t!390288 lt!2695354))))))

(assert (= (and d!2373548 c!1458134) b!7936778))

(assert (= (and d!2373548 (not c!1458134)) b!7936779))

(declare-fun m!8325214 () Bool)

(assert (=> b!7936779 m!8325214))

(declare-fun m!8325216 () Bool)

(assert (=> b!7936779 m!8325216))

(assert (=> d!2373214 d!2373548))

(declare-fun d!2373550 () Bool)

(assert (=> d!2373550 (= (height!2230 (left!56896 (right!57226 lt!2695319))) (ite (is-Empty!15917 (left!56896 (right!57226 lt!2695319))) 0 (ite (is-Leaf!30257 (left!56896 (right!57226 lt!2695319))) 1 (cheight!16128 (left!56896 (right!57226 lt!2695319))))))))

(assert (=> b!7936303 d!2373550))

(declare-fun d!2373552 () Bool)

(assert (=> d!2373552 (= (height!2230 (right!57226 (right!57226 lt!2695319))) (ite (is-Empty!15917 (right!57226 (right!57226 lt!2695319))) 0 (ite (is-Leaf!30257 (right!57226 (right!57226 lt!2695319))) 1 (cheight!16128 (right!57226 (right!57226 lt!2695319))))))))

(assert (=> b!7936303 d!2373552))

(declare-fun d!2373554 () Bool)

(assert (=> d!2373554 (= (isEmpty!42805 (list!19440 (right!57226 lt!2695319))) (is-Nil!74463 (list!19440 (right!57226 lt!2695319))))))

(assert (=> d!2373208 d!2373554))

(assert (=> d!2373208 d!2373292))

(declare-fun d!2373556 () Bool)

(declare-fun lt!2695448 () Int)

(assert (=> d!2373556 (= lt!2695448 (size!43286 (list!19440 (right!57226 lt!2695319))))))

(assert (=> d!2373556 (= lt!2695448 (ite (is-Empty!15917 (right!57226 lt!2695319)) 0 (ite (is-Leaf!30257 (right!57226 lt!2695319)) (csize!32065 (right!57226 lt!2695319)) (csize!32064 (right!57226 lt!2695319)))))))

(assert (=> d!2373556 (= (size!43285 (right!57226 lt!2695319)) lt!2695448)))

(declare-fun bs!1969231 () Bool)

(assert (= bs!1969231 d!2373556))

(assert (=> bs!1969231 m!8324260))

(assert (=> bs!1969231 m!8324260))

(assert (=> bs!1969231 m!8324588))

(assert (=> d!2373208 d!2373556))

(declare-fun d!2373558 () Bool)

(assert (=> d!2373558 (= (max!0 (height!2230 (left!56896 t!4440)) (height!2230 (right!57226 t!4440))) (ite (< (height!2230 (left!56896 t!4440)) (height!2230 (right!57226 t!4440))) (height!2230 (right!57226 t!4440)) (height!2230 (left!56896 t!4440))))))

(assert (=> b!7936400 d!2373558))

(assert (=> b!7936400 d!2373252))

(assert (=> b!7936400 d!2373254))

(declare-fun d!2373560 () Bool)

(declare-fun lt!2695449 () Bool)

(assert (=> d!2373560 (= lt!2695449 (isEmpty!42805 (list!19440 (right!57226 (left!56896 t!4440)))))))

(assert (=> d!2373560 (= lt!2695449 (= (size!43285 (right!57226 (left!56896 t!4440))) 0))))

(assert (=> d!2373560 (= (isEmpty!42803 (right!57226 (left!56896 t!4440))) lt!2695449)))

(declare-fun bs!1969232 () Bool)

(assert (= bs!1969232 d!2373560))

(assert (=> bs!1969232 m!8324622))

(assert (=> bs!1969232 m!8324622))

(declare-fun m!8325218 () Bool)

(assert (=> bs!1969232 m!8325218))

(assert (=> bs!1969232 m!8324504))

(assert (=> b!7936348 d!2373560))

(declare-fun d!2373562 () Bool)

(declare-fun res!3148961 () Bool)

(declare-fun e!4683177 () Bool)

(assert (=> d!2373562 (=> res!3148961 e!4683177)))

(assert (=> d!2373562 (= res!3148961 (not (is-Node!15917 (right!57226 (left!56896 lt!2695319)))))))

(assert (=> d!2373562 (= (isBalanced!4543 (right!57226 (left!56896 lt!2695319))) e!4683177)))

(declare-fun b!7936780 () Bool)

(declare-fun res!3148965 () Bool)

(declare-fun e!4683176 () Bool)

(assert (=> b!7936780 (=> (not res!3148965) (not e!4683176))))

(assert (=> b!7936780 (= res!3148965 (not (isEmpty!42803 (left!56896 (right!57226 (left!56896 lt!2695319))))))))

(declare-fun b!7936781 () Bool)

(assert (=> b!7936781 (= e!4683177 e!4683176)))

(declare-fun res!3148962 () Bool)

(assert (=> b!7936781 (=> (not res!3148962) (not e!4683176))))

(assert (=> b!7936781 (= res!3148962 (<= (- 1) (- (height!2230 (left!56896 (right!57226 (left!56896 lt!2695319)))) (height!2230 (right!57226 (right!57226 (left!56896 lt!2695319)))))))))

(declare-fun b!7936782 () Bool)

(declare-fun res!3148964 () Bool)

(assert (=> b!7936782 (=> (not res!3148964) (not e!4683176))))

(assert (=> b!7936782 (= res!3148964 (<= (- (height!2230 (left!56896 (right!57226 (left!56896 lt!2695319)))) (height!2230 (right!57226 (right!57226 (left!56896 lt!2695319))))) 1))))

(declare-fun b!7936783 () Bool)

(assert (=> b!7936783 (= e!4683176 (not (isEmpty!42803 (right!57226 (right!57226 (left!56896 lt!2695319))))))))

(declare-fun b!7936784 () Bool)

(declare-fun res!3148963 () Bool)

(assert (=> b!7936784 (=> (not res!3148963) (not e!4683176))))

(assert (=> b!7936784 (= res!3148963 (isBalanced!4543 (right!57226 (right!57226 (left!56896 lt!2695319)))))))

(declare-fun b!7936785 () Bool)

(declare-fun res!3148960 () Bool)

(assert (=> b!7936785 (=> (not res!3148960) (not e!4683176))))

(assert (=> b!7936785 (= res!3148960 (isBalanced!4543 (left!56896 (right!57226 (left!56896 lt!2695319)))))))

(assert (= (and d!2373562 (not res!3148961)) b!7936781))

(assert (= (and b!7936781 res!3148962) b!7936782))

(assert (= (and b!7936782 res!3148964) b!7936785))

(assert (= (and b!7936785 res!3148960) b!7936784))

(assert (= (and b!7936784 res!3148963) b!7936780))

(assert (= (and b!7936780 res!3148965) b!7936783))

(declare-fun m!8325220 () Bool)

(assert (=> b!7936782 m!8325220))

(declare-fun m!8325222 () Bool)

(assert (=> b!7936782 m!8325222))

(declare-fun m!8325224 () Bool)

(assert (=> b!7936785 m!8325224))

(declare-fun m!8325226 () Bool)

(assert (=> b!7936783 m!8325226))

(assert (=> b!7936781 m!8325220))

(assert (=> b!7936781 m!8325222))

(declare-fun m!8325228 () Bool)

(assert (=> b!7936780 m!8325228))

(declare-fun m!8325230 () Bool)

(assert (=> b!7936784 m!8325230))

(assert (=> b!7936317 d!2373562))

(assert (=> b!7936403 d!2373426))

(declare-fun d!2373564 () Bool)

(assert (=> d!2373564 (= (height!2230 (left!56896 (right!57226 t!4440))) (ite (is-Empty!15917 (left!56896 (right!57226 t!4440))) 0 (ite (is-Leaf!30257 (left!56896 (right!57226 t!4440))) 1 (cheight!16128 (left!56896 (right!57226 t!4440))))))))

(assert (=> b!7936341 d!2373564))

(declare-fun d!2373566 () Bool)

(assert (=> d!2373566 (= (height!2230 (right!57226 (right!57226 t!4440))) (ite (is-Empty!15917 (right!57226 (right!57226 t!4440))) 0 (ite (is-Leaf!30257 (right!57226 (right!57226 t!4440))) 1 (cheight!16128 (right!57226 (right!57226 t!4440))))))))

(assert (=> b!7936341 d!2373566))

(declare-fun d!2373568 () Bool)

(declare-fun lt!2695450 () Int)

(assert (=> d!2373568 (>= lt!2695450 0)))

(declare-fun e!4683178 () Int)

(assert (=> d!2373568 (= lt!2695450 e!4683178)))

(declare-fun c!1458135 () Bool)

(assert (=> d!2373568 (= c!1458135 (is-Nil!74463 lt!2695357))))

(assert (=> d!2373568 (= (size!43286 lt!2695357) lt!2695450)))

(declare-fun b!7936786 () Bool)

(assert (=> b!7936786 (= e!4683178 0)))

(declare-fun b!7936787 () Bool)

(assert (=> b!7936787 (= e!4683178 (+ 1 (size!43286 (t!390288 lt!2695357))))))

(assert (= (and d!2373568 c!1458135) b!7936786))

(assert (= (and d!2373568 (not c!1458135)) b!7936787))

(declare-fun m!8325232 () Bool)

(assert (=> b!7936787 m!8325232))

(assert (=> b!7936333 d!2373568))

(assert (=> b!7936333 d!2373262))

(assert (=> b!7936333 d!2373530))

(declare-fun b!7936788 () Bool)

(declare-fun e!4683179 () List!74587)

(assert (=> b!7936788 (= e!4683179 (list!19440 (right!57226 (Leaf!30257 (fill!300 1 v!5484) 1))))))

(declare-fun b!7936789 () Bool)

(assert (=> b!7936789 (= e!4683179 (Cons!74463 (h!80911 (list!19440 (left!56896 (Leaf!30257 (fill!300 1 v!5484) 1)))) (++!18272 (t!390288 (list!19440 (left!56896 (Leaf!30257 (fill!300 1 v!5484) 1)))) (list!19440 (right!57226 (Leaf!30257 (fill!300 1 v!5484) 1))))))))

(declare-fun b!7936791 () Bool)

(declare-fun e!4683180 () Bool)

(declare-fun lt!2695451 () List!74587)

(assert (=> b!7936791 (= e!4683180 (or (not (= (list!19440 (right!57226 (Leaf!30257 (fill!300 1 v!5484) 1))) Nil!74463)) (= lt!2695451 (list!19440 (left!56896 (Leaf!30257 (fill!300 1 v!5484) 1))))))))

(declare-fun d!2373570 () Bool)

(assert (=> d!2373570 e!4683180))

(declare-fun res!3148966 () Bool)

(assert (=> d!2373570 (=> (not res!3148966) (not e!4683180))))

(assert (=> d!2373570 (= res!3148966 (= (content!15796 lt!2695451) (set.union (content!15796 (list!19440 (left!56896 (Leaf!30257 (fill!300 1 v!5484) 1)))) (content!15796 (list!19440 (right!57226 (Leaf!30257 (fill!300 1 v!5484) 1)))))))))

(assert (=> d!2373570 (= lt!2695451 e!4683179)))

(declare-fun c!1458136 () Bool)

(assert (=> d!2373570 (= c!1458136 (is-Nil!74463 (list!19440 (left!56896 (Leaf!30257 (fill!300 1 v!5484) 1)))))))

(assert (=> d!2373570 (= (++!18272 (list!19440 (left!56896 (Leaf!30257 (fill!300 1 v!5484) 1))) (list!19440 (right!57226 (Leaf!30257 (fill!300 1 v!5484) 1)))) lt!2695451)))

(declare-fun b!7936790 () Bool)

(declare-fun res!3148967 () Bool)

(assert (=> b!7936790 (=> (not res!3148967) (not e!4683180))))

(assert (=> b!7936790 (= res!3148967 (= (size!43286 lt!2695451) (+ (size!43286 (list!19440 (left!56896 (Leaf!30257 (fill!300 1 v!5484) 1)))) (size!43286 (list!19440 (right!57226 (Leaf!30257 (fill!300 1 v!5484) 1)))))))))

(assert (= (and d!2373570 c!1458136) b!7936788))

(assert (= (and d!2373570 (not c!1458136)) b!7936789))

(assert (= (and d!2373570 res!3148966) b!7936790))

(assert (= (and b!7936790 res!3148967) b!7936791))

(assert (=> b!7936789 m!8324468))

(declare-fun m!8325234 () Bool)

(assert (=> b!7936789 m!8325234))

(declare-fun m!8325236 () Bool)

(assert (=> d!2373570 m!8325236))

(assert (=> d!2373570 m!8324466))

(declare-fun m!8325238 () Bool)

(assert (=> d!2373570 m!8325238))

(assert (=> d!2373570 m!8324468))

(declare-fun m!8325240 () Bool)

(assert (=> d!2373570 m!8325240))

(declare-fun m!8325242 () Bool)

(assert (=> b!7936790 m!8325242))

(assert (=> b!7936790 m!8324466))

(declare-fun m!8325244 () Bool)

(assert (=> b!7936790 m!8325244))

(assert (=> b!7936790 m!8324468))

(declare-fun m!8325246 () Bool)

(assert (=> b!7936790 m!8325246))

(assert (=> b!7936338 d!2373570))

(declare-fun b!7936792 () Bool)

(declare-fun e!4683181 () List!74587)

(assert (=> b!7936792 (= e!4683181 Nil!74463)))

(declare-fun b!7936793 () Bool)

(declare-fun e!4683182 () List!74587)

(assert (=> b!7936793 (= e!4683181 e!4683182)))

(declare-fun c!1458138 () Bool)

(assert (=> b!7936793 (= c!1458138 (is-Leaf!30257 (left!56896 (Leaf!30257 (fill!300 1 v!5484) 1))))))

(declare-fun b!7936794 () Bool)

(assert (=> b!7936794 (= e!4683182 (list!19442 (xs!19313 (left!56896 (Leaf!30257 (fill!300 1 v!5484) 1)))))))

(declare-fun b!7936795 () Bool)

(assert (=> b!7936795 (= e!4683182 (++!18272 (list!19440 (left!56896 (left!56896 (Leaf!30257 (fill!300 1 v!5484) 1)))) (list!19440 (right!57226 (left!56896 (Leaf!30257 (fill!300 1 v!5484) 1))))))))

(declare-fun d!2373572 () Bool)

(declare-fun c!1458137 () Bool)

(assert (=> d!2373572 (= c!1458137 (is-Empty!15917 (left!56896 (Leaf!30257 (fill!300 1 v!5484) 1))))))

(assert (=> d!2373572 (= (list!19440 (left!56896 (Leaf!30257 (fill!300 1 v!5484) 1))) e!4683181)))

(assert (= (and d!2373572 c!1458137) b!7936792))

(assert (= (and d!2373572 (not c!1458137)) b!7936793))

(assert (= (and b!7936793 c!1458138) b!7936794))

(assert (= (and b!7936793 (not c!1458138)) b!7936795))

(declare-fun m!8325248 () Bool)

(assert (=> b!7936794 m!8325248))

(declare-fun m!8325250 () Bool)

(assert (=> b!7936795 m!8325250))

(declare-fun m!8325252 () Bool)

(assert (=> b!7936795 m!8325252))

(assert (=> b!7936795 m!8325250))

(assert (=> b!7936795 m!8325252))

(declare-fun m!8325254 () Bool)

(assert (=> b!7936795 m!8325254))

(assert (=> b!7936338 d!2373572))

(declare-fun b!7936796 () Bool)

(declare-fun e!4683183 () List!74587)

(assert (=> b!7936796 (= e!4683183 Nil!74463)))

(declare-fun b!7936797 () Bool)

(declare-fun e!4683184 () List!74587)

(assert (=> b!7936797 (= e!4683183 e!4683184)))

(declare-fun c!1458140 () Bool)

(assert (=> b!7936797 (= c!1458140 (is-Leaf!30257 (right!57226 (Leaf!30257 (fill!300 1 v!5484) 1))))))

(declare-fun b!7936798 () Bool)

(assert (=> b!7936798 (= e!4683184 (list!19442 (xs!19313 (right!57226 (Leaf!30257 (fill!300 1 v!5484) 1)))))))

(declare-fun b!7936799 () Bool)

(assert (=> b!7936799 (= e!4683184 (++!18272 (list!19440 (left!56896 (right!57226 (Leaf!30257 (fill!300 1 v!5484) 1)))) (list!19440 (right!57226 (right!57226 (Leaf!30257 (fill!300 1 v!5484) 1))))))))

(declare-fun d!2373574 () Bool)

(declare-fun c!1458139 () Bool)

(assert (=> d!2373574 (= c!1458139 (is-Empty!15917 (right!57226 (Leaf!30257 (fill!300 1 v!5484) 1))))))

(assert (=> d!2373574 (= (list!19440 (right!57226 (Leaf!30257 (fill!300 1 v!5484) 1))) e!4683183)))

(assert (= (and d!2373574 c!1458139) b!7936796))

(assert (= (and d!2373574 (not c!1458139)) b!7936797))

(assert (= (and b!7936797 c!1458140) b!7936798))

(assert (= (and b!7936797 (not c!1458140)) b!7936799))

(declare-fun m!8325256 () Bool)

(assert (=> b!7936798 m!8325256))

(declare-fun m!8325258 () Bool)

(assert (=> b!7936799 m!8325258))

(declare-fun m!8325260 () Bool)

(assert (=> b!7936799 m!8325260))

(assert (=> b!7936799 m!8325258))

(assert (=> b!7936799 m!8325260))

(declare-fun m!8325262 () Bool)

(assert (=> b!7936799 m!8325262))

(assert (=> b!7936338 d!2373574))

(assert (=> d!2373220 d!2373522))

(assert (=> d!2373220 d!2373452))

(declare-fun d!2373576 () Bool)

(declare-fun lt!2695452 () Bool)

(assert (=> d!2373576 (= lt!2695452 (isEmpty!42805 (list!19440 (left!56896 (left!56896 lt!2695319)))))))

(assert (=> d!2373576 (= lt!2695452 (= (size!43285 (left!56896 (left!56896 lt!2695319))) 0))))

(assert (=> d!2373576 (= (isEmpty!42803 (left!56896 (left!56896 lt!2695319))) lt!2695452)))

(declare-fun bs!1969233 () Bool)

(assert (= bs!1969233 d!2373576))

(assert (=> bs!1969233 m!8324592))

(assert (=> bs!1969233 m!8324592))

(declare-fun m!8325264 () Bool)

(assert (=> bs!1969233 m!8325264))

(declare-fun m!8325266 () Bool)

(assert (=> bs!1969233 m!8325266))

(assert (=> b!7936313 d!2373576))

(declare-fun d!2373578 () Bool)

(declare-fun lt!2695453 () Int)

(assert (=> d!2373578 (>= lt!2695453 0)))

(declare-fun e!4683185 () Int)

(assert (=> d!2373578 (= lt!2695453 e!4683185)))

(declare-fun c!1458141 () Bool)

(assert (=> d!2373578 (= c!1458141 (is-Nil!74463 lt!2695359))))

(assert (=> d!2373578 (= (size!43286 lt!2695359) lt!2695453)))

(declare-fun b!7936800 () Bool)

(assert (=> b!7936800 (= e!4683185 0)))

(declare-fun b!7936801 () Bool)

(assert (=> b!7936801 (= e!4683185 (+ 1 (size!43286 (t!390288 lt!2695359))))))

(assert (= (and d!2373578 c!1458141) b!7936800))

(assert (= (and d!2373578 (not c!1458141)) b!7936801))

(declare-fun m!8325268 () Bool)

(assert (=> b!7936801 m!8325268))

(assert (=> b!7936375 d!2373578))

(declare-fun d!2373580 () Bool)

(declare-fun lt!2695454 () Int)

(assert (=> d!2373580 (>= lt!2695454 0)))

(declare-fun e!4683186 () Int)

(assert (=> d!2373580 (= lt!2695454 e!4683186)))

(declare-fun c!1458142 () Bool)

(assert (=> d!2373580 (= c!1458142 (is-Nil!74463 (t!390288 (list!19440 t!4440))))))

(assert (=> d!2373580 (= (size!43286 (t!390288 (list!19440 t!4440))) lt!2695454)))

(declare-fun b!7936802 () Bool)

(assert (=> b!7936802 (= e!4683186 0)))

(declare-fun b!7936803 () Bool)

(assert (=> b!7936803 (= e!4683186 (+ 1 (size!43286 (t!390288 (t!390288 (list!19440 t!4440))))))))

(assert (= (and d!2373580 c!1458142) b!7936802))

(assert (= (and d!2373580 (not c!1458142)) b!7936803))

(declare-fun m!8325270 () Bool)

(assert (=> b!7936803 m!8325270))

(assert (=> b!7936375 d!2373580))

(declare-fun d!2373582 () Bool)

(declare-fun lt!2695455 () Int)

(assert (=> d!2373582 (>= lt!2695455 0)))

(declare-fun e!4683187 () Int)

(assert (=> d!2373582 (= lt!2695455 e!4683187)))

(declare-fun c!1458143 () Bool)

(assert (=> d!2373582 (= c!1458143 (is-Nil!74463 (innerList!16005 (xs!19313 (left!56896 t!4440)))))))

(assert (=> d!2373582 (= (size!43286 (innerList!16005 (xs!19313 (left!56896 t!4440)))) lt!2695455)))

(declare-fun b!7936804 () Bool)

(assert (=> b!7936804 (= e!4683187 0)))

(declare-fun b!7936805 () Bool)

(assert (=> b!7936805 (= e!4683187 (+ 1 (size!43286 (t!390288 (innerList!16005 (xs!19313 (left!56896 t!4440)))))))))

(assert (= (and d!2373582 c!1458143) b!7936804))

(assert (= (and d!2373582 (not c!1458143)) b!7936805))

(declare-fun m!8325272 () Bool)

(assert (=> b!7936805 m!8325272))

(assert (=> d!2373284 d!2373582))

(declare-fun d!2373584 () Bool)

(declare-fun res!3148968 () Bool)

(declare-fun e!4683188 () Bool)

(assert (=> d!2373584 (=> (not res!3148968) (not e!4683188))))

(assert (=> d!2373584 (= res!3148968 (= (csize!32064 (left!56896 (right!57226 t!4440))) (+ (size!43285 (left!56896 (left!56896 (right!57226 t!4440)))) (size!43285 (right!57226 (left!56896 (right!57226 t!4440)))))))))

(assert (=> d!2373584 (= (inv!95805 (left!56896 (right!57226 t!4440))) e!4683188)))

(declare-fun b!7936806 () Bool)

(declare-fun res!3148969 () Bool)

(assert (=> b!7936806 (=> (not res!3148969) (not e!4683188))))

(assert (=> b!7936806 (= res!3148969 (and (not (= (left!56896 (left!56896 (right!57226 t!4440))) Empty!15917)) (not (= (right!57226 (left!56896 (right!57226 t!4440))) Empty!15917))))))

(declare-fun b!7936807 () Bool)

(declare-fun res!3148970 () Bool)

(assert (=> b!7936807 (=> (not res!3148970) (not e!4683188))))

(assert (=> b!7936807 (= res!3148970 (= (cheight!16128 (left!56896 (right!57226 t!4440))) (+ (max!0 (height!2230 (left!56896 (left!56896 (right!57226 t!4440)))) (height!2230 (right!57226 (left!56896 (right!57226 t!4440))))) 1)))))

(declare-fun b!7936808 () Bool)

(assert (=> b!7936808 (= e!4683188 (<= 0 (cheight!16128 (left!56896 (right!57226 t!4440)))))))

(assert (= (and d!2373584 res!3148968) b!7936806))

(assert (= (and b!7936806 res!3148969) b!7936807))

(assert (= (and b!7936807 res!3148970) b!7936808))

(declare-fun m!8325274 () Bool)

(assert (=> d!2373584 m!8325274))

(declare-fun m!8325276 () Bool)

(assert (=> d!2373584 m!8325276))

(declare-fun m!8325278 () Bool)

(assert (=> b!7936807 m!8325278))

(declare-fun m!8325280 () Bool)

(assert (=> b!7936807 m!8325280))

(assert (=> b!7936807 m!8325278))

(assert (=> b!7936807 m!8325280))

(declare-fun m!8325282 () Bool)

(assert (=> b!7936807 m!8325282))

(assert (=> b!7936362 d!2373584))

(declare-fun d!2373586 () Bool)

(declare-fun res!3148971 () Bool)

(declare-fun e!4683189 () Bool)

(assert (=> d!2373586 (=> (not res!3148971) (not e!4683189))))

(assert (=> d!2373586 (= res!3148971 (= (csize!32064 (left!56896 (left!56896 t!4440))) (+ (size!43285 (left!56896 (left!56896 (left!56896 t!4440)))) (size!43285 (right!57226 (left!56896 (left!56896 t!4440)))))))))

(assert (=> d!2373586 (= (inv!95805 (left!56896 (left!56896 t!4440))) e!4683189)))

(declare-fun b!7936809 () Bool)

(declare-fun res!3148972 () Bool)

(assert (=> b!7936809 (=> (not res!3148972) (not e!4683189))))

(assert (=> b!7936809 (= res!3148972 (and (not (= (left!56896 (left!56896 (left!56896 t!4440))) Empty!15917)) (not (= (right!57226 (left!56896 (left!56896 t!4440))) Empty!15917))))))

(declare-fun b!7936810 () Bool)

(declare-fun res!3148973 () Bool)

(assert (=> b!7936810 (=> (not res!3148973) (not e!4683189))))

(assert (=> b!7936810 (= res!3148973 (= (cheight!16128 (left!56896 (left!56896 t!4440))) (+ (max!0 (height!2230 (left!56896 (left!56896 (left!56896 t!4440)))) (height!2230 (right!57226 (left!56896 (left!56896 t!4440))))) 1)))))

(declare-fun b!7936811 () Bool)

(assert (=> b!7936811 (= e!4683189 (<= 0 (cheight!16128 (left!56896 (left!56896 t!4440)))))))

(assert (= (and d!2373586 res!3148971) b!7936809))

(assert (= (and b!7936809 res!3148972) b!7936810))

(assert (= (and b!7936810 res!3148973) b!7936811))

(declare-fun m!8325284 () Bool)

(assert (=> d!2373586 m!8325284))

(declare-fun m!8325286 () Bool)

(assert (=> d!2373586 m!8325286))

(assert (=> b!7936810 m!8325196))

(assert (=> b!7936810 m!8325198))

(assert (=> b!7936810 m!8325196))

(assert (=> b!7936810 m!8325198))

(declare-fun m!8325288 () Bool)

(assert (=> b!7936810 m!8325288))

(assert (=> b!7936406 d!2373586))

(declare-fun d!2373588 () Bool)

(assert (=> d!2373588 (= (max!0 (height!2230 (left!56896 (right!57226 t!4440))) (height!2230 (right!57226 (right!57226 t!4440)))) (ite (< (height!2230 (left!56896 (right!57226 t!4440))) (height!2230 (right!57226 (right!57226 t!4440)))) (height!2230 (right!57226 (right!57226 t!4440))) (height!2230 (left!56896 (right!57226 t!4440)))))))

(assert (=> b!7936377 d!2373588))

(assert (=> b!7936377 d!2373564))

(assert (=> b!7936377 d!2373566))

(declare-fun d!2373590 () Bool)

(declare-fun res!3148975 () Bool)

(declare-fun e!4683191 () Bool)

(assert (=> d!2373590 (=> res!3148975 e!4683191)))

(assert (=> d!2373590 (= res!3148975 (not (is-Node!15917 (right!57226 (left!56896 t!4440)))))))

(assert (=> d!2373590 (= (isBalanced!4543 (right!57226 (left!56896 t!4440))) e!4683191)))

(declare-fun b!7936812 () Bool)

(declare-fun res!3148979 () Bool)

(declare-fun e!4683190 () Bool)

(assert (=> b!7936812 (=> (not res!3148979) (not e!4683190))))

(assert (=> b!7936812 (= res!3148979 (not (isEmpty!42803 (left!56896 (right!57226 (left!56896 t!4440))))))))

(declare-fun b!7936813 () Bool)

(assert (=> b!7936813 (= e!4683191 e!4683190)))

(declare-fun res!3148976 () Bool)

(assert (=> b!7936813 (=> (not res!3148976) (not e!4683190))))

(assert (=> b!7936813 (= res!3148976 (<= (- 1) (- (height!2230 (left!56896 (right!57226 (left!56896 t!4440)))) (height!2230 (right!57226 (right!57226 (left!56896 t!4440)))))))))

(declare-fun b!7936814 () Bool)

(declare-fun res!3148978 () Bool)

(assert (=> b!7936814 (=> (not res!3148978) (not e!4683190))))

(assert (=> b!7936814 (= res!3148978 (<= (- (height!2230 (left!56896 (right!57226 (left!56896 t!4440)))) (height!2230 (right!57226 (right!57226 (left!56896 t!4440))))) 1))))

(declare-fun b!7936815 () Bool)

(assert (=> b!7936815 (= e!4683190 (not (isEmpty!42803 (right!57226 (right!57226 (left!56896 t!4440))))))))

(declare-fun b!7936816 () Bool)

(declare-fun res!3148977 () Bool)

(assert (=> b!7936816 (=> (not res!3148977) (not e!4683190))))

(assert (=> b!7936816 (= res!3148977 (isBalanced!4543 (right!57226 (right!57226 (left!56896 t!4440)))))))

(declare-fun b!7936817 () Bool)

(declare-fun res!3148974 () Bool)

(assert (=> b!7936817 (=> (not res!3148974) (not e!4683190))))

(assert (=> b!7936817 (= res!3148974 (isBalanced!4543 (left!56896 (right!57226 (left!56896 t!4440)))))))

(assert (= (and d!2373590 (not res!3148975)) b!7936813))

(assert (= (and b!7936813 res!3148976) b!7936814))

(assert (= (and b!7936814 res!3148978) b!7936817))

(assert (= (and b!7936817 res!3148974) b!7936816))

(assert (= (and b!7936816 res!3148977) b!7936812))

(assert (= (and b!7936812 res!3148979) b!7936815))

(assert (=> b!7936814 m!8325142))

(assert (=> b!7936814 m!8325144))

(declare-fun m!8325290 () Bool)

(assert (=> b!7936817 m!8325290))

(declare-fun m!8325292 () Bool)

(assert (=> b!7936815 m!8325292))

(assert (=> b!7936813 m!8325142))

(assert (=> b!7936813 m!8325144))

(declare-fun m!8325294 () Bool)

(assert (=> b!7936812 m!8325294))

(declare-fun m!8325296 () Bool)

(assert (=> b!7936816 m!8325296))

(assert (=> b!7936349 d!2373590))

(declare-fun lt!2695456 () List!74587)

(declare-fun b!7936819 () Bool)

(declare-fun e!4683194 () Bool)

(assert (=> b!7936819 (= e!4683194 (= lt!2695456 (++!18272 (t!390288 (t!390288 (list!19440 t!4440))) (Cons!74463 v!5484 Nil!74463))))))

(declare-fun b!7936820 () Bool)

(declare-fun e!4683192 () Bool)

(declare-fun call!735676 () (_ BitVec 32))

(declare-fun call!735675 () (_ BitVec 32))

(assert (=> b!7936820 (= e!4683192 (= call!735676 (bvadd call!735675 #b00000000000000000000000000000001)))))

(declare-fun b!7936821 () Bool)

(declare-fun res!3148982 () Bool)

(assert (=> b!7936821 (=> (not res!3148982) (not e!4683194))))

(assert (=> b!7936821 (= res!3148982 (= (content!15796 lt!2695456) (set.union (content!15796 (t!390288 (t!390288 (list!19440 t!4440)))) (set.insert v!5484 (as set.empty (Set T!145914))))))))

(declare-fun b!7936818 () Bool)

(assert (=> b!7936818 (= e!4683192 (= call!735676 call!735675))))

(declare-fun d!2373592 () Bool)

(assert (=> d!2373592 e!4683194))

(declare-fun res!3148983 () Bool)

(assert (=> d!2373592 (=> (not res!3148983) (not e!4683194))))

(assert (=> d!2373592 (= res!3148983 (is-Cons!74463 lt!2695456))))

(declare-fun e!4683193 () List!74587)

(assert (=> d!2373592 (= lt!2695456 e!4683193)))

(declare-fun c!1458144 () Bool)

(assert (=> d!2373592 (= c!1458144 (is-Nil!74463 (t!390288 (t!390288 (list!19440 t!4440)))))))

(assert (=> d!2373592 (= ($colon+!326 (t!390288 (t!390288 (list!19440 t!4440))) v!5484) lt!2695456)))

(declare-fun b!7936822 () Bool)

(assert (=> b!7936822 (= e!4683193 (Cons!74463 (h!80911 (t!390288 (t!390288 (list!19440 t!4440)))) ($colon+!326 (t!390288 (t!390288 (t!390288 (list!19440 t!4440)))) v!5484)))))

(declare-fun b!7936823 () Bool)

(assert (=> b!7936823 (= e!4683193 (Cons!74463 v!5484 (t!390288 (t!390288 (list!19440 t!4440)))))))

(declare-fun b!7936824 () Bool)

(declare-fun res!3148981 () Bool)

(assert (=> b!7936824 (=> (not res!3148981) (not e!4683194))))

(assert (=> b!7936824 (= res!3148981 e!4683192)))

(declare-fun c!1458145 () Bool)

(assert (=> b!7936824 (= c!1458145 (bvslt (isize!130 (t!390288 (t!390288 (list!19440 t!4440)))) #b01111111111111111111111111111111))))

(declare-fun bm!735670 () Bool)

(assert (=> bm!735670 (= call!735675 (isize!130 (t!390288 (t!390288 (list!19440 t!4440)))))))

(declare-fun b!7936825 () Bool)

(declare-fun res!3148980 () Bool)

(assert (=> b!7936825 (=> (not res!3148980) (not e!4683194))))

(assert (=> b!7936825 (= res!3148980 (= (size!43286 lt!2695456) (+ (size!43286 (t!390288 (t!390288 (list!19440 t!4440)))) 1)))))

(declare-fun bm!735671 () Bool)

(assert (=> bm!735671 (= call!735676 (isize!130 lt!2695456))))

(assert (= (and d!2373592 c!1458144) b!7936823))

(assert (= (and d!2373592 (not c!1458144)) b!7936822))

(assert (= (and d!2373592 res!3148983) b!7936825))

(assert (= (and b!7936825 res!3148980) b!7936824))

(assert (= (and b!7936824 c!1458145) b!7936820))

(assert (= (and b!7936824 (not c!1458145)) b!7936818))

(assert (= (or b!7936820 b!7936818) bm!735671))

(assert (= (or b!7936820 b!7936818) bm!735670))

(assert (= (and b!7936824 res!3148981) b!7936821))

(assert (= (and b!7936821 res!3148982) b!7936819))

(declare-fun m!8325298 () Bool)

(assert (=> b!7936821 m!8325298))

(assert (=> b!7936821 m!8325004))

(assert (=> b!7936821 m!8324268))

(declare-fun m!8325300 () Bool)

(assert (=> b!7936822 m!8325300))

(declare-fun m!8325302 () Bool)

(assert (=> bm!735671 m!8325302))

(declare-fun m!8325304 () Bool)

(assert (=> b!7936825 m!8325304))

(assert (=> b!7936825 m!8325270))

(assert (=> b!7936824 m!8325114))

(assert (=> bm!735670 m!8325114))

(assert (=> b!7936819 m!8324948))

(assert (=> b!7936372 d!2373592))

(declare-fun d!2373594 () Bool)

(declare-fun c!1458146 () Bool)

(assert (=> d!2373594 (= c!1458146 (is-Nil!74463 lt!2695379))))

(declare-fun e!4683195 () (Set T!145914))

(assert (=> d!2373594 (= (content!15796 lt!2695379) e!4683195)))

(declare-fun b!7936826 () Bool)

(assert (=> b!7936826 (= e!4683195 (as set.empty (Set T!145914)))))

(declare-fun b!7936827 () Bool)

(assert (=> b!7936827 (= e!4683195 (set.union (set.insert (h!80911 lt!2695379) (as set.empty (Set T!145914))) (content!15796 (t!390288 lt!2695379))))))

(assert (= (and d!2373594 c!1458146) b!7936826))

(assert (= (and d!2373594 (not c!1458146)) b!7936827))

(declare-fun m!8325306 () Bool)

(assert (=> b!7936827 m!8325306))

(declare-fun m!8325308 () Bool)

(assert (=> b!7936827 m!8325308))

(assert (=> d!2373278 d!2373594))

(assert (=> d!2373278 d!2373304))

(declare-fun d!2373596 () Bool)

(declare-fun c!1458147 () Bool)

(assert (=> d!2373596 (= c!1458147 (is-Nil!74463 (Cons!74463 v!5484 Nil!74463)))))

(declare-fun e!4683196 () (Set T!145914))

(assert (=> d!2373596 (= (content!15796 (Cons!74463 v!5484 Nil!74463)) e!4683196)))

(declare-fun b!7936828 () Bool)

(assert (=> b!7936828 (= e!4683196 (as set.empty (Set T!145914)))))

(declare-fun b!7936829 () Bool)

(assert (=> b!7936829 (= e!4683196 (set.union (set.insert (h!80911 (Cons!74463 v!5484 Nil!74463)) (as set.empty (Set T!145914))) (content!15796 (t!390288 (Cons!74463 v!5484 Nil!74463)))))))

(assert (= (and d!2373596 c!1458147) b!7936828))

(assert (= (and d!2373596 (not c!1458147)) b!7936829))

(declare-fun m!8325310 () Bool)

(assert (=> b!7936829 m!8325310))

(declare-fun m!8325312 () Bool)

(assert (=> b!7936829 m!8325312))

(assert (=> d!2373278 d!2373596))

(assert (=> d!2373270 d!2373262))

(assert (=> d!2373270 d!2373182))

(declare-fun d!2373598 () Bool)

(declare-fun c!1458148 () Bool)

(assert (=> d!2373598 (= c!1458148 (is-Node!15917 (left!56896 (left!56896 (left!56896 t!4440)))))))

(declare-fun e!4683197 () Bool)

(assert (=> d!2373598 (= (inv!95801 (left!56896 (left!56896 (left!56896 t!4440)))) e!4683197)))

(declare-fun b!7936830 () Bool)

(assert (=> b!7936830 (= e!4683197 (inv!95805 (left!56896 (left!56896 (left!56896 t!4440)))))))

(declare-fun b!7936831 () Bool)

(declare-fun e!4683198 () Bool)

(assert (=> b!7936831 (= e!4683197 e!4683198)))

(declare-fun res!3148984 () Bool)

(assert (=> b!7936831 (= res!3148984 (not (is-Leaf!30257 (left!56896 (left!56896 (left!56896 t!4440))))))))

(assert (=> b!7936831 (=> res!3148984 e!4683198)))

(declare-fun b!7936832 () Bool)

(assert (=> b!7936832 (= e!4683198 (inv!95806 (left!56896 (left!56896 (left!56896 t!4440)))))))

(assert (= (and d!2373598 c!1458148) b!7936830))

(assert (= (and d!2373598 (not c!1458148)) b!7936831))

(assert (= (and b!7936831 (not res!3148984)) b!7936832))

(declare-fun m!8325314 () Bool)

(assert (=> b!7936830 m!8325314))

(declare-fun m!8325316 () Bool)

(assert (=> b!7936832 m!8325316))

(assert (=> b!7936445 d!2373598))

(declare-fun d!2373600 () Bool)

(declare-fun c!1458149 () Bool)

(assert (=> d!2373600 (= c!1458149 (is-Node!15917 (right!57226 (left!56896 (left!56896 t!4440)))))))

(declare-fun e!4683199 () Bool)

(assert (=> d!2373600 (= (inv!95801 (right!57226 (left!56896 (left!56896 t!4440)))) e!4683199)))

(declare-fun b!7936833 () Bool)

(assert (=> b!7936833 (= e!4683199 (inv!95805 (right!57226 (left!56896 (left!56896 t!4440)))))))

(declare-fun b!7936834 () Bool)

(declare-fun e!4683200 () Bool)

(assert (=> b!7936834 (= e!4683199 e!4683200)))

(declare-fun res!3148985 () Bool)

(assert (=> b!7936834 (= res!3148985 (not (is-Leaf!30257 (right!57226 (left!56896 (left!56896 t!4440))))))))

(assert (=> b!7936834 (=> res!3148985 e!4683200)))

(declare-fun b!7936835 () Bool)

(assert (=> b!7936835 (= e!4683200 (inv!95806 (right!57226 (left!56896 (left!56896 t!4440)))))))

(assert (= (and d!2373600 c!1458149) b!7936833))

(assert (= (and d!2373600 (not c!1458149)) b!7936834))

(assert (= (and b!7936834 (not res!3148985)) b!7936835))

(declare-fun m!8325318 () Bool)

(assert (=> b!7936833 m!8325318))

(declare-fun m!8325320 () Bool)

(assert (=> b!7936835 m!8325320))

(assert (=> b!7936445 d!2373600))

(declare-fun d!2373602 () Bool)

(declare-fun c!1458150 () Bool)

(assert (=> d!2373602 (= c!1458150 (is-Nil!74463 (t!390288 lt!2695341)))))

(declare-fun e!4683201 () (Set T!145914))

(assert (=> d!2373602 (= (content!15796 (t!390288 lt!2695341)) e!4683201)))

(declare-fun b!7936836 () Bool)

(assert (=> b!7936836 (= e!4683201 (as set.empty (Set T!145914)))))

(declare-fun b!7936837 () Bool)

(assert (=> b!7936837 (= e!4683201 (set.union (set.insert (h!80911 (t!390288 lt!2695341)) (as set.empty (Set T!145914))) (content!15796 (t!390288 (t!390288 lt!2695341)))))))

(assert (= (and d!2373602 c!1458150) b!7936836))

(assert (= (and d!2373602 (not c!1458150)) b!7936837))

(declare-fun m!8325322 () Bool)

(assert (=> b!7936837 m!8325322))

(declare-fun m!8325324 () Bool)

(assert (=> b!7936837 m!8325324))

(assert (=> b!7936441 d!2373602))

(assert (=> b!7936396 d!2373580))

(declare-fun d!2373604 () Bool)

(declare-fun lt!2695457 () Int)

(assert (=> d!2373604 (>= lt!2695457 0)))

(declare-fun e!4683202 () Int)

(assert (=> d!2373604 (= lt!2695457 e!4683202)))

(declare-fun c!1458151 () Bool)

(assert (=> d!2373604 (= c!1458151 (is-Nil!74463 (innerList!16005 (xs!19313 (right!57226 t!4440)))))))

(assert (=> d!2373604 (= (size!43286 (innerList!16005 (xs!19313 (right!57226 t!4440)))) lt!2695457)))

(declare-fun b!7936838 () Bool)

(assert (=> b!7936838 (= e!4683202 0)))

(declare-fun b!7936839 () Bool)

(assert (=> b!7936839 (= e!4683202 (+ 1 (size!43286 (t!390288 (innerList!16005 (xs!19313 (right!57226 t!4440)))))))))

(assert (= (and d!2373604 c!1458151) b!7936838))

(assert (= (and d!2373604 (not c!1458151)) b!7936839))

(declare-fun m!8325326 () Bool)

(assert (=> b!7936839 m!8325326))

(assert (=> d!2373206 d!2373604))

(declare-fun d!2373606 () Bool)

(declare-fun res!3148987 () Bool)

(declare-fun e!4683204 () Bool)

(assert (=> d!2373606 (=> res!3148987 e!4683204)))

(assert (=> d!2373606 (= res!3148987 (not (is-Node!15917 (left!56896 (right!57226 t!4440)))))))

(assert (=> d!2373606 (= (isBalanced!4543 (left!56896 (right!57226 t!4440))) e!4683204)))

(declare-fun b!7936840 () Bool)

(declare-fun res!3148991 () Bool)

(declare-fun e!4683203 () Bool)

(assert (=> b!7936840 (=> (not res!3148991) (not e!4683203))))

(assert (=> b!7936840 (= res!3148991 (not (isEmpty!42803 (left!56896 (left!56896 (right!57226 t!4440))))))))

(declare-fun b!7936841 () Bool)

(assert (=> b!7936841 (= e!4683204 e!4683203)))

(declare-fun res!3148988 () Bool)

(assert (=> b!7936841 (=> (not res!3148988) (not e!4683203))))

(assert (=> b!7936841 (= res!3148988 (<= (- 1) (- (height!2230 (left!56896 (left!56896 (right!57226 t!4440)))) (height!2230 (right!57226 (left!56896 (right!57226 t!4440)))))))))

(declare-fun b!7936842 () Bool)

(declare-fun res!3148990 () Bool)

(assert (=> b!7936842 (=> (not res!3148990) (not e!4683203))))

(assert (=> b!7936842 (= res!3148990 (<= (- (height!2230 (left!56896 (left!56896 (right!57226 t!4440)))) (height!2230 (right!57226 (left!56896 (right!57226 t!4440))))) 1))))

(declare-fun b!7936843 () Bool)

(assert (=> b!7936843 (= e!4683203 (not (isEmpty!42803 (right!57226 (left!56896 (right!57226 t!4440))))))))

(declare-fun b!7936844 () Bool)

(declare-fun res!3148989 () Bool)

(assert (=> b!7936844 (=> (not res!3148989) (not e!4683203))))

(assert (=> b!7936844 (= res!3148989 (isBalanced!4543 (right!57226 (left!56896 (right!57226 t!4440)))))))

(declare-fun b!7936845 () Bool)

(declare-fun res!3148986 () Bool)

(assert (=> b!7936845 (=> (not res!3148986) (not e!4683203))))

(assert (=> b!7936845 (= res!3148986 (isBalanced!4543 (left!56896 (left!56896 (right!57226 t!4440)))))))

(assert (= (and d!2373606 (not res!3148987)) b!7936841))

(assert (= (and b!7936841 res!3148988) b!7936842))

(assert (= (and b!7936842 res!3148990) b!7936845))

(assert (= (and b!7936845 res!3148986) b!7936844))

(assert (= (and b!7936844 res!3148989) b!7936840))

(assert (= (and b!7936840 res!3148991) b!7936843))

(assert (=> b!7936842 m!8325278))

(assert (=> b!7936842 m!8325280))

(declare-fun m!8325328 () Bool)

(assert (=> b!7936845 m!8325328))

(declare-fun m!8325330 () Bool)

(assert (=> b!7936843 m!8325330))

(assert (=> b!7936841 m!8325278))

(assert (=> b!7936841 m!8325280))

(declare-fun m!8325332 () Bool)

(assert (=> b!7936840 m!8325332))

(declare-fun m!8325334 () Bool)

(assert (=> b!7936844 m!8325334))

(assert (=> b!7936344 d!2373606))

(declare-fun d!2373608 () Bool)

(declare-fun c!1458152 () Bool)

(assert (=> d!2373608 (= c!1458152 (is-Nil!74463 lt!2695381))))

(declare-fun e!4683205 () (Set T!145914))

(assert (=> d!2373608 (= (content!15796 lt!2695381) e!4683205)))

(declare-fun b!7936846 () Bool)

(assert (=> b!7936846 (= e!4683205 (as set.empty (Set T!145914)))))

(declare-fun b!7936847 () Bool)

(assert (=> b!7936847 (= e!4683205 (set.union (set.insert (h!80911 lt!2695381) (as set.empty (Set T!145914))) (content!15796 (t!390288 lt!2695381))))))

(assert (= (and d!2373608 c!1458152) b!7936846))

(assert (= (and d!2373608 (not c!1458152)) b!7936847))

(declare-fun m!8325336 () Bool)

(assert (=> b!7936847 m!8325336))

(declare-fun m!8325338 () Bool)

(assert (=> b!7936847 m!8325338))

(assert (=> d!2373296 d!2373608))

(declare-fun d!2373610 () Bool)

(declare-fun c!1458153 () Bool)

(assert (=> d!2373610 (= c!1458153 (is-Nil!74463 (list!19440 (left!56896 t!4440))))))

(declare-fun e!4683206 () (Set T!145914))

(assert (=> d!2373610 (= (content!15796 (list!19440 (left!56896 t!4440))) e!4683206)))

(declare-fun b!7936848 () Bool)

(assert (=> b!7936848 (= e!4683206 (as set.empty (Set T!145914)))))

(declare-fun b!7936849 () Bool)

(assert (=> b!7936849 (= e!4683206 (set.union (set.insert (h!80911 (list!19440 (left!56896 t!4440))) (as set.empty (Set T!145914))) (content!15796 (t!390288 (list!19440 (left!56896 t!4440))))))))

(assert (= (and d!2373610 c!1458153) b!7936848))

(assert (= (and d!2373610 (not c!1458153)) b!7936849))

(declare-fun m!8325340 () Bool)

(assert (=> b!7936849 m!8325340))

(assert (=> b!7936849 m!8325108))

(assert (=> d!2373296 d!2373610))

(declare-fun d!2373612 () Bool)

(declare-fun c!1458154 () Bool)

(assert (=> d!2373612 (= c!1458154 (is-Nil!74463 (list!19440 (right!57226 t!4440))))))

(declare-fun e!4683207 () (Set T!145914))

(assert (=> d!2373612 (= (content!15796 (list!19440 (right!57226 t!4440))) e!4683207)))

(declare-fun b!7936850 () Bool)

(assert (=> b!7936850 (= e!4683207 (as set.empty (Set T!145914)))))

(declare-fun b!7936851 () Bool)

(assert (=> b!7936851 (= e!4683207 (set.union (set.insert (h!80911 (list!19440 (right!57226 t!4440))) (as set.empty (Set T!145914))) (content!15796 (t!390288 (list!19440 (right!57226 t!4440))))))))

(assert (= (and d!2373612 c!1458154) b!7936850))

(assert (= (and d!2373612 (not c!1458154)) b!7936851))

(declare-fun m!8325342 () Bool)

(assert (=> b!7936851 m!8325342))

(declare-fun m!8325344 () Bool)

(assert (=> b!7936851 m!8325344))

(assert (=> d!2373296 d!2373612))

(assert (=> b!7936302 d!2373550))

(assert (=> b!7936302 d!2373552))

(assert (=> b!7936347 d!2373420))

(assert (=> b!7936347 d!2373422))

(declare-fun d!2373614 () Bool)

(declare-fun lt!2695458 () Int)

(assert (=> d!2373614 (>= lt!2695458 0)))

(declare-fun e!4683208 () Int)

(assert (=> d!2373614 (= lt!2695458 e!4683208)))

(declare-fun c!1458155 () Bool)

(assert (=> d!2373614 (= c!1458155 (is-Nil!74463 (list!19442 (xs!19313 t!4440))))))

(assert (=> d!2373614 (= (size!43286 (list!19442 (xs!19313 t!4440))) lt!2695458)))

(declare-fun b!7936852 () Bool)

(assert (=> b!7936852 (= e!4683208 0)))

(declare-fun b!7936853 () Bool)

(assert (=> b!7936853 (= e!4683208 (+ 1 (size!43286 (t!390288 (list!19442 (xs!19313 t!4440))))))))

(assert (= (and d!2373614 c!1458155) b!7936852))

(assert (= (and d!2373614 (not c!1458155)) b!7936853))

(declare-fun m!8325346 () Bool)

(assert (=> b!7936853 m!8325346))

(assert (=> b!7936351 d!2373614))

(assert (=> b!7936351 d!2373294))

(declare-fun d!2373616 () Bool)

(assert (=> d!2373616 (= (inv!95802 (xs!19313 (right!57226 (left!56896 t!4440)))) (<= (size!43286 (innerList!16005 (xs!19313 (right!57226 (left!56896 t!4440))))) 2147483647))))

(declare-fun bs!1969234 () Bool)

(assert (= bs!1969234 d!2373616))

(declare-fun m!8325348 () Bool)

(assert (=> bs!1969234 m!8325348))

(assert (=> b!7936449 d!2373616))

(declare-fun d!2373618 () Bool)

(assert (=> d!2373618 (= (isEmpty!42805 (list!19440 (left!56896 t!4440))) (is-Nil!74463 (list!19440 (left!56896 t!4440))))))

(assert (=> d!2373250 d!2373618))

(assert (=> d!2373250 d!2373298))

(assert (=> d!2373250 d!2373444))

(declare-fun d!2373620 () Bool)

(declare-fun lt!2695459 () Int)

(assert (=> d!2373620 (= lt!2695459 (size!43286 (list!19440 (left!56896 (left!56896 t!4440)))))))

(assert (=> d!2373620 (= lt!2695459 (ite (is-Empty!15917 (left!56896 (left!56896 t!4440))) 0 (ite (is-Leaf!30257 (left!56896 (left!56896 t!4440))) (csize!32065 (left!56896 (left!56896 t!4440))) (csize!32064 (left!56896 (left!56896 t!4440))))))))

(assert (=> d!2373620 (= (size!43285 (left!56896 (left!56896 t!4440))) lt!2695459)))

(declare-fun bs!1969235 () Bool)

(assert (= bs!1969235 d!2373620))

(assert (=> bs!1969235 m!8324620))

(assert (=> bs!1969235 m!8324620))

(declare-fun m!8325350 () Bool)

(assert (=> bs!1969235 m!8325350))

(assert (=> d!2373238 d!2373620))

(declare-fun d!2373622 () Bool)

(declare-fun lt!2695460 () Int)

(assert (=> d!2373622 (= lt!2695460 (size!43286 (list!19440 (right!57226 (left!56896 t!4440)))))))

(assert (=> d!2373622 (= lt!2695460 (ite (is-Empty!15917 (right!57226 (left!56896 t!4440))) 0 (ite (is-Leaf!30257 (right!57226 (left!56896 t!4440))) (csize!32065 (right!57226 (left!56896 t!4440))) (csize!32064 (right!57226 (left!56896 t!4440))))))))

(assert (=> d!2373622 (= (size!43285 (right!57226 (left!56896 t!4440))) lt!2695460)))

(declare-fun bs!1969236 () Bool)

(assert (= bs!1969236 d!2373622))

(assert (=> bs!1969236 m!8324622))

(assert (=> bs!1969236 m!8324622))

(declare-fun m!8325352 () Bool)

(assert (=> bs!1969236 m!8325352))

(assert (=> d!2373238 d!2373622))

(declare-fun d!2373624 () Bool)

(assert (=> d!2373624 (= (inv!95802 (xs!19313 (right!57226 (right!57226 t!4440)))) (<= (size!43286 (innerList!16005 (xs!19313 (right!57226 (right!57226 t!4440))))) 2147483647))))

(declare-fun bs!1969237 () Bool)

(assert (= bs!1969237 d!2373624))

(declare-fun m!8325354 () Bool)

(assert (=> bs!1969237 m!8325354))

(assert (=> b!7936457 d!2373624))

(declare-fun d!2373626 () Bool)

(assert (=> d!2373626 (= (list!19442 (xs!19313 (Leaf!30257 (fill!300 1 v!5484) 1))) (innerList!16005 (xs!19313 (Leaf!30257 (fill!300 1 v!5484) 1))))))

(assert (=> b!7936337 d!2373626))

(assert (=> b!7936340 d!2373564))

(assert (=> b!7936340 d!2373566))

(declare-fun b!7936854 () Bool)

(declare-fun e!4683209 () List!74587)

(assert (=> b!7936854 (= e!4683209 (list!19440 (Leaf!30257 (fill!300 1 v!5484) 1)))))

(declare-fun b!7936855 () Bool)

(assert (=> b!7936855 (= e!4683209 (Cons!74463 (h!80911 (t!390288 (list!19440 t!4440))) (++!18272 (t!390288 (t!390288 (list!19440 t!4440))) (list!19440 (Leaf!30257 (fill!300 1 v!5484) 1)))))))

(declare-fun e!4683210 () Bool)

(declare-fun b!7936857 () Bool)

(declare-fun lt!2695461 () List!74587)

(assert (=> b!7936857 (= e!4683210 (or (not (= (list!19440 (Leaf!30257 (fill!300 1 v!5484) 1)) Nil!74463)) (= lt!2695461 (t!390288 (list!19440 t!4440)))))))

(declare-fun d!2373628 () Bool)

(assert (=> d!2373628 e!4683210))

(declare-fun res!3148992 () Bool)

(assert (=> d!2373628 (=> (not res!3148992) (not e!4683210))))

(assert (=> d!2373628 (= res!3148992 (= (content!15796 lt!2695461) (set.union (content!15796 (t!390288 (list!19440 t!4440))) (content!15796 (list!19440 (Leaf!30257 (fill!300 1 v!5484) 1))))))))

(assert (=> d!2373628 (= lt!2695461 e!4683209)))

(declare-fun c!1458156 () Bool)

(assert (=> d!2373628 (= c!1458156 (is-Nil!74463 (t!390288 (list!19440 t!4440))))))

(assert (=> d!2373628 (= (++!18272 (t!390288 (list!19440 t!4440)) (list!19440 (Leaf!30257 (fill!300 1 v!5484) 1))) lt!2695461)))

(declare-fun b!7936856 () Bool)

(declare-fun res!3148993 () Bool)

(assert (=> b!7936856 (=> (not res!3148993) (not e!4683210))))

(assert (=> b!7936856 (= res!3148993 (= (size!43286 lt!2695461) (+ (size!43286 (t!390288 (list!19440 t!4440))) (size!43286 (list!19440 (Leaf!30257 (fill!300 1 v!5484) 1))))))))

(assert (= (and d!2373628 c!1458156) b!7936854))

(assert (= (and d!2373628 (not c!1458156)) b!7936855))

(assert (= (and d!2373628 res!3148992) b!7936856))

(assert (= (and b!7936856 res!3148993) b!7936857))

(assert (=> b!7936855 m!8324230))

(declare-fun m!8325356 () Bool)

(assert (=> b!7936855 m!8325356))

(declare-fun m!8325358 () Bool)

(assert (=> d!2373628 m!8325358))

(assert (=> d!2373628 m!8324518))

(assert (=> d!2373628 m!8324230))

(assert (=> d!2373628 m!8324458))

(declare-fun m!8325360 () Bool)

(assert (=> b!7936856 m!8325360))

(assert (=> b!7936856 m!8324526))

(assert (=> b!7936856 m!8324230))

(assert (=> b!7936856 m!8324462))

(assert (=> b!7936332 d!2373628))

(assert (=> d!2373234 d!2373614))

(assert (=> d!2373234 d!2373294))

(assert (=> bm!735666 d!2373496))

(declare-fun b!7936858 () Bool)

(declare-fun e!4683211 () List!74587)

(assert (=> b!7936858 (= e!4683211 (list!19440 (right!57226 (right!57226 lt!2695319))))))

(declare-fun b!7936859 () Bool)

(assert (=> b!7936859 (= e!4683211 (Cons!74463 (h!80911 (list!19440 (left!56896 (right!57226 lt!2695319)))) (++!18272 (t!390288 (list!19440 (left!56896 (right!57226 lt!2695319)))) (list!19440 (right!57226 (right!57226 lt!2695319))))))))

(declare-fun b!7936861 () Bool)

(declare-fun e!4683212 () Bool)

(declare-fun lt!2695462 () List!74587)

(assert (=> b!7936861 (= e!4683212 (or (not (= (list!19440 (right!57226 (right!57226 lt!2695319))) Nil!74463)) (= lt!2695462 (list!19440 (left!56896 (right!57226 lt!2695319))))))))

(declare-fun d!2373630 () Bool)

(assert (=> d!2373630 e!4683212))

(declare-fun res!3148994 () Bool)

(assert (=> d!2373630 (=> (not res!3148994) (not e!4683212))))

(assert (=> d!2373630 (= res!3148994 (= (content!15796 lt!2695462) (set.union (content!15796 (list!19440 (left!56896 (right!57226 lt!2695319)))) (content!15796 (list!19440 (right!57226 (right!57226 lt!2695319)))))))))

(assert (=> d!2373630 (= lt!2695462 e!4683211)))

(declare-fun c!1458157 () Bool)

(assert (=> d!2373630 (= c!1458157 (is-Nil!74463 (list!19440 (left!56896 (right!57226 lt!2695319)))))))

(assert (=> d!2373630 (= (++!18272 (list!19440 (left!56896 (right!57226 lt!2695319))) (list!19440 (right!57226 (right!57226 lt!2695319)))) lt!2695462)))

(declare-fun b!7936860 () Bool)

(declare-fun res!3148995 () Bool)

(assert (=> b!7936860 (=> (not res!3148995) (not e!4683212))))

(assert (=> b!7936860 (= res!3148995 (= (size!43286 lt!2695462) (+ (size!43286 (list!19440 (left!56896 (right!57226 lt!2695319)))) (size!43286 (list!19440 (right!57226 (right!57226 lt!2695319)))))))))

(assert (= (and d!2373630 c!1458157) b!7936858))

(assert (= (and d!2373630 (not c!1458157)) b!7936859))

(assert (= (and d!2373630 res!3148994) b!7936860))

(assert (= (and b!7936860 res!3148995) b!7936861))

(assert (=> b!7936859 m!8324602))

(declare-fun m!8325362 () Bool)

(assert (=> b!7936859 m!8325362))

(declare-fun m!8325364 () Bool)

(assert (=> d!2373630 m!8325364))

(assert (=> d!2373630 m!8324600))

(declare-fun m!8325366 () Bool)

(assert (=> d!2373630 m!8325366))

(assert (=> d!2373630 m!8324602))

(declare-fun m!8325368 () Bool)

(assert (=> d!2373630 m!8325368))

(declare-fun m!8325370 () Bool)

(assert (=> b!7936860 m!8325370))

(assert (=> b!7936860 m!8324600))

(declare-fun m!8325372 () Bool)

(assert (=> b!7936860 m!8325372))

(assert (=> b!7936860 m!8324602))

(declare-fun m!8325374 () Bool)

(assert (=> b!7936860 m!8325374))

(assert (=> b!7936423 d!2373630))

(declare-fun b!7936862 () Bool)

(declare-fun e!4683213 () List!74587)

(assert (=> b!7936862 (= e!4683213 Nil!74463)))

(declare-fun b!7936863 () Bool)

(declare-fun e!4683214 () List!74587)

(assert (=> b!7936863 (= e!4683213 e!4683214)))

(declare-fun c!1458159 () Bool)

(assert (=> b!7936863 (= c!1458159 (is-Leaf!30257 (left!56896 (right!57226 lt!2695319))))))

(declare-fun b!7936864 () Bool)

(assert (=> b!7936864 (= e!4683214 (list!19442 (xs!19313 (left!56896 (right!57226 lt!2695319)))))))

(declare-fun b!7936865 () Bool)

(assert (=> b!7936865 (= e!4683214 (++!18272 (list!19440 (left!56896 (left!56896 (right!57226 lt!2695319)))) (list!19440 (right!57226 (left!56896 (right!57226 lt!2695319))))))))

(declare-fun d!2373632 () Bool)

(declare-fun c!1458158 () Bool)

(assert (=> d!2373632 (= c!1458158 (is-Empty!15917 (left!56896 (right!57226 lt!2695319))))))

(assert (=> d!2373632 (= (list!19440 (left!56896 (right!57226 lt!2695319))) e!4683213)))

(assert (= (and d!2373632 c!1458158) b!7936862))

(assert (= (and d!2373632 (not c!1458158)) b!7936863))

(assert (= (and b!7936863 c!1458159) b!7936864))

(assert (= (and b!7936863 (not c!1458159)) b!7936865))

(declare-fun m!8325376 () Bool)

(assert (=> b!7936864 m!8325376))

(declare-fun m!8325378 () Bool)

(assert (=> b!7936865 m!8325378))

(declare-fun m!8325380 () Bool)

(assert (=> b!7936865 m!8325380))

(assert (=> b!7936865 m!8325378))

(assert (=> b!7936865 m!8325380))

(declare-fun m!8325382 () Bool)

(assert (=> b!7936865 m!8325382))

(assert (=> b!7936423 d!2373632))

(declare-fun b!7936866 () Bool)

(declare-fun e!4683215 () List!74587)

(assert (=> b!7936866 (= e!4683215 Nil!74463)))

(declare-fun b!7936867 () Bool)

(declare-fun e!4683216 () List!74587)

(assert (=> b!7936867 (= e!4683215 e!4683216)))

(declare-fun c!1458161 () Bool)

(assert (=> b!7936867 (= c!1458161 (is-Leaf!30257 (right!57226 (right!57226 lt!2695319))))))

(declare-fun b!7936868 () Bool)

(assert (=> b!7936868 (= e!4683216 (list!19442 (xs!19313 (right!57226 (right!57226 lt!2695319)))))))

(declare-fun b!7936869 () Bool)

(assert (=> b!7936869 (= e!4683216 (++!18272 (list!19440 (left!56896 (right!57226 (right!57226 lt!2695319)))) (list!19440 (right!57226 (right!57226 (right!57226 lt!2695319))))))))

(declare-fun d!2373634 () Bool)

(declare-fun c!1458160 () Bool)

(assert (=> d!2373634 (= c!1458160 (is-Empty!15917 (right!57226 (right!57226 lt!2695319))))))

(assert (=> d!2373634 (= (list!19440 (right!57226 (right!57226 lt!2695319))) e!4683215)))

(assert (= (and d!2373634 c!1458160) b!7936866))

(assert (= (and d!2373634 (not c!1458160)) b!7936867))

(assert (= (and b!7936867 c!1458161) b!7936868))

(assert (= (and b!7936867 (not c!1458161)) b!7936869))

(declare-fun m!8325384 () Bool)

(assert (=> b!7936868 m!8325384))

(declare-fun m!8325386 () Bool)

(assert (=> b!7936869 m!8325386))

(declare-fun m!8325388 () Bool)

(assert (=> b!7936869 m!8325388))

(assert (=> b!7936869 m!8325386))

(assert (=> b!7936869 m!8325388))

(declare-fun m!8325390 () Bool)

(assert (=> b!7936869 m!8325390))

(assert (=> b!7936423 d!2373634))

(declare-fun b!7936870 () Bool)

(declare-fun e!4683217 () List!74587)

(assert (=> b!7936870 (= e!4683217 (list!19440 (right!57226 (left!56896 t!4440))))))

(declare-fun b!7936871 () Bool)

(assert (=> b!7936871 (= e!4683217 (Cons!74463 (h!80911 (list!19440 (left!56896 (left!56896 t!4440)))) (++!18272 (t!390288 (list!19440 (left!56896 (left!56896 t!4440)))) (list!19440 (right!57226 (left!56896 t!4440))))))))

(declare-fun b!7936873 () Bool)

(declare-fun e!4683218 () Bool)

(declare-fun lt!2695463 () List!74587)

(assert (=> b!7936873 (= e!4683218 (or (not (= (list!19440 (right!57226 (left!56896 t!4440))) Nil!74463)) (= lt!2695463 (list!19440 (left!56896 (left!56896 t!4440))))))))

(declare-fun d!2373636 () Bool)

(assert (=> d!2373636 e!4683218))

(declare-fun res!3148996 () Bool)

(assert (=> d!2373636 (=> (not res!3148996) (not e!4683218))))

(assert (=> d!2373636 (= res!3148996 (= (content!15796 lt!2695463) (set.union (content!15796 (list!19440 (left!56896 (left!56896 t!4440)))) (content!15796 (list!19440 (right!57226 (left!56896 t!4440)))))))))

(assert (=> d!2373636 (= lt!2695463 e!4683217)))

(declare-fun c!1458162 () Bool)

(assert (=> d!2373636 (= c!1458162 (is-Nil!74463 (list!19440 (left!56896 (left!56896 t!4440)))))))

(assert (=> d!2373636 (= (++!18272 (list!19440 (left!56896 (left!56896 t!4440))) (list!19440 (right!57226 (left!56896 t!4440)))) lt!2695463)))

(declare-fun b!7936872 () Bool)

(declare-fun res!3148997 () Bool)

(assert (=> b!7936872 (=> (not res!3148997) (not e!4683218))))

(assert (=> b!7936872 (= res!3148997 (= (size!43286 lt!2695463) (+ (size!43286 (list!19440 (left!56896 (left!56896 t!4440)))) (size!43286 (list!19440 (right!57226 (left!56896 t!4440)))))))))

(assert (= (and d!2373636 c!1458162) b!7936870))

(assert (= (and d!2373636 (not c!1458162)) b!7936871))

(assert (= (and d!2373636 res!3148996) b!7936872))

(assert (= (and b!7936872 res!3148997) b!7936873))

(assert (=> b!7936871 m!8324622))

(declare-fun m!8325392 () Bool)

(assert (=> b!7936871 m!8325392))

(declare-fun m!8325394 () Bool)

(assert (=> d!2373636 m!8325394))

(assert (=> d!2373636 m!8324620))

(declare-fun m!8325396 () Bool)

(assert (=> d!2373636 m!8325396))

(assert (=> d!2373636 m!8324622))

(declare-fun m!8325398 () Bool)

(assert (=> d!2373636 m!8325398))

(declare-fun m!8325400 () Bool)

(assert (=> b!7936872 m!8325400))

(assert (=> b!7936872 m!8324620))

(assert (=> b!7936872 m!8325350))

(assert (=> b!7936872 m!8324622))

(assert (=> b!7936872 m!8325352))

(assert (=> b!7936431 d!2373636))

(declare-fun b!7936874 () Bool)

(declare-fun e!4683219 () List!74587)

(assert (=> b!7936874 (= e!4683219 Nil!74463)))

(declare-fun b!7936875 () Bool)

(declare-fun e!4683220 () List!74587)

(assert (=> b!7936875 (= e!4683219 e!4683220)))

(declare-fun c!1458164 () Bool)

(assert (=> b!7936875 (= c!1458164 (is-Leaf!30257 (left!56896 (left!56896 t!4440))))))

(declare-fun b!7936876 () Bool)

(assert (=> b!7936876 (= e!4683220 (list!19442 (xs!19313 (left!56896 (left!56896 t!4440)))))))

(declare-fun b!7936877 () Bool)

(assert (=> b!7936877 (= e!4683220 (++!18272 (list!19440 (left!56896 (left!56896 (left!56896 t!4440)))) (list!19440 (right!57226 (left!56896 (left!56896 t!4440))))))))

(declare-fun d!2373638 () Bool)

(declare-fun c!1458163 () Bool)

(assert (=> d!2373638 (= c!1458163 (is-Empty!15917 (left!56896 (left!56896 t!4440))))))

(assert (=> d!2373638 (= (list!19440 (left!56896 (left!56896 t!4440))) e!4683219)))

(assert (= (and d!2373638 c!1458163) b!7936874))

(assert (= (and d!2373638 (not c!1458163)) b!7936875))

(assert (= (and b!7936875 c!1458164) b!7936876))

(assert (= (and b!7936875 (not c!1458164)) b!7936877))

(assert (=> b!7936876 m!8325042))

(declare-fun m!8325402 () Bool)

(assert (=> b!7936877 m!8325402))

(declare-fun m!8325404 () Bool)

(assert (=> b!7936877 m!8325404))

(assert (=> b!7936877 m!8325402))

(assert (=> b!7936877 m!8325404))

(declare-fun m!8325406 () Bool)

(assert (=> b!7936877 m!8325406))

(assert (=> b!7936431 d!2373638))

(declare-fun b!7936878 () Bool)

(declare-fun e!4683221 () List!74587)

(assert (=> b!7936878 (= e!4683221 Nil!74463)))

(declare-fun b!7936879 () Bool)

(declare-fun e!4683222 () List!74587)

(assert (=> b!7936879 (= e!4683221 e!4683222)))

(declare-fun c!1458166 () Bool)

(assert (=> b!7936879 (= c!1458166 (is-Leaf!30257 (right!57226 (left!56896 t!4440))))))

(declare-fun b!7936880 () Bool)

(assert (=> b!7936880 (= e!4683222 (list!19442 (xs!19313 (right!57226 (left!56896 t!4440)))))))

(declare-fun b!7936881 () Bool)

(assert (=> b!7936881 (= e!4683222 (++!18272 (list!19440 (left!56896 (right!57226 (left!56896 t!4440)))) (list!19440 (right!57226 (right!57226 (left!56896 t!4440))))))))

(declare-fun d!2373640 () Bool)

(declare-fun c!1458165 () Bool)

(assert (=> d!2373640 (= c!1458165 (is-Empty!15917 (right!57226 (left!56896 t!4440))))))

(assert (=> d!2373640 (= (list!19440 (right!57226 (left!56896 t!4440))) e!4683221)))

(assert (= (and d!2373640 c!1458165) b!7936878))

(assert (= (and d!2373640 (not c!1458165)) b!7936879))

(assert (= (and b!7936879 c!1458166) b!7936880))

(assert (= (and b!7936879 (not c!1458166)) b!7936881))

(assert (=> b!7936880 m!8325060))

(declare-fun m!8325408 () Bool)

(assert (=> b!7936881 m!8325408))

(declare-fun m!8325410 () Bool)

(assert (=> b!7936881 m!8325410))

(assert (=> b!7936881 m!8325408))

(assert (=> b!7936881 m!8325410))

(declare-fun m!8325412 () Bool)

(assert (=> b!7936881 m!8325412))

(assert (=> b!7936431 d!2373640))

(declare-fun d!2373642 () Bool)

(declare-fun lt!2695464 () Bool)

(assert (=> d!2373642 (= lt!2695464 (isEmpty!42805 (list!19440 (right!57226 (left!56896 lt!2695319)))))))

(assert (=> d!2373642 (= lt!2695464 (= (size!43285 (right!57226 (left!56896 lt!2695319))) 0))))

(assert (=> d!2373642 (= (isEmpty!42803 (right!57226 (left!56896 lt!2695319))) lt!2695464)))

(declare-fun bs!1969238 () Bool)

(assert (= bs!1969238 d!2373642))

(assert (=> bs!1969238 m!8324594))

(assert (=> bs!1969238 m!8324594))

(declare-fun m!8325414 () Bool)

(assert (=> bs!1969238 m!8325414))

(declare-fun m!8325416 () Bool)

(assert (=> bs!1969238 m!8325416))

(assert (=> b!7936316 d!2373642))

(declare-fun d!2373644 () Bool)

(declare-fun c!1458167 () Bool)

(assert (=> d!2373644 (= c!1458167 (is-Nil!74463 lt!2695357))))

(declare-fun e!4683223 () (Set T!145914))

(assert (=> d!2373644 (= (content!15796 lt!2695357) e!4683223)))

(declare-fun b!7936882 () Bool)

(assert (=> b!7936882 (= e!4683223 (as set.empty (Set T!145914)))))

(declare-fun b!7936883 () Bool)

(assert (=> b!7936883 (= e!4683223 (set.union (set.insert (h!80911 lt!2695357) (as set.empty (Set T!145914))) (content!15796 (t!390288 lt!2695357))))))

(assert (= (and d!2373644 c!1458167) b!7936882))

(assert (= (and d!2373644 (not c!1458167)) b!7936883))

(declare-fun m!8325418 () Bool)

(assert (=> b!7936883 m!8325418))

(declare-fun m!8325420 () Bool)

(assert (=> b!7936883 m!8325420))

(assert (=> d!2373226 d!2373644))

(assert (=> d!2373226 d!2373304))

(declare-fun d!2373646 () Bool)

(declare-fun c!1458168 () Bool)

(assert (=> d!2373646 (= c!1458168 (is-Nil!74463 (list!19440 (Leaf!30257 (fill!300 1 v!5484) 1))))))

(declare-fun e!4683224 () (Set T!145914))

(assert (=> d!2373646 (= (content!15796 (list!19440 (Leaf!30257 (fill!300 1 v!5484) 1))) e!4683224)))

(declare-fun b!7936884 () Bool)

(assert (=> b!7936884 (= e!4683224 (as set.empty (Set T!145914)))))

(declare-fun b!7936885 () Bool)

(assert (=> b!7936885 (= e!4683224 (set.union (set.insert (h!80911 (list!19440 (Leaf!30257 (fill!300 1 v!5484) 1))) (as set.empty (Set T!145914))) (content!15796 (t!390288 (list!19440 (Leaf!30257 (fill!300 1 v!5484) 1))))))))

(assert (= (and d!2373646 c!1458168) b!7936884))

(assert (= (and d!2373646 (not c!1458168)) b!7936885))

(declare-fun m!8325422 () Bool)

(assert (=> b!7936885 m!8325422))

(declare-fun m!8325424 () Bool)

(assert (=> b!7936885 m!8325424))

(assert (=> d!2373226 d!2373646))

(declare-fun d!2373648 () Bool)

(declare-fun c!1458169 () Bool)

(assert (=> d!2373648 (= c!1458169 (is-Nil!74463 lt!2695359))))

(declare-fun e!4683225 () (Set T!145914))

(assert (=> d!2373648 (= (content!15796 lt!2695359) e!4683225)))

(declare-fun b!7936886 () Bool)

(assert (=> b!7936886 (= e!4683225 (as set.empty (Set T!145914)))))

(declare-fun b!7936887 () Bool)

(assert (=> b!7936887 (= e!4683225 (set.union (set.insert (h!80911 lt!2695359) (as set.empty (Set T!145914))) (content!15796 (t!390288 lt!2695359))))))

(assert (= (and d!2373648 c!1458169) b!7936886))

(assert (= (and d!2373648 (not c!1458169)) b!7936887))

(declare-fun m!8325426 () Bool)

(assert (=> b!7936887 m!8325426))

(declare-fun m!8325428 () Bool)

(assert (=> b!7936887 m!8325428))

(assert (=> b!7936371 d!2373648))

(assert (=> b!7936371 d!2373448))

(assert (=> b!7936208 d!2373280))

(assert (=> b!7936208 d!2373282))

(declare-fun d!2373650 () Bool)

(assert (=> d!2373650 (= (isEmpty!42805 (list!19440 (left!56896 lt!2695319))) (is-Nil!74463 (list!19440 (left!56896 lt!2695319))))))

(assert (=> d!2373236 d!2373650))

(assert (=> d!2373236 d!2373290))

(declare-fun d!2373652 () Bool)

(declare-fun lt!2695465 () Int)

(assert (=> d!2373652 (= lt!2695465 (size!43286 (list!19440 (left!56896 lt!2695319))))))

(assert (=> d!2373652 (= lt!2695465 (ite (is-Empty!15917 (left!56896 lt!2695319)) 0 (ite (is-Leaf!30257 (left!56896 lt!2695319)) (csize!32065 (left!56896 lt!2695319)) (csize!32064 (left!56896 lt!2695319)))))))

(assert (=> d!2373652 (= (size!43285 (left!56896 lt!2695319)) lt!2695465)))

(declare-fun bs!1969239 () Bool)

(assert (= bs!1969239 d!2373652))

(assert (=> bs!1969239 m!8324258))

(assert (=> bs!1969239 m!8324258))

(assert (=> bs!1969239 m!8324586))

(assert (=> d!2373236 d!2373652))

(declare-fun d!2373654 () Bool)

(declare-fun lt!2695466 () Int)

(assert (=> d!2373654 (>= lt!2695466 0)))

(declare-fun e!4683226 () Int)

(assert (=> d!2373654 (= lt!2695466 e!4683226)))

(declare-fun c!1458170 () Bool)

(assert (=> d!2373654 (= c!1458170 (is-Nil!74463 lt!2695381))))

(assert (=> d!2373654 (= (size!43286 lt!2695381) lt!2695466)))

(declare-fun b!7936888 () Bool)

(assert (=> b!7936888 (= e!4683226 0)))

(declare-fun b!7936889 () Bool)

(assert (=> b!7936889 (= e!4683226 (+ 1 (size!43286 (t!390288 lt!2695381))))))

(assert (= (and d!2373654 c!1458170) b!7936888))

(assert (= (and d!2373654 (not c!1458170)) b!7936889))

(declare-fun m!8325430 () Bool)

(assert (=> b!7936889 m!8325430))

(assert (=> b!7936426 d!2373654))

(declare-fun d!2373656 () Bool)

(declare-fun lt!2695467 () Int)

(assert (=> d!2373656 (>= lt!2695467 0)))

(declare-fun e!4683227 () Int)

(assert (=> d!2373656 (= lt!2695467 e!4683227)))

(declare-fun c!1458171 () Bool)

(assert (=> d!2373656 (= c!1458171 (is-Nil!74463 (list!19440 (left!56896 t!4440))))))

(assert (=> d!2373656 (= (size!43286 (list!19440 (left!56896 t!4440))) lt!2695467)))

(declare-fun b!7936890 () Bool)

(assert (=> b!7936890 (= e!4683227 0)))

(declare-fun b!7936891 () Bool)

(assert (=> b!7936891 (= e!4683227 (+ 1 (size!43286 (t!390288 (list!19440 (left!56896 t!4440))))))))

(assert (= (and d!2373656 c!1458171) b!7936890))

(assert (= (and d!2373656 (not c!1458171)) b!7936891))

(assert (=> b!7936891 m!8325112))

(assert (=> b!7936426 d!2373656))

(declare-fun d!2373658 () Bool)

(declare-fun lt!2695468 () Int)

(assert (=> d!2373658 (>= lt!2695468 0)))

(declare-fun e!4683228 () Int)

(assert (=> d!2373658 (= lt!2695468 e!4683228)))

(declare-fun c!1458172 () Bool)

(assert (=> d!2373658 (= c!1458172 (is-Nil!74463 (list!19440 (right!57226 t!4440))))))

(assert (=> d!2373658 (= (size!43286 (list!19440 (right!57226 t!4440))) lt!2695468)))

(declare-fun b!7936892 () Bool)

(assert (=> b!7936892 (= e!4683228 0)))

(declare-fun b!7936893 () Bool)

(assert (=> b!7936893 (= e!4683228 (+ 1 (size!43286 (t!390288 (list!19440 (right!57226 t!4440))))))))

(assert (= (and d!2373658 c!1458172) b!7936892))

(assert (= (and d!2373658 (not c!1458172)) b!7936893))

(declare-fun m!8325432 () Bool)

(assert (=> b!7936893 m!8325432))

(assert (=> b!7936426 d!2373658))

(declare-fun tp!2359687 () Bool)

(declare-fun e!4683229 () Bool)

(declare-fun b!7936894 () Bool)

(declare-fun tp!2359689 () Bool)

(assert (=> b!7936894 (= e!4683229 (and (inv!95801 (left!56896 (left!56896 (left!56896 (right!57226 t!4440))))) tp!2359687 (inv!95801 (right!57226 (left!56896 (left!56896 (right!57226 t!4440))))) tp!2359689))))

(declare-fun b!7936896 () Bool)

(declare-fun e!4683230 () Bool)

(declare-fun tp!2359688 () Bool)

(assert (=> b!7936896 (= e!4683230 tp!2359688)))

(declare-fun b!7936895 () Bool)

(assert (=> b!7936895 (= e!4683229 (and (inv!95802 (xs!19313 (left!56896 (left!56896 (right!57226 t!4440))))) e!4683230))))

(assert (=> b!7936453 (= tp!2359663 (and (inv!95801 (left!56896 (left!56896 (right!57226 t!4440)))) e!4683229))))

(assert (= (and b!7936453 (is-Node!15917 (left!56896 (left!56896 (right!57226 t!4440))))) b!7936894))

(assert (= b!7936895 b!7936896))

(assert (= (and b!7936453 (is-Leaf!30257 (left!56896 (left!56896 (right!57226 t!4440))))) b!7936895))

(declare-fun m!8325434 () Bool)

(assert (=> b!7936894 m!8325434))

(declare-fun m!8325436 () Bool)

(assert (=> b!7936894 m!8325436))

(declare-fun m!8325438 () Bool)

(assert (=> b!7936895 m!8325438))

(assert (=> b!7936453 m!8324650))

(declare-fun tp!2359690 () Bool)

(declare-fun e!4683231 () Bool)

(declare-fun tp!2359692 () Bool)

(declare-fun b!7936897 () Bool)

(assert (=> b!7936897 (= e!4683231 (and (inv!95801 (left!56896 (right!57226 (left!56896 (right!57226 t!4440))))) tp!2359690 (inv!95801 (right!57226 (right!57226 (left!56896 (right!57226 t!4440))))) tp!2359692))))

(declare-fun b!7936899 () Bool)

(declare-fun e!4683232 () Bool)

(declare-fun tp!2359691 () Bool)

(assert (=> b!7936899 (= e!4683232 tp!2359691)))

(declare-fun b!7936898 () Bool)

(assert (=> b!7936898 (= e!4683231 (and (inv!95802 (xs!19313 (right!57226 (left!56896 (right!57226 t!4440))))) e!4683232))))

(assert (=> b!7936453 (= tp!2359665 (and (inv!95801 (right!57226 (left!56896 (right!57226 t!4440)))) e!4683231))))

(assert (= (and b!7936453 (is-Node!15917 (right!57226 (left!56896 (right!57226 t!4440))))) b!7936897))

(assert (= b!7936898 b!7936899))

(assert (= (and b!7936453 (is-Leaf!30257 (right!57226 (left!56896 (right!57226 t!4440))))) b!7936898))

(declare-fun m!8325440 () Bool)

(assert (=> b!7936897 m!8325440))

(declare-fun m!8325442 () Bool)

(assert (=> b!7936897 m!8325442))

(declare-fun m!8325444 () Bool)

(assert (=> b!7936898 m!8325444))

(assert (=> b!7936453 m!8324652))

(declare-fun b!7936900 () Bool)

(declare-fun e!4683233 () Bool)

(declare-fun tp!2359693 () Bool)

(assert (=> b!7936900 (= e!4683233 (and tp_is_empty!53259 tp!2359693))))

(assert (=> b!7936447 (= tp!2359656 e!4683233)))

(assert (= (and b!7936447 (is-Cons!74463 (innerList!16005 (xs!19313 (left!56896 (left!56896 t!4440)))))) b!7936900))

(declare-fun tp!2359696 () Bool)

(declare-fun b!7936901 () Bool)

(declare-fun tp!2359694 () Bool)

(declare-fun e!4683234 () Bool)

(assert (=> b!7936901 (= e!4683234 (and (inv!95801 (left!56896 (left!56896 (right!57226 (left!56896 t!4440))))) tp!2359694 (inv!95801 (right!57226 (left!56896 (right!57226 (left!56896 t!4440))))) tp!2359696))))

(declare-fun b!7936903 () Bool)

(declare-fun e!4683235 () Bool)

(declare-fun tp!2359695 () Bool)

(assert (=> b!7936903 (= e!4683235 tp!2359695)))

(declare-fun b!7936902 () Bool)

(assert (=> b!7936902 (= e!4683234 (and (inv!95802 (xs!19313 (left!56896 (right!57226 (left!56896 t!4440))))) e!4683235))))

(assert (=> b!7936448 (= tp!2359658 (and (inv!95801 (left!56896 (right!57226 (left!56896 t!4440)))) e!4683234))))

(assert (= (and b!7936448 (is-Node!15917 (left!56896 (right!57226 (left!56896 t!4440))))) b!7936901))

(assert (= b!7936902 b!7936903))

(assert (= (and b!7936448 (is-Leaf!30257 (left!56896 (right!57226 (left!56896 t!4440))))) b!7936902))

(declare-fun m!8325446 () Bool)

(assert (=> b!7936901 m!8325446))

(declare-fun m!8325448 () Bool)

(assert (=> b!7936901 m!8325448))

(declare-fun m!8325450 () Bool)

(assert (=> b!7936902 m!8325450))

(assert (=> b!7936448 m!8324644))

(declare-fun tp!2359697 () Bool)

(declare-fun tp!2359699 () Bool)

(declare-fun b!7936904 () Bool)

(declare-fun e!4683236 () Bool)

(assert (=> b!7936904 (= e!4683236 (and (inv!95801 (left!56896 (right!57226 (right!57226 (left!56896 t!4440))))) tp!2359697 (inv!95801 (right!57226 (right!57226 (right!57226 (left!56896 t!4440))))) tp!2359699))))

(declare-fun b!7936906 () Bool)

(declare-fun e!4683237 () Bool)

(declare-fun tp!2359698 () Bool)

(assert (=> b!7936906 (= e!4683237 tp!2359698)))

(declare-fun b!7936905 () Bool)

(assert (=> b!7936905 (= e!4683236 (and (inv!95802 (xs!19313 (right!57226 (right!57226 (left!56896 t!4440))))) e!4683237))))

(assert (=> b!7936448 (= tp!2359660 (and (inv!95801 (right!57226 (right!57226 (left!56896 t!4440)))) e!4683236))))

(assert (= (and b!7936448 (is-Node!15917 (right!57226 (right!57226 (left!56896 t!4440))))) b!7936904))

(assert (= b!7936905 b!7936906))

(assert (= (and b!7936448 (is-Leaf!30257 (right!57226 (right!57226 (left!56896 t!4440))))) b!7936905))

(declare-fun m!8325452 () Bool)

(assert (=> b!7936904 m!8325452))

(declare-fun m!8325454 () Bool)

(assert (=> b!7936904 m!8325454))

(declare-fun m!8325456 () Bool)

(assert (=> b!7936905 m!8325456))

(assert (=> b!7936448 m!8324646))

(declare-fun b!7936907 () Bool)

(declare-fun e!4683238 () Bool)

(declare-fun tp!2359700 () Bool)

(assert (=> b!7936907 (= e!4683238 (and tp_is_empty!53259 tp!2359700))))

(assert (=> b!7936451 (= tp!2359661 e!4683238)))

(assert (= (and b!7936451 (is-Cons!74463 (t!390288 (innerList!16005 (xs!19313 (right!57226 t!4440)))))) b!7936907))

(declare-fun b!7936908 () Bool)

(declare-fun e!4683239 () Bool)

(declare-fun tp!2359701 () Bool)

(assert (=> b!7936908 (= e!4683239 (and tp_is_empty!53259 tp!2359701))))

(assert (=> b!7936455 (= tp!2359664 e!4683239)))

(assert (= (and b!7936455 (is-Cons!74463 (innerList!16005 (xs!19313 (left!56896 (right!57226 t!4440)))))) b!7936908))

(declare-fun b!7936909 () Bool)

(declare-fun e!4683240 () Bool)

(declare-fun tp!2359702 () Bool)

(assert (=> b!7936909 (= e!4683240 (and tp_is_empty!53259 tp!2359702))))

(assert (=> b!7936444 (= tp!2359654 e!4683240)))

(assert (= (and b!7936444 (is-Cons!74463 (t!390288 (t!390288 (innerList!16005 (xs!19313 t!4440)))))) b!7936909))

(declare-fun b!7936910 () Bool)

(declare-fun e!4683241 () Bool)

(declare-fun tp!2359703 () Bool)

(declare-fun tp!2359705 () Bool)

(assert (=> b!7936910 (= e!4683241 (and (inv!95801 (left!56896 (left!56896 (right!57226 (right!57226 t!4440))))) tp!2359703 (inv!95801 (right!57226 (left!56896 (right!57226 (right!57226 t!4440))))) tp!2359705))))

(declare-fun b!7936912 () Bool)

(declare-fun e!4683242 () Bool)

(declare-fun tp!2359704 () Bool)

(assert (=> b!7936912 (= e!4683242 tp!2359704)))

(declare-fun b!7936911 () Bool)

(assert (=> b!7936911 (= e!4683241 (and (inv!95802 (xs!19313 (left!56896 (right!57226 (right!57226 t!4440))))) e!4683242))))

(assert (=> b!7936456 (= tp!2359666 (and (inv!95801 (left!56896 (right!57226 (right!57226 t!4440)))) e!4683241))))

(assert (= (and b!7936456 (is-Node!15917 (left!56896 (right!57226 (right!57226 t!4440))))) b!7936910))

(assert (= b!7936911 b!7936912))

(assert (= (and b!7936456 (is-Leaf!30257 (left!56896 (right!57226 (right!57226 t!4440))))) b!7936911))

(declare-fun m!8325458 () Bool)

(assert (=> b!7936910 m!8325458))

(declare-fun m!8325460 () Bool)

(assert (=> b!7936910 m!8325460))

(declare-fun m!8325462 () Bool)

(assert (=> b!7936911 m!8325462))

(assert (=> b!7936456 m!8324656))

(declare-fun b!7936913 () Bool)

(declare-fun tp!2359706 () Bool)

(declare-fun e!4683243 () Bool)

(declare-fun tp!2359708 () Bool)

(assert (=> b!7936913 (= e!4683243 (and (inv!95801 (left!56896 (right!57226 (right!57226 (right!57226 t!4440))))) tp!2359706 (inv!95801 (right!57226 (right!57226 (right!57226 (right!57226 t!4440))))) tp!2359708))))

(declare-fun b!7936915 () Bool)

(declare-fun e!4683244 () Bool)

(declare-fun tp!2359707 () Bool)

(assert (=> b!7936915 (= e!4683244 tp!2359707)))

(declare-fun b!7936914 () Bool)

(assert (=> b!7936914 (= e!4683243 (and (inv!95802 (xs!19313 (right!57226 (right!57226 (right!57226 t!4440))))) e!4683244))))

(assert (=> b!7936456 (= tp!2359668 (and (inv!95801 (right!57226 (right!57226 (right!57226 t!4440)))) e!4683243))))

(assert (= (and b!7936456 (is-Node!15917 (right!57226 (right!57226 (right!57226 t!4440))))) b!7936913))

(assert (= b!7936914 b!7936915))

(assert (= (and b!7936456 (is-Leaf!30257 (right!57226 (right!57226 (right!57226 t!4440))))) b!7936914))

(declare-fun m!8325464 () Bool)

(assert (=> b!7936913 m!8325464))

(declare-fun m!8325466 () Bool)

(assert (=> b!7936913 m!8325466))

(declare-fun m!8325468 () Bool)

(assert (=> b!7936914 m!8325468))

(assert (=> b!7936456 m!8324658))

(declare-fun b!7936916 () Bool)

(declare-fun e!4683245 () Bool)

(declare-fun tp!2359709 () Bool)

(assert (=> b!7936916 (= e!4683245 (and tp_is_empty!53259 tp!2359709))))

(assert (=> b!7936450 (= tp!2359659 e!4683245)))

(assert (= (and b!7936450 (is-Cons!74463 (innerList!16005 (xs!19313 (right!57226 (left!56896 t!4440)))))) b!7936916))

(declare-fun b!7936917 () Bool)

(declare-fun e!4683246 () Bool)

(declare-fun tp!2359710 () Bool)

(assert (=> b!7936917 (= e!4683246 (and tp_is_empty!53259 tp!2359710))))

(assert (=> b!7936452 (= tp!2359662 e!4683246)))

(assert (= (and b!7936452 (is-Cons!74463 (t!390288 (innerList!16005 (xs!19313 (left!56896 t!4440)))))) b!7936917))

(declare-fun b!7936918 () Bool)

(declare-fun e!4683247 () Bool)

(declare-fun tp!2359711 () Bool)

(assert (=> b!7936918 (= e!4683247 (and tp_is_empty!53259 tp!2359711))))

(assert (=> b!7936458 (= tp!2359667 e!4683247)))

(assert (= (and b!7936458 (is-Cons!74463 (innerList!16005 (xs!19313 (right!57226 (right!57226 t!4440)))))) b!7936918))

(declare-fun e!4683248 () Bool)

(declare-fun tp!2359714 () Bool)

(declare-fun tp!2359712 () Bool)

(declare-fun b!7936919 () Bool)

(assert (=> b!7936919 (= e!4683248 (and (inv!95801 (left!56896 (left!56896 (left!56896 (left!56896 t!4440))))) tp!2359712 (inv!95801 (right!57226 (left!56896 (left!56896 (left!56896 t!4440))))) tp!2359714))))

(declare-fun b!7936921 () Bool)

(declare-fun e!4683249 () Bool)

(declare-fun tp!2359713 () Bool)

(assert (=> b!7936921 (= e!4683249 tp!2359713)))

(declare-fun b!7936920 () Bool)

(assert (=> b!7936920 (= e!4683248 (and (inv!95802 (xs!19313 (left!56896 (left!56896 (left!56896 t!4440))))) e!4683249))))

(assert (=> b!7936445 (= tp!2359655 (and (inv!95801 (left!56896 (left!56896 (left!56896 t!4440)))) e!4683248))))

(assert (= (and b!7936445 (is-Node!15917 (left!56896 (left!56896 (left!56896 t!4440))))) b!7936919))

(assert (= b!7936920 b!7936921))

(assert (= (and b!7936445 (is-Leaf!30257 (left!56896 (left!56896 (left!56896 t!4440))))) b!7936920))

(declare-fun m!8325470 () Bool)

(assert (=> b!7936919 m!8325470))

(declare-fun m!8325472 () Bool)

(assert (=> b!7936919 m!8325472))

(declare-fun m!8325474 () Bool)

(assert (=> b!7936920 m!8325474))

(assert (=> b!7936445 m!8324638))

(declare-fun b!7936922 () Bool)

(declare-fun tp!2359717 () Bool)

(declare-fun tp!2359715 () Bool)

(declare-fun e!4683250 () Bool)

(assert (=> b!7936922 (= e!4683250 (and (inv!95801 (left!56896 (right!57226 (left!56896 (left!56896 t!4440))))) tp!2359715 (inv!95801 (right!57226 (right!57226 (left!56896 (left!56896 t!4440))))) tp!2359717))))

(declare-fun b!7936924 () Bool)

(declare-fun e!4683251 () Bool)

(declare-fun tp!2359716 () Bool)

(assert (=> b!7936924 (= e!4683251 tp!2359716)))

(declare-fun b!7936923 () Bool)

(assert (=> b!7936923 (= e!4683250 (and (inv!95802 (xs!19313 (right!57226 (left!56896 (left!56896 t!4440))))) e!4683251))))

(assert (=> b!7936445 (= tp!2359657 (and (inv!95801 (right!57226 (left!56896 (left!56896 t!4440)))) e!4683250))))

(assert (= (and b!7936445 (is-Node!15917 (right!57226 (left!56896 (left!56896 t!4440))))) b!7936922))

(assert (= b!7936923 b!7936924))

(assert (= (and b!7936445 (is-Leaf!30257 (right!57226 (left!56896 (left!56896 t!4440))))) b!7936923))

(declare-fun m!8325476 () Bool)

(assert (=> b!7936922 m!8325476))

(declare-fun m!8325478 () Bool)

(assert (=> b!7936922 m!8325478))

(declare-fun m!8325480 () Bool)

(assert (=> b!7936923 m!8325480))

(assert (=> b!7936445 m!8324640))

(declare-fun b!7936925 () Bool)

(declare-fun e!4683252 () Bool)

(declare-fun tp!2359718 () Bool)

(assert (=> b!7936925 (= e!4683252 (and tp_is_empty!53259 tp!2359718))))

(assert (=> b!7936300 (= tp!2359653 e!4683252)))

(assert (= (and b!7936300 (is-Cons!74463 (innerList!16005 _$14!1645))) b!7936925))

(push 1)

(assert (not d!2373476))

(assert (not b!7936904))

(assert (not b!7936761))

(assert (not b!7936803))

(assert (not b!7936825))

(assert (not b!7936814))

(assert (not b!7936743))

(assert (not d!2373414))

(assert (not b!7936915))

(assert (not b!7936637))

(assert (not d!2373504))

(assert (not d!2373616))

(assert (not b!7936741))

(assert (not b!7936893))

(assert (not b!7936821))

(assert (not b!7936781))

(assert (not b!7936640))

(assert (not d!2373464))

(assert (not b!7936670))

(assert (not b!7936697))

(assert (not b!7936764))

(assert (not b!7936694))

(assert (not b!7936912))

(assert (not b!7936717))

(assert (not d!2373624))

(assert (not b!7936718))

(assert (not b!7936758))

(assert (not b!7936672))

(assert (not b!7936746))

(assert (not b!7936902))

(assert (not b!7936925))

(assert (not b!7936661))

(assert (not d!2373466))

(assert (not b!7936922))

(assert (not b!7936713))

(assert (not b!7936658))

(assert (not b!7936921))

(assert (not b!7936840))

(assert (not b!7936842))

(assert (not b!7936456))

(assert (not b!7936448))

(assert (not b!7936754))

(assert (not b!7936887))

(assert (not b!7936889))

(assert (not b!7936738))

(assert (not b!7936775))

(assert (not b!7936771))

(assert (not b!7936783))

(assert (not b!7936827))

(assert (not b!7936653))

(assert (not b!7936667))

(assert (not b!7936679))

(assert (not b!7936768))

(assert (not b!7936648))

(assert (not d!2373532))

(assert (not b!7936684))

(assert (not b!7936919))

(assert (not b!7936728))

(assert (not b!7936665))

(assert (not b!7936799))

(assert (not b!7936798))

(assert (not d!2373586))

(assert (not b!7936730))

(assert (not b!7936733))

(assert (not d!2373556))

(assert (not d!2373620))

(assert (not b!7936824))

(assert (not b!7936747))

(assert (not b!7936453))

(assert (not b!7936918))

(assert (not b!7936899))

(assert (not b!7936650))

(assert (not b!7936763))

(assert (not b!7936841))

(assert (not d!2373472))

(assert (not b!7936638))

(assert (not d!2373546))

(assert (not b!7936924))

(assert (not b!7936801))

(assert (not b!7936845))

(assert (not b!7936736))

(assert (not b!7936769))

(assert (not b!7936805))

(assert (not b!7936911))

(assert tp_is_empty!53259)

(assert (not b!7936724))

(assert (not b!7936674))

(assert (not b!7936767))

(assert (not b!7936868))

(assert (not b!7936880))

(assert (not b!7936772))

(assert (not d!2373622))

(assert (not d!2373474))

(assert (not b!7936920))

(assert (not b!7936908))

(assert (not b!7936844))

(assert (not b!7936770))

(assert (not b!7936895))

(assert (not b!7936662))

(assert (not b!7936704))

(assert (not b!7936752))

(assert (not b!7936756))

(assert (not b!7936909))

(assert (not b!7936635))

(assert (not b!7936830))

(assert (not d!2373560))

(assert (not b!7936744))

(assert (not b!7936685))

(assert (not b!7936700))

(assert (not b!7936871))

(assert (not b!7936872))

(assert (not b!7936657))

(assert (not b!7936687))

(assert (not b!7936760))

(assert (not b!7936683))

(assert (not b!7936885))

(assert (not bm!735671))

(assert (not b!7936905))

(assert (not d!2373628))

(assert (not b!7936789))

(assert (not bm!735670))

(assert (not d!2373576))

(assert (not b!7936843))

(assert (not b!7936759))

(assert (not b!7936663))

(assert (not b!7936897))

(assert (not d!2373488))

(assert (not d!2373652))

(assert (not b!7936816))

(assert (not b!7936706))

(assert (not b!7936903))

(assert (not b!7936877))

(assert (not b!7936901))

(assert (not b!7936630))

(assert (not b!7936664))

(assert (not b!7936813))

(assert (not b!7936709))

(assert (not b!7936702))

(assert (not b!7936907))

(assert (not b!7936745))

(assert (not b!7936817))

(assert (not b!7936780))

(assert (not b!7936790))

(assert (not b!7936835))

(assert (not b!7936785))

(assert (not b!7936675))

(assert (not b!7936714))

(assert (not b!7936782))

(assert (not b!7936784))

(assert (not b!7936691))

(assert (not b!7936914))

(assert (not b!7936910))

(assert (not b!7936865))

(assert (not b!7936822))

(assert (not b!7936680))

(assert (not b!7936689))

(assert (not b!7936819))

(assert (not d!2373516))

(assert (not d!2373512))

(assert (not b!7936645))

(assert (not d!2373446))

(assert (not d!2373436))

(assert (not b!7936891))

(assert (not b!7936812))

(assert (not b!7936856))

(assert (not b!7936876))

(assert (not b!7936445))

(assert (not b!7936900))

(assert (not d!2373406))

(assert (not b!7936692))

(assert (not b!7936795))

(assert (not b!7936699))

(assert (not b!7936652))

(assert (not b!7936703))

(assert (not b!7936766))

(assert (not b!7936762))

(assert (not b!7936779))

(assert (not b!7936913))

(assert (not b!7936815))

(assert (not d!2373570))

(assert (not b!7936898))

(assert (not b!7936860))

(assert (not b!7936748))

(assert (not b!7936864))

(assert (not d!2373490))

(assert (not b!7936708))

(assert (not b!7936906))

(assert (not b!7936776))

(assert (not b!7936869))

(assert (not b!7936837))

(assert (not b!7936726))

(assert (not b!7936644))

(assert (not b!7936642))

(assert (not b!7936807))

(assert (not b!7936855))

(assert (not b!7936851))

(assert (not b!7936832))

(assert (not d!2373444))

(assert (not b!7936883))

(assert (not b!7936894))

(assert (not b!7936734))

(assert (not b!7936695))

(assert (not d!2373428))

(assert (not d!2373534))

(assert (not b!7936787))

(assert (not d!2373630))

(assert (not b!7936731))

(assert (not b!7936634))

(assert (not b!7936833))

(assert (not b!7936917))

(assert (not b!7936721))

(assert (not b!7936632))

(assert (not d!2373636))

(assert (not d!2373454))

(assert (not b!7936853))

(assert (not d!2373514))

(assert (not d!2373426))

(assert (not b!7936916))

(assert (not d!2373584))

(assert (not b!7936668))

(assert (not b!7936896))

(assert (not b!7936720))

(assert (not d!2373642))

(assert (not b!7936701))

(assert (not b!7936794))

(assert (not b!7936923))

(assert (not b!7936849))

(assert (not b!7936750))

(assert (not b!7936859))

(assert (not b!7936773))

(assert (not b!7936810))

(assert (not b!7936881))

(assert (not b!7936666))

(assert (not d!2373542))

(assert (not b!7936829))

(assert (not b!7936847))

(assert (not d!2373492))

(assert (not d!2373482))

(assert (not b!7936839))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

