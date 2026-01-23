; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!272540 () Bool)

(assert start!272540)

(declare-fun b!2814276 () Bool)

(declare-fun e!1779704 () Bool)

(declare-fun e!1779705 () Bool)

(assert (=> b!2814276 (= e!1779704 e!1779705)))

(declare-fun res!1171468 () Bool)

(assert (=> b!2814276 (=> (not res!1171468) (not e!1779705))))

(declare-fun i!1825 () Int)

(declare-fun lt!1005443 () Int)

(assert (=> b!2814276 (= res!1171468 (and (<= i!1825 lt!1005443) (not (= i!1825 lt!1005443))))))

(declare-datatypes ((C!16768 0))(
  ( (C!16769 (val!10364 Int)) )
))
(declare-datatypes ((List!33026 0))(
  ( (Nil!32902) (Cons!32902 (h!38322 C!16768) (t!230010 List!33026)) )
))
(declare-datatypes ((IArray!20401 0))(
  ( (IArray!20402 (innerList!10258 List!33026)) )
))
(declare-datatypes ((Conc!10198 0))(
  ( (Node!10198 (left!24820 Conc!10198) (right!25150 Conc!10198) (csize!20626 Int) (cheight!10409 Int)) (Leaf!15537 (xs!13310 IArray!20401) (csize!20627 Int)) (Empty!10198) )
))
(declare-datatypes ((BalanceConc!20034 0))(
  ( (BalanceConc!20035 (c!456085 Conc!10198)) )
))
(declare-fun input!3732 () BalanceConc!20034)

(declare-fun size!25642 (BalanceConc!20034) Int)

(assert (=> b!2814276 (= lt!1005443 (size!25642 input!3732))))

(declare-fun lt!1005442 () List!33026)

(declare-fun lt!1005449 () C!16768)

(declare-fun b!2814277 () Bool)

(declare-fun dropList!994 (BalanceConc!20034 Int) List!33026)

(declare-fun $colon$colon!577 (List!33026 C!16768) List!33026)

(assert (=> b!2814277 (= e!1779705 (not (= (dropList!994 input!3732 i!1825) ($colon$colon!577 lt!1005442 lt!1005449))))))

(declare-fun lt!1005447 () List!33026)

(declare-fun lt!1005448 () List!33026)

(declare-fun tail!4448 (List!33026) List!33026)

(declare-fun drop!1772 (List!33026 Int) List!33026)

(assert (=> b!2814277 (= (tail!4448 lt!1005447) (drop!1772 lt!1005448 (+ 1 i!1825)))))

(declare-datatypes ((Unit!46896 0))(
  ( (Unit!46897) )
))
(declare-fun lt!1005441 () Unit!46896)

(declare-fun lemmaDropTail!864 (List!33026 Int) Unit!46896)

(assert (=> b!2814277 (= lt!1005441 (lemmaDropTail!864 lt!1005448 i!1825))))

(declare-fun head!6223 (List!33026) C!16768)

(declare-fun apply!7672 (List!33026 Int) C!16768)

(assert (=> b!2814277 (= (head!6223 lt!1005447) (apply!7672 lt!1005448 i!1825))))

(assert (=> b!2814277 (= lt!1005447 (drop!1772 lt!1005448 i!1825))))

(declare-fun lt!1005445 () Unit!46896)

(declare-fun lemmaDropApply!974 (List!33026 Int) Unit!46896)

(assert (=> b!2814277 (= lt!1005445 (lemmaDropApply!974 lt!1005448 i!1825))))

(declare-fun list!12333 (BalanceConc!20034) List!33026)

(assert (=> b!2814277 (= lt!1005448 (list!12333 input!3732))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!8299 0))(
  ( (ElementMatch!8299 (c!456086 C!16768)) (Concat!13439 (regOne!17110 Regex!8299) (regTwo!17110 Regex!8299)) (EmptyExpr!8299) (Star!8299 (reg!8628 Regex!8299)) (EmptyLang!8299) (Union!8299 (regOne!17111 Regex!8299) (regTwo!17111 Regex!8299)) )
))
(declare-datatypes ((List!33027 0))(
  ( (Nil!32903) (Cons!32903 (h!38323 Regex!8299) (t!230011 List!33027)) )
))
(declare-datatypes ((Context!4930 0))(
  ( (Context!4931 (exprs!2965 List!33027)) )
))
(declare-fun lt!1005444 () (InoxSet Context!4930))

(declare-fun matchZipper!389 ((InoxSet Context!4930) List!33026) Bool)

(declare-fun matchZipperSequence!34 ((InoxSet Context!4930) BalanceConc!20034 Int) Bool)

(assert (=> b!2814277 (= (matchZipper!389 lt!1005444 lt!1005442) (matchZipperSequence!34 lt!1005444 input!3732 (+ 1 i!1825)))))

(assert (=> b!2814277 (= lt!1005442 (dropList!994 input!3732 (+ 1 i!1825)))))

(declare-fun lt!1005446 () Unit!46896)

(declare-fun lemmaMatchZipperSequenceEquivalent!30 ((InoxSet Context!4930) BalanceConc!20034 Int) Unit!46896)

(assert (=> b!2814277 (= lt!1005446 (lemmaMatchZipperSequenceEquivalent!30 lt!1005444 input!3732 (+ 1 i!1825)))))

(declare-fun z!592 () (InoxSet Context!4930))

(declare-fun derivationStepZipper!395 ((InoxSet Context!4930) C!16768) (InoxSet Context!4930))

(assert (=> b!2814277 (= lt!1005444 (derivationStepZipper!395 z!592 lt!1005449))))

(declare-fun apply!7673 (BalanceConc!20034 Int) C!16768)

(assert (=> b!2814277 (= lt!1005449 (apply!7673 input!3732 i!1825))))

(declare-fun setIsEmpty!24729 () Bool)

(declare-fun setRes!24729 () Bool)

(assert (=> setIsEmpty!24729 setRes!24729))

(declare-fun setNonEmpty!24729 () Bool)

(declare-fun tp!898573 () Bool)

(declare-fun setElem!24729 () Context!4930)

(declare-fun e!1779707 () Bool)

(declare-fun inv!44718 (Context!4930) Bool)

(assert (=> setNonEmpty!24729 (= setRes!24729 (and tp!898573 (inv!44718 setElem!24729) e!1779707))))

(declare-fun setRest!24729 () (InoxSet Context!4930))

(assert (=> setNonEmpty!24729 (= z!592 ((_ map or) (store ((as const (Array Context!4930 Bool)) false) setElem!24729 true) setRest!24729))))

(declare-fun res!1171467 () Bool)

(assert (=> start!272540 (=> (not res!1171467) (not e!1779704))))

(assert (=> start!272540 (= res!1171467 (>= i!1825 0))))

(assert (=> start!272540 e!1779704))

(assert (=> start!272540 true))

(declare-fun e!1779706 () Bool)

(declare-fun inv!44719 (BalanceConc!20034) Bool)

(assert (=> start!272540 (and (inv!44719 input!3732) e!1779706)))

(declare-fun condSetEmpty!24729 () Bool)

(assert (=> start!272540 (= condSetEmpty!24729 (= z!592 ((as const (Array Context!4930 Bool)) false)))))

(assert (=> start!272540 setRes!24729))

(declare-fun b!2814278 () Bool)

(declare-fun tp!898574 () Bool)

(assert (=> b!2814278 (= e!1779707 tp!898574)))

(declare-fun b!2814279 () Bool)

(declare-fun tp!898572 () Bool)

(declare-fun inv!44720 (Conc!10198) Bool)

(assert (=> b!2814279 (= e!1779706 (and (inv!44720 (c!456085 input!3732)) tp!898572))))

(assert (= (and start!272540 res!1171467) b!2814276))

(assert (= (and b!2814276 res!1171468) b!2814277))

(assert (= start!272540 b!2814279))

(assert (= (and start!272540 condSetEmpty!24729) setIsEmpty!24729))

(assert (= (and start!272540 (not condSetEmpty!24729)) setNonEmpty!24729))

(assert (= setNonEmpty!24729 b!2814278))

(declare-fun m!3245177 () Bool)

(assert (=> start!272540 m!3245177))

(declare-fun m!3245179 () Bool)

(assert (=> setNonEmpty!24729 m!3245179))

(declare-fun m!3245181 () Bool)

(assert (=> b!2814277 m!3245181))

(declare-fun m!3245183 () Bool)

(assert (=> b!2814277 m!3245183))

(declare-fun m!3245185 () Bool)

(assert (=> b!2814277 m!3245185))

(declare-fun m!3245187 () Bool)

(assert (=> b!2814277 m!3245187))

(declare-fun m!3245189 () Bool)

(assert (=> b!2814277 m!3245189))

(declare-fun m!3245191 () Bool)

(assert (=> b!2814277 m!3245191))

(declare-fun m!3245193 () Bool)

(assert (=> b!2814277 m!3245193))

(declare-fun m!3245195 () Bool)

(assert (=> b!2814277 m!3245195))

(declare-fun m!3245197 () Bool)

(assert (=> b!2814277 m!3245197))

(declare-fun m!3245199 () Bool)

(assert (=> b!2814277 m!3245199))

(declare-fun m!3245201 () Bool)

(assert (=> b!2814277 m!3245201))

(declare-fun m!3245203 () Bool)

(assert (=> b!2814277 m!3245203))

(declare-fun m!3245205 () Bool)

(assert (=> b!2814277 m!3245205))

(declare-fun m!3245207 () Bool)

(assert (=> b!2814277 m!3245207))

(declare-fun m!3245209 () Bool)

(assert (=> b!2814277 m!3245209))

(declare-fun m!3245211 () Bool)

(assert (=> b!2814277 m!3245211))

(declare-fun m!3245213 () Bool)

(assert (=> b!2814276 m!3245213))

(declare-fun m!3245215 () Bool)

(assert (=> b!2814279 m!3245215))

(check-sat (not b!2814277) (not b!2814278) (not start!272540) (not b!2814276) (not setNonEmpty!24729) (not b!2814279))
(check-sat)
(get-model)

(declare-fun d!817163 () Bool)

(declare-fun lambda!103170 () Int)

(declare-fun forall!6738 (List!33027 Int) Bool)

(assert (=> d!817163 (= (inv!44718 setElem!24729) (forall!6738 (exprs!2965 setElem!24729) lambda!103170))))

(declare-fun bs!516583 () Bool)

(assert (= bs!516583 d!817163))

(declare-fun m!3245305 () Bool)

(assert (=> bs!516583 m!3245305))

(assert (=> setNonEmpty!24729 d!817163))

(declare-fun d!817203 () Bool)

(assert (=> d!817203 (= (matchZipper!389 lt!1005444 (dropList!994 input!3732 (+ 1 i!1825))) (matchZipperSequence!34 lt!1005444 input!3732 (+ 1 i!1825)))))

(declare-fun lt!1005474 () Unit!46896)

(declare-fun choose!16638 ((InoxSet Context!4930) BalanceConc!20034 Int) Unit!46896)

(assert (=> d!817203 (= lt!1005474 (choose!16638 lt!1005444 input!3732 (+ 1 i!1825)))))

(declare-fun e!1779772 () Bool)

(assert (=> d!817203 e!1779772))

(declare-fun res!1171493 () Bool)

(assert (=> d!817203 (=> (not res!1171493) (not e!1779772))))

(assert (=> d!817203 (= res!1171493 (>= (+ 1 i!1825) 0))))

(assert (=> d!817203 (= (lemmaMatchZipperSequenceEquivalent!30 lt!1005444 input!3732 (+ 1 i!1825)) lt!1005474)))

(declare-fun b!2814383 () Bool)

(assert (=> b!2814383 (= e!1779772 (<= (+ 1 i!1825) (size!25642 input!3732)))))

(assert (= (and d!817203 res!1171493) b!2814383))

(assert (=> d!817203 m!3245193))

(assert (=> d!817203 m!3245193))

(declare-fun m!3245307 () Bool)

(assert (=> d!817203 m!3245307))

(assert (=> d!817203 m!3245183))

(declare-fun m!3245309 () Bool)

(assert (=> d!817203 m!3245309))

(assert (=> b!2814383 m!3245213))

(assert (=> b!2814277 d!817203))

(declare-fun d!817205 () Bool)

(declare-fun list!12335 (Conc!10198) List!33026)

(assert (=> d!817205 (= (dropList!994 input!3732 (+ 1 i!1825)) (drop!1772 (list!12335 (c!456085 input!3732)) (+ 1 i!1825)))))

(declare-fun bs!516584 () Bool)

(assert (= bs!516584 d!817205))

(declare-fun m!3245311 () Bool)

(assert (=> bs!516584 m!3245311))

(assert (=> bs!516584 m!3245311))

(declare-fun m!3245313 () Bool)

(assert (=> bs!516584 m!3245313))

(assert (=> b!2814277 d!817205))

(declare-fun d!817207 () Bool)

(assert (=> d!817207 (= (dropList!994 input!3732 i!1825) (drop!1772 (list!12335 (c!456085 input!3732)) i!1825))))

(declare-fun bs!516585 () Bool)

(assert (= bs!516585 d!817207))

(assert (=> bs!516585 m!3245311))

(assert (=> bs!516585 m!3245311))

(declare-fun m!3245315 () Bool)

(assert (=> bs!516585 m!3245315))

(assert (=> b!2814277 d!817207))

(declare-fun d!817209 () Bool)

(assert (=> d!817209 (= (head!6223 (drop!1772 lt!1005448 i!1825)) (apply!7672 lt!1005448 i!1825))))

(declare-fun lt!1005477 () Unit!46896)

(declare-fun choose!16639 (List!33026 Int) Unit!46896)

(assert (=> d!817209 (= lt!1005477 (choose!16639 lt!1005448 i!1825))))

(declare-fun e!1779775 () Bool)

(assert (=> d!817209 e!1779775))

(declare-fun res!1171496 () Bool)

(assert (=> d!817209 (=> (not res!1171496) (not e!1779775))))

(assert (=> d!817209 (= res!1171496 (>= i!1825 0))))

(assert (=> d!817209 (= (lemmaDropApply!974 lt!1005448 i!1825) lt!1005477)))

(declare-fun b!2814386 () Bool)

(declare-fun size!25645 (List!33026) Int)

(assert (=> b!2814386 (= e!1779775 (< i!1825 (size!25645 lt!1005448)))))

(assert (= (and d!817209 res!1171496) b!2814386))

(assert (=> d!817209 m!3245189))

(assert (=> d!817209 m!3245189))

(declare-fun m!3245317 () Bool)

(assert (=> d!817209 m!3245317))

(assert (=> d!817209 m!3245211))

(declare-fun m!3245319 () Bool)

(assert (=> d!817209 m!3245319))

(declare-fun m!3245321 () Bool)

(assert (=> b!2814386 m!3245321))

(assert (=> b!2814277 d!817209))

(declare-fun d!817211 () Bool)

(declare-fun lt!1005480 () C!16768)

(declare-fun contains!6050 (List!33026 C!16768) Bool)

(assert (=> d!817211 (contains!6050 lt!1005448 lt!1005480)))

(declare-fun e!1779781 () C!16768)

(assert (=> d!817211 (= lt!1005480 e!1779781)))

(declare-fun c!456119 () Bool)

(assert (=> d!817211 (= c!456119 (= i!1825 0))))

(declare-fun e!1779780 () Bool)

(assert (=> d!817211 e!1779780))

(declare-fun res!1171499 () Bool)

(assert (=> d!817211 (=> (not res!1171499) (not e!1779780))))

(assert (=> d!817211 (= res!1171499 (<= 0 i!1825))))

(assert (=> d!817211 (= (apply!7672 lt!1005448 i!1825) lt!1005480)))

(declare-fun b!2814393 () Bool)

(assert (=> b!2814393 (= e!1779780 (< i!1825 (size!25645 lt!1005448)))))

(declare-fun b!2814394 () Bool)

(assert (=> b!2814394 (= e!1779781 (head!6223 lt!1005448))))

(declare-fun b!2814395 () Bool)

(assert (=> b!2814395 (= e!1779781 (apply!7672 (tail!4448 lt!1005448) (- i!1825 1)))))

(assert (= (and d!817211 res!1171499) b!2814393))

(assert (= (and d!817211 c!456119) b!2814394))

(assert (= (and d!817211 (not c!456119)) b!2814395))

(declare-fun m!3245323 () Bool)

(assert (=> d!817211 m!3245323))

(assert (=> b!2814393 m!3245321))

(declare-fun m!3245325 () Bool)

(assert (=> b!2814394 m!3245325))

(declare-fun m!3245327 () Bool)

(assert (=> b!2814395 m!3245327))

(assert (=> b!2814395 m!3245327))

(declare-fun m!3245329 () Bool)

(assert (=> b!2814395 m!3245329))

(assert (=> b!2814277 d!817211))

(declare-fun d!817213 () Bool)

(declare-fun c!456122 () Bool)

(declare-fun isEmpty!18222 (List!33026) Bool)

(assert (=> d!817213 (= c!456122 (isEmpty!18222 lt!1005442))))

(declare-fun e!1779784 () Bool)

(assert (=> d!817213 (= (matchZipper!389 lt!1005444 lt!1005442) e!1779784)))

(declare-fun b!2814400 () Bool)

(declare-fun nullableZipper!670 ((InoxSet Context!4930)) Bool)

(assert (=> b!2814400 (= e!1779784 (nullableZipper!670 lt!1005444))))

(declare-fun b!2814401 () Bool)

(assert (=> b!2814401 (= e!1779784 (matchZipper!389 (derivationStepZipper!395 lt!1005444 (head!6223 lt!1005442)) (tail!4448 lt!1005442)))))

(assert (= (and d!817213 c!456122) b!2814400))

(assert (= (and d!817213 (not c!456122)) b!2814401))

(declare-fun m!3245331 () Bool)

(assert (=> d!817213 m!3245331))

(declare-fun m!3245333 () Bool)

(assert (=> b!2814400 m!3245333))

(declare-fun m!3245335 () Bool)

(assert (=> b!2814401 m!3245335))

(assert (=> b!2814401 m!3245335))

(declare-fun m!3245337 () Bool)

(assert (=> b!2814401 m!3245337))

(declare-fun m!3245339 () Bool)

(assert (=> b!2814401 m!3245339))

(assert (=> b!2814401 m!3245337))

(assert (=> b!2814401 m!3245339))

(declare-fun m!3245341 () Bool)

(assert (=> b!2814401 m!3245341))

(assert (=> b!2814277 d!817213))

(declare-fun b!2814420 () Bool)

(declare-fun e!1779796 () List!33026)

(declare-fun e!1779799 () List!33026)

(assert (=> b!2814420 (= e!1779796 e!1779799)))

(declare-fun c!456131 () Bool)

(assert (=> b!2814420 (= c!456131 (<= i!1825 0))))

(declare-fun b!2814421 () Bool)

(assert (=> b!2814421 (= e!1779799 (drop!1772 (t!230010 lt!1005448) (- i!1825 1)))))

(declare-fun b!2814422 () Bool)

(assert (=> b!2814422 (= e!1779796 Nil!32902)))

(declare-fun b!2814423 () Bool)

(declare-fun e!1779797 () Int)

(assert (=> b!2814423 (= e!1779797 0)))

(declare-fun b!2814424 () Bool)

(declare-fun e!1779795 () Bool)

(declare-fun lt!1005483 () List!33026)

(declare-fun e!1779798 () Int)

(assert (=> b!2814424 (= e!1779795 (= (size!25645 lt!1005483) e!1779798))))

(declare-fun c!456134 () Bool)

(assert (=> b!2814424 (= c!456134 (<= i!1825 0))))

(declare-fun b!2814425 () Bool)

(declare-fun call!183181 () Int)

(assert (=> b!2814425 (= e!1779798 call!183181)))

(declare-fun bm!183176 () Bool)

(assert (=> bm!183176 (= call!183181 (size!25645 lt!1005448))))

(declare-fun b!2814426 () Bool)

(assert (=> b!2814426 (= e!1779797 (- call!183181 i!1825))))

(declare-fun d!817215 () Bool)

(assert (=> d!817215 e!1779795))

(declare-fun res!1171502 () Bool)

(assert (=> d!817215 (=> (not res!1171502) (not e!1779795))))

(declare-fun content!4595 (List!33026) (InoxSet C!16768))

(assert (=> d!817215 (= res!1171502 (= ((_ map implies) (content!4595 lt!1005483) (content!4595 lt!1005448)) ((as const (InoxSet C!16768)) true)))))

(assert (=> d!817215 (= lt!1005483 e!1779796)))

(declare-fun c!456133 () Bool)

(get-info :version)

(assert (=> d!817215 (= c!456133 ((_ is Nil!32902) lt!1005448))))

(assert (=> d!817215 (= (drop!1772 lt!1005448 i!1825) lt!1005483)))

(declare-fun b!2814427 () Bool)

(assert (=> b!2814427 (= e!1779798 e!1779797)))

(declare-fun c!456132 () Bool)

(assert (=> b!2814427 (= c!456132 (>= i!1825 call!183181))))

(declare-fun b!2814428 () Bool)

(assert (=> b!2814428 (= e!1779799 lt!1005448)))

(assert (= (and d!817215 c!456133) b!2814422))

(assert (= (and d!817215 (not c!456133)) b!2814420))

(assert (= (and b!2814420 c!456131) b!2814428))

(assert (= (and b!2814420 (not c!456131)) b!2814421))

(assert (= (and d!817215 res!1171502) b!2814424))

(assert (= (and b!2814424 c!456134) b!2814425))

(assert (= (and b!2814424 (not c!456134)) b!2814427))

(assert (= (and b!2814427 c!456132) b!2814423))

(assert (= (and b!2814427 (not c!456132)) b!2814426))

(assert (= (or b!2814425 b!2814427 b!2814426) bm!183176))

(declare-fun m!3245343 () Bool)

(assert (=> b!2814421 m!3245343))

(declare-fun m!3245345 () Bool)

(assert (=> b!2814424 m!3245345))

(assert (=> bm!183176 m!3245321))

(declare-fun m!3245347 () Bool)

(assert (=> d!817215 m!3245347))

(declare-fun m!3245349 () Bool)

(assert (=> d!817215 m!3245349))

(assert (=> b!2814277 d!817215))

(declare-fun d!817217 () Bool)

(assert (=> d!817217 (= (tail!4448 lt!1005447) (t!230010 lt!1005447))))

(assert (=> b!2814277 d!817217))

(declare-fun d!817219 () Bool)

(assert (=> d!817219 true))

(declare-fun lambda!103173 () Int)

(declare-fun flatMap!192 ((InoxSet Context!4930) Int) (InoxSet Context!4930))

(assert (=> d!817219 (= (derivationStepZipper!395 z!592 lt!1005449) (flatMap!192 z!592 lambda!103173))))

(declare-fun bs!516586 () Bool)

(assert (= bs!516586 d!817219))

(declare-fun m!3245351 () Bool)

(assert (=> bs!516586 m!3245351))

(assert (=> b!2814277 d!817219))

(declare-fun d!817221 () Bool)

(assert (=> d!817221 (= ($colon$colon!577 lt!1005442 lt!1005449) (Cons!32902 lt!1005449 lt!1005442))))

(assert (=> b!2814277 d!817221))

(declare-fun d!817223 () Bool)

(assert (=> d!817223 (= (tail!4448 (drop!1772 lt!1005448 i!1825)) (drop!1772 lt!1005448 (+ i!1825 1)))))

(declare-fun lt!1005486 () Unit!46896)

(declare-fun choose!16640 (List!33026 Int) Unit!46896)

(assert (=> d!817223 (= lt!1005486 (choose!16640 lt!1005448 i!1825))))

(declare-fun e!1779802 () Bool)

(assert (=> d!817223 e!1779802))

(declare-fun res!1171505 () Bool)

(assert (=> d!817223 (=> (not res!1171505) (not e!1779802))))

(assert (=> d!817223 (= res!1171505 (>= i!1825 0))))

(assert (=> d!817223 (= (lemmaDropTail!864 lt!1005448 i!1825) lt!1005486)))

(declare-fun b!2814433 () Bool)

(assert (=> b!2814433 (= e!1779802 (< i!1825 (size!25645 lt!1005448)))))

(assert (= (and d!817223 res!1171505) b!2814433))

(assert (=> d!817223 m!3245189))

(assert (=> d!817223 m!3245189))

(declare-fun m!3245353 () Bool)

(assert (=> d!817223 m!3245353))

(declare-fun m!3245355 () Bool)

(assert (=> d!817223 m!3245355))

(declare-fun m!3245357 () Bool)

(assert (=> d!817223 m!3245357))

(assert (=> b!2814433 m!3245321))

(assert (=> b!2814277 d!817223))

(declare-fun b!2814434 () Bool)

(declare-fun e!1779804 () List!33026)

(declare-fun e!1779807 () List!33026)

(assert (=> b!2814434 (= e!1779804 e!1779807)))

(declare-fun c!456137 () Bool)

(assert (=> b!2814434 (= c!456137 (<= (+ 1 i!1825) 0))))

(declare-fun b!2814435 () Bool)

(assert (=> b!2814435 (= e!1779807 (drop!1772 (t!230010 lt!1005448) (- (+ 1 i!1825) 1)))))

(declare-fun b!2814436 () Bool)

(assert (=> b!2814436 (= e!1779804 Nil!32902)))

(declare-fun b!2814437 () Bool)

(declare-fun e!1779805 () Int)

(assert (=> b!2814437 (= e!1779805 0)))

(declare-fun b!2814438 () Bool)

(declare-fun e!1779803 () Bool)

(declare-fun lt!1005487 () List!33026)

(declare-fun e!1779806 () Int)

(assert (=> b!2814438 (= e!1779803 (= (size!25645 lt!1005487) e!1779806))))

(declare-fun c!456140 () Bool)

(assert (=> b!2814438 (= c!456140 (<= (+ 1 i!1825) 0))))

(declare-fun b!2814439 () Bool)

(declare-fun call!183182 () Int)

(assert (=> b!2814439 (= e!1779806 call!183182)))

(declare-fun bm!183177 () Bool)

(assert (=> bm!183177 (= call!183182 (size!25645 lt!1005448))))

(declare-fun b!2814440 () Bool)

(assert (=> b!2814440 (= e!1779805 (- call!183182 (+ 1 i!1825)))))

(declare-fun d!817225 () Bool)

(assert (=> d!817225 e!1779803))

(declare-fun res!1171506 () Bool)

(assert (=> d!817225 (=> (not res!1171506) (not e!1779803))))

(assert (=> d!817225 (= res!1171506 (= ((_ map implies) (content!4595 lt!1005487) (content!4595 lt!1005448)) ((as const (InoxSet C!16768)) true)))))

(assert (=> d!817225 (= lt!1005487 e!1779804)))

(declare-fun c!456139 () Bool)

(assert (=> d!817225 (= c!456139 ((_ is Nil!32902) lt!1005448))))

(assert (=> d!817225 (= (drop!1772 lt!1005448 (+ 1 i!1825)) lt!1005487)))

(declare-fun b!2814441 () Bool)

(assert (=> b!2814441 (= e!1779806 e!1779805)))

(declare-fun c!456138 () Bool)

(assert (=> b!2814441 (= c!456138 (>= (+ 1 i!1825) call!183182))))

(declare-fun b!2814442 () Bool)

(assert (=> b!2814442 (= e!1779807 lt!1005448)))

(assert (= (and d!817225 c!456139) b!2814436))

(assert (= (and d!817225 (not c!456139)) b!2814434))

(assert (= (and b!2814434 c!456137) b!2814442))

(assert (= (and b!2814434 (not c!456137)) b!2814435))

(assert (= (and d!817225 res!1171506) b!2814438))

(assert (= (and b!2814438 c!456140) b!2814439))

(assert (= (and b!2814438 (not c!456140)) b!2814441))

(assert (= (and b!2814441 c!456138) b!2814437))

(assert (= (and b!2814441 (not c!456138)) b!2814440))

(assert (= (or b!2814439 b!2814441 b!2814440) bm!183177))

(declare-fun m!3245359 () Bool)

(assert (=> b!2814435 m!3245359))

(declare-fun m!3245361 () Bool)

(assert (=> b!2814438 m!3245361))

(assert (=> bm!183177 m!3245321))

(declare-fun m!3245363 () Bool)

(assert (=> d!817225 m!3245363))

(assert (=> d!817225 m!3245349))

(assert (=> b!2814277 d!817225))

(declare-fun d!817227 () Bool)

(declare-fun c!456143 () Bool)

(assert (=> d!817227 (= c!456143 (= (+ 1 i!1825) (size!25642 input!3732)))))

(declare-fun e!1779810 () Bool)

(assert (=> d!817227 (= (matchZipperSequence!34 lt!1005444 input!3732 (+ 1 i!1825)) e!1779810)))

(declare-fun b!2814447 () Bool)

(assert (=> b!2814447 (= e!1779810 (nullableZipper!670 lt!1005444))))

(declare-fun b!2814448 () Bool)

(assert (=> b!2814448 (= e!1779810 (matchZipperSequence!34 (derivationStepZipper!395 lt!1005444 (apply!7673 input!3732 (+ 1 i!1825))) input!3732 (+ 1 i!1825 1)))))

(assert (= (and d!817227 c!456143) b!2814447))

(assert (= (and d!817227 (not c!456143)) b!2814448))

(assert (=> d!817227 m!3245213))

(assert (=> b!2814447 m!3245333))

(declare-fun m!3245365 () Bool)

(assert (=> b!2814448 m!3245365))

(assert (=> b!2814448 m!3245365))

(declare-fun m!3245367 () Bool)

(assert (=> b!2814448 m!3245367))

(assert (=> b!2814448 m!3245367))

(declare-fun m!3245369 () Bool)

(assert (=> b!2814448 m!3245369))

(assert (=> b!2814277 d!817227))

(declare-fun d!817229 () Bool)

(assert (=> d!817229 (= (list!12333 input!3732) (list!12335 (c!456085 input!3732)))))

(declare-fun bs!516587 () Bool)

(assert (= bs!516587 d!817229))

(assert (=> bs!516587 m!3245311))

(assert (=> b!2814277 d!817229))

(declare-fun d!817231 () Bool)

(assert (=> d!817231 (= (head!6223 lt!1005447) (h!38322 lt!1005447))))

(assert (=> b!2814277 d!817231))

(declare-fun d!817233 () Bool)

(declare-fun lt!1005490 () C!16768)

(assert (=> d!817233 (= lt!1005490 (apply!7672 (list!12333 input!3732) i!1825))))

(declare-fun apply!7675 (Conc!10198 Int) C!16768)

(assert (=> d!817233 (= lt!1005490 (apply!7675 (c!456085 input!3732) i!1825))))

(declare-fun e!1779813 () Bool)

(assert (=> d!817233 e!1779813))

(declare-fun res!1171509 () Bool)

(assert (=> d!817233 (=> (not res!1171509) (not e!1779813))))

(assert (=> d!817233 (= res!1171509 (<= 0 i!1825))))

(assert (=> d!817233 (= (apply!7673 input!3732 i!1825) lt!1005490)))

(declare-fun b!2814451 () Bool)

(assert (=> b!2814451 (= e!1779813 (< i!1825 (size!25642 input!3732)))))

(assert (= (and d!817233 res!1171509) b!2814451))

(assert (=> d!817233 m!3245195))

(assert (=> d!817233 m!3245195))

(declare-fun m!3245371 () Bool)

(assert (=> d!817233 m!3245371))

(declare-fun m!3245373 () Bool)

(assert (=> d!817233 m!3245373))

(assert (=> b!2814451 m!3245213))

(assert (=> b!2814277 d!817233))

(declare-fun d!817235 () Bool)

(declare-fun isBalanced!3093 (Conc!10198) Bool)

(assert (=> d!817235 (= (inv!44719 input!3732) (isBalanced!3093 (c!456085 input!3732)))))

(declare-fun bs!516588 () Bool)

(assert (= bs!516588 d!817235))

(declare-fun m!3245375 () Bool)

(assert (=> bs!516588 m!3245375))

(assert (=> start!272540 d!817235))

(declare-fun d!817237 () Bool)

(declare-fun c!456146 () Bool)

(assert (=> d!817237 (= c!456146 ((_ is Node!10198) (c!456085 input!3732)))))

(declare-fun e!1779818 () Bool)

(assert (=> d!817237 (= (inv!44720 (c!456085 input!3732)) e!1779818)))

(declare-fun b!2814458 () Bool)

(declare-fun inv!44724 (Conc!10198) Bool)

(assert (=> b!2814458 (= e!1779818 (inv!44724 (c!456085 input!3732)))))

(declare-fun b!2814459 () Bool)

(declare-fun e!1779819 () Bool)

(assert (=> b!2814459 (= e!1779818 e!1779819)))

(declare-fun res!1171512 () Bool)

(assert (=> b!2814459 (= res!1171512 (not ((_ is Leaf!15537) (c!456085 input!3732))))))

(assert (=> b!2814459 (=> res!1171512 e!1779819)))

(declare-fun b!2814460 () Bool)

(declare-fun inv!44725 (Conc!10198) Bool)

(assert (=> b!2814460 (= e!1779819 (inv!44725 (c!456085 input!3732)))))

(assert (= (and d!817237 c!456146) b!2814458))

(assert (= (and d!817237 (not c!456146)) b!2814459))

(assert (= (and b!2814459 (not res!1171512)) b!2814460))

(declare-fun m!3245377 () Bool)

(assert (=> b!2814458 m!3245377))

(declare-fun m!3245379 () Bool)

(assert (=> b!2814460 m!3245379))

(assert (=> b!2814279 d!817237))

(declare-fun d!817239 () Bool)

(declare-fun lt!1005493 () Int)

(assert (=> d!817239 (= lt!1005493 (size!25645 (list!12333 input!3732)))))

(declare-fun size!25646 (Conc!10198) Int)

(assert (=> d!817239 (= lt!1005493 (size!25646 (c!456085 input!3732)))))

(assert (=> d!817239 (= (size!25642 input!3732) lt!1005493)))

(declare-fun bs!516589 () Bool)

(assert (= bs!516589 d!817239))

(assert (=> bs!516589 m!3245195))

(assert (=> bs!516589 m!3245195))

(declare-fun m!3245381 () Bool)

(assert (=> bs!516589 m!3245381))

(declare-fun m!3245383 () Bool)

(assert (=> bs!516589 m!3245383))

(assert (=> b!2814276 d!817239))

(declare-fun condSetEmpty!24735 () Bool)

(assert (=> setNonEmpty!24729 (= condSetEmpty!24735 (= setRest!24729 ((as const (Array Context!4930 Bool)) false)))))

(declare-fun setRes!24735 () Bool)

(assert (=> setNonEmpty!24729 (= tp!898573 setRes!24735)))

(declare-fun setIsEmpty!24735 () Bool)

(assert (=> setIsEmpty!24735 setRes!24735))

(declare-fun setNonEmpty!24735 () Bool)

(declare-fun tp!898601 () Bool)

(declare-fun setElem!24735 () Context!4930)

(declare-fun e!1779822 () Bool)

(assert (=> setNonEmpty!24735 (= setRes!24735 (and tp!898601 (inv!44718 setElem!24735) e!1779822))))

(declare-fun setRest!24735 () (InoxSet Context!4930))

(assert (=> setNonEmpty!24735 (= setRest!24729 ((_ map or) (store ((as const (Array Context!4930 Bool)) false) setElem!24735 true) setRest!24735))))

(declare-fun b!2814465 () Bool)

(declare-fun tp!898600 () Bool)

(assert (=> b!2814465 (= e!1779822 tp!898600)))

(assert (= (and setNonEmpty!24729 condSetEmpty!24735) setIsEmpty!24735))

(assert (= (and setNonEmpty!24729 (not condSetEmpty!24735)) setNonEmpty!24735))

(assert (= setNonEmpty!24735 b!2814465))

(declare-fun m!3245385 () Bool)

(assert (=> setNonEmpty!24735 m!3245385))

(declare-fun b!2814470 () Bool)

(declare-fun e!1779825 () Bool)

(declare-fun tp!898606 () Bool)

(declare-fun tp!898607 () Bool)

(assert (=> b!2814470 (= e!1779825 (and tp!898606 tp!898607))))

(assert (=> b!2814278 (= tp!898574 e!1779825)))

(assert (= (and b!2814278 ((_ is Cons!32903) (exprs!2965 setElem!24729))) b!2814470))

(declare-fun e!1779830 () Bool)

(declare-fun b!2814479 () Bool)

(declare-fun tp!898615 () Bool)

(declare-fun tp!898616 () Bool)

(assert (=> b!2814479 (= e!1779830 (and (inv!44720 (left!24820 (c!456085 input!3732))) tp!898615 (inv!44720 (right!25150 (c!456085 input!3732))) tp!898616))))

(declare-fun b!2814481 () Bool)

(declare-fun e!1779831 () Bool)

(declare-fun tp!898614 () Bool)

(assert (=> b!2814481 (= e!1779831 tp!898614)))

(declare-fun b!2814480 () Bool)

(declare-fun inv!44726 (IArray!20401) Bool)

(assert (=> b!2814480 (= e!1779830 (and (inv!44726 (xs!13310 (c!456085 input!3732))) e!1779831))))

(assert (=> b!2814279 (= tp!898572 (and (inv!44720 (c!456085 input!3732)) e!1779830))))

(assert (= (and b!2814279 ((_ is Node!10198) (c!456085 input!3732))) b!2814479))

(assert (= b!2814480 b!2814481))

(assert (= (and b!2814279 ((_ is Leaf!15537) (c!456085 input!3732))) b!2814480))

(declare-fun m!3245387 () Bool)

(assert (=> b!2814479 m!3245387))

(declare-fun m!3245389 () Bool)

(assert (=> b!2814479 m!3245389))

(declare-fun m!3245391 () Bool)

(assert (=> b!2814480 m!3245391))

(assert (=> b!2814279 m!3245215))

(check-sat (not b!2814470) (not b!2814447) (not d!817223) (not b!2814433) (not d!817225) (not d!817209) (not d!817233) (not b!2814386) (not d!817163) (not d!817205) (not b!2814458) (not d!817219) (not b!2814394) (not d!817211) (not d!817235) (not b!2814383) (not b!2814393) (not d!817203) (not bm!183176) (not b!2814421) (not b!2814481) (not d!817229) (not bm!183177) (not b!2814279) (not b!2814480) (not b!2814401) (not setNonEmpty!24735) (not b!2814451) (not b!2814435) (not b!2814448) (not d!817213) (not b!2814479) (not b!2814395) (not b!2814400) (not b!2814424) (not d!817239) (not d!817215) (not b!2814438) (not d!817207) (not b!2814460) (not d!817227) (not b!2814465))
(check-sat)
(get-model)

(declare-fun d!817271 () Bool)

(assert (=> d!817271 (= (tail!4448 (drop!1772 lt!1005448 i!1825)) (t!230010 (drop!1772 lt!1005448 i!1825)))))

(assert (=> d!817223 d!817271))

(assert (=> d!817223 d!817215))

(declare-fun b!2814581 () Bool)

(declare-fun e!1779885 () List!33026)

(declare-fun e!1779888 () List!33026)

(assert (=> b!2814581 (= e!1779885 e!1779888)))

(declare-fun c!456180 () Bool)

(assert (=> b!2814581 (= c!456180 (<= (+ i!1825 1) 0))))

(declare-fun b!2814582 () Bool)

(assert (=> b!2814582 (= e!1779888 (drop!1772 (t!230010 lt!1005448) (- (+ i!1825 1) 1)))))

(declare-fun b!2814583 () Bool)

(assert (=> b!2814583 (= e!1779885 Nil!32902)))

(declare-fun b!2814584 () Bool)

(declare-fun e!1779886 () Int)

(assert (=> b!2814584 (= e!1779886 0)))

(declare-fun b!2814585 () Bool)

(declare-fun e!1779884 () Bool)

(declare-fun lt!1005510 () List!33026)

(declare-fun e!1779887 () Int)

(assert (=> b!2814585 (= e!1779884 (= (size!25645 lt!1005510) e!1779887))))

(declare-fun c!456183 () Bool)

(assert (=> b!2814585 (= c!456183 (<= (+ i!1825 1) 0))))

(declare-fun b!2814586 () Bool)

(declare-fun call!183188 () Int)

(assert (=> b!2814586 (= e!1779887 call!183188)))

(declare-fun bm!183183 () Bool)

(assert (=> bm!183183 (= call!183188 (size!25645 lt!1005448))))

(declare-fun b!2814587 () Bool)

(assert (=> b!2814587 (= e!1779886 (- call!183188 (+ i!1825 1)))))

(declare-fun d!817273 () Bool)

(assert (=> d!817273 e!1779884))

(declare-fun res!1171546 () Bool)

(assert (=> d!817273 (=> (not res!1171546) (not e!1779884))))

(assert (=> d!817273 (= res!1171546 (= ((_ map implies) (content!4595 lt!1005510) (content!4595 lt!1005448)) ((as const (InoxSet C!16768)) true)))))

(assert (=> d!817273 (= lt!1005510 e!1779885)))

(declare-fun c!456182 () Bool)

(assert (=> d!817273 (= c!456182 ((_ is Nil!32902) lt!1005448))))

(assert (=> d!817273 (= (drop!1772 lt!1005448 (+ i!1825 1)) lt!1005510)))

(declare-fun b!2814588 () Bool)

(assert (=> b!2814588 (= e!1779887 e!1779886)))

(declare-fun c!456181 () Bool)

(assert (=> b!2814588 (= c!456181 (>= (+ i!1825 1) call!183188))))

(declare-fun b!2814589 () Bool)

(assert (=> b!2814589 (= e!1779888 lt!1005448)))

(assert (= (and d!817273 c!456182) b!2814583))

(assert (= (and d!817273 (not c!456182)) b!2814581))

(assert (= (and b!2814581 c!456180) b!2814589))

(assert (= (and b!2814581 (not c!456180)) b!2814582))

(assert (= (and d!817273 res!1171546) b!2814585))

(assert (= (and b!2814585 c!456183) b!2814586))

(assert (= (and b!2814585 (not c!456183)) b!2814588))

(assert (= (and b!2814588 c!456181) b!2814584))

(assert (= (and b!2814588 (not c!456181)) b!2814587))

(assert (= (or b!2814586 b!2814588 b!2814587) bm!183183))

(declare-fun m!3245465 () Bool)

(assert (=> b!2814582 m!3245465))

(declare-fun m!3245467 () Bool)

(assert (=> b!2814585 m!3245467))

(assert (=> bm!183183 m!3245321))

(declare-fun m!3245473 () Bool)

(assert (=> d!817273 m!3245473))

(assert (=> d!817273 m!3245349))

(assert (=> d!817223 d!817273))

(declare-fun d!817275 () Bool)

(assert (=> d!817275 (= (tail!4448 (drop!1772 lt!1005448 i!1825)) (drop!1772 lt!1005448 (+ i!1825 1)))))

(assert (=> d!817275 true))

(declare-fun _$28!570 () Unit!46896)

(assert (=> d!817275 (= (choose!16640 lt!1005448 i!1825) _$28!570)))

(declare-fun bs!516592 () Bool)

(assert (= bs!516592 d!817275))

(assert (=> bs!516592 m!3245189))

(assert (=> bs!516592 m!3245189))

(assert (=> bs!516592 m!3245353))

(assert (=> bs!516592 m!3245355))

(assert (=> d!817223 d!817275))

(declare-fun d!817283 () Bool)

(declare-fun lt!1005519 () Int)

(assert (=> d!817283 (>= lt!1005519 0)))

(declare-fun e!1779901 () Int)

(assert (=> d!817283 (= lt!1005519 e!1779901)))

(declare-fun c!456192 () Bool)

(assert (=> d!817283 (= c!456192 ((_ is Nil!32902) lt!1005487))))

(assert (=> d!817283 (= (size!25645 lt!1005487) lt!1005519)))

(declare-fun b!2814614 () Bool)

(assert (=> b!2814614 (= e!1779901 0)))

(declare-fun b!2814615 () Bool)

(assert (=> b!2814615 (= e!1779901 (+ 1 (size!25645 (t!230010 lt!1005487))))))

(assert (= (and d!817283 c!456192) b!2814614))

(assert (= (and d!817283 (not c!456192)) b!2814615))

(declare-fun m!3245503 () Bool)

(assert (=> b!2814615 m!3245503))

(assert (=> b!2814438 d!817283))

(declare-fun d!817299 () Bool)

(assert (=> d!817299 (= (head!6223 (drop!1772 lt!1005448 i!1825)) (h!38322 (drop!1772 lt!1005448 i!1825)))))

(assert (=> d!817209 d!817299))

(assert (=> d!817209 d!817215))

(assert (=> d!817209 d!817211))

(declare-fun d!817301 () Bool)

(assert (=> d!817301 (= (head!6223 (drop!1772 lt!1005448 i!1825)) (apply!7672 lt!1005448 i!1825))))

(assert (=> d!817301 true))

(declare-fun _$27!835 () Unit!46896)

(assert (=> d!817301 (= (choose!16639 lt!1005448 i!1825) _$27!835)))

(declare-fun bs!516599 () Bool)

(assert (= bs!516599 d!817301))

(assert (=> bs!516599 m!3245189))

(assert (=> bs!516599 m!3245189))

(assert (=> bs!516599 m!3245317))

(assert (=> bs!516599 m!3245211))

(assert (=> d!817209 d!817301))

(declare-fun d!817305 () Bool)

(declare-fun res!1171561 () Bool)

(declare-fun e!1779915 () Bool)

(assert (=> d!817305 (=> (not res!1171561) (not e!1779915))))

(declare-fun list!12337 (IArray!20401) List!33026)

(assert (=> d!817305 (= res!1171561 (<= (size!25645 (list!12337 (xs!13310 (c!456085 input!3732)))) 512))))

(assert (=> d!817305 (= (inv!44725 (c!456085 input!3732)) e!1779915)))

(declare-fun b!2814640 () Bool)

(declare-fun res!1171562 () Bool)

(assert (=> b!2814640 (=> (not res!1171562) (not e!1779915))))

(assert (=> b!2814640 (= res!1171562 (= (csize!20627 (c!456085 input!3732)) (size!25645 (list!12337 (xs!13310 (c!456085 input!3732))))))))

(declare-fun b!2814641 () Bool)

(assert (=> b!2814641 (= e!1779915 (and (> (csize!20627 (c!456085 input!3732)) 0) (<= (csize!20627 (c!456085 input!3732)) 512)))))

(assert (= (and d!817305 res!1171561) b!2814640))

(assert (= (and b!2814640 res!1171562) b!2814641))

(declare-fun m!3245533 () Bool)

(assert (=> d!817305 m!3245533))

(assert (=> d!817305 m!3245533))

(declare-fun m!3245535 () Bool)

(assert (=> d!817305 m!3245535))

(assert (=> b!2814640 m!3245533))

(assert (=> b!2814640 m!3245533))

(assert (=> b!2814640 m!3245535))

(assert (=> b!2814460 d!817305))

(declare-fun d!817323 () Bool)

(assert (=> d!817323 (= (isEmpty!18222 lt!1005442) ((_ is Nil!32902) lt!1005442))))

(assert (=> d!817213 d!817323))

(assert (=> b!2814383 d!817239))

(declare-fun d!817325 () Bool)

(declare-fun c!456204 () Bool)

(assert (=> d!817325 (= c!456204 (isEmpty!18222 (dropList!994 input!3732 (+ 1 i!1825))))))

(declare-fun e!1779922 () Bool)

(assert (=> d!817325 (= (matchZipper!389 lt!1005444 (dropList!994 input!3732 (+ 1 i!1825))) e!1779922)))

(declare-fun b!2814648 () Bool)

(assert (=> b!2814648 (= e!1779922 (nullableZipper!670 lt!1005444))))

(declare-fun b!2814649 () Bool)

(assert (=> b!2814649 (= e!1779922 (matchZipper!389 (derivationStepZipper!395 lt!1005444 (head!6223 (dropList!994 input!3732 (+ 1 i!1825)))) (tail!4448 (dropList!994 input!3732 (+ 1 i!1825)))))))

(assert (= (and d!817325 c!456204) b!2814648))

(assert (= (and d!817325 (not c!456204)) b!2814649))

(assert (=> d!817325 m!3245193))

(declare-fun m!3245541 () Bool)

(assert (=> d!817325 m!3245541))

(assert (=> b!2814648 m!3245333))

(assert (=> b!2814649 m!3245193))

(declare-fun m!3245543 () Bool)

(assert (=> b!2814649 m!3245543))

(assert (=> b!2814649 m!3245543))

(declare-fun m!3245545 () Bool)

(assert (=> b!2814649 m!3245545))

(assert (=> b!2814649 m!3245193))

(declare-fun m!3245547 () Bool)

(assert (=> b!2814649 m!3245547))

(assert (=> b!2814649 m!3245545))

(assert (=> b!2814649 m!3245547))

(declare-fun m!3245549 () Bool)

(assert (=> b!2814649 m!3245549))

(assert (=> d!817203 d!817325))

(assert (=> d!817203 d!817205))

(assert (=> d!817203 d!817227))

(declare-fun d!817329 () Bool)

(assert (=> d!817329 (= (matchZipper!389 lt!1005444 (dropList!994 input!3732 (+ 1 i!1825))) (matchZipperSequence!34 lt!1005444 input!3732 (+ 1 i!1825)))))

(assert (=> d!817329 true))

(declare-fun _$28!579 () Unit!46896)

(assert (=> d!817329 (= (choose!16638 lt!1005444 input!3732 (+ 1 i!1825)) _$28!579)))

(declare-fun bs!516606 () Bool)

(assert (= bs!516606 d!817329))

(assert (=> bs!516606 m!3245193))

(assert (=> bs!516606 m!3245193))

(assert (=> bs!516606 m!3245307))

(assert (=> bs!516606 m!3245183))

(assert (=> d!817203 d!817329))

(declare-fun b!2814705 () Bool)

(declare-fun e!1779951 () List!33026)

(assert (=> b!2814705 (= e!1779951 Nil!32902)))

(declare-fun b!2814707 () Bool)

(declare-fun e!1779952 () List!33026)

(assert (=> b!2814707 (= e!1779952 (list!12337 (xs!13310 (c!456085 input!3732))))))

(declare-fun b!2814706 () Bool)

(assert (=> b!2814706 (= e!1779951 e!1779952)))

(declare-fun c!456215 () Bool)

(assert (=> b!2814706 (= c!456215 ((_ is Leaf!15537) (c!456085 input!3732)))))

(declare-fun b!2814708 () Bool)

(declare-fun ++!8083 (List!33026 List!33026) List!33026)

(assert (=> b!2814708 (= e!1779952 (++!8083 (list!12335 (left!24820 (c!456085 input!3732))) (list!12335 (right!25150 (c!456085 input!3732)))))))

(declare-fun d!817349 () Bool)

(declare-fun c!456214 () Bool)

(assert (=> d!817349 (= c!456214 ((_ is Empty!10198) (c!456085 input!3732)))))

(assert (=> d!817349 (= (list!12335 (c!456085 input!3732)) e!1779951)))

(assert (= (and d!817349 c!456214) b!2814705))

(assert (= (and d!817349 (not c!456214)) b!2814706))

(assert (= (and b!2814706 c!456215) b!2814707))

(assert (= (and b!2814706 (not c!456215)) b!2814708))

(assert (=> b!2814707 m!3245533))

(declare-fun m!3245601 () Bool)

(assert (=> b!2814708 m!3245601))

(declare-fun m!3245603 () Bool)

(assert (=> b!2814708 m!3245603))

(assert (=> b!2814708 m!3245601))

(assert (=> b!2814708 m!3245603))

(declare-fun m!3245605 () Bool)

(assert (=> b!2814708 m!3245605))

(assert (=> d!817229 d!817349))

(declare-fun d!817353 () Bool)

(assert (=> d!817353 (= (inv!44726 (xs!13310 (c!456085 input!3732))) (<= (size!25645 (innerList!10258 (xs!13310 (c!456085 input!3732)))) 2147483647))))

(declare-fun bs!516608 () Bool)

(assert (= bs!516608 d!817353))

(declare-fun m!3245607 () Bool)

(assert (=> bs!516608 m!3245607))

(assert (=> b!2814480 d!817353))

(declare-fun d!817355 () Bool)

(declare-fun res!1171584 () Bool)

(declare-fun e!1779955 () Bool)

(assert (=> d!817355 (=> (not res!1171584) (not e!1779955))))

(assert (=> d!817355 (= res!1171584 (= (csize!20626 (c!456085 input!3732)) (+ (size!25646 (left!24820 (c!456085 input!3732))) (size!25646 (right!25150 (c!456085 input!3732))))))))

(assert (=> d!817355 (= (inv!44724 (c!456085 input!3732)) e!1779955)))

(declare-fun b!2814715 () Bool)

(declare-fun res!1171585 () Bool)

(assert (=> b!2814715 (=> (not res!1171585) (not e!1779955))))

(assert (=> b!2814715 (= res!1171585 (and (not (= (left!24820 (c!456085 input!3732)) Empty!10198)) (not (= (right!25150 (c!456085 input!3732)) Empty!10198))))))

(declare-fun b!2814716 () Bool)

(declare-fun res!1171586 () Bool)

(assert (=> b!2814716 (=> (not res!1171586) (not e!1779955))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1502 (Conc!10198) Int)

(assert (=> b!2814716 (= res!1171586 (= (cheight!10409 (c!456085 input!3732)) (+ (max!0 (height!1502 (left!24820 (c!456085 input!3732))) (height!1502 (right!25150 (c!456085 input!3732)))) 1)))))

(declare-fun b!2814717 () Bool)

(assert (=> b!2814717 (= e!1779955 (<= 0 (cheight!10409 (c!456085 input!3732))))))

(assert (= (and d!817355 res!1171584) b!2814715))

(assert (= (and b!2814715 res!1171585) b!2814716))

(assert (= (and b!2814716 res!1171586) b!2814717))

(declare-fun m!3245609 () Bool)

(assert (=> d!817355 m!3245609))

(declare-fun m!3245611 () Bool)

(assert (=> d!817355 m!3245611))

(declare-fun m!3245613 () Bool)

(assert (=> b!2814716 m!3245613))

(declare-fun m!3245615 () Bool)

(assert (=> b!2814716 m!3245615))

(assert (=> b!2814716 m!3245613))

(assert (=> b!2814716 m!3245615))

(declare-fun m!3245617 () Bool)

(assert (=> b!2814716 m!3245617))

(assert (=> b!2814458 d!817355))

(declare-fun d!817357 () Bool)

(declare-fun c!456216 () Bool)

(assert (=> d!817357 (= c!456216 ((_ is Node!10198) (left!24820 (c!456085 input!3732))))))

(declare-fun e!1779956 () Bool)

(assert (=> d!817357 (= (inv!44720 (left!24820 (c!456085 input!3732))) e!1779956)))

(declare-fun b!2814718 () Bool)

(assert (=> b!2814718 (= e!1779956 (inv!44724 (left!24820 (c!456085 input!3732))))))

(declare-fun b!2814719 () Bool)

(declare-fun e!1779957 () Bool)

(assert (=> b!2814719 (= e!1779956 e!1779957)))

(declare-fun res!1171587 () Bool)

(assert (=> b!2814719 (= res!1171587 (not ((_ is Leaf!15537) (left!24820 (c!456085 input!3732)))))))

(assert (=> b!2814719 (=> res!1171587 e!1779957)))

(declare-fun b!2814720 () Bool)

(assert (=> b!2814720 (= e!1779957 (inv!44725 (left!24820 (c!456085 input!3732))))))

(assert (= (and d!817357 c!456216) b!2814718))

(assert (= (and d!817357 (not c!456216)) b!2814719))

(assert (= (and b!2814719 (not res!1171587)) b!2814720))

(declare-fun m!3245619 () Bool)

(assert (=> b!2814718 m!3245619))

(declare-fun m!3245621 () Bool)

(assert (=> b!2814720 m!3245621))

(assert (=> b!2814479 d!817357))

(declare-fun d!817359 () Bool)

(declare-fun c!456217 () Bool)

(assert (=> d!817359 (= c!456217 ((_ is Node!10198) (right!25150 (c!456085 input!3732))))))

(declare-fun e!1779958 () Bool)

(assert (=> d!817359 (= (inv!44720 (right!25150 (c!456085 input!3732))) e!1779958)))

(declare-fun b!2814721 () Bool)

(assert (=> b!2814721 (= e!1779958 (inv!44724 (right!25150 (c!456085 input!3732))))))

(declare-fun b!2814722 () Bool)

(declare-fun e!1779959 () Bool)

(assert (=> b!2814722 (= e!1779958 e!1779959)))

(declare-fun res!1171588 () Bool)

(assert (=> b!2814722 (= res!1171588 (not ((_ is Leaf!15537) (right!25150 (c!456085 input!3732)))))))

(assert (=> b!2814722 (=> res!1171588 e!1779959)))

(declare-fun b!2814723 () Bool)

(assert (=> b!2814723 (= e!1779959 (inv!44725 (right!25150 (c!456085 input!3732))))))

(assert (= (and d!817359 c!456217) b!2814721))

(assert (= (and d!817359 (not c!456217)) b!2814722))

(assert (= (and b!2814722 (not res!1171588)) b!2814723))

(declare-fun m!3245623 () Bool)

(assert (=> b!2814721 m!3245623))

(declare-fun m!3245625 () Bool)

(assert (=> b!2814723 m!3245625))

(assert (=> b!2814479 d!817359))

(declare-fun d!817361 () Bool)

(declare-fun lt!1005524 () Int)

(assert (=> d!817361 (>= lt!1005524 0)))

(declare-fun e!1779960 () Int)

(assert (=> d!817361 (= lt!1005524 e!1779960)))

(declare-fun c!456218 () Bool)

(assert (=> d!817361 (= c!456218 ((_ is Nil!32902) lt!1005448))))

(assert (=> d!817361 (= (size!25645 lt!1005448) lt!1005524)))

(declare-fun b!2814724 () Bool)

(assert (=> b!2814724 (= e!1779960 0)))

(declare-fun b!2814725 () Bool)

(assert (=> b!2814725 (= e!1779960 (+ 1 (size!25645 (t!230010 lt!1005448))))))

(assert (= (and d!817361 c!456218) b!2814724))

(assert (= (and d!817361 (not c!456218)) b!2814725))

(declare-fun m!3245627 () Bool)

(assert (=> b!2814725 m!3245627))

(assert (=> b!2814433 d!817361))

(declare-fun d!817363 () Bool)

(declare-fun c!456219 () Bool)

(assert (=> d!817363 (= c!456219 (isEmpty!18222 (tail!4448 lt!1005442)))))

(declare-fun e!1779961 () Bool)

(assert (=> d!817363 (= (matchZipper!389 (derivationStepZipper!395 lt!1005444 (head!6223 lt!1005442)) (tail!4448 lt!1005442)) e!1779961)))

(declare-fun b!2814726 () Bool)

(assert (=> b!2814726 (= e!1779961 (nullableZipper!670 (derivationStepZipper!395 lt!1005444 (head!6223 lt!1005442))))))

(declare-fun b!2814727 () Bool)

(assert (=> b!2814727 (= e!1779961 (matchZipper!389 (derivationStepZipper!395 (derivationStepZipper!395 lt!1005444 (head!6223 lt!1005442)) (head!6223 (tail!4448 lt!1005442))) (tail!4448 (tail!4448 lt!1005442))))))

(assert (= (and d!817363 c!456219) b!2814726))

(assert (= (and d!817363 (not c!456219)) b!2814727))

(assert (=> d!817363 m!3245339))

(declare-fun m!3245629 () Bool)

(assert (=> d!817363 m!3245629))

(assert (=> b!2814726 m!3245337))

(declare-fun m!3245631 () Bool)

(assert (=> b!2814726 m!3245631))

(assert (=> b!2814727 m!3245339))

(declare-fun m!3245633 () Bool)

(assert (=> b!2814727 m!3245633))

(assert (=> b!2814727 m!3245337))

(assert (=> b!2814727 m!3245633))

(declare-fun m!3245635 () Bool)

(assert (=> b!2814727 m!3245635))

(assert (=> b!2814727 m!3245339))

(declare-fun m!3245637 () Bool)

(assert (=> b!2814727 m!3245637))

(assert (=> b!2814727 m!3245635))

(assert (=> b!2814727 m!3245637))

(declare-fun m!3245639 () Bool)

(assert (=> b!2814727 m!3245639))

(assert (=> b!2814401 d!817363))

(declare-fun bs!516609 () Bool)

(declare-fun d!817365 () Bool)

(assert (= bs!516609 (and d!817365 d!817219)))

(declare-fun lambda!103180 () Int)

(assert (=> bs!516609 (= (= (head!6223 lt!1005442) lt!1005449) (= lambda!103180 lambda!103173))))

(assert (=> d!817365 true))

(assert (=> d!817365 (= (derivationStepZipper!395 lt!1005444 (head!6223 lt!1005442)) (flatMap!192 lt!1005444 lambda!103180))))

(declare-fun bs!516610 () Bool)

(assert (= bs!516610 d!817365))

(declare-fun m!3245641 () Bool)

(assert (=> bs!516610 m!3245641))

(assert (=> b!2814401 d!817365))

(declare-fun d!817367 () Bool)

(assert (=> d!817367 (= (head!6223 lt!1005442) (h!38322 lt!1005442))))

(assert (=> b!2814401 d!817367))

(declare-fun d!817369 () Bool)

(assert (=> d!817369 (= (tail!4448 lt!1005442) (t!230010 lt!1005442))))

(assert (=> b!2814401 d!817369))

(declare-fun b!2814728 () Bool)

(declare-fun e!1779963 () List!33026)

(declare-fun e!1779966 () List!33026)

(assert (=> b!2814728 (= e!1779963 e!1779966)))

(declare-fun c!456220 () Bool)

(assert (=> b!2814728 (= c!456220 (<= (- (+ 1 i!1825) 1) 0))))

(declare-fun b!2814729 () Bool)

(assert (=> b!2814729 (= e!1779966 (drop!1772 (t!230010 (t!230010 lt!1005448)) (- (- (+ 1 i!1825) 1) 1)))))

(declare-fun b!2814730 () Bool)

(assert (=> b!2814730 (= e!1779963 Nil!32902)))

(declare-fun b!2814731 () Bool)

(declare-fun e!1779964 () Int)

(assert (=> b!2814731 (= e!1779964 0)))

(declare-fun b!2814732 () Bool)

(declare-fun e!1779962 () Bool)

(declare-fun lt!1005525 () List!33026)

(declare-fun e!1779965 () Int)

(assert (=> b!2814732 (= e!1779962 (= (size!25645 lt!1005525) e!1779965))))

(declare-fun c!456223 () Bool)

(assert (=> b!2814732 (= c!456223 (<= (- (+ 1 i!1825) 1) 0))))

(declare-fun b!2814733 () Bool)

(declare-fun call!183192 () Int)

(assert (=> b!2814733 (= e!1779965 call!183192)))

(declare-fun bm!183187 () Bool)

(assert (=> bm!183187 (= call!183192 (size!25645 (t!230010 lt!1005448)))))

(declare-fun b!2814734 () Bool)

(assert (=> b!2814734 (= e!1779964 (- call!183192 (- (+ 1 i!1825) 1)))))

(declare-fun d!817371 () Bool)

(assert (=> d!817371 e!1779962))

(declare-fun res!1171589 () Bool)

(assert (=> d!817371 (=> (not res!1171589) (not e!1779962))))

(assert (=> d!817371 (= res!1171589 (= ((_ map implies) (content!4595 lt!1005525) (content!4595 (t!230010 lt!1005448))) ((as const (InoxSet C!16768)) true)))))

(assert (=> d!817371 (= lt!1005525 e!1779963)))

(declare-fun c!456222 () Bool)

(assert (=> d!817371 (= c!456222 ((_ is Nil!32902) (t!230010 lt!1005448)))))

(assert (=> d!817371 (= (drop!1772 (t!230010 lt!1005448) (- (+ 1 i!1825) 1)) lt!1005525)))

(declare-fun b!2814735 () Bool)

(assert (=> b!2814735 (= e!1779965 e!1779964)))

(declare-fun c!456221 () Bool)

(assert (=> b!2814735 (= c!456221 (>= (- (+ 1 i!1825) 1) call!183192))))

(declare-fun b!2814736 () Bool)

(assert (=> b!2814736 (= e!1779966 (t!230010 lt!1005448))))

(assert (= (and d!817371 c!456222) b!2814730))

(assert (= (and d!817371 (not c!456222)) b!2814728))

(assert (= (and b!2814728 c!456220) b!2814736))

(assert (= (and b!2814728 (not c!456220)) b!2814729))

(assert (= (and d!817371 res!1171589) b!2814732))

(assert (= (and b!2814732 c!456223) b!2814733))

(assert (= (and b!2814732 (not c!456223)) b!2814735))

(assert (= (and b!2814735 c!456221) b!2814731))

(assert (= (and b!2814735 (not c!456221)) b!2814734))

(assert (= (or b!2814733 b!2814735 b!2814734) bm!183187))

(declare-fun m!3245643 () Bool)

(assert (=> b!2814729 m!3245643))

(declare-fun m!3245645 () Bool)

(assert (=> b!2814732 m!3245645))

(assert (=> bm!183187 m!3245627))

(declare-fun m!3245647 () Bool)

(assert (=> d!817371 m!3245647))

(declare-fun m!3245649 () Bool)

(assert (=> d!817371 m!3245649))

(assert (=> b!2814435 d!817371))

(declare-fun d!817373 () Bool)

(declare-fun res!1171594 () Bool)

(declare-fun e!1779971 () Bool)

(assert (=> d!817373 (=> res!1171594 e!1779971)))

(assert (=> d!817373 (= res!1171594 ((_ is Nil!32903) (exprs!2965 setElem!24729)))))

(assert (=> d!817373 (= (forall!6738 (exprs!2965 setElem!24729) lambda!103170) e!1779971)))

(declare-fun b!2814741 () Bool)

(declare-fun e!1779972 () Bool)

(assert (=> b!2814741 (= e!1779971 e!1779972)))

(declare-fun res!1171595 () Bool)

(assert (=> b!2814741 (=> (not res!1171595) (not e!1779972))))

(declare-fun dynLambda!13736 (Int Regex!8299) Bool)

(assert (=> b!2814741 (= res!1171595 (dynLambda!13736 lambda!103170 (h!38323 (exprs!2965 setElem!24729))))))

(declare-fun b!2814742 () Bool)

(assert (=> b!2814742 (= e!1779972 (forall!6738 (t!230011 (exprs!2965 setElem!24729)) lambda!103170))))

(assert (= (and d!817373 (not res!1171594)) b!2814741))

(assert (= (and b!2814741 res!1171595) b!2814742))

(declare-fun b_lambda!84203 () Bool)

(assert (=> (not b_lambda!84203) (not b!2814741)))

(declare-fun m!3245651 () Bool)

(assert (=> b!2814741 m!3245651))

(declare-fun m!3245653 () Bool)

(assert (=> b!2814742 m!3245653))

(assert (=> d!817163 d!817373))

(declare-fun b!2814743 () Bool)

(declare-fun e!1779974 () List!33026)

(declare-fun e!1779977 () List!33026)

(assert (=> b!2814743 (= e!1779974 e!1779977)))

(declare-fun c!456224 () Bool)

(assert (=> b!2814743 (= c!456224 (<= i!1825 0))))

(declare-fun b!2814744 () Bool)

(assert (=> b!2814744 (= e!1779977 (drop!1772 (t!230010 (list!12335 (c!456085 input!3732))) (- i!1825 1)))))

(declare-fun b!2814745 () Bool)

(assert (=> b!2814745 (= e!1779974 Nil!32902)))

(declare-fun b!2814746 () Bool)

(declare-fun e!1779975 () Int)

(assert (=> b!2814746 (= e!1779975 0)))

(declare-fun b!2814747 () Bool)

(declare-fun e!1779973 () Bool)

(declare-fun lt!1005526 () List!33026)

(declare-fun e!1779976 () Int)

(assert (=> b!2814747 (= e!1779973 (= (size!25645 lt!1005526) e!1779976))))

(declare-fun c!456227 () Bool)

(assert (=> b!2814747 (= c!456227 (<= i!1825 0))))

(declare-fun b!2814748 () Bool)

(declare-fun call!183193 () Int)

(assert (=> b!2814748 (= e!1779976 call!183193)))

(declare-fun bm!183188 () Bool)

(assert (=> bm!183188 (= call!183193 (size!25645 (list!12335 (c!456085 input!3732))))))

(declare-fun b!2814749 () Bool)

(assert (=> b!2814749 (= e!1779975 (- call!183193 i!1825))))

(declare-fun d!817375 () Bool)

(assert (=> d!817375 e!1779973))

(declare-fun res!1171596 () Bool)

(assert (=> d!817375 (=> (not res!1171596) (not e!1779973))))

(assert (=> d!817375 (= res!1171596 (= ((_ map implies) (content!4595 lt!1005526) (content!4595 (list!12335 (c!456085 input!3732)))) ((as const (InoxSet C!16768)) true)))))

(assert (=> d!817375 (= lt!1005526 e!1779974)))

(declare-fun c!456226 () Bool)

(assert (=> d!817375 (= c!456226 ((_ is Nil!32902) (list!12335 (c!456085 input!3732))))))

(assert (=> d!817375 (= (drop!1772 (list!12335 (c!456085 input!3732)) i!1825) lt!1005526)))

(declare-fun b!2814750 () Bool)

(assert (=> b!2814750 (= e!1779976 e!1779975)))

(declare-fun c!456225 () Bool)

(assert (=> b!2814750 (= c!456225 (>= i!1825 call!183193))))

(declare-fun b!2814751 () Bool)

(assert (=> b!2814751 (= e!1779977 (list!12335 (c!456085 input!3732)))))

(assert (= (and d!817375 c!456226) b!2814745))

(assert (= (and d!817375 (not c!456226)) b!2814743))

(assert (= (and b!2814743 c!456224) b!2814751))

(assert (= (and b!2814743 (not c!456224)) b!2814744))

(assert (= (and d!817375 res!1171596) b!2814747))

(assert (= (and b!2814747 c!456227) b!2814748))

(assert (= (and b!2814747 (not c!456227)) b!2814750))

(assert (= (and b!2814750 c!456225) b!2814746))

(assert (= (and b!2814750 (not c!456225)) b!2814749))

(assert (= (or b!2814748 b!2814750 b!2814749) bm!183188))

(declare-fun m!3245655 () Bool)

(assert (=> b!2814744 m!3245655))

(declare-fun m!3245657 () Bool)

(assert (=> b!2814747 m!3245657))

(assert (=> bm!183188 m!3245311))

(declare-fun m!3245659 () Bool)

(assert (=> bm!183188 m!3245659))

(declare-fun m!3245661 () Bool)

(assert (=> d!817375 m!3245661))

(assert (=> d!817375 m!3245311))

(declare-fun m!3245663 () Bool)

(assert (=> d!817375 m!3245663))

(assert (=> d!817207 d!817375))

(assert (=> d!817207 d!817349))

(assert (=> b!2814386 d!817361))

(declare-fun d!817377 () Bool)

(declare-fun lambda!103183 () Int)

(declare-fun exists!1029 ((InoxSet Context!4930) Int) Bool)

(assert (=> d!817377 (= (nullableZipper!670 lt!1005444) (exists!1029 lt!1005444 lambda!103183))))

(declare-fun bs!516611 () Bool)

(assert (= bs!516611 d!817377))

(declare-fun m!3245665 () Bool)

(assert (=> bs!516611 m!3245665))

(assert (=> b!2814400 d!817377))

(assert (=> d!817227 d!817239))

(assert (=> b!2814279 d!817237))

(assert (=> bm!183176 d!817361))

(declare-fun d!817379 () Bool)

(declare-fun c!456230 () Bool)

(assert (=> d!817379 (= c!456230 (= (+ 1 i!1825 1) (size!25642 input!3732)))))

(declare-fun e!1779978 () Bool)

(assert (=> d!817379 (= (matchZipperSequence!34 (derivationStepZipper!395 lt!1005444 (apply!7673 input!3732 (+ 1 i!1825))) input!3732 (+ 1 i!1825 1)) e!1779978)))

(declare-fun b!2814752 () Bool)

(assert (=> b!2814752 (= e!1779978 (nullableZipper!670 (derivationStepZipper!395 lt!1005444 (apply!7673 input!3732 (+ 1 i!1825)))))))

(declare-fun b!2814753 () Bool)

(assert (=> b!2814753 (= e!1779978 (matchZipperSequence!34 (derivationStepZipper!395 (derivationStepZipper!395 lt!1005444 (apply!7673 input!3732 (+ 1 i!1825))) (apply!7673 input!3732 (+ 1 i!1825 1))) input!3732 (+ 1 i!1825 1 1)))))

(assert (= (and d!817379 c!456230) b!2814752))

(assert (= (and d!817379 (not c!456230)) b!2814753))

(assert (=> d!817379 m!3245213))

(assert (=> b!2814752 m!3245367))

(declare-fun m!3245667 () Bool)

(assert (=> b!2814752 m!3245667))

(declare-fun m!3245669 () Bool)

(assert (=> b!2814753 m!3245669))

(assert (=> b!2814753 m!3245367))

(assert (=> b!2814753 m!3245669))

(declare-fun m!3245671 () Bool)

(assert (=> b!2814753 m!3245671))

(assert (=> b!2814753 m!3245671))

(declare-fun m!3245673 () Bool)

(assert (=> b!2814753 m!3245673))

(assert (=> b!2814448 d!817379))

(declare-fun bs!516612 () Bool)

(declare-fun d!817381 () Bool)

(assert (= bs!516612 (and d!817381 d!817219)))

(declare-fun lambda!103184 () Int)

(assert (=> bs!516612 (= (= (apply!7673 input!3732 (+ 1 i!1825)) lt!1005449) (= lambda!103184 lambda!103173))))

(declare-fun bs!516613 () Bool)

(assert (= bs!516613 (and d!817381 d!817365)))

(assert (=> bs!516613 (= (= (apply!7673 input!3732 (+ 1 i!1825)) (head!6223 lt!1005442)) (= lambda!103184 lambda!103180))))

(assert (=> d!817381 true))

(assert (=> d!817381 (= (derivationStepZipper!395 lt!1005444 (apply!7673 input!3732 (+ 1 i!1825))) (flatMap!192 lt!1005444 lambda!103184))))

(declare-fun bs!516614 () Bool)

(assert (= bs!516614 d!817381))

(declare-fun m!3245675 () Bool)

(assert (=> bs!516614 m!3245675))

(assert (=> b!2814448 d!817381))

(declare-fun d!817383 () Bool)

(declare-fun lt!1005527 () C!16768)

(assert (=> d!817383 (= lt!1005527 (apply!7672 (list!12333 input!3732) (+ 1 i!1825)))))

(assert (=> d!817383 (= lt!1005527 (apply!7675 (c!456085 input!3732) (+ 1 i!1825)))))

(declare-fun e!1779979 () Bool)

(assert (=> d!817383 e!1779979))

(declare-fun res!1171597 () Bool)

(assert (=> d!817383 (=> (not res!1171597) (not e!1779979))))

(assert (=> d!817383 (= res!1171597 (<= 0 (+ 1 i!1825)))))

(assert (=> d!817383 (= (apply!7673 input!3732 (+ 1 i!1825)) lt!1005527)))

(declare-fun b!2814754 () Bool)

(assert (=> b!2814754 (= e!1779979 (< (+ 1 i!1825) (size!25642 input!3732)))))

(assert (= (and d!817383 res!1171597) b!2814754))

(assert (=> d!817383 m!3245195))

(assert (=> d!817383 m!3245195))

(declare-fun m!3245677 () Bool)

(assert (=> d!817383 m!3245677))

(declare-fun m!3245679 () Bool)

(assert (=> d!817383 m!3245679))

(assert (=> b!2814754 m!3245213))

(assert (=> b!2814448 d!817383))

(declare-fun bs!516615 () Bool)

(declare-fun d!817385 () Bool)

(assert (= bs!516615 (and d!817385 d!817163)))

(declare-fun lambda!103185 () Int)

(assert (=> bs!516615 (= lambda!103185 lambda!103170)))

(assert (=> d!817385 (= (inv!44718 setElem!24735) (forall!6738 (exprs!2965 setElem!24735) lambda!103185))))

(declare-fun bs!516616 () Bool)

(assert (= bs!516616 d!817385))

(declare-fun m!3245681 () Bool)

(assert (=> bs!516616 m!3245681))

(assert (=> setNonEmpty!24735 d!817385))

(declare-fun d!817387 () Bool)

(assert (=> d!817387 (= (head!6223 lt!1005448) (h!38322 lt!1005448))))

(assert (=> b!2814394 d!817387))

(declare-fun d!817389 () Bool)

(declare-fun lt!1005528 () Int)

(assert (=> d!817389 (>= lt!1005528 0)))

(declare-fun e!1779980 () Int)

(assert (=> d!817389 (= lt!1005528 e!1779980)))

(declare-fun c!456231 () Bool)

(assert (=> d!817389 (= c!456231 ((_ is Nil!32902) lt!1005483))))

(assert (=> d!817389 (= (size!25645 lt!1005483) lt!1005528)))

(declare-fun b!2814755 () Bool)

(assert (=> b!2814755 (= e!1779980 0)))

(declare-fun b!2814756 () Bool)

(assert (=> b!2814756 (= e!1779980 (+ 1 (size!25645 (t!230010 lt!1005483))))))

(assert (= (and d!817389 c!456231) b!2814755))

(assert (= (and d!817389 (not c!456231)) b!2814756))

(declare-fun m!3245683 () Bool)

(assert (=> b!2814756 m!3245683))

(assert (=> b!2814424 d!817389))

(declare-fun d!817391 () Bool)

(declare-fun lt!1005529 () C!16768)

(assert (=> d!817391 (contains!6050 (tail!4448 lt!1005448) lt!1005529)))

(declare-fun e!1779982 () C!16768)

(assert (=> d!817391 (= lt!1005529 e!1779982)))

(declare-fun c!456232 () Bool)

(assert (=> d!817391 (= c!456232 (= (- i!1825 1) 0))))

(declare-fun e!1779981 () Bool)

(assert (=> d!817391 e!1779981))

(declare-fun res!1171598 () Bool)

(assert (=> d!817391 (=> (not res!1171598) (not e!1779981))))

(assert (=> d!817391 (= res!1171598 (<= 0 (- i!1825 1)))))

(assert (=> d!817391 (= (apply!7672 (tail!4448 lt!1005448) (- i!1825 1)) lt!1005529)))

(declare-fun b!2814757 () Bool)

(assert (=> b!2814757 (= e!1779981 (< (- i!1825 1) (size!25645 (tail!4448 lt!1005448))))))

(declare-fun b!2814758 () Bool)

(assert (=> b!2814758 (= e!1779982 (head!6223 (tail!4448 lt!1005448)))))

(declare-fun b!2814759 () Bool)

(assert (=> b!2814759 (= e!1779982 (apply!7672 (tail!4448 (tail!4448 lt!1005448)) (- (- i!1825 1) 1)))))

(assert (= (and d!817391 res!1171598) b!2814757))

(assert (= (and d!817391 c!456232) b!2814758))

(assert (= (and d!817391 (not c!456232)) b!2814759))

(assert (=> d!817391 m!3245327))

(declare-fun m!3245685 () Bool)

(assert (=> d!817391 m!3245685))

(assert (=> b!2814757 m!3245327))

(declare-fun m!3245687 () Bool)

(assert (=> b!2814757 m!3245687))

(assert (=> b!2814758 m!3245327))

(declare-fun m!3245689 () Bool)

(assert (=> b!2814758 m!3245689))

(assert (=> b!2814759 m!3245327))

(declare-fun m!3245691 () Bool)

(assert (=> b!2814759 m!3245691))

(assert (=> b!2814759 m!3245691))

(declare-fun m!3245693 () Bool)

(assert (=> b!2814759 m!3245693))

(assert (=> b!2814395 d!817391))

(declare-fun d!817393 () Bool)

(assert (=> d!817393 (= (tail!4448 lt!1005448) (t!230010 lt!1005448))))

(assert (=> b!2814395 d!817393))

(declare-fun d!817395 () Bool)

(declare-fun choose!16642 ((InoxSet Context!4930) Int) (InoxSet Context!4930))

(assert (=> d!817395 (= (flatMap!192 z!592 lambda!103173) (choose!16642 z!592 lambda!103173))))

(declare-fun bs!516617 () Bool)

(assert (= bs!516617 d!817395))

(declare-fun m!3245695 () Bool)

(assert (=> bs!516617 m!3245695))

(assert (=> d!817219 d!817395))

(assert (=> b!2814393 d!817361))

(declare-fun b!2814772 () Bool)

(declare-fun res!1171615 () Bool)

(declare-fun e!1779988 () Bool)

(assert (=> b!2814772 (=> (not res!1171615) (not e!1779988))))

(declare-fun isEmpty!18224 (Conc!10198) Bool)

(assert (=> b!2814772 (= res!1171615 (not (isEmpty!18224 (left!24820 (c!456085 input!3732)))))))

(declare-fun b!2814773 () Bool)

(declare-fun e!1779987 () Bool)

(assert (=> b!2814773 (= e!1779987 e!1779988)))

(declare-fun res!1171613 () Bool)

(assert (=> b!2814773 (=> (not res!1171613) (not e!1779988))))

(assert (=> b!2814773 (= res!1171613 (<= (- 1) (- (height!1502 (left!24820 (c!456085 input!3732))) (height!1502 (right!25150 (c!456085 input!3732))))))))

(declare-fun b!2814774 () Bool)

(declare-fun res!1171612 () Bool)

(assert (=> b!2814774 (=> (not res!1171612) (not e!1779988))))

(assert (=> b!2814774 (= res!1171612 (isBalanced!3093 (right!25150 (c!456085 input!3732))))))

(declare-fun d!817397 () Bool)

(declare-fun res!1171611 () Bool)

(assert (=> d!817397 (=> res!1171611 e!1779987)))

(assert (=> d!817397 (= res!1171611 (not ((_ is Node!10198) (c!456085 input!3732))))))

(assert (=> d!817397 (= (isBalanced!3093 (c!456085 input!3732)) e!1779987)))

(declare-fun b!2814775 () Bool)

(assert (=> b!2814775 (= e!1779988 (not (isEmpty!18224 (right!25150 (c!456085 input!3732)))))))

(declare-fun b!2814776 () Bool)

(declare-fun res!1171616 () Bool)

(assert (=> b!2814776 (=> (not res!1171616) (not e!1779988))))

(assert (=> b!2814776 (= res!1171616 (isBalanced!3093 (left!24820 (c!456085 input!3732))))))

(declare-fun b!2814777 () Bool)

(declare-fun res!1171614 () Bool)

(assert (=> b!2814777 (=> (not res!1171614) (not e!1779988))))

(assert (=> b!2814777 (= res!1171614 (<= (- (height!1502 (left!24820 (c!456085 input!3732))) (height!1502 (right!25150 (c!456085 input!3732)))) 1))))

(assert (= (and d!817397 (not res!1171611)) b!2814773))

(assert (= (and b!2814773 res!1171613) b!2814777))

(assert (= (and b!2814777 res!1171614) b!2814776))

(assert (= (and b!2814776 res!1171616) b!2814774))

(assert (= (and b!2814774 res!1171612) b!2814772))

(assert (= (and b!2814772 res!1171615) b!2814775))

(assert (=> b!2814777 m!3245613))

(assert (=> b!2814777 m!3245615))

(declare-fun m!3245697 () Bool)

(assert (=> b!2814774 m!3245697))

(declare-fun m!3245699 () Bool)

(assert (=> b!2814775 m!3245699))

(declare-fun m!3245701 () Bool)

(assert (=> b!2814776 m!3245701))

(declare-fun m!3245703 () Bool)

(assert (=> b!2814772 m!3245703))

(assert (=> b!2814773 m!3245613))

(assert (=> b!2814773 m!3245615))

(assert (=> d!817235 d!817397))

(declare-fun d!817399 () Bool)

(declare-fun c!456235 () Bool)

(assert (=> d!817399 (= c!456235 ((_ is Nil!32902) lt!1005483))))

(declare-fun e!1779991 () (InoxSet C!16768))

(assert (=> d!817399 (= (content!4595 lt!1005483) e!1779991)))

(declare-fun b!2814782 () Bool)

(assert (=> b!2814782 (= e!1779991 ((as const (Array C!16768 Bool)) false))))

(declare-fun b!2814783 () Bool)

(assert (=> b!2814783 (= e!1779991 ((_ map or) (store ((as const (Array C!16768 Bool)) false) (h!38322 lt!1005483) true) (content!4595 (t!230010 lt!1005483))))))

(assert (= (and d!817399 c!456235) b!2814782))

(assert (= (and d!817399 (not c!456235)) b!2814783))

(declare-fun m!3245705 () Bool)

(assert (=> b!2814783 m!3245705))

(declare-fun m!3245707 () Bool)

(assert (=> b!2814783 m!3245707))

(assert (=> d!817215 d!817399))

(declare-fun d!817401 () Bool)

(declare-fun c!456236 () Bool)

(assert (=> d!817401 (= c!456236 ((_ is Nil!32902) lt!1005448))))

(declare-fun e!1779992 () (InoxSet C!16768))

(assert (=> d!817401 (= (content!4595 lt!1005448) e!1779992)))

(declare-fun b!2814784 () Bool)

(assert (=> b!2814784 (= e!1779992 ((as const (Array C!16768 Bool)) false))))

(declare-fun b!2814785 () Bool)

(assert (=> b!2814785 (= e!1779992 ((_ map or) (store ((as const (Array C!16768 Bool)) false) (h!38322 lt!1005448) true) (content!4595 (t!230010 lt!1005448))))))

(assert (= (and d!817401 c!456236) b!2814784))

(assert (= (and d!817401 (not c!456236)) b!2814785))

(declare-fun m!3245709 () Bool)

(assert (=> b!2814785 m!3245709))

(assert (=> b!2814785 m!3245649))

(assert (=> d!817215 d!817401))

(assert (=> b!2814447 d!817377))

(declare-fun d!817403 () Bool)

(declare-fun lt!1005530 () C!16768)

(assert (=> d!817403 (contains!6050 (list!12333 input!3732) lt!1005530)))

(declare-fun e!1779994 () C!16768)

(assert (=> d!817403 (= lt!1005530 e!1779994)))

(declare-fun c!456237 () Bool)

(assert (=> d!817403 (= c!456237 (= i!1825 0))))

(declare-fun e!1779993 () Bool)

(assert (=> d!817403 e!1779993))

(declare-fun res!1171617 () Bool)

(assert (=> d!817403 (=> (not res!1171617) (not e!1779993))))

(assert (=> d!817403 (= res!1171617 (<= 0 i!1825))))

(assert (=> d!817403 (= (apply!7672 (list!12333 input!3732) i!1825) lt!1005530)))

(declare-fun b!2814786 () Bool)

(assert (=> b!2814786 (= e!1779993 (< i!1825 (size!25645 (list!12333 input!3732))))))

(declare-fun b!2814787 () Bool)

(assert (=> b!2814787 (= e!1779994 (head!6223 (list!12333 input!3732)))))

(declare-fun b!2814788 () Bool)

(assert (=> b!2814788 (= e!1779994 (apply!7672 (tail!4448 (list!12333 input!3732)) (- i!1825 1)))))

(assert (= (and d!817403 res!1171617) b!2814786))

(assert (= (and d!817403 c!456237) b!2814787))

(assert (= (and d!817403 (not c!456237)) b!2814788))

(assert (=> d!817403 m!3245195))

(declare-fun m!3245711 () Bool)

(assert (=> d!817403 m!3245711))

(assert (=> b!2814786 m!3245195))

(assert (=> b!2814786 m!3245381))

(assert (=> b!2814787 m!3245195))

(declare-fun m!3245713 () Bool)

(assert (=> b!2814787 m!3245713))

(assert (=> b!2814788 m!3245195))

(declare-fun m!3245715 () Bool)

(assert (=> b!2814788 m!3245715))

(assert (=> b!2814788 m!3245715))

(declare-fun m!3245717 () Bool)

(assert (=> b!2814788 m!3245717))

(assert (=> d!817233 d!817403))

(assert (=> d!817233 d!817229))

(declare-fun b!2814803 () Bool)

(declare-fun e!1780004 () Int)

(assert (=> b!2814803 (= e!1780004 i!1825)))

(declare-fun b!2814804 () Bool)

(declare-fun e!1780005 () C!16768)

(declare-fun apply!7677 (IArray!20401 Int) C!16768)

(assert (=> b!2814804 (= e!1780005 (apply!7677 (xs!13310 (c!456085 input!3732)) i!1825))))

(declare-fun b!2814805 () Bool)

(declare-fun e!1780006 () C!16768)

(declare-fun call!183196 () C!16768)

(assert (=> b!2814805 (= e!1780006 call!183196)))

(declare-fun d!817405 () Bool)

(declare-fun lt!1005535 () C!16768)

(assert (=> d!817405 (= lt!1005535 (apply!7672 (list!12335 (c!456085 input!3732)) i!1825))))

(assert (=> d!817405 (= lt!1005535 e!1780005)))

(declare-fun c!456245 () Bool)

(assert (=> d!817405 (= c!456245 ((_ is Leaf!15537) (c!456085 input!3732)))))

(declare-fun e!1780003 () Bool)

(assert (=> d!817405 e!1780003))

(declare-fun res!1171620 () Bool)

(assert (=> d!817405 (=> (not res!1171620) (not e!1780003))))

(assert (=> d!817405 (= res!1171620 (<= 0 i!1825))))

(assert (=> d!817405 (= (apply!7675 (c!456085 input!3732) i!1825) lt!1005535)))

(declare-fun bm!183191 () Bool)

(declare-fun c!456246 () Bool)

(declare-fun c!456244 () Bool)

(assert (=> bm!183191 (= c!456246 c!456244)))

(assert (=> bm!183191 (= call!183196 (apply!7675 (ite c!456244 (left!24820 (c!456085 input!3732)) (right!25150 (c!456085 input!3732))) e!1780004))))

(declare-fun b!2814806 () Bool)

(assert (=> b!2814806 (= e!1780004 (- i!1825 (size!25646 (left!24820 (c!456085 input!3732)))))))

(declare-fun b!2814807 () Bool)

(assert (=> b!2814807 (= e!1780003 (< i!1825 (size!25646 (c!456085 input!3732))))))

(declare-fun b!2814808 () Bool)

(assert (=> b!2814808 (= e!1780005 e!1780006)))

(declare-fun lt!1005536 () Bool)

(declare-fun appendIndex!289 (List!33026 List!33026 Int) Bool)

(assert (=> b!2814808 (= lt!1005536 (appendIndex!289 (list!12335 (left!24820 (c!456085 input!3732))) (list!12335 (right!25150 (c!456085 input!3732))) i!1825))))

(assert (=> b!2814808 (= c!456244 (< i!1825 (size!25646 (left!24820 (c!456085 input!3732)))))))

(declare-fun b!2814809 () Bool)

(assert (=> b!2814809 (= e!1780006 call!183196)))

(assert (= (and d!817405 res!1171620) b!2814807))

(assert (= (and d!817405 c!456245) b!2814804))

(assert (= (and d!817405 (not c!456245)) b!2814808))

(assert (= (and b!2814808 c!456244) b!2814805))

(assert (= (and b!2814808 (not c!456244)) b!2814809))

(assert (= (or b!2814805 b!2814809) bm!183191))

(assert (= (and bm!183191 c!456246) b!2814803))

(assert (= (and bm!183191 (not c!456246)) b!2814806))

(assert (=> d!817405 m!3245311))

(assert (=> d!817405 m!3245311))

(declare-fun m!3245719 () Bool)

(assert (=> d!817405 m!3245719))

(assert (=> b!2814808 m!3245601))

(assert (=> b!2814808 m!3245603))

(assert (=> b!2814808 m!3245601))

(assert (=> b!2814808 m!3245603))

(declare-fun m!3245721 () Bool)

(assert (=> b!2814808 m!3245721))

(assert (=> b!2814808 m!3245609))

(assert (=> b!2814806 m!3245609))

(declare-fun m!3245723 () Bool)

(assert (=> b!2814804 m!3245723))

(declare-fun m!3245725 () Bool)

(assert (=> bm!183191 m!3245725))

(assert (=> b!2814807 m!3245383))

(assert (=> d!817233 d!817405))

(declare-fun b!2814810 () Bool)

(declare-fun e!1780008 () List!33026)

(declare-fun e!1780011 () List!33026)

(assert (=> b!2814810 (= e!1780008 e!1780011)))

(declare-fun c!456247 () Bool)

(assert (=> b!2814810 (= c!456247 (<= (- i!1825 1) 0))))

(declare-fun b!2814811 () Bool)

(assert (=> b!2814811 (= e!1780011 (drop!1772 (t!230010 (t!230010 lt!1005448)) (- (- i!1825 1) 1)))))

(declare-fun b!2814812 () Bool)

(assert (=> b!2814812 (= e!1780008 Nil!32902)))

(declare-fun b!2814813 () Bool)

(declare-fun e!1780009 () Int)

(assert (=> b!2814813 (= e!1780009 0)))

(declare-fun b!2814814 () Bool)

(declare-fun e!1780007 () Bool)

(declare-fun lt!1005537 () List!33026)

(declare-fun e!1780010 () Int)

(assert (=> b!2814814 (= e!1780007 (= (size!25645 lt!1005537) e!1780010))))

(declare-fun c!456250 () Bool)

(assert (=> b!2814814 (= c!456250 (<= (- i!1825 1) 0))))

(declare-fun b!2814815 () Bool)

(declare-fun call!183197 () Int)

(assert (=> b!2814815 (= e!1780010 call!183197)))

(declare-fun bm!183192 () Bool)

(assert (=> bm!183192 (= call!183197 (size!25645 (t!230010 lt!1005448)))))

(declare-fun b!2814816 () Bool)

(assert (=> b!2814816 (= e!1780009 (- call!183197 (- i!1825 1)))))

(declare-fun d!817407 () Bool)

(assert (=> d!817407 e!1780007))

(declare-fun res!1171621 () Bool)

(assert (=> d!817407 (=> (not res!1171621) (not e!1780007))))

(assert (=> d!817407 (= res!1171621 (= ((_ map implies) (content!4595 lt!1005537) (content!4595 (t!230010 lt!1005448))) ((as const (InoxSet C!16768)) true)))))

(assert (=> d!817407 (= lt!1005537 e!1780008)))

(declare-fun c!456249 () Bool)

(assert (=> d!817407 (= c!456249 ((_ is Nil!32902) (t!230010 lt!1005448)))))

(assert (=> d!817407 (= (drop!1772 (t!230010 lt!1005448) (- i!1825 1)) lt!1005537)))

(declare-fun b!2814817 () Bool)

(assert (=> b!2814817 (= e!1780010 e!1780009)))

(declare-fun c!456248 () Bool)

(assert (=> b!2814817 (= c!456248 (>= (- i!1825 1) call!183197))))

(declare-fun b!2814818 () Bool)

(assert (=> b!2814818 (= e!1780011 (t!230010 lt!1005448))))

(assert (= (and d!817407 c!456249) b!2814812))

(assert (= (and d!817407 (not c!456249)) b!2814810))

(assert (= (and b!2814810 c!456247) b!2814818))

(assert (= (and b!2814810 (not c!456247)) b!2814811))

(assert (= (and d!817407 res!1171621) b!2814814))

(assert (= (and b!2814814 c!456250) b!2814815))

(assert (= (and b!2814814 (not c!456250)) b!2814817))

(assert (= (and b!2814817 c!456248) b!2814813))

(assert (= (and b!2814817 (not c!456248)) b!2814816))

(assert (= (or b!2814815 b!2814817 b!2814816) bm!183192))

(declare-fun m!3245727 () Bool)

(assert (=> b!2814811 m!3245727))

(declare-fun m!3245729 () Bool)

(assert (=> b!2814814 m!3245729))

(assert (=> bm!183192 m!3245627))

(declare-fun m!3245731 () Bool)

(assert (=> d!817407 m!3245731))

(assert (=> d!817407 m!3245649))

(assert (=> b!2814421 d!817407))

(declare-fun b!2814819 () Bool)

(declare-fun e!1780013 () List!33026)

(declare-fun e!1780016 () List!33026)

(assert (=> b!2814819 (= e!1780013 e!1780016)))

(declare-fun c!456251 () Bool)

(assert (=> b!2814819 (= c!456251 (<= (+ 1 i!1825) 0))))

(declare-fun b!2814820 () Bool)

(assert (=> b!2814820 (= e!1780016 (drop!1772 (t!230010 (list!12335 (c!456085 input!3732))) (- (+ 1 i!1825) 1)))))

(declare-fun b!2814821 () Bool)

(assert (=> b!2814821 (= e!1780013 Nil!32902)))

(declare-fun b!2814822 () Bool)

(declare-fun e!1780014 () Int)

(assert (=> b!2814822 (= e!1780014 0)))

(declare-fun b!2814823 () Bool)

(declare-fun e!1780012 () Bool)

(declare-fun lt!1005538 () List!33026)

(declare-fun e!1780015 () Int)

(assert (=> b!2814823 (= e!1780012 (= (size!25645 lt!1005538) e!1780015))))

(declare-fun c!456254 () Bool)

(assert (=> b!2814823 (= c!456254 (<= (+ 1 i!1825) 0))))

(declare-fun b!2814824 () Bool)

(declare-fun call!183198 () Int)

(assert (=> b!2814824 (= e!1780015 call!183198)))

(declare-fun bm!183193 () Bool)

(assert (=> bm!183193 (= call!183198 (size!25645 (list!12335 (c!456085 input!3732))))))

(declare-fun b!2814825 () Bool)

(assert (=> b!2814825 (= e!1780014 (- call!183198 (+ 1 i!1825)))))

(declare-fun d!817409 () Bool)

(assert (=> d!817409 e!1780012))

(declare-fun res!1171622 () Bool)

(assert (=> d!817409 (=> (not res!1171622) (not e!1780012))))

(assert (=> d!817409 (= res!1171622 (= ((_ map implies) (content!4595 lt!1005538) (content!4595 (list!12335 (c!456085 input!3732)))) ((as const (InoxSet C!16768)) true)))))

(assert (=> d!817409 (= lt!1005538 e!1780013)))

(declare-fun c!456253 () Bool)

(assert (=> d!817409 (= c!456253 ((_ is Nil!32902) (list!12335 (c!456085 input!3732))))))

(assert (=> d!817409 (= (drop!1772 (list!12335 (c!456085 input!3732)) (+ 1 i!1825)) lt!1005538)))

(declare-fun b!2814826 () Bool)

(assert (=> b!2814826 (= e!1780015 e!1780014)))

(declare-fun c!456252 () Bool)

(assert (=> b!2814826 (= c!456252 (>= (+ 1 i!1825) call!183198))))

(declare-fun b!2814827 () Bool)

(assert (=> b!2814827 (= e!1780016 (list!12335 (c!456085 input!3732)))))

(assert (= (and d!817409 c!456253) b!2814821))

(assert (= (and d!817409 (not c!456253)) b!2814819))

(assert (= (and b!2814819 c!456251) b!2814827))

(assert (= (and b!2814819 (not c!456251)) b!2814820))

(assert (= (and d!817409 res!1171622) b!2814823))

(assert (= (and b!2814823 c!456254) b!2814824))

(assert (= (and b!2814823 (not c!456254)) b!2814826))

(assert (= (and b!2814826 c!456252) b!2814822))

(assert (= (and b!2814826 (not c!456252)) b!2814825))

(assert (= (or b!2814824 b!2814826 b!2814825) bm!183193))

(declare-fun m!3245733 () Bool)

(assert (=> b!2814820 m!3245733))

(declare-fun m!3245735 () Bool)

(assert (=> b!2814823 m!3245735))

(assert (=> bm!183193 m!3245311))

(assert (=> bm!183193 m!3245659))

(declare-fun m!3245737 () Bool)

(assert (=> d!817409 m!3245737))

(assert (=> d!817409 m!3245311))

(assert (=> d!817409 m!3245663))

(assert (=> d!817205 d!817409))

(assert (=> d!817205 d!817349))

(declare-fun d!817411 () Bool)

(declare-fun lt!1005539 () Int)

(assert (=> d!817411 (>= lt!1005539 0)))

(declare-fun e!1780017 () Int)

(assert (=> d!817411 (= lt!1005539 e!1780017)))

(declare-fun c!456255 () Bool)

(assert (=> d!817411 (= c!456255 ((_ is Nil!32902) (list!12333 input!3732)))))

(assert (=> d!817411 (= (size!25645 (list!12333 input!3732)) lt!1005539)))

(declare-fun b!2814828 () Bool)

(assert (=> b!2814828 (= e!1780017 0)))

(declare-fun b!2814829 () Bool)

(assert (=> b!2814829 (= e!1780017 (+ 1 (size!25645 (t!230010 (list!12333 input!3732)))))))

(assert (= (and d!817411 c!456255) b!2814828))

(assert (= (and d!817411 (not c!456255)) b!2814829))

(declare-fun m!3245739 () Bool)

(assert (=> b!2814829 m!3245739))

(assert (=> d!817239 d!817411))

(assert (=> d!817239 d!817229))

(declare-fun d!817413 () Bool)

(declare-fun lt!1005542 () Int)

(assert (=> d!817413 (= lt!1005542 (size!25645 (list!12335 (c!456085 input!3732))))))

(assert (=> d!817413 (= lt!1005542 (ite ((_ is Empty!10198) (c!456085 input!3732)) 0 (ite ((_ is Leaf!15537) (c!456085 input!3732)) (csize!20627 (c!456085 input!3732)) (csize!20626 (c!456085 input!3732)))))))

(assert (=> d!817413 (= (size!25646 (c!456085 input!3732)) lt!1005542)))

(declare-fun bs!516618 () Bool)

(assert (= bs!516618 d!817413))

(assert (=> bs!516618 m!3245311))

(assert (=> bs!516618 m!3245311))

(assert (=> bs!516618 m!3245659))

(assert (=> d!817239 d!817413))

(declare-fun d!817415 () Bool)

(declare-fun c!456256 () Bool)

(assert (=> d!817415 (= c!456256 ((_ is Nil!32902) lt!1005487))))

(declare-fun e!1780018 () (InoxSet C!16768))

(assert (=> d!817415 (= (content!4595 lt!1005487) e!1780018)))

(declare-fun b!2814830 () Bool)

(assert (=> b!2814830 (= e!1780018 ((as const (Array C!16768 Bool)) false))))

(declare-fun b!2814831 () Bool)

(assert (=> b!2814831 (= e!1780018 ((_ map or) (store ((as const (Array C!16768 Bool)) false) (h!38322 lt!1005487) true) (content!4595 (t!230010 lt!1005487))))))

(assert (= (and d!817415 c!456256) b!2814830))

(assert (= (and d!817415 (not c!456256)) b!2814831))

(declare-fun m!3245741 () Bool)

(assert (=> b!2814831 m!3245741))

(declare-fun m!3245743 () Bool)

(assert (=> b!2814831 m!3245743))

(assert (=> d!817225 d!817415))

(assert (=> d!817225 d!817401))

(assert (=> bm!183177 d!817361))

(declare-fun d!817417 () Bool)

(declare-fun lt!1005545 () Bool)

(assert (=> d!817417 (= lt!1005545 (select (content!4595 lt!1005448) lt!1005480))))

(declare-fun e!1780023 () Bool)

(assert (=> d!817417 (= lt!1005545 e!1780023)))

(declare-fun res!1171627 () Bool)

(assert (=> d!817417 (=> (not res!1171627) (not e!1780023))))

(assert (=> d!817417 (= res!1171627 ((_ is Cons!32902) lt!1005448))))

(assert (=> d!817417 (= (contains!6050 lt!1005448 lt!1005480) lt!1005545)))

(declare-fun b!2814836 () Bool)

(declare-fun e!1780024 () Bool)

(assert (=> b!2814836 (= e!1780023 e!1780024)))

(declare-fun res!1171628 () Bool)

(assert (=> b!2814836 (=> res!1171628 e!1780024)))

(assert (=> b!2814836 (= res!1171628 (= (h!38322 lt!1005448) lt!1005480))))

(declare-fun b!2814837 () Bool)

(assert (=> b!2814837 (= e!1780024 (contains!6050 (t!230010 lt!1005448) lt!1005480))))

(assert (= (and d!817417 res!1171627) b!2814836))

(assert (= (and b!2814836 (not res!1171628)) b!2814837))

(assert (=> d!817417 m!3245349))

(declare-fun m!3245745 () Bool)

(assert (=> d!817417 m!3245745))

(declare-fun m!3245747 () Bool)

(assert (=> b!2814837 m!3245747))

(assert (=> d!817211 d!817417))

(assert (=> b!2814451 d!817239))

(declare-fun b!2814842 () Bool)

(declare-fun e!1780027 () Bool)

(declare-fun tp_is_empty!14423 () Bool)

(declare-fun tp!898649 () Bool)

(assert (=> b!2814842 (= e!1780027 (and tp_is_empty!14423 tp!898649))))

(assert (=> b!2814481 (= tp!898614 e!1780027)))

(assert (= (and b!2814481 ((_ is Cons!32902) (innerList!10258 (xs!13310 (c!456085 input!3732))))) b!2814842))

(declare-fun condSetEmpty!24737 () Bool)

(assert (=> setNonEmpty!24735 (= condSetEmpty!24737 (= setRest!24735 ((as const (Array Context!4930 Bool)) false)))))

(declare-fun setRes!24737 () Bool)

(assert (=> setNonEmpty!24735 (= tp!898601 setRes!24737)))

(declare-fun setIsEmpty!24737 () Bool)

(assert (=> setIsEmpty!24737 setRes!24737))

(declare-fun tp!898651 () Bool)

(declare-fun setElem!24737 () Context!4930)

(declare-fun setNonEmpty!24737 () Bool)

(declare-fun e!1780028 () Bool)

(assert (=> setNonEmpty!24737 (= setRes!24737 (and tp!898651 (inv!44718 setElem!24737) e!1780028))))

(declare-fun setRest!24737 () (InoxSet Context!4930))

(assert (=> setNonEmpty!24737 (= setRest!24735 ((_ map or) (store ((as const (Array Context!4930 Bool)) false) setElem!24737 true) setRest!24737))))

(declare-fun b!2814843 () Bool)

(declare-fun tp!898650 () Bool)

(assert (=> b!2814843 (= e!1780028 tp!898650)))

(assert (= (and setNonEmpty!24735 condSetEmpty!24737) setIsEmpty!24737))

(assert (= (and setNonEmpty!24735 (not condSetEmpty!24737)) setNonEmpty!24737))

(assert (= setNonEmpty!24737 b!2814843))

(declare-fun m!3245749 () Bool)

(assert (=> setNonEmpty!24737 m!3245749))

(declare-fun e!1780031 () Bool)

(assert (=> b!2814470 (= tp!898606 e!1780031)))

(declare-fun b!2814855 () Bool)

(declare-fun tp!898662 () Bool)

(declare-fun tp!898663 () Bool)

(assert (=> b!2814855 (= e!1780031 (and tp!898662 tp!898663))))

(declare-fun b!2814856 () Bool)

(declare-fun tp!898664 () Bool)

(assert (=> b!2814856 (= e!1780031 tp!898664)))

(declare-fun b!2814854 () Bool)

(assert (=> b!2814854 (= e!1780031 tp_is_empty!14423)))

(declare-fun b!2814857 () Bool)

(declare-fun tp!898665 () Bool)

(declare-fun tp!898666 () Bool)

(assert (=> b!2814857 (= e!1780031 (and tp!898665 tp!898666))))

(assert (= (and b!2814470 ((_ is ElementMatch!8299) (h!38323 (exprs!2965 setElem!24729)))) b!2814854))

(assert (= (and b!2814470 ((_ is Concat!13439) (h!38323 (exprs!2965 setElem!24729)))) b!2814855))

(assert (= (and b!2814470 ((_ is Star!8299) (h!38323 (exprs!2965 setElem!24729)))) b!2814856))

(assert (= (and b!2814470 ((_ is Union!8299) (h!38323 (exprs!2965 setElem!24729)))) b!2814857))

(declare-fun b!2814858 () Bool)

(declare-fun e!1780032 () Bool)

(declare-fun tp!898667 () Bool)

(declare-fun tp!898668 () Bool)

(assert (=> b!2814858 (= e!1780032 (and tp!898667 tp!898668))))

(assert (=> b!2814470 (= tp!898607 e!1780032)))

(assert (= (and b!2814470 ((_ is Cons!32903) (t!230011 (exprs!2965 setElem!24729)))) b!2814858))

(declare-fun b!2814859 () Bool)

(declare-fun e!1780033 () Bool)

(declare-fun tp!898669 () Bool)

(declare-fun tp!898670 () Bool)

(assert (=> b!2814859 (= e!1780033 (and tp!898669 tp!898670))))

(assert (=> b!2814465 (= tp!898600 e!1780033)))

(assert (= (and b!2814465 ((_ is Cons!32903) (exprs!2965 setElem!24735))) b!2814859))

(declare-fun e!1780034 () Bool)

(declare-fun b!2814860 () Bool)

(declare-fun tp!898673 () Bool)

(declare-fun tp!898672 () Bool)

(assert (=> b!2814860 (= e!1780034 (and (inv!44720 (left!24820 (left!24820 (c!456085 input!3732)))) tp!898672 (inv!44720 (right!25150 (left!24820 (c!456085 input!3732)))) tp!898673))))

(declare-fun b!2814862 () Bool)

(declare-fun e!1780035 () Bool)

(declare-fun tp!898671 () Bool)

(assert (=> b!2814862 (= e!1780035 tp!898671)))

(declare-fun b!2814861 () Bool)

(assert (=> b!2814861 (= e!1780034 (and (inv!44726 (xs!13310 (left!24820 (c!456085 input!3732)))) e!1780035))))

(assert (=> b!2814479 (= tp!898615 (and (inv!44720 (left!24820 (c!456085 input!3732))) e!1780034))))

(assert (= (and b!2814479 ((_ is Node!10198) (left!24820 (c!456085 input!3732)))) b!2814860))

(assert (= b!2814861 b!2814862))

(assert (= (and b!2814479 ((_ is Leaf!15537) (left!24820 (c!456085 input!3732)))) b!2814861))

(declare-fun m!3245751 () Bool)

(assert (=> b!2814860 m!3245751))

(declare-fun m!3245753 () Bool)

(assert (=> b!2814860 m!3245753))

(declare-fun m!3245755 () Bool)

(assert (=> b!2814861 m!3245755))

(assert (=> b!2814479 m!3245387))

(declare-fun e!1780036 () Bool)

(declare-fun tp!898675 () Bool)

(declare-fun tp!898676 () Bool)

(declare-fun b!2814863 () Bool)

(assert (=> b!2814863 (= e!1780036 (and (inv!44720 (left!24820 (right!25150 (c!456085 input!3732)))) tp!898675 (inv!44720 (right!25150 (right!25150 (c!456085 input!3732)))) tp!898676))))

(declare-fun b!2814865 () Bool)

(declare-fun e!1780037 () Bool)

(declare-fun tp!898674 () Bool)

(assert (=> b!2814865 (= e!1780037 tp!898674)))

(declare-fun b!2814864 () Bool)

(assert (=> b!2814864 (= e!1780036 (and (inv!44726 (xs!13310 (right!25150 (c!456085 input!3732)))) e!1780037))))

(assert (=> b!2814479 (= tp!898616 (and (inv!44720 (right!25150 (c!456085 input!3732))) e!1780036))))

(assert (= (and b!2814479 ((_ is Node!10198) (right!25150 (c!456085 input!3732)))) b!2814863))

(assert (= b!2814864 b!2814865))

(assert (= (and b!2814479 ((_ is Leaf!15537) (right!25150 (c!456085 input!3732)))) b!2814864))

(declare-fun m!3245757 () Bool)

(assert (=> b!2814863 m!3245757))

(declare-fun m!3245759 () Bool)

(assert (=> b!2814863 m!3245759))

(declare-fun m!3245761 () Bool)

(assert (=> b!2814864 m!3245761))

(assert (=> b!2814479 m!3245389))

(declare-fun b_lambda!84205 () Bool)

(assert (= b_lambda!84203 (or d!817163 b_lambda!84205)))

(declare-fun bs!516619 () Bool)

(declare-fun d!817419 () Bool)

(assert (= bs!516619 (and d!817419 d!817163)))

(declare-fun validRegex!3345 (Regex!8299) Bool)

(assert (=> bs!516619 (= (dynLambda!13736 lambda!103170 (h!38323 (exprs!2965 setElem!24729))) (validRegex!3345 (h!38323 (exprs!2965 setElem!24729))))))

(declare-fun m!3245763 () Bool)

(assert (=> bs!516619 m!3245763))

(assert (=> b!2814741 d!817419))

(check-sat (not b!2814837) (not b!2814744) (not b!2814718) (not b!2814807) (not d!817273) (not bm!183192) (not d!817301) (not d!817403) (not d!817365) (not b!2814756) (not b!2814753) (not b!2814649) (not b!2814775) (not b!2814742) (not b!2814831) (not b!2814640) (not b!2814721) (not d!817385) (not b!2814615) (not b!2814585) (not bm!183183) (not b!2814855) (not b!2814864) (not b!2814862) (not d!817363) (not b!2814863) (not b!2814707) (not b!2814859) tp_is_empty!14423 (not b!2814786) (not d!817409) (not b!2814808) (not d!817391) (not b!2814861) (not setNonEmpty!24737) (not d!817325) (not b!2814811) (not b!2814758) (not b!2814787) (not b!2814752) (not b!2814759) (not b!2814804) (not d!817377) (not b!2814785) (not b!2814727) (not b!2814773) (not b!2814716) (not b!2814479) (not b!2814729) (not d!817413) (not b!2814820) (not b!2814858) (not d!817381) (not b!2814720) (not b!2814829) (not d!817371) (not d!817275) (not b!2814814) (not bm!183188) (not b!2814732) (not b!2814757) (not b!2814774) (not bm!183191) (not b!2814648) (not d!817395) (not d!817375) (not d!817407) (not d!817329) (not bm!183193) (not b!2814860) (not b!2814777) (not d!817417) (not b!2814783) (not bm!183187) (not d!817383) (not b!2814857) (not d!817305) (not d!817405) (not b!2814806) (not b!2814856) (not bs!516619) (not b!2814726) (not d!817355) (not b!2814772) (not b!2814582) (not b!2814776) (not b!2814788) (not b!2814723) (not b!2814708) (not b!2814725) (not d!817353) (not b!2814865) (not b!2814823) (not b!2814843) (not b!2814842) (not b_lambda!84205) (not d!817379) (not b!2814754) (not b!2814747))
(check-sat)
