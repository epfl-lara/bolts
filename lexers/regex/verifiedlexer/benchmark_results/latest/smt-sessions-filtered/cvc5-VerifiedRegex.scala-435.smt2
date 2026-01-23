; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!12780 () Bool)

(assert start!12780)

(declare-fun b!125525 () Bool)

(declare-fun e!72266 () Bool)

(declare-fun tp!68539 () Bool)

(declare-fun tp!68534 () Bool)

(assert (=> b!125525 (= e!72266 (and tp!68539 tp!68534))))

(declare-fun b!125526 () Bool)

(declare-fun e!72268 () Bool)

(declare-datatypes ((C!2070 0))(
  ( (C!2071 (val!761 Int)) )
))
(declare-datatypes ((List!2068 0))(
  ( (Nil!2062) (Cons!2062 (h!7459 C!2070) (t!22636 List!2068)) )
))
(declare-datatypes ((IArray!1161 0))(
  ( (IArray!1162 (innerList!638 List!2068)) )
))
(declare-datatypes ((Conc!580 0))(
  ( (Node!580 (left!1651 Conc!580) (right!1981 Conc!580) (csize!1390 Int) (cheight!791 Int)) (Leaf!1016 (xs!3175 IArray!1161) (csize!1391 Int)) (Empty!580) )
))
(declare-datatypes ((BalanceConc!1164 0))(
  ( (BalanceConc!1165 (c!27649 Conc!580)) )
))
(declare-fun input!6028 () BalanceConc!1164)

(declare-fun size!1904 (BalanceConc!1164) Int)

(assert (=> b!125526 (= e!72268 (<= 0 (size!1904 input!6028)))))

(declare-fun b!125527 () Bool)

(declare-fun e!72267 () Bool)

(assert (=> b!125527 (= e!72267 (not e!72268))))

(declare-fun res!58295 () Bool)

(assert (=> b!125527 (=> (not res!58295) (not e!72268))))

(assert (=> b!125527 (= res!58295 true)))

(declare-datatypes ((Regex!574 0))(
  ( (ElementMatch!574 (c!27650 C!2070)) (Concat!968 (regOne!1660 Regex!574) (regTwo!1660 Regex!574)) (EmptyExpr!574) (Star!574 (reg!903 Regex!574)) (EmptyLang!574) (Union!574 (regOne!1661 Regex!574) (regTwo!1661 Regex!574)) )
))
(declare-fun r!13481 () Regex!574)

(declare-fun lt!37958 () List!2068)

(declare-datatypes ((List!2069 0))(
  ( (Nil!2063) (Cons!2063 (h!7460 Regex!574) (t!22637 List!2069)) )
))
(declare-datatypes ((Context!228 0))(
  ( (Context!229 (exprs!614 List!2069)) )
))
(declare-fun lt!37961 () (Set Context!228))

(declare-fun matchR!52 (Regex!574 List!2068) Bool)

(declare-fun matchZipper!8 ((Set Context!228) List!2068) Bool)

(assert (=> b!125527 (= (matchR!52 r!13481 lt!37958) (matchZipper!8 lt!37961 lt!37958))))

(declare-datatypes ((List!2070 0))(
  ( (Nil!2064) (Cons!2064 (h!7461 Context!228) (t!22638 List!2070)) )
))
(declare-fun lt!37959 () List!2070)

(declare-datatypes ((Unit!1619 0))(
  ( (Unit!1620) )
))
(declare-fun lt!37960 () Unit!1619)

(declare-fun theoremZipperRegexEquiv!3 ((Set Context!228) List!2070 Regex!574 List!2068) Unit!1619)

(assert (=> b!125527 (= lt!37960 (theoremZipperRegexEquiv!3 lt!37961 lt!37959 r!13481 lt!37958))))

(declare-fun list!797 (BalanceConc!1164) List!2068)

(assert (=> b!125527 (= lt!37958 (list!797 input!6028))))

(declare-fun toList!274 ((Set Context!228)) List!2070)

(assert (=> b!125527 (= lt!37959 (toList!274 lt!37961))))

(declare-fun dropList!43 (BalanceConc!1164 Int) List!2068)

(declare-fun matchZipperSequence!8 ((Set Context!228) BalanceConc!1164 Int) Bool)

(assert (=> b!125527 (= (matchZipper!8 lt!37961 (dropList!43 input!6028 0)) (matchZipperSequence!8 lt!37961 input!6028 0))))

(declare-fun lt!37962 () Unit!1619)

(declare-fun lemmaMatchZipperSequenceEquivalent!7 ((Set Context!228) BalanceConc!1164 Int) Unit!1619)

(assert (=> b!125527 (= lt!37962 (lemmaMatchZipperSequenceEquivalent!7 lt!37961 input!6028 0))))

(declare-fun focus!9 (Regex!574) (Set Context!228))

(assert (=> b!125527 (= lt!37961 (focus!9 r!13481))))

(declare-fun b!125528 () Bool)

(declare-fun e!72269 () Bool)

(declare-fun tp!68536 () Bool)

(declare-fun inv!2648 (Conc!580) Bool)

(assert (=> b!125528 (= e!72269 (and (inv!2648 (c!27649 input!6028)) tp!68536))))

(declare-fun b!125529 () Bool)

(declare-fun tp!68535 () Bool)

(assert (=> b!125529 (= e!72266 tp!68535)))

(declare-fun b!125530 () Bool)

(declare-fun tp_is_empty!1203 () Bool)

(assert (=> b!125530 (= e!72266 tp_is_empty!1203)))

(declare-fun b!125531 () Bool)

(declare-fun tp!68537 () Bool)

(declare-fun tp!68538 () Bool)

(assert (=> b!125531 (= e!72266 (and tp!68537 tp!68538))))

(declare-fun res!58296 () Bool)

(assert (=> start!12780 (=> (not res!58296) (not e!72267))))

(declare-fun validRegex!166 (Regex!574) Bool)

(assert (=> start!12780 (= res!58296 (validRegex!166 r!13481))))

(assert (=> start!12780 e!72267))

(assert (=> start!12780 e!72266))

(declare-fun inv!2649 (BalanceConc!1164) Bool)

(assert (=> start!12780 (and (inv!2649 input!6028) e!72269)))

(assert (= (and start!12780 res!58296) b!125527))

(assert (= (and b!125527 res!58295) b!125526))

(assert (= (and start!12780 (is-ElementMatch!574 r!13481)) b!125530))

(assert (= (and start!12780 (is-Concat!968 r!13481)) b!125525))

(assert (= (and start!12780 (is-Star!574 r!13481)) b!125529))

(assert (= (and start!12780 (is-Union!574 r!13481)) b!125531))

(assert (= start!12780 b!125528))

(declare-fun m!111199 () Bool)

(assert (=> b!125526 m!111199))

(declare-fun m!111201 () Bool)

(assert (=> b!125527 m!111201))

(declare-fun m!111203 () Bool)

(assert (=> b!125527 m!111203))

(declare-fun m!111205 () Bool)

(assert (=> b!125527 m!111205))

(declare-fun m!111207 () Bool)

(assert (=> b!125527 m!111207))

(declare-fun m!111209 () Bool)

(assert (=> b!125527 m!111209))

(assert (=> b!125527 m!111201))

(declare-fun m!111211 () Bool)

(assert (=> b!125527 m!111211))

(declare-fun m!111213 () Bool)

(assert (=> b!125527 m!111213))

(declare-fun m!111215 () Bool)

(assert (=> b!125527 m!111215))

(declare-fun m!111217 () Bool)

(assert (=> b!125527 m!111217))

(declare-fun m!111219 () Bool)

(assert (=> b!125527 m!111219))

(declare-fun m!111221 () Bool)

(assert (=> b!125528 m!111221))

(declare-fun m!111223 () Bool)

(assert (=> start!12780 m!111223))

(declare-fun m!111225 () Bool)

(assert (=> start!12780 m!111225))

(push 1)

(assert (not b!125527))

(assert tp_is_empty!1203)

(assert (not b!125528))

(assert (not b!125525))

(assert (not b!125526))

(assert (not start!12780))

(assert (not b!125531))

(assert (not b!125529))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!29754 () Bool)

(declare-fun c!27655 () Bool)

(assert (=> d!29754 (= c!27655 (is-Node!580 (c!27649 input!6028)))))

(declare-fun e!72286 () Bool)

(assert (=> d!29754 (= (inv!2648 (c!27649 input!6028)) e!72286)))

(declare-fun b!125559 () Bool)

(declare-fun inv!2652 (Conc!580) Bool)

(assert (=> b!125559 (= e!72286 (inv!2652 (c!27649 input!6028)))))

(declare-fun b!125560 () Bool)

(declare-fun e!72287 () Bool)

(assert (=> b!125560 (= e!72286 e!72287)))

(declare-fun res!58305 () Bool)

(assert (=> b!125560 (= res!58305 (not (is-Leaf!1016 (c!27649 input!6028))))))

(assert (=> b!125560 (=> res!58305 e!72287)))

(declare-fun b!125561 () Bool)

(declare-fun inv!2653 (Conc!580) Bool)

(assert (=> b!125561 (= e!72287 (inv!2653 (c!27649 input!6028)))))

(assert (= (and d!29754 c!27655) b!125559))

(assert (= (and d!29754 (not c!27655)) b!125560))

(assert (= (and b!125560 (not res!58305)) b!125561))

(declare-fun m!111255 () Bool)

(assert (=> b!125559 m!111255))

(declare-fun m!111257 () Bool)

(assert (=> b!125561 m!111257))

(assert (=> b!125528 d!29754))

(declare-fun d!29756 () Bool)

(declare-fun drop!99 (List!2068 Int) List!2068)

(declare-fun list!799 (Conc!580) List!2068)

(assert (=> d!29756 (= (dropList!43 input!6028 0) (drop!99 (list!799 (c!27649 input!6028)) 0))))

(declare-fun bs!12426 () Bool)

(assert (= bs!12426 d!29756))

(declare-fun m!111259 () Bool)

(assert (=> bs!12426 m!111259))

(assert (=> bs!12426 m!111259))

(declare-fun m!111261 () Bool)

(assert (=> bs!12426 m!111261))

(assert (=> b!125527 d!29756))

(declare-fun d!29760 () Bool)

(declare-fun c!27662 () Bool)

(assert (=> d!29760 (= c!27662 (= 0 (size!1904 input!6028)))))

(declare-fun e!72304 () Bool)

(assert (=> d!29760 (= (matchZipperSequence!8 lt!37961 input!6028 0) e!72304)))

(declare-fun b!125584 () Bool)

(declare-fun nullableZipper!1 ((Set Context!228)) Bool)

(assert (=> b!125584 (= e!72304 (nullableZipper!1 lt!37961))))

(declare-fun b!125585 () Bool)

(declare-fun derivationStepZipper!1 ((Set Context!228) C!2070) (Set Context!228))

(declare-fun apply!270 (BalanceConc!1164 Int) C!2070)

(assert (=> b!125585 (= e!72304 (matchZipperSequence!8 (derivationStepZipper!1 lt!37961 (apply!270 input!6028 0)) input!6028 (+ 0 1)))))

(assert (= (and d!29760 c!27662) b!125584))

(assert (= (and d!29760 (not c!27662)) b!125585))

(assert (=> d!29760 m!111199))

(declare-fun m!111263 () Bool)

(assert (=> b!125584 m!111263))

(declare-fun m!111265 () Bool)

(assert (=> b!125585 m!111265))

(assert (=> b!125585 m!111265))

(declare-fun m!111267 () Bool)

(assert (=> b!125585 m!111267))

(assert (=> b!125585 m!111267))

(declare-fun m!111269 () Bool)

(assert (=> b!125585 m!111269))

(assert (=> b!125527 d!29760))

(declare-fun d!29762 () Bool)

(declare-fun e!72314 () Bool)

(assert (=> d!29762 e!72314))

(declare-fun res!58324 () Bool)

(assert (=> d!29762 (=> (not res!58324) (not e!72314))))

(assert (=> d!29762 (= res!58324 (validRegex!166 r!13481))))

(assert (=> d!29762 (= (focus!9 r!13481) (set.insert (Context!229 (Cons!2063 r!13481 Nil!2063)) (as set.empty (Set Context!228))))))

(declare-fun b!125597 () Bool)

(declare-fun unfocusZipper!3 (List!2070) Regex!574)

(assert (=> b!125597 (= e!72314 (= (unfocusZipper!3 (toList!274 (set.insert (Context!229 (Cons!2063 r!13481 Nil!2063)) (as set.empty (Set Context!228))))) r!13481))))

(assert (= (and d!29762 res!58324) b!125597))

(assert (=> d!29762 m!111223))

(declare-fun m!111271 () Bool)

(assert (=> d!29762 m!111271))

(assert (=> b!125597 m!111271))

(assert (=> b!125597 m!111271))

(declare-fun m!111273 () Bool)

(assert (=> b!125597 m!111273))

(assert (=> b!125597 m!111273))

(declare-fun m!111277 () Bool)

(assert (=> b!125597 m!111277))

(assert (=> b!125527 d!29762))

(declare-fun b!125635 () Bool)

(declare-fun e!72337 () Bool)

(declare-fun nullable!97 (Regex!574) Bool)

(assert (=> b!125635 (= e!72337 (nullable!97 r!13481))))

(declare-fun b!125636 () Bool)

(declare-fun e!72336 () Bool)

(declare-fun e!72338 () Bool)

(assert (=> b!125636 (= e!72336 e!72338)))

(declare-fun res!58351 () Bool)

(assert (=> b!125636 (=> res!58351 e!72338)))

(declare-fun call!5434 () Bool)

(assert (=> b!125636 (= res!58351 call!5434)))

(declare-fun d!29764 () Bool)

(declare-fun e!72340 () Bool)

(assert (=> d!29764 e!72340))

(declare-fun c!27674 () Bool)

(assert (=> d!29764 (= c!27674 (is-EmptyExpr!574 r!13481))))

(declare-fun lt!37983 () Bool)

(assert (=> d!29764 (= lt!37983 e!72337)))

(declare-fun c!27675 () Bool)

(declare-fun isEmpty!820 (List!2068) Bool)

(assert (=> d!29764 (= c!27675 (isEmpty!820 lt!37958))))

(assert (=> d!29764 (validRegex!166 r!13481)))

(assert (=> d!29764 (= (matchR!52 r!13481 lt!37958) lt!37983)))

(declare-fun b!125637 () Bool)

(declare-fun res!58345 () Bool)

(assert (=> b!125637 (=> res!58345 e!72338)))

(declare-fun tail!247 (List!2068) List!2068)

(assert (=> b!125637 (= res!58345 (not (isEmpty!820 (tail!247 lt!37958))))))

(declare-fun b!125638 () Bool)

(declare-fun e!72341 () Bool)

(assert (=> b!125638 (= e!72341 e!72336)))

(declare-fun res!58346 () Bool)

(assert (=> b!125638 (=> (not res!58346) (not e!72336))))

(assert (=> b!125638 (= res!58346 (not lt!37983))))

(declare-fun b!125639 () Bool)

(assert (=> b!125639 (= e!72340 (= lt!37983 call!5434))))

(declare-fun b!125640 () Bool)

(declare-fun res!58347 () Bool)

(declare-fun e!72335 () Bool)

(assert (=> b!125640 (=> (not res!58347) (not e!72335))))

(assert (=> b!125640 (= res!58347 (not call!5434))))

(declare-fun b!125641 () Bool)

(declare-fun head!511 (List!2068) C!2070)

(assert (=> b!125641 (= e!72338 (not (= (head!511 lt!37958) (c!27650 r!13481))))))

(declare-fun b!125642 () Bool)

(declare-fun e!72339 () Bool)

(assert (=> b!125642 (= e!72340 e!72339)))

(declare-fun c!27676 () Bool)

(assert (=> b!125642 (= c!27676 (is-EmptyLang!574 r!13481))))

(declare-fun b!125643 () Bool)

(assert (=> b!125643 (= e!72335 (= (head!511 lt!37958) (c!27650 r!13481)))))

(declare-fun b!125644 () Bool)

(declare-fun derivativeStep!69 (Regex!574 C!2070) Regex!574)

(assert (=> b!125644 (= e!72337 (matchR!52 (derivativeStep!69 r!13481 (head!511 lt!37958)) (tail!247 lt!37958)))))

(declare-fun b!125645 () Bool)

(declare-fun res!58350 () Bool)

(assert (=> b!125645 (=> res!58350 e!72341)))

(assert (=> b!125645 (= res!58350 (not (is-ElementMatch!574 r!13481)))))

(assert (=> b!125645 (= e!72339 e!72341)))

(declare-fun b!125646 () Bool)

(declare-fun res!58348 () Bool)

(assert (=> b!125646 (=> (not res!58348) (not e!72335))))

(assert (=> b!125646 (= res!58348 (isEmpty!820 (tail!247 lt!37958)))))

(declare-fun b!125647 () Bool)

(assert (=> b!125647 (= e!72339 (not lt!37983))))

(declare-fun b!125648 () Bool)

(declare-fun res!58344 () Bool)

(assert (=> b!125648 (=> res!58344 e!72341)))

(assert (=> b!125648 (= res!58344 e!72335)))

(declare-fun res!58349 () Bool)

(assert (=> b!125648 (=> (not res!58349) (not e!72335))))

(assert (=> b!125648 (= res!58349 lt!37983)))

(declare-fun bm!5429 () Bool)

(assert (=> bm!5429 (= call!5434 (isEmpty!820 lt!37958))))

(assert (= (and d!29764 c!27675) b!125635))

(assert (= (and d!29764 (not c!27675)) b!125644))

(assert (= (and d!29764 c!27674) b!125639))

(assert (= (and d!29764 (not c!27674)) b!125642))

(assert (= (and b!125642 c!27676) b!125647))

(assert (= (and b!125642 (not c!27676)) b!125645))

(assert (= (and b!125645 (not res!58350)) b!125648))

(assert (= (and b!125648 res!58349) b!125640))

(assert (= (and b!125640 res!58347) b!125646))

(assert (= (and b!125646 res!58348) b!125643))

(assert (= (and b!125648 (not res!58344)) b!125638))

(assert (= (and b!125638 res!58346) b!125636))

(assert (= (and b!125636 (not res!58351)) b!125637))

(assert (= (and b!125637 (not res!58345)) b!125641))

(assert (= (or b!125639 b!125636 b!125640) bm!5429))

(declare-fun m!111293 () Bool)

(assert (=> b!125644 m!111293))

(assert (=> b!125644 m!111293))

(declare-fun m!111295 () Bool)

(assert (=> b!125644 m!111295))

(declare-fun m!111297 () Bool)

(assert (=> b!125644 m!111297))

(assert (=> b!125644 m!111295))

(assert (=> b!125644 m!111297))

(declare-fun m!111299 () Bool)

(assert (=> b!125644 m!111299))

(declare-fun m!111301 () Bool)

(assert (=> d!29764 m!111301))

(assert (=> d!29764 m!111223))

(assert (=> b!125646 m!111297))

(assert (=> b!125646 m!111297))

(declare-fun m!111303 () Bool)

(assert (=> b!125646 m!111303))

(assert (=> bm!5429 m!111301))

(assert (=> b!125641 m!111293))

(assert (=> b!125643 m!111293))

(assert (=> b!125637 m!111297))

(assert (=> b!125637 m!111297))

(assert (=> b!125637 m!111303))

(declare-fun m!111305 () Bool)

(assert (=> b!125635 m!111305))

(assert (=> b!125527 d!29764))

(declare-fun d!29774 () Bool)

(declare-fun c!27679 () Bool)

(assert (=> d!29774 (= c!27679 (isEmpty!820 lt!37958))))

(declare-fun e!72344 () Bool)

(assert (=> d!29774 (= (matchZipper!8 lt!37961 lt!37958) e!72344)))

(declare-fun b!125653 () Bool)

(assert (=> b!125653 (= e!72344 (nullableZipper!1 lt!37961))))

(declare-fun b!125654 () Bool)

(assert (=> b!125654 (= e!72344 (matchZipper!8 (derivationStepZipper!1 lt!37961 (head!511 lt!37958)) (tail!247 lt!37958)))))

(assert (= (and d!29774 c!27679) b!125653))

(assert (= (and d!29774 (not c!27679)) b!125654))

(assert (=> d!29774 m!111301))

(assert (=> b!125653 m!111263))

(assert (=> b!125654 m!111293))

(assert (=> b!125654 m!111293))

(declare-fun m!111307 () Bool)

(assert (=> b!125654 m!111307))

(assert (=> b!125654 m!111297))

(assert (=> b!125654 m!111307))

(assert (=> b!125654 m!111297))

(declare-fun m!111309 () Bool)

(assert (=> b!125654 m!111309))

(assert (=> b!125527 d!29774))

(declare-fun d!29776 () Bool)

(declare-fun e!72347 () Bool)

(assert (=> d!29776 e!72347))

(declare-fun res!58354 () Bool)

(assert (=> d!29776 (=> (not res!58354) (not e!72347))))

(declare-fun lt!37986 () List!2070)

(declare-fun noDuplicate!23 (List!2070) Bool)

(assert (=> d!29776 (= res!58354 (noDuplicate!23 lt!37986))))

(declare-fun choose!1625 ((Set Context!228)) List!2070)

(assert (=> d!29776 (= lt!37986 (choose!1625 lt!37961))))

(assert (=> d!29776 (= (toList!274 lt!37961) lt!37986)))

(declare-fun b!125657 () Bool)

(declare-fun content!232 (List!2070) (Set Context!228))

(assert (=> b!125657 (= e!72347 (= (content!232 lt!37986) lt!37961))))

(assert (= (and d!29776 res!58354) b!125657))

(declare-fun m!111311 () Bool)

(assert (=> d!29776 m!111311))

(declare-fun m!111313 () Bool)

(assert (=> d!29776 m!111313))

(declare-fun m!111315 () Bool)

(assert (=> b!125657 m!111315))

(assert (=> b!125527 d!29776))

(declare-fun d!29778 () Bool)

(assert (=> d!29778 (= (matchR!52 r!13481 lt!37958) (matchZipper!8 lt!37961 lt!37958))))

(declare-fun lt!37989 () Unit!1619)

(declare-fun choose!1626 ((Set Context!228) List!2070 Regex!574 List!2068) Unit!1619)

(assert (=> d!29778 (= lt!37989 (choose!1626 lt!37961 lt!37959 r!13481 lt!37958))))

(assert (=> d!29778 (validRegex!166 r!13481)))

(assert (=> d!29778 (= (theoremZipperRegexEquiv!3 lt!37961 lt!37959 r!13481 lt!37958) lt!37989)))

(declare-fun bs!12429 () Bool)

(assert (= bs!12429 d!29778))

(assert (=> bs!12429 m!111207))

(assert (=> bs!12429 m!111217))

(declare-fun m!111325 () Bool)

(assert (=> bs!12429 m!111325))

(assert (=> bs!12429 m!111223))

(assert (=> b!125527 d!29778))

(declare-fun d!29782 () Bool)

(assert (=> d!29782 (= (matchZipper!8 lt!37961 (dropList!43 input!6028 0)) (matchZipperSequence!8 lt!37961 input!6028 0))))

(declare-fun lt!37992 () Unit!1619)

(declare-fun choose!1627 ((Set Context!228) BalanceConc!1164 Int) Unit!1619)

(assert (=> d!29782 (= lt!37992 (choose!1627 lt!37961 input!6028 0))))

(declare-fun e!72356 () Bool)

(assert (=> d!29782 e!72356))

(declare-fun res!58357 () Bool)

(assert (=> d!29782 (=> (not res!58357) (not e!72356))))

(assert (=> d!29782 (= res!58357 (>= 0 0))))

(assert (=> d!29782 (= (lemmaMatchZipperSequenceEquivalent!7 lt!37961 input!6028 0) lt!37992)))

(declare-fun b!125672 () Bool)

(assert (=> b!125672 (= e!72356 (<= 0 (size!1904 input!6028)))))

(assert (= (and d!29782 res!58357) b!125672))

(assert (=> d!29782 m!111201))

(assert (=> d!29782 m!111201))

(assert (=> d!29782 m!111203))

(assert (=> d!29782 m!111215))

(declare-fun m!111337 () Bool)

(assert (=> d!29782 m!111337))

(assert (=> b!125672 m!111199))

(assert (=> b!125527 d!29782))

(declare-fun d!29786 () Bool)

(declare-fun c!27686 () Bool)

(assert (=> d!29786 (= c!27686 (isEmpty!820 (dropList!43 input!6028 0)))))

(declare-fun e!72357 () Bool)

(assert (=> d!29786 (= (matchZipper!8 lt!37961 (dropList!43 input!6028 0)) e!72357)))

(declare-fun b!125673 () Bool)

(assert (=> b!125673 (= e!72357 (nullableZipper!1 lt!37961))))

(declare-fun b!125674 () Bool)

(assert (=> b!125674 (= e!72357 (matchZipper!8 (derivationStepZipper!1 lt!37961 (head!511 (dropList!43 input!6028 0))) (tail!247 (dropList!43 input!6028 0))))))

(assert (= (and d!29786 c!27686) b!125673))

(assert (= (and d!29786 (not c!27686)) b!125674))

(assert (=> d!29786 m!111201))

(declare-fun m!111339 () Bool)

(assert (=> d!29786 m!111339))

(assert (=> b!125673 m!111263))

(assert (=> b!125674 m!111201))

(declare-fun m!111341 () Bool)

(assert (=> b!125674 m!111341))

(assert (=> b!125674 m!111341))

(declare-fun m!111343 () Bool)

(assert (=> b!125674 m!111343))

(assert (=> b!125674 m!111201))

(declare-fun m!111345 () Bool)

(assert (=> b!125674 m!111345))

(assert (=> b!125674 m!111343))

(assert (=> b!125674 m!111345))

(declare-fun m!111347 () Bool)

(assert (=> b!125674 m!111347))

(assert (=> b!125527 d!29786))

(declare-fun d!29788 () Bool)

(assert (=> d!29788 (= (list!797 input!6028) (list!799 (c!27649 input!6028)))))

(declare-fun bs!12430 () Bool)

(assert (= bs!12430 d!29788))

(assert (=> bs!12430 m!111259))

(assert (=> b!125527 d!29788))

(declare-fun b!125696 () Bool)

(declare-fun e!72376 () Bool)

(declare-fun call!5442 () Bool)

(assert (=> b!125696 (= e!72376 call!5442)))

(declare-fun b!125697 () Bool)

(declare-fun e!72378 () Bool)

(declare-fun e!72375 () Bool)

(assert (=> b!125697 (= e!72378 e!72375)))

(declare-fun c!27692 () Bool)

(assert (=> b!125697 (= c!27692 (is-Star!574 r!13481))))

(declare-fun d!29790 () Bool)

(declare-fun res!58372 () Bool)

(assert (=> d!29790 (=> res!58372 e!72378)))

(assert (=> d!29790 (= res!58372 (is-ElementMatch!574 r!13481))))

(assert (=> d!29790 (= (validRegex!166 r!13481) e!72378)))

(declare-fun bm!5436 () Bool)

(declare-fun call!5443 () Bool)

(declare-fun call!5441 () Bool)

(assert (=> bm!5436 (= call!5443 call!5441)))

(declare-fun b!125698 () Bool)

(declare-fun e!72381 () Bool)

(assert (=> b!125698 (= e!72381 call!5442)))

(declare-fun bm!5437 () Bool)

(declare-fun c!27691 () Bool)

(assert (=> bm!5437 (= call!5442 (validRegex!166 (ite c!27691 (regTwo!1661 r!13481) (regTwo!1660 r!13481))))))

(declare-fun bm!5438 () Bool)

(assert (=> bm!5438 (= call!5441 (validRegex!166 (ite c!27692 (reg!903 r!13481) (ite c!27691 (regOne!1661 r!13481) (regOne!1660 r!13481)))))))

(declare-fun b!125699 () Bool)

(declare-fun e!72377 () Bool)

(assert (=> b!125699 (= e!72375 e!72377)))

(declare-fun res!58374 () Bool)

(assert (=> b!125699 (= res!58374 (not (nullable!97 (reg!903 r!13481))))))

(assert (=> b!125699 (=> (not res!58374) (not e!72377))))

(declare-fun b!125700 () Bool)

(declare-fun res!58373 () Bool)

(assert (=> b!125700 (=> (not res!58373) (not e!72376))))

(assert (=> b!125700 (= res!58373 call!5443)))

(declare-fun e!72380 () Bool)

(assert (=> b!125700 (= e!72380 e!72376)))

(declare-fun b!125701 () Bool)

(declare-fun res!58375 () Bool)

(declare-fun e!72379 () Bool)

(assert (=> b!125701 (=> res!58375 e!72379)))

(assert (=> b!125701 (= res!58375 (not (is-Concat!968 r!13481)))))

(assert (=> b!125701 (= e!72380 e!72379)))

(declare-fun b!125702 () Bool)

(assert (=> b!125702 (= e!72375 e!72380)))

(assert (=> b!125702 (= c!27691 (is-Union!574 r!13481))))

(declare-fun b!125703 () Bool)

(assert (=> b!125703 (= e!72379 e!72381)))

(declare-fun res!58371 () Bool)

(assert (=> b!125703 (=> (not res!58371) (not e!72381))))

(assert (=> b!125703 (= res!58371 call!5443)))

(declare-fun b!125704 () Bool)

(assert (=> b!125704 (= e!72377 call!5441)))

(assert (= (and d!29790 (not res!58372)) b!125697))

(assert (= (and b!125697 c!27692) b!125699))

(assert (= (and b!125697 (not c!27692)) b!125702))

(assert (= (and b!125699 res!58374) b!125704))

(assert (= (and b!125702 c!27691) b!125700))

(assert (= (and b!125702 (not c!27691)) b!125701))

(assert (= (and b!125700 res!58373) b!125696))

(assert (= (and b!125701 (not res!58375)) b!125703))

(assert (= (and b!125703 res!58371) b!125698))

(assert (= (or b!125700 b!125703) bm!5436))

(assert (= (or b!125696 b!125698) bm!5437))

(assert (= (or b!125704 bm!5436) bm!5438))

(declare-fun m!111355 () Bool)

(assert (=> bm!5437 m!111355))

(declare-fun m!111357 () Bool)

(assert (=> bm!5438 m!111357))

(declare-fun m!111359 () Bool)

(assert (=> b!125699 m!111359))

(assert (=> start!12780 d!29790))

(declare-fun d!29794 () Bool)

(declare-fun isBalanced!166 (Conc!580) Bool)

(assert (=> d!29794 (= (inv!2649 input!6028) (isBalanced!166 (c!27649 input!6028)))))

(declare-fun bs!12431 () Bool)

(assert (= bs!12431 d!29794))

(declare-fun m!111361 () Bool)

(assert (=> bs!12431 m!111361))

(assert (=> start!12780 d!29794))

(declare-fun d!29796 () Bool)

(declare-fun lt!37998 () Int)

(declare-fun size!1906 (List!2068) Int)

(assert (=> d!29796 (= lt!37998 (size!1906 (list!797 input!6028)))))

(declare-fun size!1907 (Conc!580) Int)

(assert (=> d!29796 (= lt!37998 (size!1907 (c!27649 input!6028)))))

(assert (=> d!29796 (= (size!1904 input!6028) lt!37998)))

(declare-fun bs!12432 () Bool)

(assert (= bs!12432 d!29796))

(assert (=> bs!12432 m!111219))

(assert (=> bs!12432 m!111219))

(declare-fun m!111363 () Bool)

(assert (=> bs!12432 m!111363))

(declare-fun m!111365 () Bool)

(assert (=> bs!12432 m!111365))

(assert (=> b!125526 d!29796))

(declare-fun b!125716 () Bool)

(declare-fun e!72384 () Bool)

(declare-fun tp!68571 () Bool)

(declare-fun tp!68570 () Bool)

(assert (=> b!125716 (= e!72384 (and tp!68571 tp!68570))))

(assert (=> b!125525 (= tp!68539 e!72384)))

(declare-fun b!125717 () Bool)

(declare-fun tp!68569 () Bool)

(assert (=> b!125717 (= e!72384 tp!68569)))

(declare-fun b!125718 () Bool)

(declare-fun tp!68572 () Bool)

(declare-fun tp!68568 () Bool)

(assert (=> b!125718 (= e!72384 (and tp!68572 tp!68568))))

(declare-fun b!125715 () Bool)

(assert (=> b!125715 (= e!72384 tp_is_empty!1203)))

(assert (= (and b!125525 (is-ElementMatch!574 (regOne!1660 r!13481))) b!125715))

(assert (= (and b!125525 (is-Concat!968 (regOne!1660 r!13481))) b!125716))

(assert (= (and b!125525 (is-Star!574 (regOne!1660 r!13481))) b!125717))

(assert (= (and b!125525 (is-Union!574 (regOne!1660 r!13481))) b!125718))

(declare-fun b!125720 () Bool)

(declare-fun e!72385 () Bool)

(declare-fun tp!68576 () Bool)

(declare-fun tp!68575 () Bool)

(assert (=> b!125720 (= e!72385 (and tp!68576 tp!68575))))

(assert (=> b!125525 (= tp!68534 e!72385)))

(declare-fun b!125721 () Bool)

(declare-fun tp!68574 () Bool)

(assert (=> b!125721 (= e!72385 tp!68574)))

(declare-fun b!125722 () Bool)

(declare-fun tp!68577 () Bool)

(declare-fun tp!68573 () Bool)

(assert (=> b!125722 (= e!72385 (and tp!68577 tp!68573))))

(declare-fun b!125719 () Bool)

(assert (=> b!125719 (= e!72385 tp_is_empty!1203)))

(assert (= (and b!125525 (is-ElementMatch!574 (regTwo!1660 r!13481))) b!125719))

(assert (= (and b!125525 (is-Concat!968 (regTwo!1660 r!13481))) b!125720))

(assert (= (and b!125525 (is-Star!574 (regTwo!1660 r!13481))) b!125721))

(assert (= (and b!125525 (is-Union!574 (regTwo!1660 r!13481))) b!125722))

(declare-fun b!125724 () Bool)

(declare-fun e!72386 () Bool)

(declare-fun tp!68581 () Bool)

(declare-fun tp!68580 () Bool)

(assert (=> b!125724 (= e!72386 (and tp!68581 tp!68580))))

(assert (=> b!125529 (= tp!68535 e!72386)))

(declare-fun b!125725 () Bool)

(declare-fun tp!68579 () Bool)

(assert (=> b!125725 (= e!72386 tp!68579)))

(declare-fun b!125726 () Bool)

(declare-fun tp!68582 () Bool)

(declare-fun tp!68578 () Bool)

(assert (=> b!125726 (= e!72386 (and tp!68582 tp!68578))))

(declare-fun b!125723 () Bool)

(assert (=> b!125723 (= e!72386 tp_is_empty!1203)))

(assert (= (and b!125529 (is-ElementMatch!574 (reg!903 r!13481))) b!125723))

(assert (= (and b!125529 (is-Concat!968 (reg!903 r!13481))) b!125724))

(assert (= (and b!125529 (is-Star!574 (reg!903 r!13481))) b!125725))

(assert (= (and b!125529 (is-Union!574 (reg!903 r!13481))) b!125726))

(declare-fun e!72392 () Bool)

(declare-fun tp!68591 () Bool)

(declare-fun b!125735 () Bool)

(declare-fun tp!68590 () Bool)

(assert (=> b!125735 (= e!72392 (and (inv!2648 (left!1651 (c!27649 input!6028))) tp!68590 (inv!2648 (right!1981 (c!27649 input!6028))) tp!68591))))

(declare-fun b!125737 () Bool)

(declare-fun e!72391 () Bool)

(declare-fun tp!68589 () Bool)

(assert (=> b!125737 (= e!72391 tp!68589)))

(declare-fun b!125736 () Bool)

(declare-fun inv!2654 (IArray!1161) Bool)

(assert (=> b!125736 (= e!72392 (and (inv!2654 (xs!3175 (c!27649 input!6028))) e!72391))))

(assert (=> b!125528 (= tp!68536 (and (inv!2648 (c!27649 input!6028)) e!72392))))

(assert (= (and b!125528 (is-Node!580 (c!27649 input!6028))) b!125735))

(assert (= b!125736 b!125737))

(assert (= (and b!125528 (is-Leaf!1016 (c!27649 input!6028))) b!125736))

(declare-fun m!111367 () Bool)

(assert (=> b!125735 m!111367))

(declare-fun m!111369 () Bool)

(assert (=> b!125735 m!111369))

(declare-fun m!111371 () Bool)

(assert (=> b!125736 m!111371))

(assert (=> b!125528 m!111221))

(declare-fun b!125739 () Bool)

(declare-fun e!72393 () Bool)

(declare-fun tp!68595 () Bool)

(declare-fun tp!68594 () Bool)

(assert (=> b!125739 (= e!72393 (and tp!68595 tp!68594))))

(assert (=> b!125531 (= tp!68537 e!72393)))

(declare-fun b!125740 () Bool)

(declare-fun tp!68593 () Bool)

(assert (=> b!125740 (= e!72393 tp!68593)))

(declare-fun b!125741 () Bool)

(declare-fun tp!68596 () Bool)

(declare-fun tp!68592 () Bool)

(assert (=> b!125741 (= e!72393 (and tp!68596 tp!68592))))

(declare-fun b!125738 () Bool)

(assert (=> b!125738 (= e!72393 tp_is_empty!1203)))

(assert (= (and b!125531 (is-ElementMatch!574 (regOne!1661 r!13481))) b!125738))

(assert (= (and b!125531 (is-Concat!968 (regOne!1661 r!13481))) b!125739))

(assert (= (and b!125531 (is-Star!574 (regOne!1661 r!13481))) b!125740))

(assert (= (and b!125531 (is-Union!574 (regOne!1661 r!13481))) b!125741))

(declare-fun b!125743 () Bool)

(declare-fun e!72394 () Bool)

(declare-fun tp!68600 () Bool)

(declare-fun tp!68599 () Bool)

(assert (=> b!125743 (= e!72394 (and tp!68600 tp!68599))))

(assert (=> b!125531 (= tp!68538 e!72394)))

(declare-fun b!125744 () Bool)

(declare-fun tp!68598 () Bool)

(assert (=> b!125744 (= e!72394 tp!68598)))

(declare-fun b!125745 () Bool)

(declare-fun tp!68601 () Bool)

(declare-fun tp!68597 () Bool)

(assert (=> b!125745 (= e!72394 (and tp!68601 tp!68597))))

(declare-fun b!125742 () Bool)

(assert (=> b!125742 (= e!72394 tp_is_empty!1203)))

(assert (= (and b!125531 (is-ElementMatch!574 (regTwo!1661 r!13481))) b!125742))

(assert (= (and b!125531 (is-Concat!968 (regTwo!1661 r!13481))) b!125743))

(assert (= (and b!125531 (is-Star!574 (regTwo!1661 r!13481))) b!125744))

(assert (= (and b!125531 (is-Union!574 (regTwo!1661 r!13481))) b!125745))

(push 1)

(assert (not b!125718))

(assert (not b!125743))

(assert (not b!125657))

(assert (not d!29774))

(assert (not b!125716))

(assert (not b!125721))

(assert (not d!29760))

(assert (not d!29778))

(assert (not b!125561))

(assert (not d!29786))

(assert (not b!125740))

(assert (not b!125644))

(assert (not d!29782))

(assert (not b!125745))

(assert (not b!125722))

(assert (not bm!5438))

(assert (not b!125735))

(assert (not b!125720))

(assert (not b!125641))

(assert (not b!125724))

(assert tp_is_empty!1203)

(assert (not bm!5429))

(assert (not d!29764))

(assert (not d!29788))

(assert (not d!29756))

(assert (not b!125559))

(assert (not b!125635))

(assert (not b!125643))

(assert (not b!125673))

(assert (not b!125528))

(assert (not b!125674))

(assert (not b!125699))

(assert (not b!125741))

(assert (not b!125739))

(assert (not b!125654))

(assert (not b!125744))

(assert (not b!125737))

(assert (not d!29762))

(assert (not b!125717))

(assert (not b!125597))

(assert (not d!29796))

(assert (not b!125725))

(assert (not b!125584))

(assert (not b!125672))

(assert (not b!125736))

(assert (not b!125646))

(assert (not b!125726))

(assert (not d!29776))

(assert (not d!29794))

(assert (not b!125653))

(assert (not b!125585))

(assert (not bm!5437))

(assert (not b!125637))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

