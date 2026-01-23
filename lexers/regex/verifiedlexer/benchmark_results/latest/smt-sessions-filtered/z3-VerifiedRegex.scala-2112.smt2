; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106844 () Bool)

(assert start!106844)

(declare-fun b!1200016 () Bool)

(declare-fun res!541140 () Bool)

(declare-fun e!770295 () Bool)

(assert (=> b!1200016 (=> (not res!541140) (not e!770295))))

(declare-fun until!31 () Int)

(declare-datatypes ((T!21782 0))(
  ( (T!21783 (val!3888 Int)) )
))
(declare-datatypes ((List!12067 0))(
  ( (Nil!12043) (Cons!12043 (h!17444 T!21782) (t!112435 List!12067)) )
))
(declare-datatypes ((IArray!7957 0))(
  ( (IArray!7958 (innerList!4036 List!12067)) )
))
(declare-datatypes ((Conc!3976 0))(
  ( (Node!3976 (left!10512 Conc!3976) (right!10842 Conc!3976) (csize!8182 Int) (cheight!4187 Int)) (Leaf!6089 (xs!6683 IArray!7957) (csize!8183 Int)) (Empty!3976) )
))
(declare-fun t!4115 () Conc!3976)

(declare-fun size!9570 (Conc!3976) Int)

(assert (=> b!1200016 (= res!541140 (<= until!31 (size!9570 t!4115)))))

(declare-fun e!770292 () Bool)

(declare-fun b!1200017 () Bool)

(declare-fun tp!341209 () Bool)

(declare-fun tp!341210 () Bool)

(declare-fun inv!16115 (Conc!3976) Bool)

(assert (=> b!1200017 (= e!770292 (and (inv!16115 (left!10512 t!4115)) tp!341209 (inv!16115 (right!10842 t!4115)) tp!341210))))

(declare-fun b!1200018 () Bool)

(declare-fun e!770298 () Bool)

(declare-fun e!770297 () Bool)

(assert (=> b!1200018 (= e!770298 e!770297)))

(declare-fun res!541139 () Bool)

(assert (=> b!1200018 (=> (not res!541139) (not e!770297))))

(declare-fun lt!410762 () Conc!3976)

(declare-fun isBalanced!1161 (Conc!3976) Bool)

(assert (=> b!1200018 (= res!541139 (isBalanced!1161 lt!410762))))

(declare-fun from!553 () Int)

(declare-fun slice!472 (Conc!3976 Int Int) Conc!3976)

(assert (=> b!1200018 (= lt!410762 (slice!472 (left!10512 t!4115) from!553 until!31))))

(declare-fun b!1200019 () Bool)

(declare-fun list!4485 (Conc!3976) List!12067)

(declare-fun slice!473 (List!12067 Int Int) List!12067)

(assert (=> b!1200019 (= e!770297 (= (list!4485 lt!410762) (slice!473 (list!4485 t!4115) from!553 until!31)))))

(declare-fun b!1200020 () Bool)

(declare-fun e!770294 () Bool)

(declare-fun tp!341211 () Bool)

(assert (=> b!1200020 (= e!770294 tp!341211)))

(declare-fun b!1200021 () Bool)

(declare-fun inv!16116 (IArray!7957) Bool)

(assert (=> b!1200021 (= e!770292 (and (inv!16116 (xs!6683 t!4115)) e!770294))))

(declare-fun b!1200022 () Bool)

(declare-fun e!770293 () Bool)

(declare-fun lt!410765 () List!12067)

(declare-fun e!770296 () List!12067)

(assert (=> b!1200022 (= e!770293 (= lt!410765 e!770296))))

(declare-fun c!199860 () Bool)

(declare-fun lt!410766 () Int)

(assert (=> b!1200022 (= c!199860 (<= until!31 lt!410766))))

(declare-fun b!1200023 () Bool)

(declare-fun call!83468 () List!12067)

(assert (=> b!1200023 (= e!770296 call!83468)))

(declare-fun bm!83462 () Bool)

(declare-fun lt!410768 () List!12067)

(declare-fun call!83467 () List!12067)

(declare-fun lt!410763 () List!12067)

(declare-fun c!199859 () Bool)

(assert (=> bm!83462 (= call!83467 (slice!473 (ite c!199859 lt!410763 (ite c!199860 lt!410768 lt!410763)) (ite c!199859 (- from!553 lt!410766) (ite c!199860 from!553 0)) (ite c!199859 (- until!31 lt!410766) (ite c!199860 until!31 (- until!31 lt!410766)))))))

(declare-fun b!1200024 () Bool)

(declare-fun res!541141 () Bool)

(assert (=> b!1200024 (=> (not res!541141) (not e!770295))))

(assert (=> b!1200024 (= res!541141 (isBalanced!1161 t!4115))))

(declare-fun res!541143 () Bool)

(assert (=> start!106844 (=> (not res!541143) (not e!770295))))

(assert (=> start!106844 (= res!541143 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> start!106844 e!770295))

(assert (=> start!106844 true))

(assert (=> start!106844 (and (inv!16115 t!4115) e!770292)))

(declare-fun b!1200025 () Bool)

(assert (=> b!1200025 (= e!770295 (not e!770298))))

(declare-fun res!541144 () Bool)

(assert (=> b!1200025 (=> res!541144 e!770298)))

(declare-fun lt!410764 () Int)

(assert (=> b!1200025 (= res!541144 (or (<= lt!410764 from!553) (> until!31 lt!410764)))))

(assert (=> b!1200025 (= lt!410764 (size!9570 (left!10512 t!4115)))))

(assert (=> b!1200025 e!770293))

(assert (=> b!1200025 (= c!199859 (<= lt!410766 from!553))))

(declare-fun ++!3080 (List!12067 List!12067) List!12067)

(assert (=> b!1200025 (= lt!410765 (slice!473 (++!3080 lt!410768 lt!410763) from!553 until!31))))

(declare-fun size!9571 (List!12067) Int)

(assert (=> b!1200025 (= lt!410766 (size!9571 lt!410768))))

(declare-datatypes ((Unit!18456 0))(
  ( (Unit!18457) )
))
(declare-fun lt!410767 () Unit!18456)

(declare-fun sliceLemma!39 (List!12067 List!12067 Int Int) Unit!18456)

(assert (=> b!1200025 (= lt!410767 (sliceLemma!39 lt!410768 lt!410763 from!553 until!31))))

(assert (=> b!1200025 (= lt!410763 (list!4485 (right!10842 t!4115)))))

(assert (=> b!1200025 (= lt!410768 (list!4485 (left!10512 t!4115)))))

(declare-fun b!1200026 () Bool)

(assert (=> b!1200026 (= e!770296 (++!3080 (slice!473 lt!410768 from!553 lt!410766) call!83468))))

(declare-fun b!1200027 () Bool)

(declare-fun res!541142 () Bool)

(assert (=> b!1200027 (=> (not res!541142) (not e!770295))))

(get-info :version)

(assert (=> b!1200027 (= res!541142 (and (not (= from!553 until!31)) (not ((_ is Leaf!6089) t!4115)) ((_ is Node!3976) t!4115)))))

(declare-fun b!1200028 () Bool)

(assert (=> b!1200028 (= e!770293 (= lt!410765 call!83467))))

(declare-fun bm!83463 () Bool)

(assert (=> bm!83463 (= call!83468 call!83467)))

(assert (= (and start!106844 res!541143) b!1200016))

(assert (= (and b!1200016 res!541140) b!1200024))

(assert (= (and b!1200024 res!541141) b!1200027))

(assert (= (and b!1200027 res!541142) b!1200025))

(assert (= (and b!1200025 c!199859) b!1200028))

(assert (= (and b!1200025 (not c!199859)) b!1200022))

(assert (= (and b!1200022 c!199860) b!1200023))

(assert (= (and b!1200022 (not c!199860)) b!1200026))

(assert (= (or b!1200023 b!1200026) bm!83463))

(assert (= (or b!1200028 bm!83463) bm!83462))

(assert (= (and b!1200025 (not res!541144)) b!1200018))

(assert (= (and b!1200018 res!541139) b!1200019))

(assert (= (and start!106844 ((_ is Node!3976) t!4115)) b!1200017))

(assert (= b!1200021 b!1200020))

(assert (= (and start!106844 ((_ is Leaf!6089) t!4115)) b!1200021))

(declare-fun m!1375543 () Bool)

(assert (=> b!1200025 m!1375543))

(declare-fun m!1375545 () Bool)

(assert (=> b!1200025 m!1375545))

(declare-fun m!1375547 () Bool)

(assert (=> b!1200025 m!1375547))

(declare-fun m!1375549 () Bool)

(assert (=> b!1200025 m!1375549))

(declare-fun m!1375551 () Bool)

(assert (=> b!1200025 m!1375551))

(declare-fun m!1375553 () Bool)

(assert (=> b!1200025 m!1375553))

(declare-fun m!1375555 () Bool)

(assert (=> b!1200025 m!1375555))

(assert (=> b!1200025 m!1375545))

(declare-fun m!1375557 () Bool)

(assert (=> b!1200026 m!1375557))

(assert (=> b!1200026 m!1375557))

(declare-fun m!1375559 () Bool)

(assert (=> b!1200026 m!1375559))

(declare-fun m!1375561 () Bool)

(assert (=> start!106844 m!1375561))

(declare-fun m!1375563 () Bool)

(assert (=> bm!83462 m!1375563))

(declare-fun m!1375565 () Bool)

(assert (=> b!1200018 m!1375565))

(declare-fun m!1375567 () Bool)

(assert (=> b!1200018 m!1375567))

(declare-fun m!1375569 () Bool)

(assert (=> b!1200017 m!1375569))

(declare-fun m!1375571 () Bool)

(assert (=> b!1200017 m!1375571))

(declare-fun m!1375573 () Bool)

(assert (=> b!1200021 m!1375573))

(declare-fun m!1375575 () Bool)

(assert (=> b!1200016 m!1375575))

(declare-fun m!1375577 () Bool)

(assert (=> b!1200019 m!1375577))

(declare-fun m!1375579 () Bool)

(assert (=> b!1200019 m!1375579))

(assert (=> b!1200019 m!1375579))

(declare-fun m!1375581 () Bool)

(assert (=> b!1200019 m!1375581))

(declare-fun m!1375583 () Bool)

(assert (=> b!1200024 m!1375583))

(check-sat (not b!1200021) (not b!1200018) (not b!1200019) (not b!1200024) (not bm!83462) (not b!1200020) (not b!1200025) (not b!1200017) (not start!106844) (not b!1200016) (not b!1200026))
(check-sat)
(get-model)

(declare-fun d!343159 () Bool)

(declare-fun c!199863 () Bool)

(assert (=> d!343159 (= c!199863 ((_ is Node!3976) t!4115))))

(declare-fun e!770303 () Bool)

(assert (=> d!343159 (= (inv!16115 t!4115) e!770303)))

(declare-fun b!1200035 () Bool)

(declare-fun inv!16117 (Conc!3976) Bool)

(assert (=> b!1200035 (= e!770303 (inv!16117 t!4115))))

(declare-fun b!1200036 () Bool)

(declare-fun e!770304 () Bool)

(assert (=> b!1200036 (= e!770303 e!770304)))

(declare-fun res!541147 () Bool)

(assert (=> b!1200036 (= res!541147 (not ((_ is Leaf!6089) t!4115)))))

(assert (=> b!1200036 (=> res!541147 e!770304)))

(declare-fun b!1200037 () Bool)

(declare-fun inv!16118 (Conc!3976) Bool)

(assert (=> b!1200037 (= e!770304 (inv!16118 t!4115))))

(assert (= (and d!343159 c!199863) b!1200035))

(assert (= (and d!343159 (not c!199863)) b!1200036))

(assert (= (and b!1200036 (not res!541147)) b!1200037))

(declare-fun m!1375585 () Bool)

(assert (=> b!1200035 m!1375585))

(declare-fun m!1375587 () Bool)

(assert (=> b!1200037 m!1375587))

(assert (=> start!106844 d!343159))

(declare-fun d!343163 () Bool)

(declare-fun lt!410771 () Int)

(assert (=> d!343163 (= lt!410771 (size!9571 (list!4485 t!4115)))))

(assert (=> d!343163 (= lt!410771 (ite ((_ is Empty!3976) t!4115) 0 (ite ((_ is Leaf!6089) t!4115) (csize!8183 t!4115) (csize!8182 t!4115))))))

(assert (=> d!343163 (= (size!9570 t!4115) lt!410771)))

(declare-fun bs!288247 () Bool)

(assert (= bs!288247 d!343163))

(assert (=> bs!288247 m!1375579))

(assert (=> bs!288247 m!1375579))

(declare-fun m!1375589 () Bool)

(assert (=> bs!288247 m!1375589))

(assert (=> b!1200016 d!343163))

(declare-fun b!1200064 () Bool)

(declare-fun e!770315 () List!12067)

(assert (=> b!1200064 (= e!770315 call!83468)))

(declare-fun b!1200065 () Bool)

(assert (=> b!1200065 (= e!770315 (Cons!12043 (h!17444 (slice!473 lt!410768 from!553 lt!410766)) (++!3080 (t!112435 (slice!473 lt!410768 from!553 lt!410766)) call!83468)))))

(declare-fun b!1200066 () Bool)

(declare-fun res!541171 () Bool)

(declare-fun e!770316 () Bool)

(assert (=> b!1200066 (=> (not res!541171) (not e!770316))))

(declare-fun lt!410774 () List!12067)

(assert (=> b!1200066 (= res!541171 (= (size!9571 lt!410774) (+ (size!9571 (slice!473 lt!410768 from!553 lt!410766)) (size!9571 call!83468))))))

(declare-fun d!343165 () Bool)

(assert (=> d!343165 e!770316))

(declare-fun res!541170 () Bool)

(assert (=> d!343165 (=> (not res!541170) (not e!770316))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1689 (List!12067) (InoxSet T!21782))

(assert (=> d!343165 (= res!541170 (= (content!1689 lt!410774) ((_ map or) (content!1689 (slice!473 lt!410768 from!553 lt!410766)) (content!1689 call!83468))))))

(assert (=> d!343165 (= lt!410774 e!770315)))

(declare-fun c!199866 () Bool)

(assert (=> d!343165 (= c!199866 ((_ is Nil!12043) (slice!473 lt!410768 from!553 lt!410766)))))

(assert (=> d!343165 (= (++!3080 (slice!473 lt!410768 from!553 lt!410766) call!83468) lt!410774)))

(declare-fun b!1200067 () Bool)

(assert (=> b!1200067 (= e!770316 (or (not (= call!83468 Nil!12043)) (= lt!410774 (slice!473 lt!410768 from!553 lt!410766))))))

(assert (= (and d!343165 c!199866) b!1200064))

(assert (= (and d!343165 (not c!199866)) b!1200065))

(assert (= (and d!343165 res!541170) b!1200066))

(assert (= (and b!1200066 res!541171) b!1200067))

(declare-fun m!1375603 () Bool)

(assert (=> b!1200065 m!1375603))

(declare-fun m!1375605 () Bool)

(assert (=> b!1200066 m!1375605))

(assert (=> b!1200066 m!1375557))

(declare-fun m!1375607 () Bool)

(assert (=> b!1200066 m!1375607))

(declare-fun m!1375609 () Bool)

(assert (=> b!1200066 m!1375609))

(declare-fun m!1375611 () Bool)

(assert (=> d!343165 m!1375611))

(assert (=> d!343165 m!1375557))

(declare-fun m!1375613 () Bool)

(assert (=> d!343165 m!1375613))

(declare-fun m!1375615 () Bool)

(assert (=> d!343165 m!1375615))

(assert (=> b!1200026 d!343165))

(declare-fun d!343169 () Bool)

(declare-fun take!129 (List!12067 Int) List!12067)

(declare-fun drop!601 (List!12067 Int) List!12067)

(assert (=> d!343169 (= (slice!473 lt!410768 from!553 lt!410766) (take!129 (drop!601 lt!410768 from!553) (- lt!410766 from!553)))))

(declare-fun bs!288248 () Bool)

(assert (= bs!288248 d!343169))

(declare-fun m!1375617 () Bool)

(assert (=> bs!288248 m!1375617))

(assert (=> bs!288248 m!1375617))

(declare-fun m!1375619 () Bool)

(assert (=> bs!288248 m!1375619))

(assert (=> b!1200026 d!343169))

(declare-fun d!343171 () Bool)

(declare-fun c!199867 () Bool)

(assert (=> d!343171 (= c!199867 ((_ is Node!3976) (left!10512 t!4115)))))

(declare-fun e!770317 () Bool)

(assert (=> d!343171 (= (inv!16115 (left!10512 t!4115)) e!770317)))

(declare-fun b!1200068 () Bool)

(assert (=> b!1200068 (= e!770317 (inv!16117 (left!10512 t!4115)))))

(declare-fun b!1200069 () Bool)

(declare-fun e!770318 () Bool)

(assert (=> b!1200069 (= e!770317 e!770318)))

(declare-fun res!541172 () Bool)

(assert (=> b!1200069 (= res!541172 (not ((_ is Leaf!6089) (left!10512 t!4115))))))

(assert (=> b!1200069 (=> res!541172 e!770318)))

(declare-fun b!1200070 () Bool)

(assert (=> b!1200070 (= e!770318 (inv!16118 (left!10512 t!4115)))))

(assert (= (and d!343171 c!199867) b!1200068))

(assert (= (and d!343171 (not c!199867)) b!1200069))

(assert (= (and b!1200069 (not res!541172)) b!1200070))

(declare-fun m!1375621 () Bool)

(assert (=> b!1200068 m!1375621))

(declare-fun m!1375623 () Bool)

(assert (=> b!1200070 m!1375623))

(assert (=> b!1200017 d!343171))

(declare-fun d!343173 () Bool)

(declare-fun c!199868 () Bool)

(assert (=> d!343173 (= c!199868 ((_ is Node!3976) (right!10842 t!4115)))))

(declare-fun e!770319 () Bool)

(assert (=> d!343173 (= (inv!16115 (right!10842 t!4115)) e!770319)))

(declare-fun b!1200071 () Bool)

(assert (=> b!1200071 (= e!770319 (inv!16117 (right!10842 t!4115)))))

(declare-fun b!1200072 () Bool)

(declare-fun e!770320 () Bool)

(assert (=> b!1200072 (= e!770319 e!770320)))

(declare-fun res!541173 () Bool)

(assert (=> b!1200072 (= res!541173 (not ((_ is Leaf!6089) (right!10842 t!4115))))))

(assert (=> b!1200072 (=> res!541173 e!770320)))

(declare-fun b!1200073 () Bool)

(assert (=> b!1200073 (= e!770320 (inv!16118 (right!10842 t!4115)))))

(assert (= (and d!343173 c!199868) b!1200071))

(assert (= (and d!343173 (not c!199868)) b!1200072))

(assert (= (and b!1200072 (not res!541173)) b!1200073))

(declare-fun m!1375625 () Bool)

(assert (=> b!1200071 m!1375625))

(declare-fun m!1375627 () Bool)

(assert (=> b!1200073 m!1375627))

(assert (=> b!1200017 d!343173))

(declare-fun b!1200074 () Bool)

(declare-fun e!770321 () List!12067)

(assert (=> b!1200074 (= e!770321 lt!410763)))

(declare-fun b!1200075 () Bool)

(assert (=> b!1200075 (= e!770321 (Cons!12043 (h!17444 lt!410768) (++!3080 (t!112435 lt!410768) lt!410763)))))

(declare-fun b!1200076 () Bool)

(declare-fun res!541175 () Bool)

(declare-fun e!770322 () Bool)

(assert (=> b!1200076 (=> (not res!541175) (not e!770322))))

(declare-fun lt!410775 () List!12067)

(assert (=> b!1200076 (= res!541175 (= (size!9571 lt!410775) (+ (size!9571 lt!410768) (size!9571 lt!410763))))))

(declare-fun d!343175 () Bool)

(assert (=> d!343175 e!770322))

(declare-fun res!541174 () Bool)

(assert (=> d!343175 (=> (not res!541174) (not e!770322))))

(assert (=> d!343175 (= res!541174 (= (content!1689 lt!410775) ((_ map or) (content!1689 lt!410768) (content!1689 lt!410763))))))

(assert (=> d!343175 (= lt!410775 e!770321)))

(declare-fun c!199869 () Bool)

(assert (=> d!343175 (= c!199869 ((_ is Nil!12043) lt!410768))))

(assert (=> d!343175 (= (++!3080 lt!410768 lt!410763) lt!410775)))

(declare-fun b!1200077 () Bool)

(assert (=> b!1200077 (= e!770322 (or (not (= lt!410763 Nil!12043)) (= lt!410775 lt!410768)))))

(assert (= (and d!343175 c!199869) b!1200074))

(assert (= (and d!343175 (not c!199869)) b!1200075))

(assert (= (and d!343175 res!541174) b!1200076))

(assert (= (and b!1200076 res!541175) b!1200077))

(declare-fun m!1375629 () Bool)

(assert (=> b!1200075 m!1375629))

(declare-fun m!1375631 () Bool)

(assert (=> b!1200076 m!1375631))

(assert (=> b!1200076 m!1375549))

(declare-fun m!1375633 () Bool)

(assert (=> b!1200076 m!1375633))

(declare-fun m!1375635 () Bool)

(assert (=> d!343175 m!1375635))

(declare-fun m!1375637 () Bool)

(assert (=> d!343175 m!1375637))

(declare-fun m!1375639 () Bool)

(assert (=> d!343175 m!1375639))

(assert (=> b!1200025 d!343175))

(declare-fun d!343177 () Bool)

(declare-fun lt!410776 () Int)

(assert (=> d!343177 (= lt!410776 (size!9571 (list!4485 (left!10512 t!4115))))))

(assert (=> d!343177 (= lt!410776 (ite ((_ is Empty!3976) (left!10512 t!4115)) 0 (ite ((_ is Leaf!6089) (left!10512 t!4115)) (csize!8183 (left!10512 t!4115)) (csize!8182 (left!10512 t!4115)))))))

(assert (=> d!343177 (= (size!9570 (left!10512 t!4115)) lt!410776)))

(declare-fun bs!288249 () Bool)

(assert (= bs!288249 d!343177))

(assert (=> bs!288249 m!1375543))

(assert (=> bs!288249 m!1375543))

(declare-fun m!1375641 () Bool)

(assert (=> bs!288249 m!1375641))

(assert (=> b!1200025 d!343177))

(declare-fun b!1200086 () Bool)

(declare-fun e!770327 () List!12067)

(assert (=> b!1200086 (= e!770327 Nil!12043)))

(declare-fun b!1200088 () Bool)

(declare-fun e!770328 () List!12067)

(declare-fun list!4487 (IArray!7957) List!12067)

(assert (=> b!1200088 (= e!770328 (list!4487 (xs!6683 (left!10512 t!4115))))))

(declare-fun b!1200087 () Bool)

(assert (=> b!1200087 (= e!770327 e!770328)))

(declare-fun c!199875 () Bool)

(assert (=> b!1200087 (= c!199875 ((_ is Leaf!6089) (left!10512 t!4115)))))

(declare-fun b!1200089 () Bool)

(assert (=> b!1200089 (= e!770328 (++!3080 (list!4485 (left!10512 (left!10512 t!4115))) (list!4485 (right!10842 (left!10512 t!4115)))))))

(declare-fun d!343179 () Bool)

(declare-fun c!199874 () Bool)

(assert (=> d!343179 (= c!199874 ((_ is Empty!3976) (left!10512 t!4115)))))

(assert (=> d!343179 (= (list!4485 (left!10512 t!4115)) e!770327)))

(assert (= (and d!343179 c!199874) b!1200086))

(assert (= (and d!343179 (not c!199874)) b!1200087))

(assert (= (and b!1200087 c!199875) b!1200088))

(assert (= (and b!1200087 (not c!199875)) b!1200089))

(declare-fun m!1375643 () Bool)

(assert (=> b!1200088 m!1375643))

(declare-fun m!1375645 () Bool)

(assert (=> b!1200089 m!1375645))

(declare-fun m!1375647 () Bool)

(assert (=> b!1200089 m!1375647))

(assert (=> b!1200089 m!1375645))

(assert (=> b!1200089 m!1375647))

(declare-fun m!1375649 () Bool)

(assert (=> b!1200089 m!1375649))

(assert (=> b!1200025 d!343179))

(declare-fun d!343181 () Bool)

(assert (=> d!343181 (= (slice!473 (++!3080 lt!410768 lt!410763) from!553 until!31) (take!129 (drop!601 (++!3080 lt!410768 lt!410763) from!553) (- until!31 from!553)))))

(declare-fun bs!288250 () Bool)

(assert (= bs!288250 d!343181))

(assert (=> bs!288250 m!1375545))

(declare-fun m!1375651 () Bool)

(assert (=> bs!288250 m!1375651))

(assert (=> bs!288250 m!1375651))

(declare-fun m!1375653 () Bool)

(assert (=> bs!288250 m!1375653))

(assert (=> b!1200025 d!343181))

(declare-fun b!1200090 () Bool)

(declare-fun e!770329 () List!12067)

(assert (=> b!1200090 (= e!770329 Nil!12043)))

(declare-fun b!1200092 () Bool)

(declare-fun e!770330 () List!12067)

(assert (=> b!1200092 (= e!770330 (list!4487 (xs!6683 (right!10842 t!4115))))))

(declare-fun b!1200091 () Bool)

(assert (=> b!1200091 (= e!770329 e!770330)))

(declare-fun c!199877 () Bool)

(assert (=> b!1200091 (= c!199877 ((_ is Leaf!6089) (right!10842 t!4115)))))

(declare-fun b!1200093 () Bool)

(assert (=> b!1200093 (= e!770330 (++!3080 (list!4485 (left!10512 (right!10842 t!4115))) (list!4485 (right!10842 (right!10842 t!4115)))))))

(declare-fun d!343183 () Bool)

(declare-fun c!199876 () Bool)

(assert (=> d!343183 (= c!199876 ((_ is Empty!3976) (right!10842 t!4115)))))

(assert (=> d!343183 (= (list!4485 (right!10842 t!4115)) e!770329)))

(assert (= (and d!343183 c!199876) b!1200090))

(assert (= (and d!343183 (not c!199876)) b!1200091))

(assert (= (and b!1200091 c!199877) b!1200092))

(assert (= (and b!1200091 (not c!199877)) b!1200093))

(declare-fun m!1375655 () Bool)

(assert (=> b!1200092 m!1375655))

(declare-fun m!1375657 () Bool)

(assert (=> b!1200093 m!1375657))

(declare-fun m!1375659 () Bool)

(assert (=> b!1200093 m!1375659))

(assert (=> b!1200093 m!1375657))

(assert (=> b!1200093 m!1375659))

(declare-fun m!1375661 () Bool)

(assert (=> b!1200093 m!1375661))

(assert (=> b!1200025 d!343183))

(declare-fun d!343185 () Bool)

(declare-fun lt!410779 () Int)

(assert (=> d!343185 (>= lt!410779 0)))

(declare-fun e!770333 () Int)

(assert (=> d!343185 (= lt!410779 e!770333)))

(declare-fun c!199880 () Bool)

(assert (=> d!343185 (= c!199880 ((_ is Nil!12043) lt!410768))))

(assert (=> d!343185 (= (size!9571 lt!410768) lt!410779)))

(declare-fun b!1200098 () Bool)

(assert (=> b!1200098 (= e!770333 0)))

(declare-fun b!1200099 () Bool)

(assert (=> b!1200099 (= e!770333 (+ 1 (size!9571 (t!112435 lt!410768))))))

(assert (= (and d!343185 c!199880) b!1200098))

(assert (= (and d!343185 (not c!199880)) b!1200099))

(declare-fun m!1375663 () Bool)

(assert (=> b!1200099 m!1375663))

(assert (=> b!1200025 d!343185))

(declare-fun b!1200154 () Bool)

(declare-fun e!770362 () List!12067)

(declare-fun call!83488 () List!12067)

(assert (=> b!1200154 (= e!770362 call!83488)))

(declare-fun b!1200155 () Bool)

(declare-fun e!770364 () List!12067)

(declare-fun call!83487 () List!12067)

(assert (=> b!1200155 (= e!770364 call!83487)))

(declare-fun b!1200156 () Bool)

(assert (=> b!1200156 (= e!770362 e!770364)))

(declare-fun c!199905 () Bool)

(declare-fun call!83489 () Int)

(assert (=> b!1200156 (= c!199905 (<= until!31 call!83489))))

(declare-fun bm!83482 () Bool)

(assert (=> bm!83482 (= call!83489 (size!9571 lt!410768))))

(declare-fun b!1200157 () Bool)

(declare-fun e!770363 () Int)

(assert (=> b!1200157 (= e!770363 call!83489)))

(declare-fun b!1200159 () Bool)

(assert (=> b!1200159 (= e!770364 (++!3080 call!83487 (slice!473 lt!410763 0 (- until!31 call!83489))))))

(declare-fun e!770365 () Bool)

(declare-fun b!1200160 () Bool)

(assert (=> b!1200160 (= e!770365 (<= until!31 (+ (size!9571 lt!410768) (size!9571 lt!410763))))))

(declare-fun c!199906 () Bool)

(declare-fun bm!83483 () Bool)

(assert (=> bm!83483 (= call!83488 (slice!473 (ite c!199906 lt!410763 lt!410768) (ite c!199906 (- from!553 call!83489) from!553) (ite c!199906 (- until!31 call!83489) e!770363)))))

(declare-fun bm!83484 () Bool)

(declare-fun c!199907 () Bool)

(assert (=> bm!83484 (= c!199907 c!199905)))

(assert (=> bm!83484 (= call!83487 call!83488)))

(declare-fun d!343187 () Bool)

(assert (=> d!343187 (= (slice!473 (++!3080 lt!410768 lt!410763) from!553 until!31) e!770362)))

(assert (=> d!343187 (= c!199906 (<= (size!9571 lt!410768) from!553))))

(declare-fun lt!410792 () Unit!18456)

(declare-fun choose!7732 (List!12067 List!12067 Int Int) Unit!18456)

(assert (=> d!343187 (= lt!410792 (choose!7732 lt!410768 lt!410763 from!553 until!31))))

(assert (=> d!343187 e!770365))

(declare-fun res!541182 () Bool)

(assert (=> d!343187 (=> (not res!541182) (not e!770365))))

(assert (=> d!343187 (= res!541182 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> d!343187 (= (sliceLemma!39 lt!410768 lt!410763 from!553 until!31) lt!410792)))

(declare-fun b!1200158 () Bool)

(assert (=> b!1200158 (= e!770363 until!31)))

(assert (= (and d!343187 res!541182) b!1200160))

(assert (= (and d!343187 c!199906) b!1200154))

(assert (= (and d!343187 (not c!199906)) b!1200156))

(assert (= (and b!1200156 c!199905) b!1200155))

(assert (= (and b!1200156 (not c!199905)) b!1200159))

(assert (= (or b!1200155 b!1200159) bm!83484))

(assert (= (and bm!83484 c!199907) b!1200158))

(assert (= (and bm!83484 (not c!199907)) b!1200157))

(assert (= (or b!1200154 b!1200156 b!1200157 b!1200159) bm!83482))

(assert (= (or b!1200154 bm!83484) bm!83483))

(assert (=> bm!83482 m!1375549))

(assert (=> d!343187 m!1375545))

(assert (=> d!343187 m!1375545))

(assert (=> d!343187 m!1375547))

(assert (=> d!343187 m!1375549))

(declare-fun m!1375665 () Bool)

(assert (=> d!343187 m!1375665))

(assert (=> b!1200160 m!1375549))

(assert (=> b!1200160 m!1375633))

(declare-fun m!1375667 () Bool)

(assert (=> b!1200159 m!1375667))

(assert (=> b!1200159 m!1375667))

(declare-fun m!1375669 () Bool)

(assert (=> b!1200159 m!1375669))

(declare-fun m!1375671 () Bool)

(assert (=> bm!83483 m!1375671))

(assert (=> b!1200025 d!343187))

(declare-fun d!343189 () Bool)

(assert (=> d!343189 (= (inv!16116 (xs!6683 t!4115)) (<= (size!9571 (innerList!4036 (xs!6683 t!4115))) 2147483647))))

(declare-fun bs!288251 () Bool)

(assert (= bs!288251 d!343189))

(declare-fun m!1375673 () Bool)

(assert (=> bs!288251 m!1375673))

(assert (=> b!1200021 d!343189))

(declare-fun d!343191 () Bool)

(assert (=> d!343191 (= (slice!473 (ite c!199859 lt!410763 (ite c!199860 lt!410768 lt!410763)) (ite c!199859 (- from!553 lt!410766) (ite c!199860 from!553 0)) (ite c!199859 (- until!31 lt!410766) (ite c!199860 until!31 (- until!31 lt!410766)))) (take!129 (drop!601 (ite c!199859 lt!410763 (ite c!199860 lt!410768 lt!410763)) (ite c!199859 (- from!553 lt!410766) (ite c!199860 from!553 0))) (- (ite c!199859 (- until!31 lt!410766) (ite c!199860 until!31 (- until!31 lt!410766))) (ite c!199859 (- from!553 lt!410766) (ite c!199860 from!553 0)))))))

(declare-fun bs!288252 () Bool)

(assert (= bs!288252 d!343191))

(declare-fun m!1375675 () Bool)

(assert (=> bs!288252 m!1375675))

(assert (=> bs!288252 m!1375675))

(declare-fun m!1375677 () Bool)

(assert (=> bs!288252 m!1375677))

(assert (=> bm!83462 d!343191))

(declare-fun b!1200163 () Bool)

(declare-fun e!770368 () List!12067)

(assert (=> b!1200163 (= e!770368 Nil!12043)))

(declare-fun b!1200165 () Bool)

(declare-fun e!770369 () List!12067)

(assert (=> b!1200165 (= e!770369 (list!4487 (xs!6683 lt!410762)))))

(declare-fun b!1200164 () Bool)

(assert (=> b!1200164 (= e!770368 e!770369)))

(declare-fun c!199909 () Bool)

(assert (=> b!1200164 (= c!199909 ((_ is Leaf!6089) lt!410762))))

(declare-fun b!1200166 () Bool)

(assert (=> b!1200166 (= e!770369 (++!3080 (list!4485 (left!10512 lt!410762)) (list!4485 (right!10842 lt!410762))))))

(declare-fun d!343193 () Bool)

(declare-fun c!199908 () Bool)

(assert (=> d!343193 (= c!199908 ((_ is Empty!3976) lt!410762))))

(assert (=> d!343193 (= (list!4485 lt!410762) e!770368)))

(assert (= (and d!343193 c!199908) b!1200163))

(assert (= (and d!343193 (not c!199908)) b!1200164))

(assert (= (and b!1200164 c!199909) b!1200165))

(assert (= (and b!1200164 (not c!199909)) b!1200166))

(declare-fun m!1375679 () Bool)

(assert (=> b!1200165 m!1375679))

(declare-fun m!1375681 () Bool)

(assert (=> b!1200166 m!1375681))

(declare-fun m!1375683 () Bool)

(assert (=> b!1200166 m!1375683))

(assert (=> b!1200166 m!1375681))

(assert (=> b!1200166 m!1375683))

(declare-fun m!1375685 () Bool)

(assert (=> b!1200166 m!1375685))

(assert (=> b!1200019 d!343193))

(declare-fun d!343195 () Bool)

(assert (=> d!343195 (= (slice!473 (list!4485 t!4115) from!553 until!31) (take!129 (drop!601 (list!4485 t!4115) from!553) (- until!31 from!553)))))

(declare-fun bs!288253 () Bool)

(assert (= bs!288253 d!343195))

(assert (=> bs!288253 m!1375579))

(declare-fun m!1375687 () Bool)

(assert (=> bs!288253 m!1375687))

(assert (=> bs!288253 m!1375687))

(declare-fun m!1375689 () Bool)

(assert (=> bs!288253 m!1375689))

(assert (=> b!1200019 d!343195))

(declare-fun b!1200167 () Bool)

(declare-fun e!770370 () List!12067)

(assert (=> b!1200167 (= e!770370 Nil!12043)))

(declare-fun b!1200169 () Bool)

(declare-fun e!770371 () List!12067)

(assert (=> b!1200169 (= e!770371 (list!4487 (xs!6683 t!4115)))))

(declare-fun b!1200168 () Bool)

(assert (=> b!1200168 (= e!770370 e!770371)))

(declare-fun c!199911 () Bool)

(assert (=> b!1200168 (= c!199911 ((_ is Leaf!6089) t!4115))))

(declare-fun b!1200170 () Bool)

(assert (=> b!1200170 (= e!770371 (++!3080 (list!4485 (left!10512 t!4115)) (list!4485 (right!10842 t!4115))))))

(declare-fun d!343197 () Bool)

(declare-fun c!199910 () Bool)

(assert (=> d!343197 (= c!199910 ((_ is Empty!3976) t!4115))))

(assert (=> d!343197 (= (list!4485 t!4115) e!770370)))

(assert (= (and d!343197 c!199910) b!1200167))

(assert (= (and d!343197 (not c!199910)) b!1200168))

(assert (= (and b!1200168 c!199911) b!1200169))

(assert (= (and b!1200168 (not c!199911)) b!1200170))

(declare-fun m!1375691 () Bool)

(assert (=> b!1200169 m!1375691))

(assert (=> b!1200170 m!1375543))

(assert (=> b!1200170 m!1375551))

(assert (=> b!1200170 m!1375543))

(assert (=> b!1200170 m!1375551))

(declare-fun m!1375693 () Bool)

(assert (=> b!1200170 m!1375693))

(assert (=> b!1200019 d!343197))

(declare-fun b!1200204 () Bool)

(declare-fun e!770387 () Bool)

(declare-fun isEmpty!7263 (Conc!3976) Bool)

(assert (=> b!1200204 (= e!770387 (not (isEmpty!7263 (right!10842 t!4115))))))

(declare-fun d!343199 () Bool)

(declare-fun res!541202 () Bool)

(declare-fun e!770388 () Bool)

(assert (=> d!343199 (=> res!541202 e!770388)))

(assert (=> d!343199 (= res!541202 (not ((_ is Node!3976) t!4115)))))

(assert (=> d!343199 (= (isBalanced!1161 t!4115) e!770388)))

(declare-fun b!1200205 () Bool)

(declare-fun res!541200 () Bool)

(assert (=> b!1200205 (=> (not res!541200) (not e!770387))))

(assert (=> b!1200205 (= res!541200 (not (isEmpty!7263 (left!10512 t!4115))))))

(declare-fun b!1200206 () Bool)

(assert (=> b!1200206 (= e!770388 e!770387)))

(declare-fun res!541201 () Bool)

(assert (=> b!1200206 (=> (not res!541201) (not e!770387))))

(declare-fun height!570 (Conc!3976) Int)

(assert (=> b!1200206 (= res!541201 (<= (- 1) (- (height!570 (left!10512 t!4115)) (height!570 (right!10842 t!4115)))))))

(declare-fun b!1200207 () Bool)

(declare-fun res!541204 () Bool)

(assert (=> b!1200207 (=> (not res!541204) (not e!770387))))

(assert (=> b!1200207 (= res!541204 (isBalanced!1161 (right!10842 t!4115)))))

(declare-fun b!1200208 () Bool)

(declare-fun res!541203 () Bool)

(assert (=> b!1200208 (=> (not res!541203) (not e!770387))))

(assert (=> b!1200208 (= res!541203 (isBalanced!1161 (left!10512 t!4115)))))

(declare-fun b!1200209 () Bool)

(declare-fun res!541205 () Bool)

(assert (=> b!1200209 (=> (not res!541205) (not e!770387))))

(assert (=> b!1200209 (= res!541205 (<= (- (height!570 (left!10512 t!4115)) (height!570 (right!10842 t!4115))) 1))))

(assert (= (and d!343199 (not res!541202)) b!1200206))

(assert (= (and b!1200206 res!541201) b!1200209))

(assert (= (and b!1200209 res!541205) b!1200208))

(assert (= (and b!1200208 res!541203) b!1200207))

(assert (= (and b!1200207 res!541204) b!1200205))

(assert (= (and b!1200205 res!541200) b!1200204))

(declare-fun m!1375731 () Bool)

(assert (=> b!1200206 m!1375731))

(declare-fun m!1375733 () Bool)

(assert (=> b!1200206 m!1375733))

(declare-fun m!1375735 () Bool)

(assert (=> b!1200205 m!1375735))

(declare-fun m!1375737 () Bool)

(assert (=> b!1200204 m!1375737))

(declare-fun m!1375739 () Bool)

(assert (=> b!1200208 m!1375739))

(declare-fun m!1375741 () Bool)

(assert (=> b!1200207 m!1375741))

(assert (=> b!1200209 m!1375731))

(assert (=> b!1200209 m!1375733))

(assert (=> b!1200024 d!343199))

(declare-fun b!1200218 () Bool)

(declare-fun e!770393 () Bool)

(assert (=> b!1200218 (= e!770393 (not (isEmpty!7263 (right!10842 lt!410762))))))

(declare-fun d!343203 () Bool)

(declare-fun res!541208 () Bool)

(declare-fun e!770394 () Bool)

(assert (=> d!343203 (=> res!541208 e!770394)))

(assert (=> d!343203 (= res!541208 (not ((_ is Node!3976) lt!410762)))))

(assert (=> d!343203 (= (isBalanced!1161 lt!410762) e!770394)))

(declare-fun b!1200219 () Bool)

(declare-fun res!541206 () Bool)

(assert (=> b!1200219 (=> (not res!541206) (not e!770393))))

(assert (=> b!1200219 (= res!541206 (not (isEmpty!7263 (left!10512 lt!410762))))))

(declare-fun b!1200220 () Bool)

(assert (=> b!1200220 (= e!770394 e!770393)))

(declare-fun res!541207 () Bool)

(assert (=> b!1200220 (=> (not res!541207) (not e!770393))))

(assert (=> b!1200220 (= res!541207 (<= (- 1) (- (height!570 (left!10512 lt!410762)) (height!570 (right!10842 lt!410762)))))))

(declare-fun b!1200221 () Bool)

(declare-fun res!541210 () Bool)

(assert (=> b!1200221 (=> (not res!541210) (not e!770393))))

(assert (=> b!1200221 (= res!541210 (isBalanced!1161 (right!10842 lt!410762)))))

(declare-fun b!1200222 () Bool)

(declare-fun res!541209 () Bool)

(assert (=> b!1200222 (=> (not res!541209) (not e!770393))))

(assert (=> b!1200222 (= res!541209 (isBalanced!1161 (left!10512 lt!410762)))))

(declare-fun b!1200223 () Bool)

(declare-fun res!541211 () Bool)

(assert (=> b!1200223 (=> (not res!541211) (not e!770393))))

(assert (=> b!1200223 (= res!541211 (<= (- (height!570 (left!10512 lt!410762)) (height!570 (right!10842 lt!410762))) 1))))

(assert (= (and d!343203 (not res!541208)) b!1200220))

(assert (= (and b!1200220 res!541207) b!1200223))

(assert (= (and b!1200223 res!541211) b!1200222))

(assert (= (and b!1200222 res!541209) b!1200221))

(assert (= (and b!1200221 res!541210) b!1200219))

(assert (= (and b!1200219 res!541206) b!1200218))

(declare-fun m!1375743 () Bool)

(assert (=> b!1200220 m!1375743))

(declare-fun m!1375745 () Bool)

(assert (=> b!1200220 m!1375745))

(declare-fun m!1375747 () Bool)

(assert (=> b!1200219 m!1375747))

(declare-fun m!1375749 () Bool)

(assert (=> b!1200218 m!1375749))

(declare-fun m!1375751 () Bool)

(assert (=> b!1200222 m!1375751))

(declare-fun m!1375753 () Bool)

(assert (=> b!1200221 m!1375753))

(assert (=> b!1200223 m!1375743))

(assert (=> b!1200223 m!1375745))

(assert (=> b!1200018 d!343203))

(declare-fun bm!83512 () Bool)

(declare-fun c!199973 () Bool)

(declare-fun c!199975 () Bool)

(assert (=> bm!83512 (= c!199973 c!199975)))

(declare-fun call!83519 () List!12067)

(declare-fun call!83518 () List!12067)

(assert (=> bm!83512 (= call!83519 call!83518)))

(declare-fun bm!83513 () Bool)

(declare-fun call!83522 () Int)

(declare-fun lt!410826 () List!12067)

(assert (=> bm!83513 (= call!83522 (size!9571 lt!410826))))

(declare-fun e!770476 () Conc!3976)

(declare-fun b!1200365 () Bool)

(declare-fun slice!475 (IArray!7957 Int Int) IArray!7957)

(assert (=> b!1200365 (= e!770476 (Leaf!6089 (slice!475 (xs!6683 (left!10512 t!4115)) from!553 until!31) (- until!31 from!553)))))

(declare-fun b!1200366 () Bool)

(declare-fun e!770477 () Conc!3976)

(declare-fun call!83520 () Conc!3976)

(assert (=> b!1200366 (= e!770477 call!83520)))

(declare-fun b!1200367 () Bool)

(declare-fun e!770475 () Conc!3976)

(assert (=> b!1200367 (= e!770477 e!770475)))

(declare-fun c!199980 () Bool)

(declare-fun call!83517 () Int)

(assert (=> b!1200367 (= c!199980 (<= until!31 call!83517))))

(declare-fun b!1200368 () Bool)

(declare-fun e!770478 () List!12067)

(assert (=> b!1200368 (= e!770478 call!83519)))

(declare-fun b!1200369 () Bool)

(declare-fun call!83521 () Conc!3976)

(declare-fun ++!3082 (Conc!3976 Conc!3976) Conc!3976)

(assert (=> b!1200369 (= e!770475 (++!3082 (slice!472 (left!10512 (left!10512 t!4115)) from!553 call!83517) call!83521))))

(declare-fun b!1200370 () Bool)

(declare-fun lt!410823 () Conc!3976)

(declare-fun e!770479 () Bool)

(assert (=> b!1200370 (= e!770479 (= (list!4485 lt!410823) (slice!473 (list!4485 (left!10512 t!4115)) from!553 until!31)))))

(declare-fun b!1200371 () Bool)

(declare-fun e!770481 () Bool)

(assert (=> b!1200371 (= e!770481 (isBalanced!1161 (left!10512 t!4115)))))

(declare-fun b!1200372 () Bool)

(declare-fun e!770473 () Conc!3976)

(declare-fun e!770480 () Conc!3976)

(assert (=> b!1200372 (= e!770473 e!770480)))

(declare-fun c!199972 () Bool)

(assert (=> b!1200372 (= c!199972 ((_ is Leaf!6089) (left!10512 t!4115)))))

(declare-fun b!1200373 () Bool)

(declare-fun c!199974 () Bool)

(assert (=> b!1200373 (= c!199974 (<= (size!9570 (left!10512 (left!10512 t!4115))) from!553))))

(declare-fun lt!410824 () Unit!18456)

(declare-fun lt!410825 () Unit!18456)

(assert (=> b!1200373 (= lt!410824 lt!410825)))

(declare-fun e!770471 () List!12067)

(declare-fun lt!410822 () List!12067)

(assert (=> b!1200373 (= (slice!473 (++!3080 lt!410826 lt!410822) from!553 until!31) e!770471)))

(declare-fun c!199978 () Bool)

(assert (=> b!1200373 (= c!199978 (<= (size!9571 lt!410826) from!553))))

(assert (=> b!1200373 (= lt!410825 (sliceLemma!39 lt!410826 lt!410822 from!553 until!31))))

(assert (=> b!1200373 (= lt!410822 (list!4485 (right!10842 (left!10512 t!4115))))))

(assert (=> b!1200373 (= lt!410826 (list!4485 (left!10512 (left!10512 t!4115))))))

(assert (=> b!1200373 (= e!770480 e!770477)))

(declare-fun b!1200374 () Bool)

(declare-fun e!770474 () Int)

(assert (=> b!1200374 (= e!770474 until!31)))

(declare-fun b!1200375 () Bool)

(assert (=> b!1200375 (= e!770471 e!770478)))

(assert (=> b!1200375 (= c!199975 (<= until!31 call!83522))))

(declare-fun b!1200376 () Bool)

(declare-fun e!770472 () Int)

(assert (=> b!1200376 (= e!770472 until!31)))

(declare-fun d!343205 () Bool)

(assert (=> d!343205 e!770479))

(declare-fun res!541242 () Bool)

(assert (=> d!343205 (=> (not res!541242) (not e!770479))))

(assert (=> d!343205 (= res!541242 (isBalanced!1161 lt!410823))))

(assert (=> d!343205 (= lt!410823 e!770473)))

(declare-fun c!199976 () Bool)

(assert (=> d!343205 (= c!199976 (= from!553 until!31))))

(assert (=> d!343205 e!770481))

(declare-fun res!541240 () Bool)

(assert (=> d!343205 (=> (not res!541240) (not e!770481))))

(assert (=> d!343205 (= res!541240 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> d!343205 (= (slice!472 (left!10512 t!4115) from!553 until!31) lt!410823)))

(declare-fun b!1200377 () Bool)

(assert (=> b!1200377 (= e!770474 (- until!31 call!83517))))

(declare-fun b!1200378 () Bool)

(assert (=> b!1200378 (= e!770475 call!83521)))

(declare-fun b!1200379 () Bool)

(assert (=> b!1200379 (= e!770478 (++!3080 call!83519 (slice!473 lt!410822 0 (- until!31 call!83522))))))

(declare-fun b!1200380 () Bool)

(declare-fun c!199977 () Bool)

(assert (=> b!1200380 (= c!199977 (= (- until!31 from!553) 0))))

(assert (=> b!1200380 (= e!770480 e!770476)))

(declare-fun b!1200381 () Bool)

(assert (=> b!1200381 (= e!770473 Empty!3976)))

(declare-fun b!1200382 () Bool)

(assert (=> b!1200382 (= e!770472 call!83522)))

(declare-fun b!1200383 () Bool)

(assert (=> b!1200383 (= e!770471 call!83518)))

(declare-fun b!1200384 () Bool)

(assert (=> b!1200384 (= e!770476 Empty!3976)))

(declare-fun bm!83514 () Bool)

(declare-fun c!199979 () Bool)

(assert (=> bm!83514 (= c!199979 c!199980)))

(assert (=> bm!83514 (= call!83521 call!83520)))

(declare-fun bm!83515 () Bool)

(assert (=> bm!83515 (= call!83517 (size!9570 (left!10512 (left!10512 t!4115))))))

(declare-fun b!1200385 () Bool)

(declare-fun res!541241 () Bool)

(assert (=> b!1200385 (=> (not res!541241) (not e!770481))))

(assert (=> b!1200385 (= res!541241 (<= until!31 (size!9570 (left!10512 t!4115))))))

(declare-fun bm!83516 () Bool)

(assert (=> bm!83516 (= call!83518 (slice!473 (ite c!199978 lt!410822 lt!410826) (ite c!199978 (- from!553 call!83522) from!553) (ite c!199978 (- until!31 call!83522) e!770472)))))

(declare-fun bm!83517 () Bool)

(assert (=> bm!83517 (= call!83520 (slice!472 (ite c!199974 (right!10842 (left!10512 t!4115)) (ite c!199980 (left!10512 (left!10512 t!4115)) (right!10842 (left!10512 t!4115)))) (ite c!199974 (- from!553 call!83517) (ite c!199980 from!553 0)) (ite c!199974 (- until!31 call!83517) e!770474)))))

(assert (= (and d!343205 res!541240) b!1200385))

(assert (= (and b!1200385 res!541241) b!1200371))

(assert (= (and d!343205 c!199976) b!1200381))

(assert (= (and d!343205 (not c!199976)) b!1200372))

(assert (= (and b!1200372 c!199972) b!1200380))

(assert (= (and b!1200372 (not c!199972)) b!1200373))

(assert (= (and b!1200380 c!199977) b!1200384))

(assert (= (and b!1200380 (not c!199977)) b!1200365))

(assert (= (and b!1200373 c!199978) b!1200383))

(assert (= (and b!1200373 (not c!199978)) b!1200375))

(assert (= (and b!1200375 c!199975) b!1200368))

(assert (= (and b!1200375 (not c!199975)) b!1200379))

(assert (= (or b!1200368 b!1200379) bm!83512))

(assert (= (and bm!83512 c!199973) b!1200376))

(assert (= (and bm!83512 (not c!199973)) b!1200382))

(assert (= (or b!1200383 b!1200379 b!1200382 b!1200375) bm!83513))

(assert (= (or b!1200383 bm!83512) bm!83516))

(assert (= (and b!1200373 c!199974) b!1200366))

(assert (= (and b!1200373 (not c!199974)) b!1200367))

(assert (= (and b!1200367 c!199980) b!1200378))

(assert (= (and b!1200367 (not c!199980)) b!1200369))

(assert (= (or b!1200378 b!1200369) bm!83514))

(assert (= (and bm!83514 c!199979) b!1200374))

(assert (= (and bm!83514 (not c!199979)) b!1200377))

(assert (= (or b!1200366 b!1200367 b!1200369 b!1200377) bm!83515))

(assert (= (or b!1200366 bm!83514) bm!83517))

(assert (= (and d!343205 res!541242) b!1200370))

(assert (=> b!1200385 m!1375555))

(declare-fun m!1375871 () Bool)

(assert (=> bm!83513 m!1375871))

(declare-fun m!1375873 () Bool)

(assert (=> bm!83517 m!1375873))

(assert (=> b!1200373 m!1375871))

(assert (=> b!1200373 m!1375647))

(declare-fun m!1375875 () Bool)

(assert (=> b!1200373 m!1375875))

(declare-fun m!1375877 () Bool)

(assert (=> b!1200373 m!1375877))

(declare-fun m!1375879 () Bool)

(assert (=> b!1200373 m!1375879))

(assert (=> b!1200373 m!1375645))

(assert (=> b!1200373 m!1375879))

(declare-fun m!1375881 () Bool)

(assert (=> b!1200373 m!1375881))

(declare-fun m!1375883 () Bool)

(assert (=> b!1200379 m!1375883))

(assert (=> b!1200379 m!1375883))

(declare-fun m!1375885 () Bool)

(assert (=> b!1200379 m!1375885))

(declare-fun m!1375887 () Bool)

(assert (=> b!1200369 m!1375887))

(assert (=> b!1200369 m!1375887))

(declare-fun m!1375889 () Bool)

(assert (=> b!1200369 m!1375889))

(declare-fun m!1375891 () Bool)

(assert (=> bm!83516 m!1375891))

(assert (=> b!1200371 m!1375739))

(declare-fun m!1375893 () Bool)

(assert (=> d!343205 m!1375893))

(assert (=> bm!83515 m!1375875))

(declare-fun m!1375895 () Bool)

(assert (=> b!1200370 m!1375895))

(assert (=> b!1200370 m!1375543))

(assert (=> b!1200370 m!1375543))

(declare-fun m!1375897 () Bool)

(assert (=> b!1200370 m!1375897))

(declare-fun m!1375899 () Bool)

(assert (=> b!1200365 m!1375899))

(assert (=> b!1200018 d!343205))

(declare-fun tp!341234 () Bool)

(declare-fun e!770486 () Bool)

(declare-fun b!1200394 () Bool)

(declare-fun tp!341235 () Bool)

(assert (=> b!1200394 (= e!770486 (and (inv!16115 (left!10512 (left!10512 t!4115))) tp!341235 (inv!16115 (right!10842 (left!10512 t!4115))) tp!341234))))

(declare-fun b!1200396 () Bool)

(declare-fun e!770487 () Bool)

(declare-fun tp!341233 () Bool)

(assert (=> b!1200396 (= e!770487 tp!341233)))

(declare-fun b!1200395 () Bool)

(assert (=> b!1200395 (= e!770486 (and (inv!16116 (xs!6683 (left!10512 t!4115))) e!770487))))

(assert (=> b!1200017 (= tp!341209 (and (inv!16115 (left!10512 t!4115)) e!770486))))

(assert (= (and b!1200017 ((_ is Node!3976) (left!10512 t!4115))) b!1200394))

(assert (= b!1200395 b!1200396))

(assert (= (and b!1200017 ((_ is Leaf!6089) (left!10512 t!4115))) b!1200395))

(declare-fun m!1375901 () Bool)

(assert (=> b!1200394 m!1375901))

(declare-fun m!1375903 () Bool)

(assert (=> b!1200394 m!1375903))

(declare-fun m!1375905 () Bool)

(assert (=> b!1200395 m!1375905))

(assert (=> b!1200017 m!1375569))

(declare-fun b!1200397 () Bool)

(declare-fun tp!341238 () Bool)

(declare-fun tp!341237 () Bool)

(declare-fun e!770488 () Bool)

(assert (=> b!1200397 (= e!770488 (and (inv!16115 (left!10512 (right!10842 t!4115))) tp!341238 (inv!16115 (right!10842 (right!10842 t!4115))) tp!341237))))

(declare-fun b!1200399 () Bool)

(declare-fun e!770489 () Bool)

(declare-fun tp!341236 () Bool)

(assert (=> b!1200399 (= e!770489 tp!341236)))

(declare-fun b!1200398 () Bool)

(assert (=> b!1200398 (= e!770488 (and (inv!16116 (xs!6683 (right!10842 t!4115))) e!770489))))

(assert (=> b!1200017 (= tp!341210 (and (inv!16115 (right!10842 t!4115)) e!770488))))

(assert (= (and b!1200017 ((_ is Node!3976) (right!10842 t!4115))) b!1200397))

(assert (= b!1200398 b!1200399))

(assert (= (and b!1200017 ((_ is Leaf!6089) (right!10842 t!4115))) b!1200398))

(declare-fun m!1375907 () Bool)

(assert (=> b!1200397 m!1375907))

(declare-fun m!1375909 () Bool)

(assert (=> b!1200397 m!1375909))

(declare-fun m!1375911 () Bool)

(assert (=> b!1200398 m!1375911))

(assert (=> b!1200017 m!1375571))

(declare-fun b!1200404 () Bool)

(declare-fun e!770492 () Bool)

(declare-fun tp_is_empty!5979 () Bool)

(declare-fun tp!341241 () Bool)

(assert (=> b!1200404 (= e!770492 (and tp_is_empty!5979 tp!341241))))

(assert (=> b!1200020 (= tp!341211 e!770492)))

(assert (= (and b!1200020 ((_ is Cons!12043) (innerList!4036 (xs!6683 t!4115)))) b!1200404))

(check-sat (not b!1200070) (not d!343165) (not b!1200222) (not b!1200099) (not b!1200170) (not b!1200035) (not b!1200365) (not bm!83482) (not d!343191) (not b!1200204) (not bm!83513) (not b!1200068) (not b!1200093) (not b!1200404) (not d!343177) (not b!1200166) (not bm!83483) (not d!343187) (not b!1200369) (not b!1200160) (not bm!83515) (not b!1200396) (not b!1200379) (not b!1200066) (not b!1200371) (not b!1200209) (not b!1200398) (not b!1200088) (not bm!83517) (not b!1200208) (not d!343189) (not b!1200206) tp_is_empty!5979 (not b!1200071) (not d!343175) (not b!1200394) (not b!1200207) (not d!343195) (not b!1200075) (not b!1200092) (not b!1200373) (not b!1200395) (not b!1200221) (not b!1200220) (not b!1200159) (not b!1200218) (not b!1200076) (not b!1200399) (not b!1200397) (not d!343205) (not b!1200205) (not bm!83516) (not b!1200037) (not b!1200219) (not b!1200169) (not d!343163) (not b!1200385) (not d!343169) (not b!1200073) (not b!1200165) (not d!343181) (not b!1200017) (not b!1200089) (not b!1200065) (not b!1200370) (not b!1200223))
(check-sat)
