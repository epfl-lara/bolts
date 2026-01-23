; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!227800 () Bool)

(assert start!227800)

(declare-fun res!988089 () Bool)

(declare-fun e!1481167 () Bool)

(assert (=> start!227800 (=> res!988089 e!1481167)))

(declare-fun lt!857423 () Int)

(assert (=> start!227800 (= res!988089 (= lt!857423 0))))

(declare-fun e!1481165 () Bool)

(assert (=> start!227800 e!1481165))

(declare-fun res!988088 () Bool)

(assert (=> start!227800 (=> (not res!988088) (not e!1481165))))

(declare-datatypes ((T!43272 0))(
  ( (T!43273 (val!7886 Int)) )
))
(declare-datatypes ((List!27605 0))(
  ( (Nil!27508) (Cons!27508 (h!32909 T!43272) (t!207102 List!27605)) )
))
(declare-fun lt!857424 () List!27605)

(declare-fun size!21724 (List!27605) Int)

(assert (=> start!227800 (= res!988088 (= lt!857423 (size!21724 lt!857424)))))

(declare-datatypes ((Object!4672 0) (Conc!8979 0) (List!27607 0) (BalanceConc!17690 0) (IArray!17963 0))(
  ( (BalanceConc!17689 (value!139609 BalanceConc!17690)) (List!27606 (value!139610 List!27607)) (Character!96 (value!139611 (_ BitVec 16))) (Open!96 (value!139612 Int)) )
  ( (Node!8979 (left!20840 Conc!8979) (right!21170 Conc!8979) (csize!18188 Int) (cheight!9190 Int)) (Leaf!13173 (xs!11921 IArray!17963) (csize!18189 Int)) (Empty!8979) )
  ( (Nil!27509) (Cons!27509 (h!32910 Object!4672) (t!207103 List!27607)) )
  ( (BalanceConc!17691 (c!366408 Conc!8979)) )
  ( (IArray!17964 (innerList!9039 List!27607)) )
))
(declare-datatypes ((Vector!196 0))(
  ( (Vector!197 (underlying!6552 Object!4672) (overflowing!155 List!27605)) )
))
(declare-fun thiss!9475 () Vector!196)

(declare-fun list!10877 (Vector!196) List!27605)

(assert (=> start!227800 (= lt!857424 (list!10877 thiss!9475))))

(declare-fun size!21725 (Vector!196) Int)

(assert (=> start!227800 (= lt!857423 (size!21725 thiss!9475))))

(assert (=> start!227800 (not e!1481167)))

(declare-fun e!1481166 () Bool)

(assert (=> start!227800 e!1481166))

(declare-fun b!2311148 () Bool)

(declare-fun isEmpty!15742 (List!27605) Bool)

(assert (=> b!2311148 (= e!1481165 (= (= lt!857423 0) (isEmpty!15742 lt!857424)))))

(declare-fun b!2311149 () Bool)

(declare-fun choose!13517 (Vector!196) T!43272)

(declare-fun last!370 (List!27605) T!43272)

(assert (=> b!2311149 (= e!1481167 (= (choose!13517 thiss!9475) (last!370 lt!857424)))))

(declare-fun b!2311150 () Bool)

(declare-fun tp!733258 () Bool)

(declare-fun tp!733259 () Bool)

(assert (=> b!2311150 (= e!1481166 (and tp!733258 tp!733259))))

(assert (= (and start!227800 res!988088) b!2311148))

(assert (= (and start!227800 (not res!988089)) b!2311149))

(assert (= start!227800 b!2311150))

(declare-fun m!2738503 () Bool)

(assert (=> start!227800 m!2738503))

(declare-fun m!2738505 () Bool)

(assert (=> start!227800 m!2738505))

(declare-fun m!2738507 () Bool)

(assert (=> start!227800 m!2738507))

(declare-fun m!2738509 () Bool)

(assert (=> b!2311148 m!2738509))

(declare-fun m!2738511 () Bool)

(assert (=> b!2311149 m!2738511))

(declare-fun m!2738513 () Bool)

(assert (=> b!2311149 m!2738513))

(check-sat (not b!2311149) (not start!227800) (not b!2311148) (not b!2311150))
(check-sat)
(get-model)

(declare-fun d!683752 () Bool)

(declare-fun choose!13519 (Vector!196) T!43272)

(assert (=> d!683752 (= (choose!13517 thiss!9475) (choose!13519 thiss!9475))))

(declare-fun bs!458269 () Bool)

(assert (= bs!458269 d!683752))

(declare-fun m!2738517 () Bool)

(assert (=> bs!458269 m!2738517))

(assert (=> b!2311149 d!683752))

(declare-fun d!683758 () Bool)

(declare-fun lt!857430 () T!43272)

(declare-fun contains!4807 (List!27605 T!43272) Bool)

(assert (=> d!683758 (contains!4807 lt!857424 lt!857430)))

(declare-fun e!1481173 () T!43272)

(assert (=> d!683758 (= lt!857430 e!1481173)))

(declare-fun c!366414 () Bool)

(get-info :version)

(assert (=> d!683758 (= c!366414 (and ((_ is Cons!27508) lt!857424) ((_ is Nil!27508) (t!207102 lt!857424))))))

(assert (=> d!683758 (not (isEmpty!15742 lt!857424))))

(assert (=> d!683758 (= (last!370 lt!857424) lt!857430)))

(declare-fun b!2311161 () Bool)

(assert (=> b!2311161 (= e!1481173 (h!32909 lt!857424))))

(declare-fun b!2311162 () Bool)

(assert (=> b!2311162 (= e!1481173 (last!370 (t!207102 lt!857424)))))

(assert (= (and d!683758 c!366414) b!2311161))

(assert (= (and d!683758 (not c!366414)) b!2311162))

(declare-fun m!2738523 () Bool)

(assert (=> d!683758 m!2738523))

(assert (=> d!683758 m!2738509))

(declare-fun m!2738525 () Bool)

(assert (=> b!2311162 m!2738525))

(assert (=> b!2311149 d!683758))

(declare-fun d!683762 () Bool)

(declare-fun lt!857436 () Int)

(assert (=> d!683762 (>= lt!857436 0)))

(declare-fun e!1481179 () Int)

(assert (=> d!683762 (= lt!857436 e!1481179)))

(declare-fun c!366420 () Bool)

(assert (=> d!683762 (= c!366420 ((_ is Nil!27508) lt!857424))))

(assert (=> d!683762 (= (size!21724 lt!857424) lt!857436)))

(declare-fun b!2311173 () Bool)

(assert (=> b!2311173 (= e!1481179 0)))

(declare-fun b!2311174 () Bool)

(assert (=> b!2311174 (= e!1481179 (+ 1 (size!21724 (t!207102 lt!857424))))))

(assert (= (and d!683762 c!366420) b!2311173))

(assert (= (and d!683762 (not c!366420)) b!2311174))

(declare-fun m!2738531 () Bool)

(assert (=> b!2311174 m!2738531))

(assert (=> start!227800 d!683762))

(declare-fun d!683768 () Bool)

(declare-fun choose!13522 (Vector!196) List!27605)

(assert (=> d!683768 (= (list!10877 thiss!9475) (choose!13522 thiss!9475))))

(declare-fun bs!458271 () Bool)

(assert (= bs!458271 d!683768))

(declare-fun m!2738533 () Bool)

(assert (=> bs!458271 m!2738533))

(assert (=> start!227800 d!683768))

(declare-fun d!683770 () Bool)

(declare-fun lt!857442 () Int)

(assert (=> d!683770 (= lt!857442 (size!21724 (list!10877 thiss!9475)))))

(declare-fun choose!13523 (Vector!196) Int)

(assert (=> d!683770 (= lt!857442 (choose!13523 thiss!9475))))

(assert (=> d!683770 (= (size!21725 thiss!9475) lt!857442)))

(declare-fun bs!458273 () Bool)

(assert (= bs!458273 d!683770))

(assert (=> bs!458273 m!2738505))

(assert (=> bs!458273 m!2738505))

(declare-fun m!2738539 () Bool)

(assert (=> bs!458273 m!2738539))

(declare-fun m!2738541 () Bool)

(assert (=> bs!458273 m!2738541))

(assert (=> start!227800 d!683770))

(declare-fun d!683772 () Bool)

(assert (=> d!683772 (= (isEmpty!15742 lt!857424) ((_ is Nil!27508) lt!857424))))

(assert (=> b!2311148 d!683772))

(declare-fun b!2311200 () Bool)

(declare-fun e!1481194 () Bool)

(declare-fun tp!733273 () Bool)

(declare-fun inv!37164 (Conc!8979) Bool)

(assert (=> b!2311200 (= e!1481194 (and (inv!37164 (c!366408 (value!139609 (underlying!6552 thiss!9475)))) tp!733273))))

(declare-fun b!2311199 () Bool)

(declare-fun e!1481193 () Bool)

(declare-fun inv!37165 (BalanceConc!17690) Bool)

(assert (=> b!2311199 (= e!1481193 (and (inv!37165 (value!139609 (underlying!6552 thiss!9475))) e!1481194))))

(declare-fun b!2311201 () Bool)

(declare-fun tp!733274 () Bool)

(assert (=> b!2311201 (= e!1481193 tp!733274)))

(assert (=> b!2311150 (= tp!733258 e!1481193)))

(assert (= b!2311199 b!2311200))

(assert (= (and b!2311150 ((_ is BalanceConc!17689) (underlying!6552 thiss!9475))) b!2311199))

(assert (= (and b!2311150 ((_ is List!27606) (underlying!6552 thiss!9475))) b!2311201))

(declare-fun m!2738547 () Bool)

(assert (=> b!2311200 m!2738547))

(declare-fun m!2738549 () Bool)

(assert (=> b!2311199 m!2738549))

(declare-fun b!2311206 () Bool)

(declare-fun e!1481197 () Bool)

(declare-fun tp_is_empty!10747 () Bool)

(declare-fun tp!733277 () Bool)

(assert (=> b!2311206 (= e!1481197 (and tp_is_empty!10747 tp!733277))))

(assert (=> b!2311150 (= tp!733259 e!1481197)))

(assert (= (and b!2311150 ((_ is Cons!27508) (overflowing!155 thiss!9475))) b!2311206))

(check-sat (not b!2311162) (not b!2311206) (not b!2311201) (not d!683752) (not b!2311199) (not d!683758) (not d!683770) (not d!683768) (not b!2311174) tp_is_empty!10747 (not b!2311200))
(check-sat)
(get-model)

(declare-fun d!683774 () Bool)

(assert (=> d!683774 true))

(declare-fun e!1481202 () Bool)

(assert (=> d!683774 e!1481202))

(declare-fun res!988092 () List!27605)

(assert (=> d!683774 (= (choose!13522 thiss!9475) res!988092)))

(declare-fun b!2311213 () Bool)

(declare-fun tp!733280 () Bool)

(assert (=> b!2311213 (= e!1481202 (and tp_is_empty!10747 tp!733280))))

(assert (= (and d!683774 ((_ is Cons!27508) res!988092)) b!2311213))

(assert (=> d!683768 d!683774))

(declare-fun d!683782 () Bool)

(declare-fun lt!857445 () T!43272)

(assert (=> d!683782 (contains!4807 (t!207102 lt!857424) lt!857445)))

(declare-fun e!1481203 () T!43272)

(assert (=> d!683782 (= lt!857445 e!1481203)))

(declare-fun c!366423 () Bool)

(assert (=> d!683782 (= c!366423 (and ((_ is Cons!27508) (t!207102 lt!857424)) ((_ is Nil!27508) (t!207102 (t!207102 lt!857424)))))))

(assert (=> d!683782 (not (isEmpty!15742 (t!207102 lt!857424)))))

(assert (=> d!683782 (= (last!370 (t!207102 lt!857424)) lt!857445)))

(declare-fun b!2311214 () Bool)

(assert (=> b!2311214 (= e!1481203 (h!32909 (t!207102 lt!857424)))))

(declare-fun b!2311215 () Bool)

(assert (=> b!2311215 (= e!1481203 (last!370 (t!207102 (t!207102 lt!857424))))))

(assert (= (and d!683782 c!366423) b!2311214))

(assert (= (and d!683782 (not c!366423)) b!2311215))

(declare-fun m!2738559 () Bool)

(assert (=> d!683782 m!2738559))

(declare-fun m!2738561 () Bool)

(assert (=> d!683782 m!2738561))

(declare-fun m!2738563 () Bool)

(assert (=> b!2311215 m!2738563))

(assert (=> b!2311162 d!683782))

(declare-fun d!683784 () Bool)

(declare-fun lt!857449 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3720 (List!27605) (InoxSet T!43272))

(assert (=> d!683784 (= lt!857449 (select (content!3720 lt!857424) lt!857430))))

(declare-fun e!1481210 () Bool)

(assert (=> d!683784 (= lt!857449 e!1481210)))

(declare-fun res!988103 () Bool)

(assert (=> d!683784 (=> (not res!988103) (not e!1481210))))

(assert (=> d!683784 (= res!988103 ((_ is Cons!27508) lt!857424))))

(assert (=> d!683784 (= (contains!4807 lt!857424 lt!857430) lt!857449)))

(declare-fun b!2311222 () Bool)

(declare-fun e!1481209 () Bool)

(assert (=> b!2311222 (= e!1481210 e!1481209)))

(declare-fun res!988104 () Bool)

(assert (=> b!2311222 (=> res!988104 e!1481209)))

(assert (=> b!2311222 (= res!988104 (= (h!32909 lt!857424) lt!857430))))

(declare-fun b!2311223 () Bool)

(assert (=> b!2311223 (= e!1481209 (contains!4807 (t!207102 lt!857424) lt!857430))))

(assert (= (and d!683784 res!988103) b!2311222))

(assert (= (and b!2311222 (not res!988104)) b!2311223))

(declare-fun m!2738569 () Bool)

(assert (=> d!683784 m!2738569))

(declare-fun m!2738571 () Bool)

(assert (=> d!683784 m!2738571))

(declare-fun m!2738573 () Bool)

(assert (=> b!2311223 m!2738573))

(assert (=> d!683758 d!683784))

(assert (=> d!683758 d!683772))

(declare-fun d!683792 () Bool)

(declare-fun isBalanced!2696 (Conc!8979) Bool)

(assert (=> d!683792 (= (inv!37165 (value!139609 (underlying!6552 thiss!9475))) (isBalanced!2696 (c!366408 (value!139609 (underlying!6552 thiss!9475)))))))

(declare-fun bs!458276 () Bool)

(assert (= bs!458276 d!683792))

(declare-fun m!2738581 () Bool)

(assert (=> bs!458276 m!2738581))

(assert (=> b!2311199 d!683792))

(declare-fun d!683796 () Bool)

(declare-fun lt!857453 () Int)

(assert (=> d!683796 (>= lt!857453 0)))

(declare-fun e!1481217 () Int)

(assert (=> d!683796 (= lt!857453 e!1481217)))

(declare-fun c!366425 () Bool)

(assert (=> d!683796 (= c!366425 ((_ is Nil!27508) (t!207102 lt!857424)))))

(assert (=> d!683796 (= (size!21724 (t!207102 lt!857424)) lt!857453)))

(declare-fun b!2311230 () Bool)

(assert (=> b!2311230 (= e!1481217 0)))

(declare-fun b!2311231 () Bool)

(assert (=> b!2311231 (= e!1481217 (+ 1 (size!21724 (t!207102 (t!207102 lt!857424)))))))

(assert (= (and d!683796 c!366425) b!2311230))

(assert (= (and d!683796 (not c!366425)) b!2311231))

(declare-fun m!2738583 () Bool)

(assert (=> b!2311231 m!2738583))

(assert (=> b!2311174 d!683796))

(declare-fun d!683798 () Bool)

(declare-fun c!366428 () Bool)

(assert (=> d!683798 (= c!366428 ((_ is Node!8979) (c!366408 (value!139609 (underlying!6552 thiss!9475)))))))

(declare-fun e!1481222 () Bool)

(assert (=> d!683798 (= (inv!37164 (c!366408 (value!139609 (underlying!6552 thiss!9475)))) e!1481222)))

(declare-fun b!2311238 () Bool)

(declare-fun inv!37166 (Conc!8979) Bool)

(assert (=> b!2311238 (= e!1481222 (inv!37166 (c!366408 (value!139609 (underlying!6552 thiss!9475)))))))

(declare-fun b!2311239 () Bool)

(declare-fun e!1481223 () Bool)

(assert (=> b!2311239 (= e!1481222 e!1481223)))

(declare-fun res!988113 () Bool)

(assert (=> b!2311239 (= res!988113 (not ((_ is Leaf!13173) (c!366408 (value!139609 (underlying!6552 thiss!9475))))))))

(assert (=> b!2311239 (=> res!988113 e!1481223)))

(declare-fun b!2311240 () Bool)

(declare-fun inv!37167 (Conc!8979) Bool)

(assert (=> b!2311240 (= e!1481223 (inv!37167 (c!366408 (value!139609 (underlying!6552 thiss!9475)))))))

(assert (= (and d!683798 c!366428) b!2311238))

(assert (= (and d!683798 (not c!366428)) b!2311239))

(assert (= (and b!2311239 (not res!988113)) b!2311240))

(declare-fun m!2738587 () Bool)

(assert (=> b!2311238 m!2738587))

(declare-fun m!2738589 () Bool)

(assert (=> b!2311240 m!2738589))

(assert (=> b!2311200 d!683798))

(declare-fun d!683802 () Bool)

(declare-fun lt!857454 () Int)

(assert (=> d!683802 (>= lt!857454 0)))

(declare-fun e!1481228 () Int)

(assert (=> d!683802 (= lt!857454 e!1481228)))

(declare-fun c!366431 () Bool)

(assert (=> d!683802 (= c!366431 ((_ is Nil!27508) (list!10877 thiss!9475)))))

(assert (=> d!683802 (= (size!21724 (list!10877 thiss!9475)) lt!857454)))

(declare-fun b!2311247 () Bool)

(assert (=> b!2311247 (= e!1481228 0)))

(declare-fun b!2311248 () Bool)

(assert (=> b!2311248 (= e!1481228 (+ 1 (size!21724 (t!207102 (list!10877 thiss!9475)))))))

(assert (= (and d!683802 c!366431) b!2311247))

(assert (= (and d!683802 (not c!366431)) b!2311248))

(declare-fun m!2738591 () Bool)

(assert (=> b!2311248 m!2738591))

(assert (=> d!683770 d!683802))

(assert (=> d!683770 d!683768))

(declare-fun d!683804 () Bool)

(declare-fun res!988119 () Int)

(assert (=> d!683804 (= res!988119 (size!21724 (list!10877 thiss!9475)))))

(assert (=> d!683804 true))

(assert (=> d!683804 (= (choose!13523 thiss!9475) res!988119)))

(declare-fun bs!458278 () Bool)

(assert (= bs!458278 d!683804))

(assert (=> bs!458278 m!2738505))

(assert (=> bs!458278 m!2738505))

(assert (=> bs!458278 m!2738539))

(assert (=> d!683770 d!683804))

(declare-fun d!683808 () Bool)

(declare-fun res!988124 () T!43272)

(assert (=> d!683808 (= res!988124 (last!370 (list!10877 thiss!9475)))))

(assert (=> d!683808 tp_is_empty!10747))

(assert (=> d!683808 (= (choose!13519 thiss!9475) res!988124)))

(declare-fun bs!458279 () Bool)

(assert (= bs!458279 d!683808))

(assert (=> bs!458279 m!2738505))

(assert (=> bs!458279 m!2738505))

(declare-fun m!2738597 () Bool)

(assert (=> bs!458279 m!2738597))

(assert (=> d!683752 d!683808))

(declare-fun e!1481244 () Bool)

(declare-fun tp!733297 () Bool)

(declare-fun b!2311272 () Bool)

(declare-fun tp!733299 () Bool)

(assert (=> b!2311272 (= e!1481244 (and (inv!37164 (left!20840 (c!366408 (value!139609 (underlying!6552 thiss!9475))))) tp!733297 (inv!37164 (right!21170 (c!366408 (value!139609 (underlying!6552 thiss!9475))))) tp!733299))))

(declare-fun b!2311274 () Bool)

(declare-fun e!1481243 () Bool)

(declare-fun tp!733298 () Bool)

(assert (=> b!2311274 (= e!1481243 tp!733298)))

(declare-fun b!2311273 () Bool)

(declare-fun inv!37171 (IArray!17963) Bool)

(assert (=> b!2311273 (= e!1481244 (and (inv!37171 (xs!11921 (c!366408 (value!139609 (underlying!6552 thiss!9475))))) e!1481243))))

(assert (=> b!2311200 (= tp!733273 (and (inv!37164 (c!366408 (value!139609 (underlying!6552 thiss!9475)))) e!1481244))))

(assert (= (and b!2311200 ((_ is Node!8979) (c!366408 (value!139609 (underlying!6552 thiss!9475))))) b!2311272))

(assert (= b!2311273 b!2311274))

(assert (= (and b!2311200 ((_ is Leaf!13173) (c!366408 (value!139609 (underlying!6552 thiss!9475))))) b!2311273))

(declare-fun m!2738599 () Bool)

(assert (=> b!2311272 m!2738599))

(declare-fun m!2738601 () Bool)

(assert (=> b!2311272 m!2738601))

(declare-fun m!2738603 () Bool)

(assert (=> b!2311273 m!2738603))

(assert (=> b!2311200 m!2738547))

(declare-fun b!2311286 () Bool)

(declare-fun e!1481251 () Bool)

(declare-fun tp!733311 () Bool)

(declare-fun tp!733312 () Bool)

(assert (=> b!2311286 (= e!1481251 (and tp!733311 tp!733312))))

(assert (=> b!2311201 (= tp!733274 e!1481251)))

(assert (= (and b!2311201 ((_ is Cons!27509) (value!139610 (underlying!6552 thiss!9475)))) b!2311286))

(declare-fun b!2311287 () Bool)

(declare-fun e!1481252 () Bool)

(declare-fun tp!733313 () Bool)

(assert (=> b!2311287 (= e!1481252 (and tp_is_empty!10747 tp!733313))))

(assert (=> b!2311206 (= tp!733277 e!1481252)))

(assert (= (and b!2311206 ((_ is Cons!27508) (t!207102 (overflowing!155 thiss!9475)))) b!2311287))

(check-sat (not b!2311215) (not b!2311248) (not b!2311231) (not d!683808) (not b!2311213) (not b!2311273) (not b!2311274) (not b!2311272) tp_is_empty!10747 (not b!2311200) (not b!2311287) (not d!683804) (not d!683792) (not b!2311238) (not d!683784) (not b!2311240) (not b!2311223) (not b!2311286) (not d!683782))
(check-sat)
