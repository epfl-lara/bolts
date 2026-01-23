; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!592608 () Bool)

(assert start!592608)

(declare-fun b!5770169 () Bool)

(assert (=> b!5770169 true))

(assert (=> b!5770169 true))

(declare-fun lambda!313680 () Int)

(declare-fun lambda!313679 () Int)

(assert (=> b!5770169 (not (= lambda!313680 lambda!313679))))

(assert (=> b!5770169 true))

(assert (=> b!5770169 true))

(declare-fun b!5770153 () Bool)

(assert (=> b!5770153 true))

(declare-fun bs!1353454 () Bool)

(declare-fun b!5770189 () Bool)

(assert (= bs!1353454 (and b!5770189 b!5770169)))

(declare-datatypes ((C!31840 0))(
  ( (C!31841 (val!25622 Int)) )
))
(declare-datatypes ((Regex!15785 0))(
  ( (ElementMatch!15785 (c!1020255 C!31840)) (Concat!24630 (regOne!32082 Regex!15785) (regTwo!32082 Regex!15785)) (EmptyExpr!15785) (Star!15785 (reg!16114 Regex!15785)) (EmptyLang!15785) (Union!15785 (regOne!32083 Regex!15785) (regTwo!32083 Regex!15785)) )
))
(declare-fun r!7292 () Regex!15785)

(declare-fun lambda!313682 () Int)

(declare-fun lt!2291182 () Regex!15785)

(assert (=> bs!1353454 (= (and (= (regOne!32082 (regOne!32082 r!7292)) (regOne!32082 r!7292)) (= lt!2291182 (regTwo!32082 r!7292))) (= lambda!313682 lambda!313679))))

(assert (=> bs!1353454 (not (= lambda!313682 lambda!313680))))

(assert (=> b!5770189 true))

(assert (=> b!5770189 true))

(assert (=> b!5770189 true))

(declare-fun lambda!313683 () Int)

(assert (=> bs!1353454 (not (= lambda!313683 lambda!313679))))

(assert (=> bs!1353454 (= (and (= (regOne!32082 (regOne!32082 r!7292)) (regOne!32082 r!7292)) (= lt!2291182 (regTwo!32082 r!7292))) (= lambda!313683 lambda!313680))))

(assert (=> b!5770189 (not (= lambda!313683 lambda!313682))))

(assert (=> b!5770189 true))

(assert (=> b!5770189 true))

(assert (=> b!5770189 true))

(declare-fun lt!2291109 () Regex!15785)

(declare-fun lambda!313684 () Int)

(assert (=> bs!1353454 (= (and (= (regTwo!32082 (regOne!32082 r!7292)) (regOne!32082 r!7292)) (= lt!2291109 (regTwo!32082 r!7292))) (= lambda!313684 lambda!313679))))

(assert (=> bs!1353454 (not (= lambda!313684 lambda!313680))))

(assert (=> b!5770189 (= (and (= (regTwo!32082 (regOne!32082 r!7292)) (regOne!32082 (regOne!32082 r!7292))) (= lt!2291109 lt!2291182)) (= lambda!313684 lambda!313682))))

(assert (=> b!5770189 (not (= lambda!313684 lambda!313683))))

(assert (=> b!5770189 true))

(assert (=> b!5770189 true))

(assert (=> b!5770189 true))

(declare-fun lambda!313685 () Int)

(assert (=> b!5770189 (not (= lambda!313685 lambda!313684))))

(assert (=> b!5770189 (not (= lambda!313685 lambda!313682))))

(assert (=> b!5770189 (= (and (= (regTwo!32082 (regOne!32082 r!7292)) (regOne!32082 (regOne!32082 r!7292))) (= lt!2291109 lt!2291182)) (= lambda!313685 lambda!313683))))

(assert (=> bs!1353454 (= (and (= (regTwo!32082 (regOne!32082 r!7292)) (regOne!32082 r!7292)) (= lt!2291109 (regTwo!32082 r!7292))) (= lambda!313685 lambda!313680))))

(assert (=> bs!1353454 (not (= lambda!313685 lambda!313679))))

(assert (=> b!5770189 true))

(assert (=> b!5770189 true))

(assert (=> b!5770189 true))

(declare-fun bs!1353455 () Bool)

(declare-fun b!5770180 () Bool)

(assert (= bs!1353455 (and b!5770180 b!5770189)))

(declare-fun lambda!313686 () Int)

(declare-fun lt!2291065 () Regex!15785)

(assert (=> bs!1353455 (= (and (= (regOne!32082 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))) (= lt!2291065 lt!2291109)) (= lambda!313686 lambda!313684))))

(assert (=> bs!1353455 (= (= lt!2291065 lt!2291182) (= lambda!313686 lambda!313682))))

(assert (=> bs!1353455 (not (= lambda!313686 lambda!313683))))

(declare-fun bs!1353456 () Bool)

(assert (= bs!1353456 (and b!5770180 b!5770169)))

(assert (=> bs!1353456 (not (= lambda!313686 lambda!313680))))

(assert (=> bs!1353456 (= (and (= (regOne!32082 (regOne!32082 r!7292)) (regOne!32082 r!7292)) (= lt!2291065 (regTwo!32082 r!7292))) (= lambda!313686 lambda!313679))))

(assert (=> bs!1353455 (not (= lambda!313686 lambda!313685))))

(assert (=> b!5770180 true))

(assert (=> b!5770180 true))

(assert (=> b!5770180 true))

(declare-fun lambda!313687 () Int)

(assert (=> bs!1353455 (not (= lambda!313687 lambda!313684))))

(assert (=> b!5770180 (not (= lambda!313687 lambda!313686))))

(assert (=> bs!1353455 (not (= lambda!313687 lambda!313682))))

(assert (=> bs!1353455 (= (= lt!2291065 lt!2291182) (= lambda!313687 lambda!313683))))

(assert (=> bs!1353456 (= (and (= (regOne!32082 (regOne!32082 r!7292)) (regOne!32082 r!7292)) (= lt!2291065 (regTwo!32082 r!7292))) (= lambda!313687 lambda!313680))))

(assert (=> bs!1353456 (not (= lambda!313687 lambda!313679))))

(assert (=> bs!1353455 (= (and (= (regOne!32082 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))) (= lt!2291065 lt!2291109)) (= lambda!313687 lambda!313685))))

(assert (=> b!5770180 true))

(assert (=> b!5770180 true))

(assert (=> b!5770180 true))

(declare-fun lambda!313688 () Int)

(declare-fun lt!2291002 () Regex!15785)

(assert (=> bs!1353455 (= (= lt!2291002 lt!2291109) (= lambda!313688 lambda!313684))))

(assert (=> b!5770180 (not (= lambda!313688 lambda!313687))))

(assert (=> b!5770180 (= (and (= (regTwo!32082 (regOne!32082 r!7292)) (regOne!32082 (regOne!32082 r!7292))) (= lt!2291002 lt!2291065)) (= lambda!313688 lambda!313686))))

(assert (=> bs!1353455 (= (and (= (regTwo!32082 (regOne!32082 r!7292)) (regOne!32082 (regOne!32082 r!7292))) (= lt!2291002 lt!2291182)) (= lambda!313688 lambda!313682))))

(assert (=> bs!1353455 (not (= lambda!313688 lambda!313683))))

(assert (=> bs!1353456 (not (= lambda!313688 lambda!313680))))

(assert (=> bs!1353456 (= (and (= (regTwo!32082 (regOne!32082 r!7292)) (regOne!32082 r!7292)) (= lt!2291002 (regTwo!32082 r!7292))) (= lambda!313688 lambda!313679))))

(assert (=> bs!1353455 (not (= lambda!313688 lambda!313685))))

(assert (=> b!5770180 true))

(assert (=> b!5770180 true))

(assert (=> b!5770180 true))

(declare-fun lambda!313689 () Int)

(assert (=> bs!1353455 (not (= lambda!313689 lambda!313684))))

(assert (=> b!5770180 (not (= lambda!313689 lambda!313688))))

(assert (=> b!5770180 (= (and (= (regTwo!32082 (regOne!32082 r!7292)) (regOne!32082 (regOne!32082 r!7292))) (= lt!2291002 lt!2291065)) (= lambda!313689 lambda!313687))))

(assert (=> b!5770180 (not (= lambda!313689 lambda!313686))))

(assert (=> bs!1353455 (not (= lambda!313689 lambda!313682))))

(assert (=> bs!1353455 (= (and (= (regTwo!32082 (regOne!32082 r!7292)) (regOne!32082 (regOne!32082 r!7292))) (= lt!2291002 lt!2291182)) (= lambda!313689 lambda!313683))))

(assert (=> bs!1353456 (= (and (= (regTwo!32082 (regOne!32082 r!7292)) (regOne!32082 r!7292)) (= lt!2291002 (regTwo!32082 r!7292))) (= lambda!313689 lambda!313680))))

(assert (=> bs!1353456 (not (= lambda!313689 lambda!313679))))

(assert (=> bs!1353455 (= (= lt!2291002 lt!2291109) (= lambda!313689 lambda!313685))))

(assert (=> b!5770180 true))

(assert (=> b!5770180 true))

(assert (=> b!5770180 true))

(declare-fun bs!1353457 () Bool)

(declare-fun b!5770157 () Bool)

(assert (= bs!1353457 (and b!5770157 b!5770189)))

(declare-fun lt!2291167 () Regex!15785)

(declare-fun lambda!313690 () Int)

(assert (=> bs!1353457 (= (and (= lt!2291167 (regTwo!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291109)) (= lambda!313690 lambda!313684))))

(declare-fun bs!1353458 () Bool)

(assert (= bs!1353458 (and b!5770157 b!5770180)))

(assert (=> bs!1353458 (= (and (= lt!2291167 (regTwo!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291002)) (= lambda!313690 lambda!313688))))

(assert (=> bs!1353458 (not (= lambda!313690 lambda!313687))))

(assert (=> bs!1353458 (not (= lambda!313690 lambda!313689))))

(assert (=> bs!1353458 (= (and (= lt!2291167 (regOne!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291065)) (= lambda!313690 lambda!313686))))

(assert (=> bs!1353457 (= (and (= lt!2291167 (regOne!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291182)) (= lambda!313690 lambda!313682))))

(assert (=> bs!1353457 (not (= lambda!313690 lambda!313683))))

(declare-fun bs!1353459 () Bool)

(assert (= bs!1353459 (and b!5770157 b!5770169)))

(assert (=> bs!1353459 (not (= lambda!313690 lambda!313680))))

(assert (=> bs!1353459 (= (= lt!2291167 (regOne!32082 r!7292)) (= lambda!313690 lambda!313679))))

(assert (=> bs!1353457 (not (= lambda!313690 lambda!313685))))

(assert (=> b!5770157 true))

(assert (=> b!5770157 true))

(assert (=> b!5770157 true))

(declare-fun lambda!313691 () Int)

(assert (=> bs!1353457 (not (= lambda!313691 lambda!313684))))

(assert (=> bs!1353458 (not (= lambda!313691 lambda!313688))))

(assert (=> bs!1353458 (= (and (= lt!2291167 (regOne!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291065)) (= lambda!313691 lambda!313687))))

(assert (=> bs!1353458 (= (and (= lt!2291167 (regTwo!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291002)) (= lambda!313691 lambda!313689))))

(assert (=> bs!1353458 (not (= lambda!313691 lambda!313686))))

(assert (=> b!5770157 (not (= lambda!313691 lambda!313690))))

(assert (=> bs!1353457 (not (= lambda!313691 lambda!313682))))

(assert (=> bs!1353457 (= (and (= lt!2291167 (regOne!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291182)) (= lambda!313691 lambda!313683))))

(assert (=> bs!1353459 (= (= lt!2291167 (regOne!32082 r!7292)) (= lambda!313691 lambda!313680))))

(assert (=> bs!1353459 (not (= lambda!313691 lambda!313679))))

(assert (=> bs!1353457 (= (and (= lt!2291167 (regTwo!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291109)) (= lambda!313691 lambda!313685))))

(assert (=> b!5770157 true))

(assert (=> b!5770157 true))

(assert (=> b!5770157 true))

(declare-fun bs!1353460 () Bool)

(declare-fun b!5770177 () Bool)

(assert (= bs!1353460 (and b!5770177 b!5770189)))

(declare-datatypes ((List!63654 0))(
  ( (Nil!63530) (Cons!63530 (h!69978 C!31840) (t!376992 List!63654)) )
))
(declare-fun s!2326 () List!63654)

(declare-datatypes ((tuple2!65764 0))(
  ( (tuple2!65765 (_1!36185 List!63654) (_2!36185 List!63654)) )
))
(declare-fun lt!2291106 () tuple2!65764)

(declare-fun lambda!313692 () Int)

(assert (=> bs!1353460 (= (and (= (_1!36185 lt!2291106) s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))) (= lt!2291167 lt!2291109)) (= lambda!313692 lambda!313684))))

(declare-fun bs!1353461 () Bool)

(assert (= bs!1353461 (and b!5770177 b!5770180)))

(assert (=> bs!1353461 (not (= lambda!313692 lambda!313687))))

(assert (=> bs!1353461 (not (= lambda!313692 lambda!313689))))

(assert (=> bs!1353461 (= (and (= (_1!36185 lt!2291106) s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regOne!32082 (regOne!32082 r!7292))) (= lt!2291167 lt!2291065)) (= lambda!313692 lambda!313686))))

(declare-fun bs!1353462 () Bool)

(assert (= bs!1353462 (and b!5770177 b!5770157)))

(assert (=> bs!1353462 (= (and (= (_1!36185 lt!2291106) s!2326) (= (reg!16114 (regOne!32082 r!7292)) lt!2291167) (= lt!2291167 (regTwo!32082 r!7292))) (= lambda!313692 lambda!313690))))

(assert (=> bs!1353460 (= (and (= (_1!36185 lt!2291106) s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regOne!32082 (regOne!32082 r!7292))) (= lt!2291167 lt!2291182)) (= lambda!313692 lambda!313682))))

(assert (=> bs!1353460 (not (= lambda!313692 lambda!313683))))

(declare-fun bs!1353463 () Bool)

(assert (= bs!1353463 (and b!5770177 b!5770169)))

(assert (=> bs!1353463 (not (= lambda!313692 lambda!313680))))

(assert (=> bs!1353461 (= (and (= (_1!36185 lt!2291106) s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))) (= lt!2291167 lt!2291002)) (= lambda!313692 lambda!313688))))

(assert (=> bs!1353462 (not (= lambda!313692 lambda!313691))))

(assert (=> bs!1353463 (= (and (= (_1!36185 lt!2291106) s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regOne!32082 r!7292)) (= lt!2291167 (regTwo!32082 r!7292))) (= lambda!313692 lambda!313679))))

(assert (=> bs!1353460 (not (= lambda!313692 lambda!313685))))

(assert (=> b!5770177 true))

(assert (=> b!5770177 true))

(assert (=> b!5770177 true))

(declare-fun lambda!313693 () Int)

(assert (=> bs!1353460 (not (= lambda!313693 lambda!313684))))

(assert (=> bs!1353461 (not (= lambda!313693 lambda!313687))))

(assert (=> bs!1353461 (not (= lambda!313693 lambda!313689))))

(assert (=> bs!1353461 (not (= lambda!313693 lambda!313686))))

(assert (=> bs!1353462 (not (= lambda!313693 lambda!313690))))

(assert (=> bs!1353460 (not (= lambda!313693 lambda!313682))))

(assert (=> bs!1353463 (not (= lambda!313693 lambda!313680))))

(assert (=> bs!1353461 (not (= lambda!313693 lambda!313688))))

(assert (=> bs!1353462 (not (= lambda!313693 lambda!313691))))

(assert (=> bs!1353460 (not (= lambda!313693 lambda!313683))))

(assert (=> b!5770177 (not (= lambda!313693 lambda!313692))))

(assert (=> bs!1353463 (not (= lambda!313693 lambda!313679))))

(assert (=> bs!1353460 (not (= lambda!313693 lambda!313685))))

(assert (=> b!5770177 true))

(assert (=> b!5770177 true))

(assert (=> b!5770177 true))

(declare-fun lambda!313694 () Int)

(assert (=> bs!1353460 (not (= lambda!313694 lambda!313684))))

(assert (=> bs!1353461 (= (and (= (_1!36185 lt!2291106) s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regOne!32082 (regOne!32082 r!7292))) (= lt!2291167 lt!2291065)) (= lambda!313694 lambda!313687))))

(assert (=> bs!1353461 (= (and (= (_1!36185 lt!2291106) s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))) (= lt!2291167 lt!2291002)) (= lambda!313694 lambda!313689))))

(assert (=> bs!1353461 (not (= lambda!313694 lambda!313686))))

(assert (=> bs!1353462 (not (= lambda!313694 lambda!313690))))

(assert (=> bs!1353460 (not (= lambda!313694 lambda!313682))))

(assert (=> bs!1353463 (= (and (= (_1!36185 lt!2291106) s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regOne!32082 r!7292)) (= lt!2291167 (regTwo!32082 r!7292))) (= lambda!313694 lambda!313680))))

(assert (=> b!5770177 (not (= lambda!313694 lambda!313693))))

(assert (=> bs!1353461 (not (= lambda!313694 lambda!313688))))

(assert (=> bs!1353462 (= (and (= (_1!36185 lt!2291106) s!2326) (= (reg!16114 (regOne!32082 r!7292)) lt!2291167) (= lt!2291167 (regTwo!32082 r!7292))) (= lambda!313694 lambda!313691))))

(assert (=> bs!1353460 (= (and (= (_1!36185 lt!2291106) s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regOne!32082 (regOne!32082 r!7292))) (= lt!2291167 lt!2291182)) (= lambda!313694 lambda!313683))))

(assert (=> b!5770177 (not (= lambda!313694 lambda!313692))))

(assert (=> bs!1353463 (not (= lambda!313694 lambda!313679))))

(assert (=> bs!1353460 (= (and (= (_1!36185 lt!2291106) s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))) (= lt!2291167 lt!2291109)) (= lambda!313694 lambda!313685))))

(assert (=> b!5770177 true))

(assert (=> b!5770177 true))

(assert (=> b!5770177 true))

(declare-fun b!5770193 () Bool)

(assert (=> b!5770193 true))

(declare-fun bs!1353464 () Bool)

(assert (= bs!1353464 (and b!5770193 b!5770177)))

(declare-fun lambda!313697 () Int)

(declare-fun lambda!313695 () Int)

(assert (=> bs!1353464 (= lambda!313697 lambda!313695)))

(declare-fun bs!1353465 () Bool)

(assert (= bs!1353465 (and b!5770193 b!5770189)))

(declare-fun lambda!313698 () Int)

(declare-fun lt!2291100 () Regex!15785)

(assert (=> bs!1353465 (= (and (= lt!2291100 (regTwo!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291109)) (= lambda!313698 lambda!313684))))

(declare-fun bs!1353466 () Bool)

(assert (= bs!1353466 (and b!5770193 b!5770180)))

(assert (=> bs!1353466 (not (= lambda!313698 lambda!313687))))

(assert (=> bs!1353466 (not (= lambda!313698 lambda!313689))))

(assert (=> bs!1353466 (= (and (= lt!2291100 (regOne!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291065)) (= lambda!313698 lambda!313686))))

(declare-fun bs!1353467 () Bool)

(assert (= bs!1353467 (and b!5770193 b!5770157)))

(assert (=> bs!1353467 (= (= lt!2291100 lt!2291167) (= lambda!313698 lambda!313690))))

(declare-fun bs!1353468 () Bool)

(assert (= bs!1353468 (and b!5770193 b!5770169)))

(assert (=> bs!1353468 (not (= lambda!313698 lambda!313680))))

(assert (=> bs!1353464 (not (= lambda!313698 lambda!313693))))

(assert (=> bs!1353466 (= (and (= lt!2291100 (regTwo!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291002)) (= lambda!313698 lambda!313688))))

(assert (=> bs!1353467 (not (= lambda!313698 lambda!313691))))

(assert (=> bs!1353465 (= (and (= lt!2291100 (regOne!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291182)) (= lambda!313698 lambda!313682))))

(assert (=> bs!1353464 (not (= lambda!313698 lambda!313694))))

(assert (=> bs!1353465 (not (= lambda!313698 lambda!313683))))

(assert (=> bs!1353464 (= (and (= s!2326 (_1!36185 lt!2291106)) (= lt!2291100 (reg!16114 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291167)) (= lambda!313698 lambda!313692))))

(assert (=> bs!1353468 (= (= lt!2291100 (regOne!32082 r!7292)) (= lambda!313698 lambda!313679))))

(assert (=> bs!1353465 (not (= lambda!313698 lambda!313685))))

(assert (=> b!5770193 true))

(assert (=> b!5770193 true))

(assert (=> b!5770193 true))

(declare-fun lambda!313699 () Int)

(assert (=> bs!1353465 (not (= lambda!313699 lambda!313684))))

(assert (=> bs!1353466 (= (and (= lt!2291100 (regOne!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291065)) (= lambda!313699 lambda!313687))))

(assert (=> bs!1353466 (= (and (= lt!2291100 (regTwo!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291002)) (= lambda!313699 lambda!313689))))

(assert (=> b!5770193 (not (= lambda!313699 lambda!313698))))

(assert (=> bs!1353466 (not (= lambda!313699 lambda!313686))))

(assert (=> bs!1353467 (not (= lambda!313699 lambda!313690))))

(assert (=> bs!1353468 (= (= lt!2291100 (regOne!32082 r!7292)) (= lambda!313699 lambda!313680))))

(assert (=> bs!1353464 (not (= lambda!313699 lambda!313693))))

(assert (=> bs!1353466 (not (= lambda!313699 lambda!313688))))

(assert (=> bs!1353467 (= (= lt!2291100 lt!2291167) (= lambda!313699 lambda!313691))))

(assert (=> bs!1353465 (not (= lambda!313699 lambda!313682))))

(assert (=> bs!1353464 (= (and (= s!2326 (_1!36185 lt!2291106)) (= lt!2291100 (reg!16114 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291167)) (= lambda!313699 lambda!313694))))

(assert (=> bs!1353465 (= (and (= lt!2291100 (regOne!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291182)) (= lambda!313699 lambda!313683))))

(assert (=> bs!1353464 (not (= lambda!313699 lambda!313692))))

(assert (=> bs!1353468 (not (= lambda!313699 lambda!313679))))

(assert (=> bs!1353465 (= (and (= lt!2291100 (regTwo!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291109)) (= lambda!313699 lambda!313685))))

(assert (=> b!5770193 true))

(assert (=> b!5770193 true))

(assert (=> b!5770193 true))

(declare-fun lambda!313700 () Int)

(declare-fun lt!2291163 () tuple2!65764)

(assert (=> bs!1353465 (= (and (= (_1!36185 lt!2291163) s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))) (= lt!2291167 lt!2291109)) (= lambda!313700 lambda!313684))))

(assert (=> bs!1353466 (not (= lambda!313700 lambda!313687))))

(assert (=> bs!1353466 (not (= lambda!313700 lambda!313689))))

(assert (=> b!5770193 (= (and (= (_1!36185 lt!2291163) s!2326) (= (reg!16114 (regOne!32082 r!7292)) lt!2291100) (= lt!2291167 (regTwo!32082 r!7292))) (= lambda!313700 lambda!313698))))

(assert (=> bs!1353466 (= (and (= (_1!36185 lt!2291163) s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regOne!32082 (regOne!32082 r!7292))) (= lt!2291167 lt!2291065)) (= lambda!313700 lambda!313686))))

(assert (=> bs!1353467 (= (and (= (_1!36185 lt!2291163) s!2326) (= (reg!16114 (regOne!32082 r!7292)) lt!2291167) (= lt!2291167 (regTwo!32082 r!7292))) (= lambda!313700 lambda!313690))))

(assert (=> bs!1353464 (not (= lambda!313700 lambda!313693))))

(assert (=> bs!1353466 (= (and (= (_1!36185 lt!2291163) s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))) (= lt!2291167 lt!2291002)) (= lambda!313700 lambda!313688))))

(assert (=> bs!1353467 (not (= lambda!313700 lambda!313691))))

(assert (=> bs!1353465 (= (and (= (_1!36185 lt!2291163) s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regOne!32082 (regOne!32082 r!7292))) (= lt!2291167 lt!2291182)) (= lambda!313700 lambda!313682))))

(assert (=> bs!1353464 (not (= lambda!313700 lambda!313694))))

(assert (=> bs!1353465 (not (= lambda!313700 lambda!313683))))

(assert (=> bs!1353464 (= (= (_1!36185 lt!2291163) (_1!36185 lt!2291106)) (= lambda!313700 lambda!313692))))

(assert (=> bs!1353468 (not (= lambda!313700 lambda!313680))))

(assert (=> b!5770193 (not (= lambda!313700 lambda!313699))))

(assert (=> bs!1353468 (= (and (= (_1!36185 lt!2291163) s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regOne!32082 r!7292)) (= lt!2291167 (regTwo!32082 r!7292))) (= lambda!313700 lambda!313679))))

(assert (=> bs!1353465 (not (= lambda!313700 lambda!313685))))

(assert (=> b!5770193 true))

(assert (=> b!5770193 true))

(assert (=> b!5770193 true))

(declare-fun lambda!313701 () Int)

(assert (=> bs!1353465 (not (= lambda!313701 lambda!313684))))

(assert (=> bs!1353466 (= (and (= (_1!36185 lt!2291163) s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regOne!32082 (regOne!32082 r!7292))) (= lt!2291167 lt!2291065)) (= lambda!313701 lambda!313687))))

(assert (=> bs!1353466 (= (and (= (_1!36185 lt!2291163) s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))) (= lt!2291167 lt!2291002)) (= lambda!313701 lambda!313689))))

(assert (=> b!5770193 (not (= lambda!313701 lambda!313698))))

(assert (=> b!5770193 (not (= lambda!313701 lambda!313700))))

(assert (=> bs!1353466 (not (= lambda!313701 lambda!313686))))

(assert (=> bs!1353467 (not (= lambda!313701 lambda!313690))))

(assert (=> bs!1353464 (not (= lambda!313701 lambda!313693))))

(assert (=> bs!1353466 (not (= lambda!313701 lambda!313688))))

(assert (=> bs!1353467 (= (and (= (_1!36185 lt!2291163) s!2326) (= (reg!16114 (regOne!32082 r!7292)) lt!2291167) (= lt!2291167 (regTwo!32082 r!7292))) (= lambda!313701 lambda!313691))))

(assert (=> bs!1353465 (not (= lambda!313701 lambda!313682))))

(assert (=> bs!1353464 (= (= (_1!36185 lt!2291163) (_1!36185 lt!2291106)) (= lambda!313701 lambda!313694))))

(assert (=> bs!1353465 (= (and (= (_1!36185 lt!2291163) s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regOne!32082 (regOne!32082 r!7292))) (= lt!2291167 lt!2291182)) (= lambda!313701 lambda!313683))))

(assert (=> bs!1353464 (not (= lambda!313701 lambda!313692))))

(assert (=> bs!1353468 (= (and (= (_1!36185 lt!2291163) s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regOne!32082 r!7292)) (= lt!2291167 (regTwo!32082 r!7292))) (= lambda!313701 lambda!313680))))

(assert (=> b!5770193 (= (and (= (_1!36185 lt!2291163) s!2326) (= (reg!16114 (regOne!32082 r!7292)) lt!2291100) (= lt!2291167 (regTwo!32082 r!7292))) (= lambda!313701 lambda!313699))))

(assert (=> bs!1353468 (not (= lambda!313701 lambda!313679))))

(assert (=> bs!1353465 (= (and (= (_1!36185 lt!2291163) s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))) (= lt!2291167 lt!2291109)) (= lambda!313701 lambda!313685))))

(assert (=> b!5770193 true))

(assert (=> b!5770193 true))

(assert (=> b!5770193 true))

(declare-fun lambda!313702 () Int)

(assert (=> bs!1353465 (not (= lambda!313702 lambda!313684))))

(assert (=> bs!1353466 (not (= lambda!313702 lambda!313687))))

(assert (=> bs!1353466 (not (= lambda!313702 lambda!313689))))

(assert (=> b!5770193 (not (= lambda!313702 lambda!313698))))

(assert (=> b!5770193 (not (= lambda!313702 lambda!313700))))

(assert (=> bs!1353466 (not (= lambda!313702 lambda!313686))))

(assert (=> bs!1353467 (not (= lambda!313702 lambda!313690))))

(assert (=> bs!1353464 (= (= (_1!36185 lt!2291163) (_1!36185 lt!2291106)) (= lambda!313702 lambda!313693))))

(assert (=> bs!1353466 (not (= lambda!313702 lambda!313688))))

(assert (=> bs!1353467 (not (= lambda!313702 lambda!313691))))

(assert (=> bs!1353465 (not (= lambda!313702 lambda!313682))))

(assert (=> bs!1353464 (not (= lambda!313702 lambda!313694))))

(assert (=> bs!1353465 (not (= lambda!313702 lambda!313683))))

(assert (=> bs!1353464 (not (= lambda!313702 lambda!313692))))

(assert (=> bs!1353468 (not (= lambda!313702 lambda!313680))))

(assert (=> b!5770193 (not (= lambda!313702 lambda!313701))))

(assert (=> b!5770193 (not (= lambda!313702 lambda!313699))))

(assert (=> bs!1353468 (not (= lambda!313702 lambda!313679))))

(assert (=> bs!1353465 (not (= lambda!313702 lambda!313685))))

(assert (=> b!5770193 true))

(assert (=> b!5770193 true))

(assert (=> b!5770193 true))

(declare-fun bs!1353469 () Bool)

(declare-fun b!5770173 () Bool)

(assert (= bs!1353469 (and b!5770173 b!5770189)))

(declare-fun lambda!313703 () Int)

(assert (=> bs!1353469 (= (and (= Nil!63530 s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))) (= lt!2291167 lt!2291109)) (= lambda!313703 lambda!313684))))

(declare-fun bs!1353470 () Bool)

(assert (= bs!1353470 (and b!5770173 b!5770180)))

(assert (=> bs!1353470 (not (= lambda!313703 lambda!313687))))

(assert (=> bs!1353470 (not (= lambda!313703 lambda!313689))))

(declare-fun bs!1353471 () Bool)

(assert (= bs!1353471 (and b!5770173 b!5770193)))

(assert (=> bs!1353471 (= (and (= Nil!63530 s!2326) (= (reg!16114 (regOne!32082 r!7292)) lt!2291100) (= lt!2291167 (regTwo!32082 r!7292))) (= lambda!313703 lambda!313698))))

(assert (=> bs!1353471 (not (= lambda!313703 lambda!313702))))

(assert (=> bs!1353471 (= (= Nil!63530 (_1!36185 lt!2291163)) (= lambda!313703 lambda!313700))))

(assert (=> bs!1353470 (= (and (= Nil!63530 s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regOne!32082 (regOne!32082 r!7292))) (= lt!2291167 lt!2291065)) (= lambda!313703 lambda!313686))))

(declare-fun bs!1353472 () Bool)

(assert (= bs!1353472 (and b!5770173 b!5770157)))

(assert (=> bs!1353472 (= (and (= Nil!63530 s!2326) (= (reg!16114 (regOne!32082 r!7292)) lt!2291167) (= lt!2291167 (regTwo!32082 r!7292))) (= lambda!313703 lambda!313690))))

(declare-fun bs!1353473 () Bool)

(assert (= bs!1353473 (and b!5770173 b!5770177)))

(assert (=> bs!1353473 (not (= lambda!313703 lambda!313693))))

(assert (=> bs!1353470 (= (and (= Nil!63530 s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))) (= lt!2291167 lt!2291002)) (= lambda!313703 lambda!313688))))

(assert (=> bs!1353472 (not (= lambda!313703 lambda!313691))))

(assert (=> bs!1353469 (= (and (= Nil!63530 s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regOne!32082 (regOne!32082 r!7292))) (= lt!2291167 lt!2291182)) (= lambda!313703 lambda!313682))))

(assert (=> bs!1353473 (not (= lambda!313703 lambda!313694))))

(assert (=> bs!1353469 (not (= lambda!313703 lambda!313683))))

(assert (=> bs!1353473 (= (= Nil!63530 (_1!36185 lt!2291106)) (= lambda!313703 lambda!313692))))

(declare-fun bs!1353474 () Bool)

(assert (= bs!1353474 (and b!5770173 b!5770169)))

(assert (=> bs!1353474 (not (= lambda!313703 lambda!313680))))

(assert (=> bs!1353471 (not (= lambda!313703 lambda!313701))))

(assert (=> bs!1353471 (not (= lambda!313703 lambda!313699))))

(assert (=> bs!1353474 (= (and (= Nil!63530 s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regOne!32082 r!7292)) (= lt!2291167 (regTwo!32082 r!7292))) (= lambda!313703 lambda!313679))))

(assert (=> bs!1353469 (not (= lambda!313703 lambda!313685))))

(assert (=> b!5770173 true))

(assert (=> b!5770173 true))

(declare-fun lambda!313704 () Int)

(assert (=> bs!1353469 (not (= lambda!313704 lambda!313684))))

(assert (=> bs!1353470 (= (and (= Nil!63530 s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regOne!32082 (regOne!32082 r!7292))) (= lt!2291167 lt!2291065)) (= lambda!313704 lambda!313687))))

(assert (=> bs!1353470 (= (and (= Nil!63530 s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))) (= lt!2291167 lt!2291002)) (= lambda!313704 lambda!313689))))

(assert (=> bs!1353471 (not (= lambda!313704 lambda!313698))))

(assert (=> bs!1353471 (not (= lambda!313704 lambda!313702))))

(assert (=> bs!1353471 (not (= lambda!313704 lambda!313700))))

(assert (=> bs!1353470 (not (= lambda!313704 lambda!313686))))

(assert (=> bs!1353472 (not (= lambda!313704 lambda!313690))))

(assert (=> b!5770173 (not (= lambda!313704 lambda!313703))))

(assert (=> bs!1353473 (not (= lambda!313704 lambda!313693))))

(assert (=> bs!1353470 (not (= lambda!313704 lambda!313688))))

(assert (=> bs!1353472 (= (and (= Nil!63530 s!2326) (= (reg!16114 (regOne!32082 r!7292)) lt!2291167) (= lt!2291167 (regTwo!32082 r!7292))) (= lambda!313704 lambda!313691))))

(assert (=> bs!1353469 (not (= lambda!313704 lambda!313682))))

(assert (=> bs!1353473 (= (= Nil!63530 (_1!36185 lt!2291106)) (= lambda!313704 lambda!313694))))

(assert (=> bs!1353469 (= (and (= Nil!63530 s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regOne!32082 (regOne!32082 r!7292))) (= lt!2291167 lt!2291182)) (= lambda!313704 lambda!313683))))

(assert (=> bs!1353473 (not (= lambda!313704 lambda!313692))))

(assert (=> bs!1353474 (= (and (= Nil!63530 s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regOne!32082 r!7292)) (= lt!2291167 (regTwo!32082 r!7292))) (= lambda!313704 lambda!313680))))

(assert (=> bs!1353471 (= (= Nil!63530 (_1!36185 lt!2291163)) (= lambda!313704 lambda!313701))))

(assert (=> bs!1353471 (= (and (= Nil!63530 s!2326) (= (reg!16114 (regOne!32082 r!7292)) lt!2291100) (= lt!2291167 (regTwo!32082 r!7292))) (= lambda!313704 lambda!313699))))

(assert (=> bs!1353474 (not (= lambda!313704 lambda!313679))))

(assert (=> bs!1353469 (= (and (= Nil!63530 s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))) (= lt!2291167 lt!2291109)) (= lambda!313704 lambda!313685))))

(assert (=> b!5770173 true))

(assert (=> b!5770173 true))

(declare-fun lambda!313705 () Int)

(assert (=> bs!1353469 (not (= lambda!313705 lambda!313684))))

(assert (=> bs!1353470 (not (= lambda!313705 lambda!313687))))

(assert (=> b!5770173 (not (= lambda!313705 lambda!313704))))

(assert (=> bs!1353470 (not (= lambda!313705 lambda!313689))))

(assert (=> bs!1353471 (not (= lambda!313705 lambda!313698))))

(assert (=> bs!1353471 (= (= Nil!63530 (_1!36185 lt!2291163)) (= lambda!313705 lambda!313702))))

(assert (=> bs!1353471 (not (= lambda!313705 lambda!313700))))

(assert (=> bs!1353470 (not (= lambda!313705 lambda!313686))))

(assert (=> bs!1353472 (not (= lambda!313705 lambda!313690))))

(assert (=> b!5770173 (not (= lambda!313705 lambda!313703))))

(assert (=> bs!1353473 (= (= Nil!63530 (_1!36185 lt!2291106)) (= lambda!313705 lambda!313693))))

(assert (=> bs!1353470 (not (= lambda!313705 lambda!313688))))

(assert (=> bs!1353472 (not (= lambda!313705 lambda!313691))))

(assert (=> bs!1353469 (not (= lambda!313705 lambda!313682))))

(assert (=> bs!1353473 (not (= lambda!313705 lambda!313694))))

(assert (=> bs!1353469 (not (= lambda!313705 lambda!313683))))

(assert (=> bs!1353473 (not (= lambda!313705 lambda!313692))))

(assert (=> bs!1353474 (not (= lambda!313705 lambda!313680))))

(assert (=> bs!1353471 (not (= lambda!313705 lambda!313701))))

(assert (=> bs!1353471 (not (= lambda!313705 lambda!313699))))

(assert (=> bs!1353474 (not (= lambda!313705 lambda!313679))))

(assert (=> bs!1353469 (not (= lambda!313705 lambda!313685))))

(assert (=> b!5770173 true))

(assert (=> b!5770173 true))

(declare-fun bm!444281 () Bool)

(declare-fun call!444302 () Bool)

(declare-fun call!444332 () Bool)

(assert (=> bm!444281 (= call!444302 call!444332)))

(declare-fun bm!444282 () Bool)

(declare-datatypes ((Unit!156690 0))(
  ( (Unit!156691) )
))
(declare-fun call!444481 () Unit!156690)

(declare-fun call!444291 () Unit!156690)

(assert (=> bm!444282 (= call!444481 call!444291)))

(declare-fun bm!444283 () Bool)

(declare-fun call!444407 () Bool)

(declare-fun call!444331 () Bool)

(assert (=> bm!444283 (= call!444407 call!444331)))

(declare-fun c!1020249 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!63655 0))(
  ( (Nil!63531) (Cons!63531 (h!69979 Regex!15785) (t!376993 List!63655)) )
))
(declare-datatypes ((Context!10338 0))(
  ( (Context!10339 (exprs!5669 List!63655)) )
))
(declare-fun lt!2291150 () (InoxSet Context!10338))

(declare-fun bm!444284 () Bool)

(declare-fun call!444437 () Bool)

(declare-fun z!1189 () (InoxSet Context!10338))

(declare-fun lt!2291059 () (InoxSet Context!10338))

(declare-fun lt!2290986 () (InoxSet Context!10338))

(declare-fun c!1020242 () Bool)

(declare-fun c!1020252 () Bool)

(declare-fun lt!2291014 () (InoxSet Context!10338))

(declare-fun lt!2291179 () (InoxSet Context!10338))

(declare-fun matchZipper!1923 ((InoxSet Context!10338) List!63654) Bool)

(assert (=> bm!444284 (= call!444437 (matchZipper!1923 (ite c!1020249 ((_ map or) lt!2290986 lt!2291059) (ite c!1020242 ((_ map or) lt!2291179 lt!2291150) (ite c!1020252 lt!2291014 z!1189))) (ite (or c!1020249 c!1020242) (t!376992 s!2326) s!2326)))))

(declare-fun bm!444285 () Bool)

(declare-fun call!444350 () Bool)

(declare-fun call!444411 () Bool)

(assert (=> bm!444285 (= call!444350 call!444411)))

(declare-fun bm!444286 () Bool)

(declare-fun call!444457 () Bool)

(declare-fun call!444385 () Bool)

(assert (=> bm!444286 (= call!444457 call!444385)))

(declare-fun bm!444287 () Bool)

(declare-fun call!444340 () Unit!156690)

(declare-fun call!444412 () Unit!156690)

(assert (=> bm!444287 (= call!444340 call!444412)))

(declare-fun b!5770131 () Bool)

(declare-fun e!3544831 () Bool)

(declare-fun call!444410 () Bool)

(assert (=> b!5770131 (= e!3544831 call!444410)))

(declare-fun bm!444288 () Bool)

(declare-fun call!444405 () Bool)

(declare-fun call!444373 () Bool)

(assert (=> bm!444288 (= call!444405 call!444373)))

(declare-fun c!1020250 () Bool)

(declare-fun call!444330 () Bool)

(declare-fun bm!444289 () Bool)

(declare-fun c!1020244 () Bool)

(declare-fun Exists!2885 (Int) Bool)

(assert (=> bm!444289 (= call!444330 (Exists!2885 (ite c!1020242 lambda!313682 (ite c!1020252 lambda!313688 (ite c!1020250 lambda!313692 (ite c!1020244 lambda!313701 lambda!313703))))))))

(declare-fun b!5770132 () Bool)

(declare-fun e!3544841 () Bool)

(declare-fun call!444336 () Bool)

(assert (=> b!5770132 (= e!3544841 call!444336)))

(declare-fun lt!2291176 () List!63654)

(declare-fun lt!2291012 () List!63654)

(declare-fun bm!444290 () Bool)

(declare-fun call!444453 () List!63654)

(declare-fun lt!2291169 () tuple2!65764)

(declare-fun ++!13998 (List!63654 List!63654) List!63654)

(assert (=> bm!444290 (= call!444453 (++!13998 (ite c!1020250 lt!2291176 (_1!36185 lt!2291169)) (ite c!1020250 (_2!36185 lt!2291106) lt!2291012)))))

(declare-fun bm!444291 () Bool)

(declare-fun call!444449 () Unit!156690)

(assert (=> bm!444291 (= call!444291 call!444449)))

(declare-fun call!444489 () Bool)

(declare-fun bm!444292 () Bool)

(assert (=> bm!444292 (= call!444489 (Exists!2885 (ite c!1020242 lambda!313684 (ite c!1020252 lambda!313689 (ite c!1020250 lambda!313694 lambda!313699)))))))

(declare-fun b!5770133 () Bool)

(declare-fun e!3544838 () Unit!156690)

(declare-fun Unit!156692 () Unit!156690)

(assert (=> b!5770133 (= e!3544838 Unit!156692)))

(declare-fun lt!2291005 () (InoxSet Context!10338))

(declare-fun lt!2291043 () Unit!156690)

(declare-fun lt!2290998 () (InoxSet Context!10338))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!810 ((InoxSet Context!10338) (InoxSet Context!10338) List!63654) Unit!156690)

(assert (=> b!5770133 (= lt!2291043 (lemmaZipperConcatMatchesSameAsBothZippers!810 lt!2290998 lt!2291005 (t!376992 s!2326)))))

(declare-fun res!2435179 () Bool)

(assert (=> b!5770133 (= res!2435179 (matchZipper!1923 lt!2290998 (t!376992 s!2326)))))

(declare-fun e!3544822 () Bool)

(assert (=> b!5770133 (=> res!2435179 e!3544822)))

(assert (=> b!5770133 (= (matchZipper!1923 ((_ map or) lt!2290998 lt!2291005) (t!376992 s!2326)) e!3544822)))

(declare-fun b!5770134 () Bool)

(declare-fun e!3544842 () Bool)

(declare-fun lt!2291154 () Bool)

(declare-fun call!444490 () Bool)

(assert (=> b!5770134 (= e!3544842 (= lt!2291154 call!444490))))

(declare-fun bm!444293 () Bool)

(declare-fun call!444370 () Unit!156690)

(assert (=> bm!444293 (= call!444412 call!444370)))

(declare-datatypes ((Option!15794 0))(
  ( (None!15793) (Some!15793 (v!51852 tuple2!65764)) )
))
(declare-fun lt!2291112 () Option!15794)

(declare-fun lt!2291087 () Option!15794)

(declare-fun bm!444294 () Bool)

(declare-fun call!444360 () tuple2!65764)

(declare-fun get!21923 (Option!15794) tuple2!65764)

(assert (=> bm!444294 (= call!444360 (get!21923 (ite c!1020250 lt!2291112 lt!2291087)))))

(declare-fun b!5770135 () Bool)

(declare-fun e!3544856 () Bool)

(assert (=> b!5770135 e!3544856))

(declare-fun res!2435177 () Bool)

(assert (=> b!5770135 (=> (not res!2435177) (not e!3544856))))

(declare-fun lt!2291057 () Regex!15785)

(declare-fun lt!2291000 () Bool)

(declare-fun matchRSpec!2888 (Regex!15785 List!63654) Bool)

(assert (=> b!5770135 (= res!2435177 (= lt!2291000 (matchRSpec!2888 lt!2291057 s!2326)))))

(declare-fun lt!2291015 () Unit!156690)

(declare-fun call!444309 () Unit!156690)

(assert (=> b!5770135 (= lt!2291015 call!444309)))

(declare-fun lt!2291035 () Bool)

(declare-fun call!444297 () Bool)

(assert (=> b!5770135 (= lt!2291035 call!444297)))

(declare-fun lt!2291077 () Unit!156690)

(declare-fun call!444307 () Unit!156690)

(assert (=> b!5770135 (= lt!2291077 call!444307)))

(assert (=> b!5770135 (= lt!2291000 lt!2291035)))

(declare-fun call!444455 () Bool)

(assert (=> b!5770135 (= lt!2291035 call!444455)))

(declare-fun call!444356 () Bool)

(assert (=> b!5770135 (= lt!2291000 call!444356)))

(declare-fun lt!2291178 () Regex!15785)

(assert (=> b!5770135 (= lt!2291178 (Union!15785 (Concat!24630 (regOne!32083 (regOne!32082 r!7292)) (regTwo!32082 r!7292)) (Concat!24630 (regTwo!32083 (regOne!32082 r!7292)) (regTwo!32082 r!7292))))))

(assert (=> b!5770135 (= lt!2291057 (Concat!24630 (regOne!32082 r!7292) (regTwo!32082 r!7292)))))

(declare-fun lt!2291067 () Unit!156690)

(declare-fun lemmaConcatDistributesInUnion!44 (Regex!15785 Regex!15785 Regex!15785 List!63654) Unit!156690)

(assert (=> b!5770135 (= lt!2291067 (lemmaConcatDistributesInUnion!44 (regOne!32083 (regOne!32082 r!7292)) (regTwo!32083 (regOne!32082 r!7292)) (regTwo!32082 r!7292) s!2326))))

(declare-fun lt!2291036 () Bool)

(declare-fun call!444298 () Bool)

(assert (=> b!5770135 (= lt!2291036 call!444298)))

(declare-fun lt!2291013 () Unit!156690)

(declare-fun lt!2291144 () Regex!15785)

(declare-fun mainMatchTheorem!2888 (Regex!15785 List!63654) Unit!156690)

(assert (=> b!5770135 (= lt!2291013 (mainMatchTheorem!2888 lt!2291144 s!2326))))

(declare-fun lt!2291131 () Bool)

(declare-fun call!444299 () Bool)

(assert (=> b!5770135 (= lt!2291131 call!444299)))

(declare-fun lt!2291111 () Unit!156690)

(declare-fun call!444290 () Unit!156690)

(assert (=> b!5770135 (= lt!2291111 call!444290)))

(declare-fun call!444384 () Bool)

(assert (=> b!5770135 (= lt!2291036 call!444384)))

(declare-fun call!444425 () Bool)

(assert (=> b!5770135 (= lt!2291036 call!444425)))

(declare-fun lt!2291140 () Unit!156690)

(declare-fun call!444355 () Unit!156690)

(assert (=> b!5770135 (= lt!2291140 call!444355)))

(declare-fun call!444458 () Regex!15785)

(assert (=> b!5770135 (= lt!2291144 call!444458)))

(declare-fun lt!2291006 () (InoxSet Context!10338))

(assert (=> b!5770135 (= lt!2291131 (matchZipper!1923 lt!2291006 s!2326))))

(assert (=> b!5770135 (= lt!2291131 call!444411)))

(declare-fun lt!2290992 () Unit!156690)

(declare-fun call!444450 () Unit!156690)

(assert (=> b!5770135 (= lt!2290992 call!444450)))

(declare-fun lt!2291135 () Regex!15785)

(declare-fun call!444391 () Regex!15785)

(assert (=> b!5770135 (= lt!2291135 call!444391)))

(declare-fun lt!2291016 () Unit!156690)

(declare-fun e!3544825 () Unit!156690)

(assert (=> b!5770135 (= lt!2291016 e!3544825)))

(declare-fun c!1020245 () Bool)

(assert (=> b!5770135 (= c!1020245 call!444336)))

(declare-fun call!444446 () (InoxSet Context!10338))

(declare-fun call!444367 () (InoxSet Context!10338))

(assert (=> b!5770135 (= call!444446 call!444367)))

(declare-fun lt!2291075 () Unit!156690)

(declare-fun call!444313 () Unit!156690)

(assert (=> b!5770135 (= lt!2291075 call!444313)))

(declare-fun lt!2291142 () (InoxSet Context!10338))

(assert (=> b!5770135 (= lt!2291142 call!444367)))

(declare-fun lt!2291078 () Unit!156690)

(declare-fun e!3544848 () Unit!156690)

(assert (=> b!5770135 (= lt!2291078 e!3544848)))

(declare-fun c!1020251 () Bool)

(declare-fun nullable!5817 (Regex!15785) Bool)

(assert (=> b!5770135 (= c!1020251 (nullable!5817 (regOne!32083 (regOne!32082 r!7292))))))

(declare-fun call!444439 () (InoxSet Context!10338))

(declare-fun call!444335 () (InoxSet Context!10338))

(assert (=> b!5770135 (= call!444439 call!444335)))

(declare-fun lt!2291181 () Unit!156690)

(declare-fun call!444342 () Unit!156690)

(assert (=> b!5770135 (= lt!2291181 call!444342)))

(declare-fun lt!2291024 () (InoxSet Context!10338))

(assert (=> b!5770135 (= lt!2291024 call!444335)))

(declare-fun lt!2291146 () (InoxSet Context!10338))

(declare-fun lt!2290995 () Context!10338)

(assert (=> b!5770135 (= lt!2291146 (store ((as const (Array Context!10338 Bool)) false) lt!2290995 true))))

(declare-fun lt!2291125 () List!63655)

(assert (=> b!5770135 (= lt!2290995 (Context!10339 lt!2291125))))

(declare-datatypes ((List!63656 0))(
  ( (Nil!63532) (Cons!63532 (h!69980 Context!10338) (t!376994 List!63656)) )
))
(declare-fun zl!343 () List!63656)

(assert (=> b!5770135 (= lt!2291125 (Cons!63531 (regTwo!32083 (regOne!32082 r!7292)) (t!376993 (exprs!5669 (h!69980 zl!343)))))))

(declare-fun lt!2290984 () Context!10338)

(assert (=> b!5770135 (= lt!2291006 (store ((as const (Array Context!10338 Bool)) false) lt!2290984 true))))

(declare-fun lt!2291098 () List!63655)

(assert (=> b!5770135 (= lt!2290984 (Context!10339 lt!2291098))))

(assert (=> b!5770135 (= lt!2291098 (Cons!63531 (regOne!32083 (regOne!32082 r!7292)) (t!376993 (exprs!5669 (h!69980 zl!343)))))))

(declare-fun e!3544858 () Bool)

(assert (=> b!5770135 (= call!444437 e!3544858)))

(declare-fun res!2435168 () Bool)

(assert (=> b!5770135 (=> res!2435168 e!3544858)))

(declare-fun lt!2291184 () Bool)

(assert (=> b!5770135 (= res!2435168 lt!2291184)))

(declare-fun call!444329 () Bool)

(assert (=> b!5770135 (= lt!2291184 call!444329)))

(declare-fun lt!2291170 () Unit!156690)

(declare-fun call!444322 () Unit!156690)

(assert (=> b!5770135 (= lt!2291170 call!444322)))

(declare-fun call!444311 () (InoxSet Context!10338))

(assert (=> b!5770135 (= lt!2291059 call!444311)))

(declare-fun call!444487 () (InoxSet Context!10338))

(assert (=> b!5770135 (= lt!2290986 call!444487)))

(declare-fun e!3544835 () Unit!156690)

(declare-fun Unit!156693 () Unit!156690)

(assert (=> b!5770135 (= e!3544835 Unit!156693)))

(declare-fun lt!2291003 () (InoxSet Context!10338))

(declare-fun lt!2291095 () (InoxSet Context!10338))

(declare-fun lt!2291026 () (InoxSet Context!10338))

(declare-fun bm!444295 () Bool)

(declare-fun lt!2291159 () (InoxSet Context!10338))

(declare-fun lt!2291107 () tuple2!65764)

(declare-fun lt!2291054 () (InoxSet Context!10338))

(declare-fun c!1020247 () Bool)

(declare-fun c!1020248 () Bool)

(declare-fun call!444463 () List!63655)

(declare-fun call!444448 () Bool)

(declare-fun lt!2291118 () List!63654)

(assert (=> bm!444295 (= call!444448 (matchZipper!1923 (ite c!1020247 lt!2291095 (ite c!1020249 ((_ map or) lt!2290986 lt!2291005) (ite c!1020242 lt!2291026 (ite c!1020248 (ite c!1020250 (store ((as const (Array Context!10338 Bool)) false) (Context!10339 call!444463) true) (ite c!1020244 lt!2291003 lt!2291054)) lt!2291159)))) (ite (or c!1020247 c!1020249) (t!376992 s!2326) (ite c!1020242 s!2326 (ite c!1020248 (ite c!1020250 lt!2291118 (ite c!1020244 (_1!36185 lt!2291107) s!2326)) s!2326)))))))

(declare-fun bm!444296 () Bool)

(declare-fun call!444344 () Regex!15785)

(assert (=> bm!444296 (= call!444344 call!444391)))

(declare-fun b!5770136 () Bool)

(declare-fun e!3544833 () Bool)

(assert (=> b!5770136 e!3544833))

(declare-fun res!2435189 () Bool)

(assert (=> b!5770136 (=> (not res!2435189) (not e!3544833))))

(declare-fun call!444310 () Bool)

(declare-fun call!444371 () Bool)

(assert (=> b!5770136 (= res!2435189 (= call!444310 call!444371))))

(declare-fun lt!2291161 () Unit!156690)

(declare-fun call!444318 () Unit!156690)

(assert (=> b!5770136 (= lt!2291161 call!444318)))

(declare-fun lt!2290999 () Regex!15785)

(declare-fun call!444482 () Regex!15785)

(assert (=> b!5770136 (= lt!2290999 call!444482)))

(declare-fun call!444388 () Bool)

(declare-fun call!444476 () Bool)

(assert (=> b!5770136 (= call!444388 call!444476)))

(declare-fun lt!2291080 () Unit!156690)

(declare-fun call!444375 () Unit!156690)

(assert (=> b!5770136 (= lt!2291080 call!444375)))

(declare-fun call!444472 () (InoxSet Context!10338))

(declare-fun call!444447 () (InoxSet Context!10338))

(assert (=> b!5770136 (= call!444472 call!444447)))

(declare-fun lt!2290983 () Unit!156690)

(declare-fun call!444452 () Unit!156690)

(assert (=> b!5770136 (= lt!2290983 call!444452)))

(declare-fun lt!2291089 () Context!10338)

(assert (=> b!5770136 (= lt!2291159 (store ((as const (Array Context!10338 Bool)) false) lt!2291089 true))))

(declare-fun call!444469 () Bool)

(declare-fun call!444471 () Bool)

(assert (=> b!5770136 (= call!444469 call!444471)))

(declare-fun lt!2291072 () Unit!156690)

(declare-fun call!444396 () Unit!156690)

(assert (=> b!5770136 (= lt!2291072 call!444396)))

(declare-fun call!444300 () Bool)

(assert (=> b!5770136 (= call!444407 call!444300)))

(declare-fun lt!2291092 () Unit!156690)

(declare-fun call!444362 () Unit!156690)

(assert (=> b!5770136 (= lt!2291092 call!444362)))

(assert (=> b!5770136 (not call!444405)))

(declare-fun lt!2291082 () Unit!156690)

(declare-fun call!444468 () Unit!156690)

(assert (=> b!5770136 (= lt!2291082 call!444468)))

(declare-fun e!3544850 () Unit!156690)

(declare-fun Unit!156694 () Unit!156690)

(assert (=> b!5770136 (= e!3544850 Unit!156694)))

(declare-fun bm!444297 () Bool)

(declare-fun call!444477 () Unit!156690)

(assert (=> bm!444297 (= call!444318 call!444477)))

(declare-fun lt!2290989 () Context!10338)

(declare-fun bm!444298 () Bool)

(declare-fun lt!2291113 () (InoxSet Context!10338))

(declare-fun lambda!313681 () Int)

(declare-fun lemmaFlatMapOnSingletonSet!930 ((InoxSet Context!10338) Context!10338 Int) Unit!156690)

(assert (=> bm!444298 (= call!444342 (lemmaFlatMapOnSingletonSet!930 (ite c!1020249 lt!2291006 lt!2291113) (ite c!1020249 lt!2290984 lt!2290989) (ite c!1020249 lambda!313681 lambda!313681)))))

(declare-fun bm!444299 () Bool)

(declare-fun call!444465 () Bool)

(declare-fun call!444289 () Bool)

(assert (=> bm!444299 (= call!444465 call!444289)))

(declare-fun bm!444300 () Bool)

(declare-fun lt!2291008 () Context!10338)

(declare-fun lt!2291165 () Context!10338)

(declare-fun derivationStepZipperUp!1053 (Context!10338 C!31840) (InoxSet Context!10338))

(assert (=> bm!444300 (= call!444367 (derivationStepZipperUp!1053 (ite c!1020249 lt!2290995 (ite c!1020242 lt!2291008 (ite c!1020252 lt!2291165 lt!2291089))) (h!69978 s!2326)))))

(declare-fun b!5770137 () Bool)

(declare-fun e!3544857 () Bool)

(declare-fun call!444347 () Bool)

(assert (=> b!5770137 (= e!3544857 call!444347)))

(declare-fun bm!444301 () Bool)

(declare-fun call!444390 () Bool)

(assert (=> bm!444301 (= call!444390 (Exists!2885 (ite c!1020250 lambda!313691 (ite c!1020244 lambda!313700 lambda!313703))))))

(declare-fun lt!2291180 () Regex!15785)

(declare-fun bm!444302 () Bool)

(declare-fun matchR!7970 (Regex!15785 List!63654) Bool)

(assert (=> bm!444302 (= call!444425 (matchR!7970 (ite c!1020249 lt!2291144 (ite c!1020250 lt!2291167 lt!2291180)) (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) s!2326))))))

(declare-fun bm!444303 () Bool)

(declare-fun call!444459 () Unit!156690)

(declare-fun call!444357 () Unit!156690)

(assert (=> bm!444303 (= call!444459 call!444357)))

(declare-fun c!1020243 () Bool)

(declare-fun call!444426 () Bool)

(declare-fun bm!444304 () Bool)

(declare-fun c!1020246 () Bool)

(declare-fun lt!2291030 () (InoxSet Context!10338))

(assert (=> bm!444304 (= call!444426 (matchZipper!1923 (ite c!1020249 lt!2291059 (ite (or c!1020242 c!1020252) z!1189 (ite c!1020248 (ite c!1020250 (ite c!1020243 lt!2291030 z!1189) lt!2290998) (ite c!1020246 ((_ map or) lt!2290998 lt!2291005) lt!2290998)))) (ite c!1020249 (t!376992 s!2326) (ite (or c!1020242 c!1020252 (and c!1020248 c!1020250)) s!2326 (t!376992 s!2326)))))))

(declare-fun bm!444305 () Bool)

(declare-fun call!444306 () Unit!156690)

(declare-fun call!444317 () Unit!156690)

(assert (=> bm!444305 (= call!444306 call!444317)))

(declare-fun b!5770138 () Bool)

(declare-fun e!3544845 () Bool)

(assert (=> b!5770138 (= e!3544845 call!444373)))

(declare-fun bm!444306 () Bool)

(declare-fun call!444441 () Unit!156690)

(assert (=> bm!444306 (= call!444441 call!444355)))

(declare-fun bm!444307 () Bool)

(declare-fun call!444383 () Bool)

(assert (=> bm!444307 (= call!444373 call!444383)))

(declare-fun bm!444308 () Bool)

(declare-fun call!444308 () Bool)

(declare-fun call!444292 () Bool)

(assert (=> bm!444308 (= call!444308 call!444292)))

(declare-fun bm!444309 () Bool)

(declare-fun call!444343 () Bool)

(declare-fun call!444386 () Bool)

(assert (=> bm!444309 (= call!444343 call!444386)))

(declare-fun b!5770139 () Bool)

(declare-fun e!3544821 () Bool)

(assert (=> b!5770139 (= e!3544821 (= lt!2291154 call!444386))))

(declare-fun bm!444310 () Bool)

(declare-fun call!444358 () Bool)

(assert (=> bm!444310 (= call!444310 call!444358)))

(declare-fun bm!444311 () Bool)

(declare-fun call!444326 () Bool)

(declare-fun call!444429 () Bool)

(assert (=> bm!444311 (= call!444326 call!444429)))

(declare-fun bm!444312 () Bool)

(declare-fun call!444286 () Unit!156690)

(declare-fun call!444392 () Unit!156690)

(assert (=> bm!444312 (= call!444286 call!444392)))

(declare-fun bm!444313 () Bool)

(declare-fun call!444431 () Unit!156690)

(assert (=> bm!444313 (= call!444317 call!444431)))

(declare-fun bm!444314 () Bool)

(declare-fun call!444475 () Bool)

(assert (=> bm!444314 (= call!444475 call!444426)))

(declare-fun bm!444315 () Bool)

(declare-fun call!444406 () Bool)

(declare-fun lt!2291083 () Regex!15785)

(assert (=> bm!444315 (= call!444406 (matchR!7970 (ite c!1020247 lt!2291083 (ite c!1020249 lt!2291135 (ite c!1020248 (ite c!1020250 lt!2291167 lt!2291100) (regTwo!32082 r!7292)))) (ite c!1020247 (t!376992 s!2326) (ite c!1020249 s!2326 (ite c!1020248 (ite c!1020250 lt!2291176 (_1!36185 lt!2291163)) s!2326)))))))

(declare-fun bm!444316 () Bool)

(declare-fun call!444341 () Unit!156690)

(assert (=> bm!444316 (= call!444375 call!444341)))

(declare-fun bm!444317 () Bool)

(declare-fun call!444415 () (InoxSet Context!10338))

(assert (=> bm!444317 (= call!444447 call!444415)))

(declare-fun b!5770140 () Bool)

(declare-fun res!2435181 () Bool)

(declare-fun e!3544832 () Bool)

(assert (=> b!5770140 (=> res!2435181 e!3544832)))

(declare-fun isEmpty!35426 (List!63656) Bool)

(assert (=> b!5770140 (= res!2435181 (not (isEmpty!35426 (t!376994 zl!343))))))

(declare-fun bm!444318 () Bool)

(assert (=> bm!444318 (= call!444384 (matchZipper!1923 (ite c!1020249 lt!2291146 lt!2291179) (ite c!1020249 s!2326 (t!376992 s!2326))))))

(declare-fun b!5770141 () Bool)

(declare-fun Unit!156695 () Unit!156690)

(assert (=> b!5770141 (= e!3544825 Unit!156695)))

(declare-fun lt!2291183 () Unit!156690)

(assert (=> b!5770141 (= lt!2291183 (lemmaZipperConcatMatchesSameAsBothZippers!810 lt!2291059 lt!2291005 (t!376992 s!2326)))))

(declare-fun res!2435186 () Bool)

(assert (=> b!5770141 (= res!2435186 call!444426)))

(declare-fun e!3544844 () Bool)

(assert (=> b!5770141 (=> res!2435186 e!3544844)))

(assert (=> b!5770141 (= call!444383 e!3544844)))

(declare-fun bm!444319 () Bool)

(declare-fun call!444339 () Bool)

(declare-fun call!444395 () Bool)

(assert (=> bm!444319 (= call!444339 call!444395)))

(declare-fun bm!444320 () Bool)

(declare-fun call!444354 () Bool)

(declare-fun call!444376 () Bool)

(assert (=> bm!444320 (= call!444354 call!444376)))

(declare-fun bm!444321 () Bool)

(declare-fun call!444404 () Regex!15785)

(assert (=> bm!444321 (= call!444404 call!444458)))

(declare-fun bm!444322 () Bool)

(declare-fun call!444359 () Unit!156690)

(assert (=> bm!444322 (= call!444431 call!444359)))

(declare-fun b!5770142 () Bool)

(declare-fun e!3544826 () Unit!156690)

(assert (=> b!5770142 (= e!3544826 e!3544835)))

(get-info :version)

(assert (=> b!5770142 (= c!1020249 ((_ is Union!15785) (regOne!32082 r!7292)))))

(declare-fun bm!444323 () Bool)

(declare-fun call!444491 () Bool)

(assert (=> bm!444323 (= call!444491 call!444390)))

(declare-fun bm!444324 () Bool)

(declare-fun lt!2291128 () Regex!15785)

(declare-fun lt!2291158 () Regex!15785)

(declare-fun lt!2291046 () Regex!15785)

(assert (=> bm!444324 (= call!444298 (matchRSpec!2888 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292))))) s!2326))))

(declare-fun setElem!38781 () Context!10338)

(declare-fun setNonEmpty!38781 () Bool)

(declare-fun e!3544843 () Bool)

(declare-fun setRes!38781 () Bool)

(declare-fun tp!1594253 () Bool)

(declare-fun inv!82709 (Context!10338) Bool)

(assert (=> setNonEmpty!38781 (= setRes!38781 (and tp!1594253 (inv!82709 setElem!38781) e!3544843))))

(declare-fun setRest!38781 () (InoxSet Context!10338))

(assert (=> setNonEmpty!38781 (= z!1189 ((_ map or) (store ((as const (Array Context!10338 Bool)) false) setElem!38781 true) setRest!38781))))

(declare-fun call!444381 () Option!15794)

(declare-fun bm!444325 () Bool)

(declare-fun findConcatSeparation!2208 (Regex!15785 Regex!15785 List!63654 List!63654 List!63654) Option!15794)

(assert (=> bm!444325 (= call!444381 (findConcatSeparation!2208 (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 lt!2291100)) (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (regTwo!32082 r!7292))) Nil!63530 s!2326 s!2326))))

(declare-fun bm!444326 () Bool)

(declare-fun call!444484 () Bool)

(assert (=> bm!444326 (= call!444484 call!444465)))

(declare-fun bm!444327 () Bool)

(declare-fun call!444364 () Unit!156690)

(assert (=> bm!444327 (= call!444364 call!444318)))

(declare-fun bm!444328 () Bool)

(declare-fun call!444346 () Regex!15785)

(assert (=> bm!444328 (= call!444482 call!444346)))

(declare-fun bm!444329 () Bool)

(declare-fun call!444428 () Bool)

(declare-fun call!444430 () Bool)

(assert (=> bm!444329 (= call!444428 call!444430)))

(declare-fun bm!444330 () Bool)

(assert (=> bm!444330 (= call!444331 call!444339)))

(declare-fun bm!444331 () Bool)

(declare-fun call!444445 () Bool)

(assert (=> bm!444331 (= call!444445 call!444331)))

(declare-fun b!5770143 () Bool)

(declare-fun e!3544828 () Unit!156690)

(declare-fun Unit!156696 () Unit!156690)

(assert (=> b!5770143 (= e!3544828 Unit!156696)))

(assert (=> b!5770143 (= lt!2291030 (store ((as const (Array Context!10338 Bool)) false) lt!2291089 true))))

(declare-fun lt!2291132 () Unit!156690)

(declare-fun call!444419 () Unit!156690)

(assert (=> b!5770143 (= lt!2291132 call!444419)))

(declare-fun call!444293 () (InoxSet Context!10338))

(declare-fun call!444365 () (InoxSet Context!10338))

(assert (=> b!5770143 (= call!444293 call!444365)))

(declare-fun lt!2291032 () Regex!15785)

(declare-fun call!444351 () Regex!15785)

(assert (=> b!5770143 (= lt!2291032 call!444351)))

(declare-fun lt!2291084 () Unit!156690)

(declare-fun call!444461 () Unit!156690)

(assert (=> b!5770143 (= lt!2291084 call!444461)))

(declare-fun res!2435187 () Bool)

(declare-fun call!444486 () Bool)

(declare-fun call!444315 () Bool)

(assert (=> b!5770143 (= res!2435187 (= call!444486 call!444315))))

(assert (=> b!5770143 (=> (not res!2435187) (not e!3544831))))

(assert (=> b!5770143 e!3544831))

(declare-fun bm!444332 () Bool)

(declare-fun call!444474 () Unit!156690)

(declare-fun call!444423 () Unit!156690)

(assert (=> bm!444332 (= call!444474 call!444423)))

(declare-fun bm!444333 () Bool)

(declare-fun call!444400 () Bool)

(assert (=> bm!444333 (= call!444400 call!444457)))

(declare-fun bm!444334 () Bool)

(declare-fun generalisedConcat!1400 (List!63655) Regex!15785)

(assert (=> bm!444334 (= call!444458 (generalisedConcat!1400 (ite c!1020249 lt!2291125 (t!376993 (exprs!5669 (h!69980 zl!343))))))))

(declare-fun bm!444335 () Bool)

(declare-fun call!444478 () Bool)

(assert (=> bm!444335 (= call!444478 call!444330)))

(declare-fun bm!444336 () Bool)

(declare-fun call!444421 () Unit!156690)

(declare-fun call!444389 () Unit!156690)

(assert (=> bm!444336 (= call!444421 call!444389)))

(declare-fun bm!444337 () Bool)

(declare-fun call!444470 () Bool)

(assert (=> bm!444337 (= call!444471 call!444470)))

(declare-fun call!444399 () Unit!156690)

(declare-fun lt!2291103 () Context!10338)

(declare-fun lt!2291007 () Context!10338)

(declare-fun bm!444338 () Bool)

(assert (=> bm!444338 (= call!444399 (lemmaFlatMapOnSingletonSet!930 (ite c!1020242 lt!2291026 lt!2291003) (ite c!1020242 lt!2291007 lt!2291103) (ite c!1020242 lambda!313681 lambda!313681)))))

(declare-fun b!5770144 () Bool)

(declare-fun e!3544827 () Bool)

(declare-fun tp!1594249 () Bool)

(declare-fun tp!1594257 () Bool)

(assert (=> b!5770144 (= e!3544827 (and tp!1594249 tp!1594257))))

(declare-fun bm!444339 () Bool)

(declare-fun lt!2291050 () Regex!15785)

(declare-fun call!444305 () Bool)

(declare-fun lt!2291088 () List!63654)

(assert (=> bm!444339 (= call!444305 (matchR!7970 (ite c!1020242 (Concat!24630 (regOne!32082 (regOne!32082 r!7292)) (Concat!24630 (regTwo!32082 (regOne!32082 r!7292)) lt!2291109)) (ite c!1020252 (Concat!24630 (regOne!32082 r!7292) lt!2291002) (ite c!1020250 lt!2291050 (reg!16114 (regOne!32082 r!7292))))) (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 lt!2291088 (_1!36185 lt!2291107)))))))

(declare-fun bm!444340 () Bool)

(declare-fun call!444467 () Bool)

(assert (=> bm!444340 (= call!444467 call!444356)))

(declare-fun e!3544834 () Bool)

(declare-fun tp!1594256 () Bool)

(declare-fun e!3544849 () Bool)

(declare-fun b!5770145 () Bool)

(assert (=> b!5770145 (= e!3544849 (and (inv!82709 (h!69980 zl!343)) e!3544834 tp!1594256))))

(declare-fun b!5770146 () Bool)

(assert (=> b!5770146 (= e!3544858 call!444426)))

(declare-fun lt!2291010 () tuple2!65764)

(declare-fun bm!444341 () Bool)

(declare-fun lt!2291141 () List!63654)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!290 (Regex!15785 Regex!15785 List!63654 List!63654) Unit!156690)

(assert (=> bm!444341 (= call!444423 (lemmaTwoRegexMatchThenConcatMatchesConcatString!290 lt!2291167 (regTwo!32082 r!7292) (ite c!1020250 (_2!36185 lt!2291010) (ite c!1020244 lt!2291141 Nil!63530)) (ite c!1020250 (_2!36185 lt!2291106) (ite c!1020244 (_2!36185 lt!2291163) s!2326))))))

(declare-fun b!5770147 () Bool)

(declare-fun e!3544853 () Bool)

(declare-fun lt!2291115 () Bool)

(assert (=> b!5770147 (= e!3544853 lt!2291115)))

(declare-fun bm!444342 () Bool)

(declare-fun call!444366 () (InoxSet Context!10338))

(assert (=> bm!444342 (= call!444366 call!444446)))

(declare-fun bm!444343 () Bool)

(assert (=> bm!444343 (= call!444395 call!444455)))

(declare-fun b!5770148 () Bool)

(declare-fun Unit!156697 () Unit!156690)

(assert (=> b!5770148 (= e!3544848 Unit!156697)))

(declare-fun bm!444344 () Bool)

(declare-fun call!444369 () Bool)

(assert (=> bm!444344 (= call!444476 call!444369)))

(declare-fun bm!444345 () Bool)

(declare-fun call!444319 () Bool)

(assert (=> bm!444345 (= call!444371 call!444319)))

(declare-fun bm!444346 () Bool)

(declare-fun call!444460 () Bool)

(assert (=> bm!444346 (= call!444332 call!444460)))

(declare-fun bm!444347 () Bool)

(declare-fun call!444303 () Bool)

(assert (=> bm!444347 (= call!444303 (Exists!2885 (ite c!1020242 lambda!313684 (ite c!1020252 lambda!313686 (ite c!1020250 lambda!313692 (ite c!1020244 lambda!313700 lambda!313704))))))))

(declare-fun bm!444348 () Bool)

(declare-fun call!444435 () Bool)

(assert (=> bm!444348 (= call!444435 call!444405)))

(declare-fun bm!444349 () Bool)

(declare-fun lt!2291074 () List!63655)

(declare-fun lt!2291047 () List!63655)

(declare-fun ++!13999 (List!63655 List!63655) List!63655)

(assert (=> bm!444349 (= call!444463 (++!13999 lt!2291074 lt!2291047))))

(declare-fun bm!444350 () Bool)

(declare-fun call!444338 () Regex!15785)

(declare-fun call!444479 () Regex!15785)

(assert (=> bm!444350 (= call!444338 call!444479)))

(declare-fun bm!444351 () Bool)

(declare-fun call!444314 () Bool)

(assert (=> bm!444351 (= call!444314 call!444476)))

(declare-fun bm!444352 () Bool)

(declare-fun call!444466 () Bool)

(assert (=> bm!444352 (= call!444315 call!444466)))

(declare-fun bm!444353 () Bool)

(assert (=> bm!444353 (= call!444460 call!444303)))

(declare-fun bm!444354 () Bool)

(declare-fun call!444398 () Bool)

(assert (=> bm!444354 (= call!444398 call!444448)))

(declare-fun bm!444355 () Bool)

(declare-fun call!444464 () Bool)

(assert (=> bm!444355 (= call!444464 call!444478)))

(declare-fun bm!444356 () Bool)

(declare-fun call!444394 () Bool)

(assert (=> bm!444356 (= call!444300 call!444394)))

(declare-fun bm!444357 () Bool)

(declare-fun call!444295 () Bool)

(assert (=> bm!444357 (= call!444295 call!444305)))

(declare-fun b!5770149 () Bool)

(assert (=> b!5770149 (= c!1020242 e!3544841)))

(declare-fun res!2435183 () Bool)

(assert (=> b!5770149 (=> (not res!2435183) (not e!3544841))))

(assert (=> b!5770149 (= res!2435183 ((_ is Concat!24630) (regOne!32082 r!7292)))))

(declare-fun e!3544823 () Unit!156690)

(assert (=> b!5770149 (= e!3544835 e!3544823)))

(declare-fun bm!444358 () Bool)

(declare-fun call!444377 () Unit!156690)

(declare-fun call!444424 () Unit!156690)

(assert (=> bm!444358 (= call!444377 call!444424)))

(declare-fun bm!444359 () Bool)

(assert (=> bm!444359 (= call!444430 call!444298)))

(declare-fun b!5770150 () Bool)

(declare-fun e!3544840 () Bool)

(assert (=> b!5770150 (= e!3544840 lt!2291115)))

(declare-fun bm!444360 () Bool)

(declare-fun call!444393 () Bool)

(declare-fun call!444462 () Bool)

(assert (=> bm!444360 (= call!444393 call!444462)))

(declare-fun bm!444361 () Bool)

(declare-fun call!444328 () Bool)

(declare-fun call!444380 () Bool)

(assert (=> bm!444361 (= call!444328 call!444380)))

(declare-fun b!5770151 () Bool)

(declare-fun tp!1594252 () Bool)

(assert (=> b!5770151 (= e!3544827 tp!1594252)))

(declare-fun b!5770152 () Bool)

(declare-fun res!2435178 () Bool)

(assert (=> b!5770152 (=> res!2435178 e!3544832)))

(assert (=> b!5770152 (= res!2435178 (or ((_ is EmptyExpr!15785) r!7292) ((_ is EmptyLang!15785) r!7292) ((_ is ElementMatch!15785) r!7292) ((_ is Union!15785) r!7292) (not ((_ is Concat!24630) r!7292))))))

(declare-fun e!3544829 () Bool)

(declare-fun lt!2291025 () (InoxSet Context!10338))

(declare-fun derivationStepZipper!1862 ((InoxSet Context!10338) C!31840) (InoxSet Context!10338))

(assert (=> b!5770153 (= e!3544829 (= lt!2291005 (derivationStepZipper!1862 lt!2291025 (h!69978 s!2326))))))

(declare-fun flatMap!1398 ((InoxSet Context!10338) Int) (InoxSet Context!10338))

(assert (=> b!5770153 (= (flatMap!1398 lt!2291025 lambda!313681) (derivationStepZipperUp!1053 lt!2291089 (h!69978 s!2326)))))

(declare-fun lt!2291042 () Unit!156690)

(assert (=> b!5770153 (= lt!2291042 (lemmaFlatMapOnSingletonSet!930 lt!2291025 lt!2291089 lambda!313681))))

(assert (=> b!5770153 (= lt!2291025 (store ((as const (Array Context!10338 Bool)) false) lt!2291089 true))))

(declare-fun lt!2291058 () Unit!156690)

(assert (=> b!5770153 (= lt!2291058 e!3544826)))

(assert (=> b!5770153 (= c!1020247 (and ((_ is ElementMatch!15785) (regOne!32082 r!7292)) (= (c!1020255 (regOne!32082 r!7292)) (h!69978 s!2326))))))

(declare-fun lt!2291145 () Unit!156690)

(assert (=> b!5770153 (= lt!2291145 e!3544838)))

(declare-fun c!1020254 () Bool)

(assert (=> b!5770153 (= c!1020254 (nullable!5817 (h!69979 (exprs!5669 (h!69980 zl!343)))))))

(assert (=> b!5770153 (= (flatMap!1398 z!1189 lambda!313681) (derivationStepZipperUp!1053 (h!69980 zl!343) (h!69978 s!2326)))))

(declare-fun lt!2291041 () Unit!156690)

(assert (=> b!5770153 (= lt!2291041 (lemmaFlatMapOnSingletonSet!930 z!1189 (h!69980 zl!343) lambda!313681))))

(assert (=> b!5770153 (= lt!2291005 (derivationStepZipperUp!1053 lt!2291089 (h!69978 s!2326)))))

(declare-fun derivationStepZipperDown!1127 (Regex!15785 Context!10338 C!31840) (InoxSet Context!10338))

(assert (=> b!5770153 (= lt!2290998 (derivationStepZipperDown!1127 (h!69979 (exprs!5669 (h!69980 zl!343))) lt!2291089 (h!69978 s!2326)))))

(assert (=> b!5770153 (= lt!2291089 (Context!10339 (t!376993 (exprs!5669 (h!69980 zl!343)))))))

(declare-fun lt!2290991 () (InoxSet Context!10338))

(assert (=> b!5770153 (= lt!2290991 (derivationStepZipperUp!1053 (Context!10339 (Cons!63531 (h!69979 (exprs!5669 (h!69980 zl!343))) (t!376993 (exprs!5669 (h!69980 zl!343))))) (h!69978 s!2326)))))

(declare-fun bm!444362 () Bool)

(assert (=> bm!444362 (= call!444388 call!444343)))

(declare-fun bm!444363 () Bool)

(declare-fun call!444432 () Unit!156690)

(assert (=> bm!444363 (= call!444355 call!444432)))

(declare-fun bm!444364 () Bool)

(assert (=> bm!444364 (= call!444461 call!444364)))

(declare-fun bm!444365 () Bool)

(assert (=> bm!444365 (= call!444309 (mainMatchTheorem!2888 (ite c!1020249 lt!2291057 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291065 (ite c!1020248 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 lt!2291167)) (regOne!32082 r!7292))))) (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)) s!2326))))))

(declare-fun bm!444366 () Bool)

(declare-fun call!444420 () Bool)

(declare-fun call!444316 () Bool)

(assert (=> bm!444366 (= call!444420 call!444316)))

(declare-fun b!5770154 () Bool)

(assert (=> b!5770154 (= c!1020248 ((_ is Star!15785) (regOne!32082 r!7292)))))

(declare-fun e!3544830 () Unit!156690)

(declare-fun e!3544851 () Unit!156690)

(assert (=> b!5770154 (= e!3544830 e!3544851)))

(declare-fun bm!444367 () Bool)

(declare-fun call!444368 () List!63654)

(assert (=> bm!444367 (= call!444368 (++!13998 (ite c!1020250 (_2!36185 lt!2291010) (ite c!1020244 (_1!36185 lt!2291169) Nil!63530)) (ite c!1020250 (_2!36185 lt!2291106) (ite c!1020244 (_2!36185 lt!2291169) s!2326))))))

(declare-fun call!444348 () List!63654)

(declare-fun bm!444368 () Bool)

(assert (=> bm!444368 (= call!444348 (++!13998 (ite c!1020250 (_1!36185 lt!2291010) (_1!36185 lt!2291107)) (ite c!1020250 lt!2291088 (_2!36185 lt!2291107))))))

(declare-fun bm!444369 () Bool)

(assert (=> bm!444369 (= call!444472 call!444366)))

(declare-fun bm!444370 () Bool)

(declare-fun call!444296 () Unit!156690)

(declare-fun lemmaConcatAssociativity!2894 (List!63654 List!63654 List!63654) Unit!156690)

(assert (=> bm!444370 (= call!444296 (lemmaConcatAssociativity!2894 (ite c!1020250 (_1!36185 lt!2291010) (_1!36185 lt!2291169)) (ite c!1020250 (_2!36185 lt!2291010) (_2!36185 lt!2291169)) (ite c!1020250 (_2!36185 lt!2291106) (_2!36185 lt!2291163))))))

(declare-fun b!5770155 () Bool)

(declare-fun e!3544820 () Bool)

(assert (=> b!5770155 (= e!3544820 (= lt!2291154 call!444475))))

(declare-fun bm!444371 () Bool)

(declare-fun call!444492 () Option!15794)

(assert (=> bm!444371 (= call!444492 call!444381)))

(declare-fun bm!444372 () Bool)

(declare-fun call!444480 () Bool)

(declare-fun call!444414 () Bool)

(assert (=> bm!444372 (= call!444480 call!444414)))

(declare-fun bm!444373 () Bool)

(declare-fun call!444349 () Unit!156690)

(assert (=> bm!444373 (= call!444349 call!444313)))

(declare-fun bm!444374 () Bool)

(declare-fun call!444440 () Bool)

(declare-fun call!444488 () Bool)

(assert (=> bm!444374 (= call!444440 call!444488)))

(declare-fun bm!444375 () Bool)

(assert (=> bm!444375 (= call!444358 call!444467)))

(declare-fun bm!444376 () Bool)

(assert (=> bm!444376 (= call!444486 call!444445)))

(declare-fun lt!2291139 () Regex!15785)

(declare-fun lt!2290993 () (InoxSet Context!10338))

(declare-fun bm!444377 () Bool)

(declare-fun theoremZipperRegexEquiv!679 ((InoxSet Context!10338) List!63656 Regex!15785 List!63654) Unit!156690)

(assert (=> bm!444377 (= call!444432 (theoremZipperRegexEquiv!679 (ite c!1020247 lt!2291095 (ite c!1020249 lt!2291146 (ite c!1020242 lt!2290993 (ite c!1020252 lt!2291014 (ite c!1020248 (ite c!1020250 (ite c!1020243 lt!2291030 lt!2291003) (ite c!1020244 lt!2291003 lt!2291054)) lt!2291159))))) (ite c!1020247 (Cons!63532 lt!2291089 Nil!63532) (ite c!1020249 (Cons!63532 lt!2290995 Nil!63532) (ite c!1020242 (Cons!63532 lt!2291008 Nil!63532) (ite c!1020252 (Cons!63532 lt!2291165 Nil!63532) (ite c!1020248 (ite c!1020250 (ite c!1020243 (Cons!63532 lt!2291089 Nil!63532) (Cons!63532 lt!2291103 Nil!63532)) (ite c!1020244 (Cons!63532 lt!2291103 Nil!63532) (Cons!63532 lt!2291089 Nil!63532))) (Cons!63532 lt!2291089 Nil!63532)))))) (ite c!1020247 lt!2291083 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 (ite c!1020250 (ite c!1020243 lt!2291032 (reg!16114 (regOne!32082 r!7292))) (ite c!1020244 (reg!16114 (regOne!32082 r!7292)) lt!2291139)) lt!2290999))))) (ite c!1020247 (t!376992 s!2326) (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (ite c!1020250 (ite c!1020243 s!2326 (_1!36185 lt!2291010)) (ite c!1020244 (_1!36185 lt!2291107) s!2326)) s!2326)))))))

(declare-fun bm!444378 () Bool)

(declare-fun call!444337 () tuple2!65764)

(declare-fun lt!2291148 () Option!15794)

(declare-fun lt!2290997 () Option!15794)

(assert (=> bm!444378 (= call!444337 (get!21923 (ite c!1020250 lt!2291148 lt!2290997)))))

(declare-fun bm!444379 () Bool)

(declare-fun call!444485 () List!63654)

(assert (=> bm!444379 (= call!444485 call!444368)))

(declare-fun bm!444380 () Bool)

(assert (=> bm!444380 (= call!444319 call!444398)))

(declare-fun lt!2291101 () (InoxSet Context!10338))

(declare-fun bm!444381 () Bool)

(assert (=> bm!444381 (= call!444322 (lemmaZipperConcatMatchesSameAsBothZippers!810 (ite c!1020249 lt!2290986 lt!2291179) (ite c!1020249 lt!2291059 lt!2291101) (t!376992 s!2326)))))

(declare-fun bm!444382 () Bool)

(declare-fun call!444403 () Unit!156690)

(assert (=> bm!444382 (= call!444396 call!444403)))

(declare-fun b!5770156 () Bool)

(declare-fun Unit!156698 () Unit!156690)

(assert (=> b!5770156 (= e!3544838 Unit!156698)))

(declare-fun lt!2291168 () (InoxSet Context!10338))

(declare-fun bm!444383 () Bool)

(assert (=> bm!444383 (= call!444439 (flatMap!1398 (ite c!1020249 lt!2291006 (ite c!1020242 lt!2290993 (ite c!1020252 lt!2291014 lt!2291168))) (ite c!1020249 lambda!313681 (ite c!1020242 lambda!313681 (ite c!1020252 lambda!313681 lambda!313681)))))))

(declare-fun bm!444384 () Bool)

(declare-fun call!444402 () Unit!156690)

(declare-fun lemmaConcatPreservesForall!320 (List!63655 List!63655 Int) Unit!156690)

(assert (=> bm!444384 (= call!444402 (lemmaConcatPreservesForall!320 lt!2291074 lt!2291047 (ite c!1020250 lambda!313695 lambda!313697)))))

(assert (=> b!5770157 call!444328))

(declare-fun lt!2291122 () Unit!156690)

(assert (=> b!5770157 (= lt!2291122 e!3544828)))

(declare-fun isEmpty!35427 (List!63654) Bool)

(assert (=> b!5770157 (= c!1020243 (isEmpty!35427 (_1!36185 lt!2291106)))))

(assert (=> b!5770157 (= lt!2291106 call!444360)))

(assert (=> b!5770157 (= call!444465 call!444390)))

(declare-fun lt!2291093 () Unit!156690)

(assert (=> b!5770157 (= lt!2291093 call!444340)))

(assert (=> b!5770157 (= call!444462 call!444420)))

(declare-fun call!444438 () Option!15794)

(assert (=> b!5770157 (= lt!2291112 call!444438)))

(declare-fun lt!2290996 () Unit!156690)

(assert (=> b!5770157 (= lt!2290996 call!444481)))

(declare-fun e!3544836 () Unit!156690)

(declare-fun Unit!156699 () Unit!156690)

(assert (=> b!5770157 (= e!3544836 Unit!156699)))

(declare-fun bm!444385 () Bool)

(declare-fun call!444321 () Unit!156690)

(assert (=> bm!444385 (= call!444392 call!444321)))

(declare-fun bm!444386 () Bool)

(declare-fun call!444416 () Unit!156690)

(assert (=> bm!444386 (= call!444416 call!444349)))

(declare-fun bm!444387 () Bool)

(declare-fun call!444422 () Bool)

(assert (=> bm!444387 (= call!444422 call!444464)))

(declare-fun bm!444388 () Bool)

(assert (=> bm!444388 (= call!444455 (matchR!7970 (ite c!1020249 lt!2291178 (ite c!1020242 lt!2291046 (ite c!1020252 (Concat!24630 (regOne!32082 (regOne!32082 r!7292)) (Concat!24630 (regTwo!32082 (regOne!32082 r!7292)) lt!2291002)) (ite c!1020248 (ite c!1020250 (ite c!1020243 lt!2291032 lt!2291158) lt!2291167) (regOne!32082 r!7292))))) (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (ite c!1020250 (ite c!1020243 s!2326 lt!2291118) (ite c!1020244 lt!2291141 Nil!63530)) s!2326))))))

(declare-fun bm!444389 () Bool)

(declare-fun call!444333 () Bool)

(assert (=> bm!444389 (= call!444333 call!444445)))

(declare-fun bm!444390 () Bool)

(assert (=> bm!444390 (= call!444452 call!444416)))

(declare-fun bm!444391 () Bool)

(assert (=> bm!444391 (= call!444292 call!444299)))

(declare-fun bm!444392 () Bool)

(declare-fun call!444413 () Unit!156690)

(assert (=> bm!444392 (= call!444403 call!444413)))

(declare-fun call!444401 () Bool)

(declare-fun bm!444393 () Bool)

(assert (=> bm!444393 (= call!444401 (Exists!2885 (ite c!1020242 lambda!313682 (ite c!1020252 lambda!313687 (ite c!1020250 lambda!313690 (ite c!1020244 lambda!313698 lambda!313703))))))))

(declare-fun bm!444394 () Bool)

(declare-fun call!444417 () Bool)

(assert (=> bm!444394 (= call!444417 call!444425)))

(declare-fun bm!444395 () Bool)

(assert (=> bm!444395 (= call!444329 (matchZipper!1923 (ite c!1020249 lt!2290986 lt!2291101) (t!376992 s!2326)))))

(declare-fun bm!444396 () Bool)

(assert (=> bm!444396 (= call!444470 call!444428)))

(declare-fun b!5770158 () Bool)

(assert (=> b!5770158 (= e!3544833 (= lt!2291154 call!444490))))

(declare-fun b!5770159 () Bool)

(declare-fun tp!1594258 () Bool)

(declare-fun tp!1594254 () Bool)

(assert (=> b!5770159 (= e!3544827 (and tp!1594258 tp!1594254))))

(declare-fun bm!444397 () Bool)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1972 (Regex!15785 Regex!15785 List!63654) Unit!156690)

(assert (=> bm!444397 (= call!444449 (lemmaFindConcatSeparationEquivalentToExists!1972 (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (reg!16114 (regOne!32082 r!7292)))) (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020250 (regTwo!32082 r!7292) lt!2291167))) (ite (or c!1020242 c!1020252 c!1020250) s!2326 (_1!36185 lt!2291163))))))

(declare-fun lt!2291151 () Context!10338)

(declare-fun bm!444398 () Bool)

(assert (=> bm!444398 (= call!444450 (theoremZipperRegexEquiv!679 (ite c!1020249 lt!2291006 (ite c!1020242 lt!2291026 lt!2291168)) (ite c!1020249 (Cons!63532 lt!2290984 Nil!63532) (ite c!1020242 (Cons!63532 lt!2291007 Nil!63532) (Cons!63532 lt!2291151 Nil!63532))) (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 lt!2291050)) (ite (or c!1020249 c!1020242) s!2326 (ite c!1020250 lt!2291088 (_2!36185 lt!2291107)))))))

(declare-fun bm!444399 () Bool)

(assert (=> bm!444399 (= call!444313 (lemmaFlatMapOnSingletonSet!930 (ite c!1020249 lt!2291146 (ite c!1020242 lt!2290993 (ite c!1020252 lt!2291014 (ite c!1020248 (ite c!1020250 lt!2291030 lt!2291054) lt!2291159)))) (ite c!1020249 lt!2290995 (ite c!1020242 lt!2291008 (ite c!1020252 lt!2291165 lt!2291089))) (ite c!1020249 lambda!313681 (ite c!1020242 lambda!313681 (ite c!1020252 lambda!313681 (ite c!1020248 (ite c!1020250 lambda!313681 lambda!313681) lambda!313681))))))))

(declare-fun b!5770160 () Bool)

(declare-fun e!3544846 () Bool)

(declare-fun lt!2291028 () Bool)

(assert (=> b!5770160 (= e!3544846 (or (not lt!2291154) lt!2291028))))

(declare-fun bm!444400 () Bool)

(assert (=> bm!444400 (= call!444469 call!444350)))

(declare-fun b!5770161 () Bool)

(declare-fun res!2435165 () Bool)

(assert (=> b!5770161 (=> res!2435165 e!3544832)))

(assert (=> b!5770161 (= res!2435165 (not ((_ is Cons!63531) (exprs!5669 (h!69980 zl!343)))))))

(declare-fun b!5770162 () Bool)

(declare-fun tp_is_empty!40823 () Bool)

(assert (=> b!5770162 (= e!3544827 tp_is_empty!40823)))

(declare-fun bm!444401 () Bool)

(assert (=> bm!444401 (= call!444297 (matchRSpec!2888 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167))) (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530)))))))

(declare-fun bm!444402 () Bool)

(assert (=> bm!444402 (= call!444466 call!444343)))

(declare-fun bm!444403 () Bool)

(assert (=> bm!444403 (= call!444488 call!444310)))

(declare-fun b!5770163 () Bool)

(declare-fun res!2435180 () Bool)

(assert (=> b!5770163 (=> res!2435180 e!3544832)))

(declare-fun generalisedUnion!1648 (List!63655) Regex!15785)

(declare-fun unfocusZipperList!1213 (List!63656) List!63655)

(assert (=> b!5770163 (= res!2435180 (not (= r!7292 (generalisedUnion!1648 (unfocusZipperList!1213 zl!343)))))))

(declare-fun bm!444404 () Bool)

(declare-fun call!444374 () Bool)

(assert (=> bm!444404 (= call!444374 call!444350)))

(declare-fun bm!444405 () Bool)

(declare-fun call!444397 () Bool)

(assert (=> bm!444405 (= call!444397 call!444489)))

(declare-fun bm!444406 () Bool)

(declare-fun call!444312 () Bool)

(assert (=> bm!444406 (= call!444312 call!444397)))

(declare-fun lt!2291096 () List!63655)

(declare-fun bm!444407 () Bool)

(assert (=> bm!444407 (= call!444311 (derivationStepZipperDown!1127 (ite c!1020249 (regTwo!32083 (regOne!32082 r!7292)) (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292)))) (ite c!1020249 lt!2291089 (ite c!1020242 lt!2291007 (ite c!1020252 (Context!10339 lt!2291096) lt!2291151))) (h!69978 s!2326)))))

(declare-fun b!5770164 () Bool)

(declare-fun res!2435167 () Bool)

(assert (=> b!5770164 (=> res!2435167 e!3544832)))

(assert (=> b!5770164 (= res!2435167 (not (= r!7292 (generalisedConcat!1400 (exprs!5669 (h!69980 zl!343))))))))

(declare-fun call!444288 () Bool)

(declare-fun lt!2291097 () List!63654)

(declare-fun bm!444408 () Bool)

(assert (=> bm!444408 (= call!444288 (matchR!7970 (ite c!1020244 lt!2291158 lt!2291050) (ite c!1020244 lt!2291097 call!444485)))))

(declare-fun b!5770165 () Bool)

(assert (=> b!5770165 (= e!3544822 (matchZipper!1923 lt!2291005 (t!376992 s!2326)))))

(declare-fun bm!444409 () Bool)

(declare-fun call!444387 () Unit!156690)

(assert (=> bm!444409 (= call!444387 call!444306)))

(declare-fun call!444345 () Option!15794)

(declare-fun bm!444410 () Bool)

(declare-fun call!444301 () Option!15794)

(declare-fun call!444294 () Option!15794)

(declare-fun isDefined!12497 (Option!15794) Bool)

(assert (=> bm!444410 (= call!444429 (isDefined!12497 (ite c!1020242 call!444294 (ite c!1020252 call!444301 (ite c!1020250 lt!2291112 (ite c!1020244 lt!2290997 call!444345))))))))

(declare-fun bm!444411 () Bool)

(assert (=> bm!444411 (= call!444351 call!444482)))

(declare-fun bm!444412 () Bool)

(assert (=> bm!444412 (= call!444414 (matchR!7970 (ite c!1020242 (Concat!24630 (Concat!24630 (regOne!32082 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))) lt!2291109) (ite c!1020252 lt!2291128 lt!2291158)) s!2326))))

(declare-fun bm!444413 () Bool)

(assert (=> bm!444413 (= call!444289 call!444401)))

(declare-fun call!444372 () Unit!156690)

(declare-fun bm!444414 () Bool)

(declare-fun lemmaStarApp!102 (Regex!15785 List!63654 List!63654) Unit!156690)

(assert (=> bm!444414 (= call!444372 (lemmaStarApp!102 (reg!16114 (regOne!32082 r!7292)) (ite c!1020250 (_1!36185 lt!2291010) (_1!36185 lt!2291169)) (ite c!1020250 (_2!36185 lt!2291010) (_2!36185 lt!2291169))))))

(declare-fun res!2435162 () Bool)

(declare-fun e!3544847 () Bool)

(assert (=> start!592608 (=> (not res!2435162) (not e!3544847))))

(declare-fun validRegex!7521 (Regex!15785) Bool)

(assert (=> start!592608 (= res!2435162 (validRegex!7521 r!7292))))

(assert (=> start!592608 e!3544847))

(assert (=> start!592608 e!3544827))

(declare-fun condSetEmpty!38781 () Bool)

(assert (=> start!592608 (= condSetEmpty!38781 (= z!1189 ((as const (Array Context!10338 Bool)) false)))))

(assert (=> start!592608 setRes!38781))

(assert (=> start!592608 e!3544849))

(declare-fun e!3544854 () Bool)

(assert (=> start!592608 e!3544854))

(declare-fun bm!444415 () Bool)

(assert (=> bm!444415 (= call!444357 (lemmaFindConcatSeparationEquivalentToExists!1972 (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 (reg!16114 (regOne!32082 r!7292)) (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite c!1020250 lt!2291167 (ite c!1020244 (regTwo!32082 r!7292) lt!2291167)))) (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530)))))))

(declare-fun bm!444416 () Bool)

(assert (=> bm!444416 (= call!444293 (flatMap!1398 (ite c!1020250 lt!2291030 lt!2291054) (ite c!1020250 lambda!313681 lambda!313681)))))

(declare-fun b!5770166 () Bool)

(declare-fun tp!1594250 () Bool)

(assert (=> b!5770166 (= e!3544843 tp!1594250)))

(declare-fun b!5770167 () Bool)

(assert (=> b!5770167 (= e!3544847 (not e!3544832))))

(declare-fun res!2435184 () Bool)

(assert (=> b!5770167 (=> res!2435184 e!3544832)))

(assert (=> b!5770167 (= res!2435184 (not ((_ is Cons!63532) zl!343)))))

(assert (=> b!5770167 (= lt!2291154 lt!2291028)))

(assert (=> b!5770167 (= lt!2291028 (matchRSpec!2888 r!7292 s!2326))))

(assert (=> b!5770167 (= lt!2291154 (matchR!7970 r!7292 s!2326))))

(declare-fun lt!2291094 () Unit!156690)

(assert (=> b!5770167 (= lt!2291094 (mainMatchTheorem!2888 r!7292 s!2326))))

(declare-fun b!5770168 () Bool)

(declare-fun e!3544852 () Bool)

(assert (=> b!5770168 (= e!3544852 call!444329)))

(declare-fun bm!444417 () Bool)

(declare-fun call!444443 () Bool)

(assert (=> bm!444417 (= call!444443 call!444295)))

(declare-fun bm!444418 () Bool)

(declare-fun call!444382 () Unit!156690)

(assert (=> bm!444418 (= call!444382 call!444340)))

(declare-fun bm!444419 () Bool)

(declare-fun call!444323 () Unit!156690)

(declare-fun call!444456 () Unit!156690)

(assert (=> bm!444419 (= call!444323 call!444456)))

(declare-fun bm!444420 () Bool)

(declare-fun call!444442 () Unit!156690)

(declare-fun call!444287 () Unit!156690)

(assert (=> bm!444420 (= call!444442 call!444287)))

(assert (=> b!5770169 (= e!3544832 e!3544829)))

(declare-fun res!2435185 () Bool)

(assert (=> b!5770169 (=> res!2435185 e!3544829)))

(declare-fun lt!2291166 () Bool)

(assert (=> b!5770169 (= res!2435185 (or (not (= lt!2291154 lt!2291166)) ((_ is Nil!63530) s!2326)))))

(assert (=> b!5770169 (= (Exists!2885 lambda!313679) (Exists!2885 lambda!313680))))

(declare-fun lt!2291076 () Unit!156690)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1514 (Regex!15785 Regex!15785 List!63654) Unit!156690)

(assert (=> b!5770169 (= lt!2291076 (lemmaExistCutMatchRandMatchRSpecEquivalent!1514 (regOne!32082 r!7292) (regTwo!32082 r!7292) s!2326))))

(assert (=> b!5770169 (= lt!2291166 (Exists!2885 lambda!313679))))

(assert (=> b!5770169 (= lt!2291166 (isDefined!12497 (findConcatSeparation!2208 (regOne!32082 r!7292) (regTwo!32082 r!7292) Nil!63530 s!2326 s!2326)))))

(declare-fun lt!2291156 () Unit!156690)

(assert (=> b!5770169 (= lt!2291156 (lemmaFindConcatSeparationEquivalentToExists!1972 (regOne!32082 r!7292) (regTwo!32082 r!7292) s!2326))))

(declare-fun b!5770170 () Bool)

(declare-fun call!444418 () Bool)

(assert (=> b!5770170 (= e!3544856 (= lt!2291154 call!444418))))

(declare-fun bm!444421 () Bool)

(declare-fun call!444378 () Unit!156690)

(assert (=> bm!444421 (= call!444378 (lemmaConcatPreservesForall!320 lt!2291074 lt!2291047 (ite c!1020250 lambda!313695 lambda!313697)))))

(declare-fun bm!444422 () Bool)

(assert (=> bm!444422 (= call!444346 call!444404)))

(declare-fun bm!444423 () Bool)

(assert (=> bm!444423 (= call!444294 (findConcatSeparation!2208 (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 lt!2291167)) Nil!63530 (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530))) (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)))))))

(declare-fun bm!444424 () Bool)

(assert (=> bm!444424 (= call!444321 (lemmaExistCutMatchRandMatchRSpecEquivalent!1514 (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)) (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163)))))))

(declare-fun b!5770171 () Bool)

(declare-fun res!2435174 () Bool)

(assert (=> b!5770171 (=> res!2435174 e!3544829)))

(declare-fun isEmpty!35428 (List!63655) Bool)

(assert (=> b!5770171 (= res!2435174 (isEmpty!35428 (t!376993 (exprs!5669 (h!69980 zl!343)))))))

(declare-fun bm!444425 () Bool)

(declare-fun call!444320 () Unit!156690)

(assert (=> bm!444425 (= call!444413 call!444320)))

(declare-fun bm!444426 () Bool)

(declare-fun lt!2291004 () Option!15794)

(assert (=> bm!444426 (= call!444376 (isDefined!12497 (ite c!1020242 call!444381 (ite c!1020252 call!444492 (ite c!1020250 lt!2291148 lt!2291004)))))))

(declare-fun b!5770172 () Bool)

(declare-fun res!2435166 () Bool)

(assert (=> b!5770172 (=> (not res!2435166) (not e!3544847))))

(declare-fun toList!9569 ((InoxSet Context!10338)) List!63656)

(assert (=> b!5770172 (= res!2435166 (= (toList!9569 z!1189) zl!343))))

(declare-fun bm!444427 () Bool)

(assert (=> bm!444427 (= call!444336 (nullable!5817 (ite c!1020249 (regTwo!32083 (regOne!32082 r!7292)) (regOne!32082 (regOne!32082 r!7292)))))))

(declare-fun bm!444428 () Bool)

(assert (=> bm!444428 (= call!444365 call!444447)))

(declare-fun e!3544824 () Bool)

(assert (=> b!5770173 e!3544824))

(declare-fun res!2435182 () Bool)

(assert (=> b!5770173 (=> (not res!2435182) (not e!3544824))))

(assert (=> b!5770173 (= res!2435182 call!444288)))

(declare-fun lt!2291177 () Unit!156690)

(assert (=> b!5770173 (= lt!2291177 call!444474)))

(declare-fun call!444352 () Bool)

(assert (=> b!5770173 (= call!444422 call!444352)))

(declare-fun lt!2291051 () Unit!156690)

(assert (=> b!5770173 (= lt!2291051 call!444377)))

(assert (=> b!5770173 (= call!444491 call!444302)))

(declare-fun lt!2291022 () Unit!156690)

(assert (=> b!5770173 (= lt!2291022 call!444382)))

(assert (=> b!5770173 (= call!444393 call!444484)))

(declare-fun lt!2291071 () Unit!156690)

(assert (=> b!5770173 (= lt!2291071 call!444442)))

(declare-fun call!444304 () Bool)

(assert (=> b!5770173 (= call!444333 call!444304)))

(declare-fun lt!2291073 () Unit!156690)

(assert (=> b!5770173 (= lt!2291073 call!444387)))

(declare-fun call!444409 () Bool)

(assert (=> b!5770173 (= call!444440 call!444409)))

(declare-fun lt!2291147 () Unit!156690)

(declare-fun call!444436 () Unit!156690)

(assert (=> b!5770173 (= lt!2291147 call!444436)))

(assert (=> b!5770173 (= lt!2291139 call!444351)))

(assert (=> b!5770173 (= call!444293 call!444365)))

(declare-fun lt!2291052 () Unit!156690)

(assert (=> b!5770173 (= lt!2291052 call!444419)))

(assert (=> b!5770173 (= lt!2291054 (store ((as const (Array Context!10338 Bool)) false) lt!2291089 true))))

(declare-fun e!3544855 () Unit!156690)

(declare-fun Unit!156700 () Unit!156690)

(assert (=> b!5770173 (= e!3544855 Unit!156700)))

(declare-fun bm!444429 () Bool)

(declare-fun call!444334 () Bool)

(assert (=> bm!444429 (= call!444304 call!444334)))

(declare-fun bm!444430 () Bool)

(assert (=> bm!444430 (= call!444316 (Exists!2885 (ite c!1020252 lambda!313686 (ite c!1020250 lambda!313690 lambda!313702))))))

(declare-fun bm!444431 () Bool)

(declare-fun lt!2291172 () List!63655)

(assert (=> bm!444431 (= call!444418 (matchZipper!1923 (ite c!1020249 z!1189 (ite c!1020242 ((_ map or) lt!2291179 lt!2291101) (ite c!1020248 (ite c!1020250 (ite c!1020243 z!1189 lt!2291003) (store ((as const (Array Context!10338 Bool)) false) (Context!10339 lt!2291172) true)) lt!2291005))) (ite c!1020249 s!2326 (ite c!1020242 (t!376992 s!2326) (ite c!1020248 (ite c!1020250 (ite c!1020243 s!2326 (_1!36185 lt!2291010)) lt!2291097) (t!376992 s!2326))))))))

(declare-fun bm!444432 () Bool)

(assert (=> bm!444432 (= call!444370 (lemmaExistCutMatchRandMatchRSpecEquivalent!1514 (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))) (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530)))))

(declare-fun bm!444433 () Bool)

(assert (=> bm!444433 (= call!444341 (lemmaZipperConcatMatchesSameAsBothZippers!810 (ite c!1020249 lt!2290986 (ite c!1020242 lt!2291179 lt!2290998)) (ite c!1020249 lt!2291005 (ite c!1020242 lt!2291150 lt!2291005)) (t!376992 s!2326)))))

(declare-fun bm!444434 () Bool)

(assert (=> bm!444434 (= call!444385 (Exists!2885 (ite c!1020242 lambda!313683 (ite c!1020252 lambda!313688 (ite c!1020250 lambda!313693 lambda!313698)))))))

(declare-fun call!444325 () Unit!156690)

(declare-fun bm!444435 () Bool)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!150 (Context!10338 Context!10338 List!63654 List!63654) Unit!156690)

(assert (=> bm!444435 (= call!444325 (lemmaConcatenateContextMatchesConcatOfStrings!150 lt!2291103 lt!2291151 (ite c!1020250 (_1!36185 lt!2291010) (_1!36185 lt!2291107)) (ite c!1020250 lt!2291088 (_2!36185 lt!2291107))))))

(declare-fun b!5770174 () Bool)

(declare-fun e!3544839 () Unit!156690)

(assert (=> b!5770174 (= e!3544839 e!3544855)))

(assert (=> b!5770174 (= c!1020244 call!444466)))

(declare-fun bm!444436 () Bool)

(declare-fun lemmaConcatAssociative!104 (Regex!15785 Regex!15785 Regex!15785 List!63654) Unit!156690)

(assert (=> bm!444436 (= call!444456 (lemmaConcatAssociative!104 (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) lt!2291167) (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (regTwo!32082 r!7292))) s!2326))))

(declare-fun b!5770175 () Bool)

(declare-fun Unit!156701 () Unit!156690)

(assert (=> b!5770175 (= e!3544848 Unit!156701)))

(declare-fun lt!2291037 () Unit!156690)

(assert (=> b!5770175 (= lt!2291037 call!444341)))

(declare-fun res!2435164 () Bool)

(assert (=> b!5770175 (= res!2435164 lt!2291184)))

(assert (=> b!5770175 (=> res!2435164 e!3544857)))

(assert (=> b!5770175 (= call!444398 e!3544857)))

(declare-fun bm!444437 () Bool)

(assert (=> bm!444437 (= call!444301 call!444294)))

(declare-fun bm!444438 () Bool)

(assert (=> bm!444438 (= call!444359 call!444309)))

(declare-fun bm!444439 () Bool)

(declare-fun call!444451 () Option!15794)

(assert (=> bm!444439 (= call!444345 call!444451)))

(declare-fun b!5770176 () Bool)

(declare-fun res!2435163 () Bool)

(assert (=> b!5770176 (=> (not res!2435163) (not e!3544847))))

(declare-fun unfocusZipper!1527 (List!63656) Regex!15785)

(assert (=> b!5770176 (= res!2435163 (= r!7292 (unfocusZipper!1527 zl!343)))))

(declare-fun bm!444440 () Bool)

(assert (=> bm!444440 (= call!444347 (matchZipper!1923 (ite c!1020249 lt!2291005 lt!2290993) (ite c!1020249 (t!376992 s!2326) s!2326)))))

(declare-fun lt!2291164 () List!63655)

(declare-fun bm!444441 () Bool)

(assert (=> bm!444441 (= call!444391 (generalisedConcat!1400 (ite c!1020249 lt!2291098 (ite c!1020242 lt!2291164 lt!2291096))))))

(declare-fun bm!444442 () Bool)

(assert (=> bm!444442 (= call!444369 call!444418)))

(declare-fun Unit!156702 () Unit!156690)

(assert (=> b!5770177 (= e!3544828 Unit!156702)))

(declare-fun lt!2291009 () Unit!156690)

(assert (=> b!5770177 (= lt!2291009 call!444306)))

(assert (=> b!5770177 (= call!444417 call!444334)))

(declare-fun lt!2291104 () Unit!156690)

(assert (=> b!5770177 (= lt!2291104 call!444287)))

(assert (=> b!5770177 (= lt!2291148 call!444451)))

(declare-fun call!444353 () Bool)

(assert (=> b!5770177 (= call!444353 call!444332)))

(declare-fun lt!2291062 () Unit!156690)

(assert (=> b!5770177 (= lt!2291062 call!444424)))

(declare-fun call!444434 () Bool)

(assert (=> b!5770177 (= call!444434 call!444400)))

(declare-fun lt!2291070 () Unit!156690)

(assert (=> b!5770177 (= lt!2291070 call!444286)))

(assert (=> b!5770177 (= call!444464 call!444312)))

(assert (=> b!5770177 (= lt!2291010 call!444337)))

(declare-fun lt!2291149 () Unit!156690)

(assert (=> b!5770177 (= lt!2291149 call!444296)))

(declare-fun call!444483 () List!63654)

(assert (=> b!5770177 (= lt!2291176 call!444483)))

(assert (=> b!5770177 (= lt!2291088 call!444368)))

(declare-fun lt!2291121 () List!63654)

(assert (=> b!5770177 (= lt!2291121 call!444453)))

(assert (=> b!5770177 (= lt!2291118 call!444348)))

(assert (=> b!5770177 (= lt!2291121 lt!2291118)))

(declare-fun lt!2291114 () Unit!156690)

(assert (=> b!5770177 (= lt!2291114 call!444372)))

(assert (=> b!5770177 call!444374))

(declare-fun lt!2290988 () Unit!156690)

(assert (=> b!5770177 (= lt!2290988 call!444423)))

(assert (=> b!5770177 call!444443))

(declare-fun lt!2291133 () Unit!156690)

(assert (=> b!5770177 (= lt!2291133 call!444461)))

(assert (=> b!5770177 (= call!444488 call!444410)))

(declare-fun lt!2291033 () Unit!156690)

(assert (=> b!5770177 (= lt!2291033 call!444421)))

(assert (=> b!5770177 call!444435))

(declare-fun lt!2291081 () Unit!156690)

(assert (=> b!5770177 (= lt!2291081 call!444325)))

(declare-fun lt!2291105 () Unit!156690)

(assert (=> b!5770177 (= lt!2291105 call!444378)))

(declare-fun call!444361 () Bool)

(assert (=> b!5770177 call!444361))

(declare-fun lt!2291160 () Unit!156690)

(declare-fun call!444473 () Unit!156690)

(assert (=> b!5770177 (= lt!2291160 call!444473)))

(declare-fun res!2435188 () Bool)

(assert (=> b!5770177 (= res!2435188 call!444486)))

(assert (=> b!5770177 (=> (not res!2435188) (not e!3544853))))

(assert (=> b!5770177 e!3544853))

(declare-fun lt!2291130 () Unit!156690)

(assert (=> b!5770177 (= lt!2291130 call!444402)))

(assert (=> b!5770177 call!444315))

(declare-fun bm!444443 () Bool)

(assert (=> bm!444443 (= call!444477 call!444441)))

(declare-fun b!5770178 () Bool)

(declare-fun tp!1594251 () Bool)

(assert (=> b!5770178 (= e!3544854 (and tp_is_empty!40823 tp!1594251))))

(declare-fun bm!444444 () Bool)

(assert (=> bm!444444 (= call!444361 call!444371)))

(declare-fun bm!444445 () Bool)

(assert (=> bm!444445 (= call!444335 (derivationStepZipperUp!1053 (ite c!1020249 lt!2290984 (ite c!1020242 lt!2291007 lt!2291151)) (h!69978 s!2326)))))

(declare-fun bm!444446 () Bool)

(declare-fun call!444444 () (InoxSet Context!10338))

(assert (=> bm!444446 (= call!444444 call!444311)))

(declare-fun b!5770179 () Bool)

(declare-fun Unit!156703 () Unit!156690)

(assert (=> b!5770179 (= e!3544825 Unit!156703)))

(assert (=> b!5770180 e!3544821))

(declare-fun res!2435171 () Bool)

(assert (=> b!5770180 (=> (not res!2435171) (not e!3544821))))

(assert (=> b!5770180 (= res!2435171 (= call!444295 call!444339))))

(declare-fun lt!2291174 () Unit!156690)

(assert (=> b!5770180 (= lt!2291174 call!444323)))

(assert (=> b!5770180 (= call!444457 call!444397)))

(declare-fun lt!2291116 () Unit!156690)

(assert (=> b!5770180 (= lt!2291116 call!444412)))

(assert (=> b!5770180 (= call!444326 call!444478)))

(declare-fun lt!2290994 () Unit!156690)

(assert (=> b!5770180 (= lt!2290994 call!444459)))

(assert (=> b!5770180 (= lt!2291002 call!444346)))

(assert (=> b!5770180 (= call!444358 call!444308)))

(declare-fun lt!2291090 () Unit!156690)

(assert (=> b!5770180 (= lt!2291090 call!444431)))

(assert (=> b!5770180 (= call!444316 call!444289)))

(declare-fun lt!2291029 () Unit!156690)

(assert (=> b!5770180 (= lt!2291029 call!444392)))

(assert (=> b!5770180 (= call!444354 call!444460)))

(declare-fun lt!2291034 () Unit!156690)

(assert (=> b!5770180 (= lt!2291034 call!444291)))

(assert (=> b!5770180 (= lt!2291065 call!444344)))

(declare-fun lt!2291001 () Bool)

(assert (=> b!5770180 (= lt!2291001 call!444428)))

(declare-fun lt!2291171 () Unit!156690)

(assert (=> b!5770180 (= lt!2291171 call!444413)))

(declare-fun call!444408 () Bool)

(assert (=> b!5770180 (= lt!2291001 call!444408)))

(assert (=> b!5770180 (= lt!2291001 call!444480)))

(declare-fun lt!2291120 () Unit!156690)

(assert (=> b!5770180 (= lt!2291120 call!444477)))

(assert (=> b!5770180 (= lt!2291128 call!444338)))

(declare-fun call!444433 () (InoxSet Context!10338))

(assert (=> b!5770180 (= call!444433 call!444415)))

(declare-fun lt!2291066 () Unit!156690)

(assert (=> b!5770180 (= lt!2291066 call!444416)))

(declare-fun lt!2291126 () (InoxSet Context!10338))

(assert (=> b!5770180 (= lt!2291126 call!444415)))

(assert (=> b!5770180 (= lt!2291014 (store ((as const (Array Context!10338 Bool)) false) lt!2291165 true))))

(declare-fun lt!2291061 () List!63655)

(assert (=> b!5770180 (= lt!2291165 (Context!10339 lt!2291061))))

(assert (=> b!5770180 (= lt!2291061 (Cons!63531 (regOne!32082 (regOne!32082 r!7292)) lt!2291096))))

(declare-fun lt!2291155 () (InoxSet Context!10338))

(declare-fun call!444427 () (InoxSet Context!10338))

(assert (=> b!5770180 (= lt!2291155 call!444427)))

(assert (=> b!5770180 (= lt!2291096 (Cons!63531 (regTwo!32082 (regOne!32082 r!7292)) (t!376993 (exprs!5669 (h!69980 zl!343)))))))

(declare-fun Unit!156704 () Unit!156690)

(assert (=> b!5770180 (= e!3544830 Unit!156704)))

(declare-fun bm!444447 () Bool)

(assert (=> bm!444447 (= call!444411 call!444406)))

(declare-fun bm!444448 () Bool)

(assert (=> bm!444448 (= call!444473 (lemmaTwoRegexMatchThenConcatMatchesConcatString!290 (reg!16114 (regOne!32082 r!7292)) lt!2291050 (ite c!1020250 (_1!36185 lt!2291010) (_1!36185 lt!2291107)) (ite c!1020250 lt!2291088 (_2!36185 lt!2291107))))))

(declare-fun bm!444449 () Bool)

(assert (=> bm!444449 (= call!444352 call!444434)))

(declare-fun bm!444450 () Bool)

(assert (=> bm!444450 (= call!444386 call!444475)))

(declare-fun bm!444451 () Bool)

(declare-fun call!444327 () Bool)

(assert (=> bm!444451 (= call!444327 call!444437)))

(declare-fun bm!444452 () Bool)

(assert (=> bm!444452 (= call!444299 (matchRSpec!2888 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292))))) (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (_1!36185 lt!2291163) s!2326))))))

(declare-fun bm!444453 () Bool)

(declare-fun lemmaEmptyZipperMatchesNothing!70 ((InoxSet Context!10338) List!63654) Unit!156690)

(assert (=> bm!444453 (= call!444468 (lemmaEmptyZipperMatchesNothing!70 lt!2290998 (t!376992 s!2326)))))

(declare-fun b!5770181 () Bool)

(declare-fun tp!1594255 () Bool)

(assert (=> b!5770181 (= e!3544834 tp!1594255)))

(declare-fun bm!444454 () Bool)

(declare-fun call!444379 () (InoxSet Context!10338))

(assert (=> bm!444454 (= call!444415 call!444379)))

(declare-fun bm!444455 () Bool)

(declare-fun call!444363 () (InoxSet Context!10338))

(assert (=> bm!444455 (= call!444363 call!444439)))

(declare-fun bm!444456 () Bool)

(assert (=> bm!444456 (= call!444462 call!444326)))

(declare-fun b!5770182 () Bool)

(assert (=> b!5770182 (= e!3544824 false)))

(declare-fun b!5770183 () Bool)

(declare-fun lt!2291017 () Bool)

(assert (=> b!5770183 (not lt!2291017)))

(declare-fun lt!2291157 () Unit!156690)

(assert (=> b!5770183 (= lt!2291157 e!3544839)))

(declare-fun c!1020253 () Bool)

(assert (=> b!5770183 (= c!1020253 lt!2291017)))

(assert (=> b!5770183 (= lt!2291017 call!444328)))

(declare-fun Unit!156705 () Unit!156690)

(assert (=> b!5770183 (= e!3544836 Unit!156705)))

(declare-fun bm!444457 () Bool)

(assert (=> bm!444457 (= call!444419 call!444452)))

(declare-fun bm!444458 () Bool)

(assert (=> bm!444458 (= call!444356 (matchR!7970 (ite c!1020249 lt!2291057 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 (ite c!1020250 (reg!16114 (regOne!32082 r!7292)) (ite c!1020244 lt!2291050 lt!2291139)) lt!2290999)))) (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (ite c!1020250 (_1!36185 lt!2291010) (ite c!1020244 (_2!36185 lt!2291107) s!2326)) s!2326))))))

(declare-fun bm!444459 () Bool)

(assert (=> bm!444459 (= call!444320 call!444290)))

(declare-fun bm!444460 () Bool)

(declare-fun call!444454 () Bool)

(assert (=> bm!444460 (= call!444434 call!444454)))

(declare-fun bm!444461 () Bool)

(assert (=> bm!444461 (= call!444490 call!444380)))

(declare-fun bm!444462 () Bool)

(assert (=> bm!444462 (= call!444290 (mainMatchTheorem!2888 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292))))) s!2326))))

(declare-fun bm!444463 () Bool)

(assert (=> bm!444463 (= call!444483 (++!13998 (ite c!1020250 (_1!36185 lt!2291010) (_2!36185 lt!2291169)) (ite c!1020250 (_2!36185 lt!2291010) (_2!36185 lt!2291163))))))

(declare-fun bm!444464 () Bool)

(assert (=> bm!444464 (= call!444487 (derivationStepZipperDown!1127 (ite c!1020249 (regOne!32083 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))) lt!2291089 (h!69978 s!2326)))))

(declare-fun b!5770184 () Bool)

(declare-fun Unit!156706 () Unit!156690)

(assert (=> b!5770184 (= e!3544851 Unit!156706)))

(assert (=> b!5770184 (= lt!2291167 (regOne!32082 r!7292))))

(assert (=> b!5770184 (= lt!2291047 (Cons!63531 lt!2291167 (t!376993 (exprs!5669 (h!69980 zl!343)))))))

(assert (=> b!5770184 (= lt!2290989 (Context!10339 (Cons!63531 (reg!16114 (regOne!32082 r!7292)) lt!2291047)))))

(assert (=> b!5770184 (= lt!2291113 (store ((as const (Array Context!10338 Bool)) false) lt!2290989 true))))

(declare-fun lt!2291134 () (InoxSet Context!10338))

(assert (=> b!5770184 (= lt!2291134 (derivationStepZipperUp!1053 lt!2290989 (h!69978 s!2326)))))

(declare-fun lt!2290982 () Unit!156690)

(assert (=> b!5770184 (= lt!2290982 call!444342)))

(assert (=> b!5770184 (= (flatMap!1398 lt!2291113 lambda!313681) (derivationStepZipperUp!1053 lt!2290989 (h!69978 s!2326)))))

(assert (=> b!5770184 (= lt!2291151 (Context!10339 lt!2291047))))

(declare-fun lt!2291031 () (InoxSet Context!10338))

(assert (=> b!5770184 (= lt!2291031 call!444427)))

(assert (=> b!5770184 (= lt!2291050 (Concat!24630 lt!2291167 (regTwo!32082 r!7292)))))

(assert (=> b!5770184 (= lt!2291158 (Concat!24630 (reg!16114 (regOne!32082 r!7292)) lt!2291050))))

(assert (=> b!5770184 (= lt!2291074 (Cons!63531 (reg!16114 (regOne!32082 r!7292)) Nil!63531))))

(assert (=> b!5770184 (= lt!2291103 (Context!10339 lt!2291074))))

(assert (=> b!5770184 (= lt!2291003 (store ((as const (Array Context!10338 Bool)) false) lt!2291103 true))))

(assert (=> b!5770184 (= lt!2291168 (store ((as const (Array Context!10338 Bool)) false) lt!2291151 true))))

(declare-fun lt!2291124 () (InoxSet Context!10338))

(assert (=> b!5770184 (= lt!2291124 (derivationStepZipperUp!1053 lt!2291103 (h!69978 s!2326)))))

(declare-fun lt!2291110 () (InoxSet Context!10338))

(declare-fun call!444324 () (InoxSet Context!10338))

(assert (=> b!5770184 (= lt!2291110 call!444324)))

(declare-fun lt!2291152 () Unit!156690)

(assert (=> b!5770184 (= lt!2291152 call!444399)))

(assert (=> b!5770184 (= call!444472 (derivationStepZipperUp!1053 lt!2291103 (h!69978 s!2326)))))

(declare-fun lt!2291162 () Unit!156690)

(assert (=> b!5770184 (= lt!2291162 (lemmaFlatMapOnSingletonSet!930 lt!2291168 lt!2291151 lambda!313681))))

(assert (=> b!5770184 (= call!444433 call!444324)))

(declare-fun lt!2291175 () Unit!156690)

(assert (=> b!5770184 (= lt!2291175 call!444403)))

(assert (=> b!5770184 (= lt!2291115 call!444480)))

(declare-fun res!2435176 () Bool)

(assert (=> b!5770184 (= res!2435176 (= lt!2291115 call!444470))))

(assert (=> b!5770184 (=> (not res!2435176) (not e!3544846))))

(assert (=> b!5770184 e!3544846))

(assert (=> b!5770184 (= c!1020250 lt!2291154)))

(declare-fun lt!2291045 () Unit!156690)

(assert (=> b!5770184 (= lt!2291045 e!3544836)))

(assert (=> b!5770184 (= lt!2291154 call!444380)))

(declare-fun b!5770185 () Bool)

(assert (=> b!5770185 (= e!3544844 call!444347)))

(declare-fun bm!444465 () Bool)

(assert (=> bm!444465 (= call!444408 call!444327)))

(declare-fun bm!444466 () Bool)

(assert (=> bm!444466 (= call!444436 call!444364)))

(declare-fun bm!444467 () Bool)

(assert (=> bm!444467 (= call!444287 call!444459)))

(declare-fun b!5770186 () Bool)

(assert (=> b!5770186 (= e!3544851 e!3544850)))

(assert (=> b!5770186 (= c!1020246 ((_ is EmptyExpr!15785) (regOne!32082 r!7292)))))

(declare-fun b!5770187 () Bool)

(declare-fun e!3544837 () Bool)

(assert (=> b!5770187 (= e!3544837 false)))

(declare-fun b!5770188 () Bool)

(declare-fun Unit!156707 () Unit!156690)

(assert (=> b!5770188 (= e!3544839 Unit!156707)))

(declare-fun Unit!156708 () Unit!156690)

(assert (=> b!5770189 (= e!3544823 Unit!156708)))

(declare-fun lt!2291127 () List!63655)

(assert (=> b!5770189 (= lt!2291127 (Cons!63531 (regTwo!32082 (regOne!32082 r!7292)) (t!376993 (exprs!5669 (h!69980 zl!343)))))))

(assert (=> b!5770189 (= lt!2291007 (Context!10339 lt!2291127))))

(assert (=> b!5770189 (= lt!2291179 call!444444)))

(assert (=> b!5770189 (= lt!2291150 call!444487)))

(declare-fun lt!2291102 () Unit!156690)

(assert (=> b!5770189 (= lt!2291102 call!444375)))

(declare-fun lt!2291143 () Bool)

(assert (=> b!5770189 (= lt!2291143 call!444384)))

(declare-fun res!2435175 () Bool)

(assert (=> b!5770189 (= res!2435175 lt!2291143)))

(assert (=> b!5770189 (=> res!2435175 e!3544845)))

(assert (=> b!5770189 (= call!444327 e!3544845)))

(assert (=> b!5770189 (= lt!2291164 (Cons!63531 (regOne!32082 (regOne!32082 r!7292)) lt!2291127))))

(assert (=> b!5770189 (= lt!2291008 (Context!10339 lt!2291164))))

(assert (=> b!5770189 (= lt!2290993 (store ((as const (Array Context!10338 Bool)) false) lt!2291008 true))))

(assert (=> b!5770189 (= lt!2291026 (store ((as const (Array Context!10338 Bool)) false) lt!2291007 true))))

(declare-fun lt!2291055 () (InoxSet Context!10338))

(assert (=> b!5770189 (= lt!2291055 call!444379)))

(declare-fun lt!2291011 () Unit!156690)

(assert (=> b!5770189 (= lt!2291011 call!444349)))

(assert (=> b!5770189 (= call!444363 call!444379)))

(assert (=> b!5770189 (= lt!2291101 call!444324)))

(declare-fun lt!2291060 () Unit!156690)

(assert (=> b!5770189 (= lt!2291060 call!444399)))

(assert (=> b!5770189 (= call!444366 call!444324)))

(declare-fun lt!2291138 () Unit!156690)

(assert (=> b!5770189 (= lt!2291138 call!444322)))

(declare-fun res!2435169 () Bool)

(assert (=> b!5770189 (= res!2435169 lt!2291143)))

(assert (=> b!5770189 (=> res!2435169 e!3544852)))

(assert (=> b!5770189 (= call!444369 e!3544852)))

(assert (=> b!5770189 (= lt!2291046 call!444344)))

(declare-fun lt!2291136 () Unit!156690)

(assert (=> b!5770189 (= lt!2291136 call!444441)))

(declare-fun lt!2291117 () Bool)

(assert (=> b!5770189 (= lt!2291117 call!444395)))

(assert (=> b!5770189 (= lt!2291117 call!444347)))

(assert (=> b!5770189 (= lt!2291182 call!444338)))

(declare-fun lt!2291049 () Unit!156690)

(assert (=> b!5770189 (= lt!2291049 call!444389)))

(declare-fun lt!2291048 () Bool)

(assert (=> b!5770189 (= lt!2291048 call!444467)))

(assert (=> b!5770189 (= lt!2291048 call!444319)))

(declare-fun lt!2291085 () Unit!156690)

(assert (=> b!5770189 (= lt!2291085 call!444359)))

(assert (=> b!5770189 (= lt!2291117 call!444430)))

(declare-fun lt!2291086 () Unit!156690)

(assert (=> b!5770189 (= lt!2291086 call!444449)))

(assert (=> b!5770189 (= call!444376 call!444401)))

(declare-fun lt!2291137 () Unit!156690)

(assert (=> b!5770189 (= lt!2291137 call!444321)))

(assert (=> b!5770189 (= call!444330 call!444385)))

(declare-fun lt!2291056 () Unit!156690)

(assert (=> b!5770189 (= lt!2291056 call!444320)))

(assert (=> b!5770189 (= lt!2291048 call!444292)))

(assert (=> b!5770189 (= lt!2291109 call!444404)))

(declare-fun lt!2291063 () Unit!156690)

(assert (=> b!5770189 (= lt!2291063 call!444357)))

(assert (=> b!5770189 (= call!444429 call!444303)))

(declare-fun lt!2291021 () Unit!156690)

(assert (=> b!5770189 (= lt!2291021 call!444370)))

(assert (=> b!5770189 (= call!444489 call!444454)))

(declare-fun lt!2291018 () Unit!156690)

(assert (=> b!5770189 (= lt!2291018 call!444456)))

(declare-fun res!2435172 () Bool)

(assert (=> b!5770189 (= res!2435172 (= call!444414 call!444305))))

(assert (=> b!5770189 (=> (not res!2435172) (not e!3544820))))

(assert (=> b!5770189 e!3544820))

(declare-fun bm!444468 () Bool)

(assert (=> bm!444468 (= call!444362 call!444317)))

(declare-fun bm!444469 () Bool)

(assert (=> bm!444469 (= call!444379 call!444367)))

(declare-fun bm!444470 () Bool)

(assert (=> bm!444470 (= call!444380 call!444408)))

(declare-fun bm!444471 () Bool)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!566 (Regex!15785 List!63654) Unit!156690)

(assert (=> bm!444471 (= call!444424 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!566 (reg!16114 (regOne!32082 r!7292)) (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530))))))

(declare-fun bm!444472 () Bool)

(assert (=> bm!444472 (= call!444410 call!444314)))

(declare-fun b!5770190 () Bool)

(declare-fun Unit!156709 () Unit!156690)

(assert (=> b!5770190 (= e!3544826 Unit!156709)))

(assert (=> b!5770190 (= lt!2291095 (store ((as const (Array Context!10338 Bool)) false) lt!2291089 true))))

(assert (=> b!5770190 (= lt!2291083 call!444479)))

(declare-fun lt!2290990 () Unit!156690)

(assert (=> b!5770190 (= lt!2290990 call!444432)))

(assert (=> b!5770190 (= call!444406 call!444448)))

(declare-fun bm!444473 () Bool)

(assert (=> bm!444473 (= call!444427 call!444444)))

(declare-fun bm!444474 () Bool)

(assert (=> bm!444474 (= call!444353 call!444354)))

(declare-fun bm!444475 () Bool)

(assert (=> bm!444475 (= call!444307 (mainMatchTheorem!2888 (ite c!1020249 lt!2291178 lt!2291180) s!2326))))

(declare-fun bm!444476 () Bool)

(assert (=> bm!444476 (= call!444433 call!444363)))

(declare-fun b!5770191 () Bool)

(assert (=> b!5770191 (= e!3544823 e!3544830)))

(assert (=> b!5770191 (= c!1020252 ((_ is Concat!24630) (regOne!32082 r!7292)))))

(declare-fun bm!444477 () Bool)

(assert (=> bm!444477 (= call!444454 (Exists!2885 (ite c!1020242 lambda!313685 (ite c!1020250 lambda!313692 (ite c!1020244 lambda!313700 lambda!313705)))))))

(declare-fun b!5770192 () Bool)

(assert (=> b!5770192 e!3544842))

(declare-fun res!2435170 () Bool)

(assert (=> b!5770192 (=> (not res!2435170) (not e!3544842))))

(assert (=> b!5770192 (= res!2435170 (= call!444469 call!444471))))

(declare-fun lt!2291129 () Unit!156690)

(assert (=> b!5770192 (= lt!2291129 call!444396)))

(assert (=> b!5770192 (= call!444407 call!444300)))

(declare-fun lt!2291099 () Unit!156690)

(assert (=> b!5770192 (= lt!2291099 call!444362)))

(assert (=> b!5770192 (not call!444388)))

(declare-fun lt!2291040 () Unit!156690)

(assert (=> b!5770192 (= lt!2291040 call!444468)))

(declare-fun Unit!156710 () Unit!156690)

(assert (=> b!5770192 (= e!3544850 Unit!156710)))

(declare-fun bm!444478 () Bool)

(assert (=> bm!444478 (= call!444383 (matchZipper!1923 (ite c!1020249 ((_ map or) lt!2291059 lt!2291005) (ite c!1020242 lt!2291150 (ite c!1020248 lt!2291168 lt!2290998))) (ite (or c!1020249 c!1020242) (t!376992 s!2326) (ite c!1020248 (ite c!1020250 lt!2291088 (_2!36185 lt!2291107)) (t!376992 s!2326)))))))

(declare-fun bm!444479 () Bool)

(assert (=> bm!444479 (= call!444479 (generalisedConcat!1400 (ite c!1020247 (t!376993 (exprs!5669 (h!69980 zl!343))) (ite c!1020242 lt!2291127 lt!2291061))))))

(assert (=> b!5770193 e!3544837))

(declare-fun res!2435173 () Bool)

(assert (=> b!5770193 (=> (not res!2435173) (not e!3544837))))

(declare-fun lt!2291038 () List!63654)

(assert (=> b!5770193 (= res!2435173 (matchR!7970 lt!2291050 lt!2291038))))

(declare-fun lt!2291123 () Unit!156690)

(assert (=> b!5770193 (= lt!2291123 call!444474)))

(assert (=> b!5770193 call!444333))

(declare-fun lt!2291173 () Unit!156690)

(assert (=> b!5770193 (= lt!2291173 call!444372)))

(assert (=> b!5770193 (= lt!2291038 call!444453)))

(assert (=> b!5770193 (= lt!2291038 (++!13998 lt!2291141 (_2!36185 lt!2291163)))))

(assert (=> b!5770193 (= lt!2291012 call!444483)))

(assert (=> b!5770193 (= lt!2291141 call!444485)))

(declare-fun lt!2291039 () Unit!156690)

(assert (=> b!5770193 (= lt!2291039 call!444296)))

(assert (=> b!5770193 (= lt!2291169 call!444337)))

(assert (=> b!5770193 (= call!444491 call!444420)))

(declare-fun lt!2291069 () Unit!156690)

(assert (=> b!5770193 (= lt!2291069 call!444377)))

(assert (=> b!5770193 (= call!444302 call!444422)))

(declare-fun lt!2291023 () Unit!156690)

(assert (=> b!5770193 (= lt!2291023 call!444286)))

(assert (=> b!5770193 (= call!444393 call!444352)))

(assert (=> b!5770193 (= lt!2290997 call!444345)))

(declare-fun lt!2290987 () Unit!156690)

(assert (=> b!5770193 (= lt!2290987 call!444481)))

(assert (=> b!5770193 (= call!444374 call!444394)))

(declare-fun lt!2291044 () Unit!156690)

(assert (=> b!5770193 (= lt!2291044 call!444387)))

(assert (=> b!5770193 (= lt!2291163 (get!21923 lt!2291004))))

(assert (=> b!5770193 (= call!444400 call!444312)))

(declare-fun lt!2291020 () Unit!156690)

(assert (=> b!5770193 (= lt!2291020 call!444382)))

(assert (=> b!5770193 (= call!444353 call!444484)))

(assert (=> b!5770193 (= lt!2291004 call!444438)))

(declare-fun lt!2291064 () Unit!156690)

(assert (=> b!5770193 (= lt!2291064 call!444442)))

(assert (=> b!5770193 call!444304))

(declare-fun lt!2290985 () Unit!156690)

(assert (=> b!5770193 (= lt!2290985 call!444307)))

(assert (=> b!5770193 call!444417))

(assert (=> b!5770193 (= lt!2291180 (Concat!24630 lt!2291100 (regTwo!32082 r!7292)))))

(assert (=> b!5770193 (= lt!2291100 (Concat!24630 (reg!16114 (regOne!32082 r!7292)) lt!2291167))))

(declare-fun lt!2291091 () Unit!156690)

(assert (=> b!5770193 (= lt!2291091 call!444323)))

(assert (=> b!5770193 e!3544840))

(declare-fun res!2435161 () Bool)

(assert (=> b!5770193 (=> (not res!2435161) (not e!3544840))))

(assert (=> b!5770193 (= res!2435161 call!444288)))

(declare-fun lt!2291153 () Unit!156690)

(assert (=> b!5770193 (= lt!2291153 call!444473)))

(assert (=> b!5770193 (= call!444440 call!444435)))

(declare-fun lt!2291027 () Unit!156690)

(assert (=> b!5770193 (= lt!2291027 call!444421)))

(assert (=> b!5770193 (= call!444443 call!444409)))

(declare-fun lt!2291079 () Unit!156690)

(assert (=> b!5770193 (= lt!2291079 call!444436)))

(assert (=> b!5770193 call!444314))

(assert (=> b!5770193 (= lt!2291097 call!444348)))

(assert (=> b!5770193 (= lt!2291172 call!444463)))

(declare-fun lt!2291068 () Unit!156690)

(assert (=> b!5770193 (= lt!2291068 call!444402)))

(declare-fun lt!2291119 () Unit!156690)

(assert (=> b!5770193 (= lt!2291119 call!444325)))

(assert (=> b!5770193 (= lt!2291107 call!444360)))

(assert (=> b!5770193 (isDefined!12497 lt!2291087)))

(declare-fun findConcatSeparationZippers!138 ((InoxSet Context!10338) (InoxSet Context!10338) List!63654 List!63654 List!63654) Option!15794)

(assert (=> b!5770193 (= lt!2291087 (findConcatSeparationZippers!138 lt!2291003 lt!2291168 Nil!63530 s!2326 s!2326))))

(declare-fun lt!2291108 () Unit!156690)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!138 ((InoxSet Context!10338) Context!10338 List!63654) Unit!156690)

(assert (=> b!5770193 (= lt!2291108 (lemmaConcatZipperMatchesStringThenFindConcatDefined!138 lt!2291003 lt!2291151 s!2326))))

(declare-fun lambda!313696 () Int)

(declare-fun map!14564 ((InoxSet Context!10338) Int) (InoxSet Context!10338))

(assert (=> b!5770193 (= (map!14564 lt!2291003 lambda!313696) (store ((as const (Array Context!10338 Bool)) false) (Context!10339 call!444463) true))))

(declare-fun lt!2291019 () Unit!156690)

(assert (=> b!5770193 (= lt!2291019 call!444378)))

(declare-fun lt!2291053 () Unit!156690)

(declare-fun lemmaMapOnSingletonSet!146 ((InoxSet Context!10338) Context!10338 Int) Unit!156690)

(assert (=> b!5770193 (= lt!2291053 (lemmaMapOnSingletonSet!146 lt!2291003 lt!2291103 lambda!313696))))

(declare-fun Unit!156711 () Unit!156690)

(assert (=> b!5770193 (= e!3544855 Unit!156711)))

(declare-fun bm!444480 () Bool)

(assert (=> bm!444480 (= call!444409 call!444361)))

(declare-fun bm!444481 () Bool)

(assert (=> bm!444481 (= call!444389 call!444450)))

(declare-fun bm!444482 () Bool)

(assert (=> bm!444482 (= call!444446 (flatMap!1398 (ite c!1020249 lt!2291146 (ite c!1020242 lt!2291026 (ite c!1020248 lt!2291003 lt!2291159))) (ite c!1020249 lambda!313681 (ite c!1020242 lambda!313681 (ite c!1020248 lambda!313681 lambda!313681)))))))

(declare-fun bm!444483 () Bool)

(assert (=> bm!444483 (= call!444438 call!444492)))

(declare-fun setIsEmpty!38781 () Bool)

(assert (=> setIsEmpty!38781 setRes!38781))

(declare-fun bm!444484 () Bool)

(assert (=> bm!444484 (= call!444394 call!444308)))

(declare-fun bm!444485 () Bool)

(assert (=> bm!444485 (= call!444451 call!444301)))

(declare-fun bm!444486 () Bool)

(assert (=> bm!444486 (= call!444324 call!444335)))

(declare-fun bm!444487 () Bool)

(assert (=> bm!444487 (= call!444334 call!444297)))

(assert (= (and start!592608 res!2435162) b!5770172))

(assert (= (and b!5770172 res!2435166) b!5770176))

(assert (= (and b!5770176 res!2435163) b!5770167))

(assert (= (and b!5770167 (not res!2435184)) b!5770140))

(assert (= (and b!5770140 (not res!2435181)) b!5770164))

(assert (= (and b!5770164 (not res!2435167)) b!5770161))

(assert (= (and b!5770161 (not res!2435165)) b!5770163))

(assert (= (and b!5770163 (not res!2435180)) b!5770152))

(assert (= (and b!5770152 (not res!2435178)) b!5770169))

(assert (= (and b!5770169 (not res!2435185)) b!5770171))

(assert (= (and b!5770171 (not res!2435174)) b!5770153))

(assert (= (and b!5770153 c!1020254) b!5770133))

(assert (= (and b!5770153 (not c!1020254)) b!5770156))

(assert (= (and b!5770133 (not res!2435179)) b!5770165))

(assert (= (and b!5770153 c!1020247) b!5770190))

(assert (= (and b!5770153 (not c!1020247)) b!5770142))

(assert (= (and b!5770142 c!1020249) b!5770135))

(assert (= (and b!5770142 (not c!1020249)) b!5770149))

(assert (= (and b!5770135 (not res!2435168)) b!5770146))

(assert (= (and b!5770135 c!1020251) b!5770175))

(assert (= (and b!5770135 (not c!1020251)) b!5770148))

(assert (= (and b!5770175 (not res!2435164)) b!5770137))

(assert (= (and b!5770135 c!1020245) b!5770141))

(assert (= (and b!5770135 (not c!1020245)) b!5770179))

(assert (= (and b!5770141 (not res!2435186)) b!5770185))

(assert (= (and b!5770135 res!2435177) b!5770170))

(assert (= (and b!5770149 res!2435183) b!5770132))

(assert (= (and b!5770149 c!1020242) b!5770189))

(assert (= (and b!5770149 (not c!1020242)) b!5770191))

(assert (= (and b!5770189 (not res!2435175)) b!5770138))

(assert (= (and b!5770189 (not res!2435169)) b!5770168))

(assert (= (and b!5770189 res!2435172) b!5770155))

(assert (= (and b!5770191 c!1020252) b!5770180))

(assert (= (and b!5770191 (not c!1020252)) b!5770154))

(assert (= (and b!5770180 res!2435171) b!5770139))

(assert (= (and b!5770154 c!1020248) b!5770184))

(assert (= (and b!5770154 (not c!1020248)) b!5770186))

(assert (= (and b!5770184 res!2435176) b!5770160))

(assert (= (and b!5770184 c!1020250) b!5770157))

(assert (= (and b!5770184 (not c!1020250)) b!5770183))

(assert (= (and b!5770157 c!1020243) b!5770143))

(assert (= (and b!5770157 (not c!1020243)) b!5770177))

(assert (= (and b!5770143 res!2435187) b!5770131))

(assert (= (and b!5770177 res!2435188) b!5770147))

(assert (= (or b!5770143 b!5770177) bm!444376))

(assert (= (or b!5770143 b!5770177) bm!444364))

(assert (= (or b!5770143 b!5770177) bm!444352))

(assert (= (or b!5770131 b!5770177) bm!444472))

(assert (= (and b!5770183 c!1020253) b!5770174))

(assert (= (and b!5770183 (not c!1020253)) b!5770188))

(assert (= (and b!5770174 c!1020244) b!5770193))

(assert (= (and b!5770174 (not c!1020244)) b!5770173))

(assert (= (and b!5770193 res!2435161) b!5770150))

(assert (= (and b!5770193 res!2435173) b!5770187))

(assert (= (and b!5770173 res!2435182) b!5770182))

(assert (= (or b!5770193 b!5770173) bm!444387))

(assert (= (or b!5770193 b!5770173) bm!444332))

(assert (= (or b!5770193 b!5770173) bm!444281))

(assert (= (or b!5770193 b!5770173) bm!444374))

(assert (= (or b!5770193 b!5770173) bm!444326))

(assert (= (or b!5770193 b!5770173) bm!444323))

(assert (= (or b!5770193 b!5770173) bm!444409))

(assert (= (or b!5770193 b!5770173) bm!444449))

(assert (= (or b!5770193 b!5770173) bm!444480))

(assert (= (or b!5770193 b!5770173) bm!444389))

(assert (= (or b!5770193 b!5770173) bm!444379))

(assert (= (or b!5770193 b!5770173) bm!444439))

(assert (= (or b!5770193 b!5770173) bm!444358))

(assert (= (or b!5770193 b!5770173) bm!444466))

(assert (= (or b!5770193 b!5770173) bm!444420))

(assert (= (or b!5770193 b!5770173) bm!444429))

(assert (= (or b!5770193 b!5770173) bm!444418))

(assert (= (or b!5770193 b!5770173) bm!444408))

(assert (= (or b!5770193 b!5770173) bm!444360))

(assert (= (or b!5770157 b!5770193) bm!444282))

(assert (= (or b!5770177 bm!444358) bm!444471))

(assert (= (or b!5770177 bm!444429) bm!444487))

(assert (= (or b!5770177 bm!444449) bm!444460))

(assert (= (or b!5770157 b!5770193) bm!444483))

(assert (= (or b!5770177 b!5770193) bm!444406))

(assert (= (or b!5770143 b!5770173) bm!444416))

(assert (= (or b!5770177 b!5770193) bm!444368))

(assert (= (or b!5770157 b!5770183) bm!444361))

(assert (= (or b!5770177 b!5770193) bm!444336))

(assert (= (or b!5770177 b!5770193) bm!444474))

(assert (= (or b!5770177 bm!444409) bm!444305))

(assert (= (or b!5770177 bm!444374) bm!444403))

(assert (= (or bm!444352 b!5770174) bm!444402))

(assert (= (or b!5770177 b!5770193) bm!444414))

(assert (= (or b!5770157 bm!444323) bm!444301))

(assert (= (or bm!444364 bm!444466) bm!444327))

(assert (= (or b!5770177 b!5770193) bm!444378))

(assert (= (or b!5770177 bm!444420) bm!444467))

(assert (= (or b!5770157 b!5770193) bm!444366))

(assert (= (or b!5770177 bm!444387) bm!444355))

(assert (= (or b!5770177 b!5770193) bm!444394))

(assert (= (or b!5770177 bm!444379) bm!444367))

(assert (= (or bm!444376 bm!444389) bm!444331))

(assert (= (or b!5770177 b!5770193) bm!444384))

(assert (= (or b!5770177 b!5770193) bm!444448))

(assert (= (or b!5770143 b!5770173) bm!444457))

(assert (= (or b!5770157 b!5770193) bm!444294))

(assert (= (or b!5770157 bm!444360) bm!444456))

(assert (= (or bm!444472 b!5770193) bm!444351))

(assert (= (or b!5770177 b!5770193) bm!444370))

(assert (= (or b!5770177 bm!444332) bm!444341))

(assert (= (or b!5770143 b!5770173) bm!444411))

(assert (= (or b!5770177 b!5770193) bm!444348))

(assert (= (or b!5770177 b!5770193) bm!444333))

(assert (= (or b!5770177 b!5770193) bm!444290))

(assert (= (or b!5770177 bm!444439) bm!444485))

(assert (= (or b!5770177 b!5770193) bm!444417))

(assert (= (or b!5770143 b!5770173) bm!444428))

(assert (= (or b!5770177 b!5770193) bm!444349))

(assert (= (or b!5770177 b!5770193) bm!444435))

(assert (= (or b!5770177 b!5770193) bm!444404))

(assert (= (or b!5770177 b!5770193) bm!444421))

(assert (= (or b!5770177 b!5770193) bm!444312))

(assert (= (or b!5770157 bm!444326) bm!444299))

(assert (= (or b!5770177 b!5770193) bm!444463))

(assert (= (or b!5770177 bm!444281) bm!444346))

(assert (= (or b!5770157 bm!444418) bm!444287))

(assert (= (or b!5770177 bm!444480) bm!444444))

(assert (= (and b!5770186 c!1020246) b!5770136))

(assert (= (and b!5770186 (not c!1020246)) b!5770192))

(assert (= (and b!5770136 res!2435189) b!5770158))

(assert (= (and b!5770192 res!2435170) b!5770134))

(assert (= (or b!5770136 b!5770192) bm!444468))

(assert (= (or b!5770158 b!5770134) bm!444461))

(assert (= (or b!5770136 b!5770192) bm!444400))

(assert (= (or b!5770136 b!5770192) bm!444283))

(assert (= (or b!5770136 b!5770192) bm!444337))

(assert (= (or b!5770136 b!5770192) bm!444382))

(assert (= (or b!5770136 b!5770192) bm!444356))

(assert (= (or b!5770136 b!5770192) bm!444453))

(assert (= (or b!5770136 b!5770192) bm!444362))

(assert (= (or bm!444411 b!5770136) bm!444328))

(assert (= (or b!5770184 bm!444382) bm!444392))

(assert (= (or bm!444361 b!5770184 bm!444461) bm!444470))

(assert (= (or bm!444305 bm!444468) bm!444313))

(assert (= (or bm!444444 b!5770136) bm!444345))

(assert (= (or bm!444402 bm!444362) bm!444309))

(assert (= (or b!5770193 bm!444356) bm!444484))

(assert (= (or b!5770184 b!5770136) bm!444369))

(assert (= (or bm!444403 b!5770136) bm!444310))

(assert (= (or bm!444351 b!5770136) bm!444344))

(assert (= (or bm!444348 b!5770136) bm!444288))

(assert (= (or bm!444327 b!5770136) bm!444297))

(assert (= (or bm!444331 bm!444283) bm!444330))

(assert (= (or bm!444404 bm!444400) bm!444285))

(assert (= (or bm!444428 b!5770136) bm!444317))

(assert (= (or b!5770184 bm!444337) bm!444396))

(assert (= (or bm!444457 b!5770136) bm!444390))

(assert (= (or b!5770180 bm!444299) bm!444413))

(assert (= (or b!5770180 bm!444406) bm!444405))

(assert (= (or b!5770180 bm!444366) bm!444430))

(assert (= (or b!5770180 bm!444396) bm!444329))

(assert (= (or b!5770180 bm!444282) bm!444291))

(assert (= (or b!5770180 bm!444467) bm!444303))

(assert (= (or b!5770180 bm!444355) bm!444335))

(assert (= (or b!5770180 bm!444297) bm!444443))

(assert (= (or b!5770180 bm!444310) bm!444375))

(assert (= (or b!5770180 b!5770184) bm!444476))

(assert (= (or b!5770180 b!5770193) bm!444419))

(assert (= (or b!5770180 bm!444483) bm!444371))

(assert (= (or b!5770180 bm!444287) bm!444293))

(assert (= (or b!5770180 bm!444470) bm!444465))

(assert (= (or b!5770180 bm!444312) bm!444385))

(assert (= (or b!5770180 bm!444333) bm!444286))

(assert (= (or b!5770180 bm!444417) bm!444357))

(assert (= (or b!5770180 bm!444392) bm!444425))

(assert (= (or b!5770180 b!5770184) bm!444372))

(assert (= (or b!5770180 b!5770184) bm!444473))

(assert (= (or b!5770180 bm!444317) bm!444454))

(assert (= (or b!5770139 bm!444309) bm!444450))

(assert (= (or b!5770180 bm!444484) bm!444308))

(assert (= (or b!5770180 bm!444313) bm!444322))

(assert (= (or b!5770180 bm!444328) bm!444422))

(assert (= (or b!5770180 bm!444390) bm!444386))

(assert (= (or b!5770180 bm!444346) bm!444353))

(assert (= (or b!5770180 bm!444330) bm!444319))

(assert (= (or b!5770180 bm!444485) bm!444437))

(assert (= (or b!5770180 bm!444474) bm!444320))

(assert (= (or b!5770180 bm!444456) bm!444311))

(assert (= (or b!5770189 bm!444465) bm!444451))

(assert (= (or b!5770189 bm!444385) bm!444424))

(assert (= (or b!5770189 bm!444460) bm!444477))

(assert (= (or b!5770189 bm!444308) bm!444391))

(assert (= (or b!5770189 bm!444405) bm!444292))

(assert (= (or b!5770189 bm!444476) bm!444455))

(assert (= (or b!5770189 b!5770136) bm!444316))

(assert (= (or b!5770189 bm!444419) bm!444436))

(assert (= (or b!5770189 bm!444344) bm!444442))

(assert (= (or b!5770155 bm!444450) bm!444314))

(assert (= (or b!5770189 b!5770180) bm!444350))

(assert (= (or b!5770189 bm!444357) bm!444339))

(assert (= (or b!5770189 bm!444303) bm!444415))

(assert (= (or b!5770189 b!5770180) bm!444296))

(assert (= (or b!5770189 bm!444437) bm!444423))

(assert (= (or b!5770189 bm!444291) bm!444397))

(assert (= (or b!5770189 bm!444335) bm!444289))

(assert (= (or b!5770189 bm!444443) bm!444306))

(assert (= (or b!5770189 bm!444353) bm!444347))

(assert (= (or b!5770189 bm!444329) bm!444359))

(assert (= (or b!5770189 bm!444413) bm!444393))

(assert (= (or b!5770189 b!5770184) bm!444338))

(assert (= (or b!5770189 bm!444286) bm!444434))

(assert (= (or b!5770189 bm!444319) bm!444343))

(assert (= (or b!5770189 bm!444473) bm!444446))

(assert (= (or b!5770189 bm!444371) bm!444325))

(assert (= (or b!5770189 bm!444369) bm!444342))

(assert (= (or b!5770189 bm!444425) bm!444459))

(assert (= (or b!5770189 bm!444386) bm!444373))

(assert (= (or b!5770189 bm!444336) bm!444481))

(assert (= (or b!5770189 bm!444293) bm!444432))

(assert (= (or b!5770189 bm!444422) bm!444321))

(assert (= (or b!5770189 bm!444345) bm!444380))

(assert (= (or b!5770189 bm!444375) bm!444340))

(assert (= (or b!5770189 bm!444454) bm!444469))

(assert (= (or b!5770189 b!5770184) bm!444486))

(assert (= (or b!5770189 bm!444322) bm!444438))

(assert (= (or b!5770138 bm!444288) bm!444307))

(assert (= (or b!5770189 bm!444372) bm!444412))

(assert (= (or b!5770189 bm!444320) bm!444426))

(assert (= (or b!5770189 bm!444311) bm!444410))

(assert (= (or b!5770135 bm!444469) bm!444300))

(assert (= (or b!5770135 bm!444486) bm!444445))

(assert (= (or b!5770135 bm!444306) bm!444363))

(assert (= (or b!5770135 b!5770189) bm!444381))

(assert (= (or b!5770175 bm!444316) bm!444433))

(assert (= (or b!5770141 bm!444307) bm!444478))

(assert (= (or b!5770135 bm!444446) bm!444407))

(assert (= (or b!5770135 b!5770184) bm!444298))

(assert (= (or b!5770135 bm!444343) bm!444388))

(assert (= (or b!5770135 bm!444296) bm!444441))

(assert (= (or b!5770137 b!5770185 b!5770189) bm!444440))

(assert (= (or b!5770135 bm!444321) bm!444334))

(assert (= (or b!5770135 bm!444455) bm!444383))

(assert (= (or b!5770135 bm!444373) bm!444399))

(assert (= (or b!5770135 bm!444391) bm!444452))

(assert (= (or b!5770135 bm!444340) bm!444458))

(assert (= (or b!5770135 b!5770193) bm!444475))

(assert (= (or b!5770141 b!5770146 bm!444314) bm!444304))

(assert (= (or b!5770135 b!5770168) bm!444395))

(assert (= (or b!5770135 bm!444359) bm!444324))

(assert (= (or b!5770135 bm!444481) bm!444398))

(assert (= (or b!5770135 b!5770132) bm!444427))

(assert (= (or b!5770135 bm!444459) bm!444462))

(assert (= (or b!5770135 b!5770189) bm!444318))

(assert (= (or b!5770170 bm!444442) bm!444431))

(assert (= (or b!5770135 bm!444285) bm!444447))

(assert (= (or b!5770135 bm!444487) bm!444401))

(assert (= (or b!5770135 bm!444451) bm!444284))

(assert (= (or b!5770135 bm!444342) bm!444482))

(assert (= (or b!5770135 bm!444438) bm!444365))

(assert (= (or b!5770135 b!5770189) bm!444464))

(assert (= (or b!5770135 bm!444394) bm!444302))

(assert (= (or b!5770175 bm!444380) bm!444354))

(assert (= (or b!5770190 bm!444447) bm!444315))

(assert (= (or b!5770190 bm!444350) bm!444479))

(assert (= (or b!5770190 bm!444363) bm!444377))

(assert (= (or b!5770190 bm!444354) bm!444295))

(assert (= (and start!592608 ((_ is ElementMatch!15785) r!7292)) b!5770162))

(assert (= (and start!592608 ((_ is Concat!24630) r!7292)) b!5770144))

(assert (= (and start!592608 ((_ is Star!15785) r!7292)) b!5770151))

(assert (= (and start!592608 ((_ is Union!15785) r!7292)) b!5770159))

(assert (= (and start!592608 condSetEmpty!38781) setIsEmpty!38781))

(assert (= (and start!592608 (not condSetEmpty!38781)) setNonEmpty!38781))

(assert (= setNonEmpty!38781 b!5770166))

(assert (= b!5770145 b!5770181))

(assert (= (and start!592608 ((_ is Cons!63532) zl!343)) b!5770145))

(assert (= (and start!592608 ((_ is Cons!63530) s!2326)) b!5770178))

(declare-fun m!6714692 () Bool)

(assert (=> bm!444298 m!6714692))

(declare-fun m!6714694 () Bool)

(assert (=> b!5770165 m!6714694))

(declare-fun m!6714696 () Bool)

(assert (=> bm!444408 m!6714696))

(declare-fun m!6714698 () Bool)

(assert (=> bm!444301 m!6714698))

(declare-fun m!6714700 () Bool)

(assert (=> bm!444338 m!6714700))

(declare-fun m!6714702 () Bool)

(assert (=> bm!444398 m!6714702))

(declare-fun m!6714704 () Bool)

(assert (=> bm!444367 m!6714704))

(declare-fun m!6714706 () Bool)

(assert (=> start!592608 m!6714706))

(declare-fun m!6714708 () Bool)

(assert (=> b!5770189 m!6714708))

(declare-fun m!6714710 () Bool)

(assert (=> b!5770189 m!6714710))

(declare-fun m!6714712 () Bool)

(assert (=> bm!444325 m!6714712))

(declare-fun m!6714714 () Bool)

(assert (=> bm!444341 m!6714714))

(declare-fun m!6714716 () Bool)

(assert (=> bm!444295 m!6714716))

(declare-fun m!6714718 () Bool)

(assert (=> bm!444295 m!6714718))

(declare-fun m!6714720 () Bool)

(assert (=> bm!444395 m!6714720))

(declare-fun m!6714722 () Bool)

(assert (=> bm!444430 m!6714722))

(declare-fun m!6714724 () Bool)

(assert (=> bm!444399 m!6714724))

(declare-fun m!6714726 () Bool)

(assert (=> bm!444477 m!6714726))

(declare-fun m!6714728 () Bool)

(assert (=> setNonEmpty!38781 m!6714728))

(declare-fun m!6714730 () Bool)

(assert (=> bm!444435 m!6714730))

(declare-fun m!6714732 () Bool)

(assert (=> bm!444284 m!6714732))

(declare-fun m!6714734 () Bool)

(assert (=> b!5770193 m!6714734))

(declare-fun m!6714736 () Bool)

(assert (=> b!5770193 m!6714736))

(declare-fun m!6714738 () Bool)

(assert (=> b!5770193 m!6714738))

(assert (=> b!5770193 m!6714716))

(declare-fun m!6714740 () Bool)

(assert (=> b!5770193 m!6714740))

(declare-fun m!6714742 () Bool)

(assert (=> b!5770193 m!6714742))

(declare-fun m!6714744 () Bool)

(assert (=> b!5770193 m!6714744))

(declare-fun m!6714746 () Bool)

(assert (=> b!5770193 m!6714746))

(declare-fun m!6714748 () Bool)

(assert (=> b!5770193 m!6714748))

(declare-fun m!6714750 () Bool)

(assert (=> bm!444453 m!6714750))

(declare-fun m!6714752 () Bool)

(assert (=> bm!444424 m!6714752))

(declare-fun m!6714754 () Bool)

(assert (=> b!5770135 m!6714754))

(declare-fun m!6714756 () Bool)

(assert (=> b!5770135 m!6714756))

(declare-fun m!6714758 () Bool)

(assert (=> b!5770135 m!6714758))

(declare-fun m!6714760 () Bool)

(assert (=> b!5770135 m!6714760))

(declare-fun m!6714762 () Bool)

(assert (=> b!5770135 m!6714762))

(declare-fun m!6714764 () Bool)

(assert (=> b!5770135 m!6714764))

(declare-fun m!6714766 () Bool)

(assert (=> b!5770135 m!6714766))

(declare-fun m!6714768 () Bool)

(assert (=> bm!444479 m!6714768))

(declare-fun m!6714770 () Bool)

(assert (=> bm!444433 m!6714770))

(declare-fun m!6714772 () Bool)

(assert (=> bm!444397 m!6714772))

(declare-fun m!6714774 () Bool)

(assert (=> bm!444370 m!6714774))

(declare-fun m!6714776 () Bool)

(assert (=> bm!444464 m!6714776))

(declare-fun m!6714778 () Bool)

(assert (=> bm!444368 m!6714778))

(declare-fun m!6714780 () Bool)

(assert (=> bm!444384 m!6714780))

(declare-fun m!6714782 () Bool)

(assert (=> bm!444304 m!6714782))

(declare-fun m!6714784 () Bool)

(assert (=> b!5770169 m!6714784))

(declare-fun m!6714786 () Bool)

(assert (=> b!5770169 m!6714786))

(declare-fun m!6714788 () Bool)

(assert (=> b!5770169 m!6714788))

(declare-fun m!6714790 () Bool)

(assert (=> b!5770169 m!6714790))

(declare-fun m!6714792 () Bool)

(assert (=> b!5770169 m!6714792))

(assert (=> b!5770169 m!6714784))

(assert (=> b!5770169 m!6714786))

(declare-fun m!6714794 () Bool)

(assert (=> b!5770169 m!6714794))

(declare-fun m!6714796 () Bool)

(assert (=> b!5770167 m!6714796))

(declare-fun m!6714798 () Bool)

(assert (=> b!5770167 m!6714798))

(declare-fun m!6714800 () Bool)

(assert (=> b!5770167 m!6714800))

(declare-fun m!6714802 () Bool)

(assert (=> bm!444475 m!6714802))

(declare-fun m!6714804 () Bool)

(assert (=> bm!444339 m!6714804))

(declare-fun m!6714806 () Bool)

(assert (=> bm!444300 m!6714806))

(declare-fun m!6714808 () Bool)

(assert (=> bm!444445 m!6714808))

(declare-fun m!6714810 () Bool)

(assert (=> bm!444302 m!6714810))

(declare-fun m!6714812 () Bool)

(assert (=> bm!444393 m!6714812))

(declare-fun m!6714814 () Bool)

(assert (=> b!5770143 m!6714814))

(declare-fun m!6714816 () Bool)

(assert (=> bm!444471 m!6714816))

(declare-fun m!6714818 () Bool)

(assert (=> b!5770145 m!6714818))

(declare-fun m!6714820 () Bool)

(assert (=> bm!444416 m!6714820))

(declare-fun m!6714822 () Bool)

(assert (=> bm!444290 m!6714822))

(declare-fun m!6714824 () Bool)

(assert (=> b!5770164 m!6714824))

(declare-fun m!6714826 () Bool)

(assert (=> bm!444378 m!6714826))

(declare-fun m!6714828 () Bool)

(assert (=> bm!444414 m!6714828))

(declare-fun m!6714830 () Bool)

(assert (=> bm!444347 m!6714830))

(declare-fun m!6714832 () Bool)

(assert (=> bm!444381 m!6714832))

(declare-fun m!6714834 () Bool)

(assert (=> bm!444431 m!6714834))

(declare-fun m!6714836 () Bool)

(assert (=> bm!444431 m!6714836))

(declare-fun m!6714838 () Bool)

(assert (=> bm!444434 m!6714838))

(declare-fun m!6714840 () Bool)

(assert (=> bm!444324 m!6714840))

(declare-fun m!6714842 () Bool)

(assert (=> b!5770171 m!6714842))

(declare-fun m!6714844 () Bool)

(assert (=> bm!444440 m!6714844))

(declare-fun m!6714846 () Bool)

(assert (=> bm!444410 m!6714846))

(declare-fun m!6714848 () Bool)

(assert (=> b!5770153 m!6714848))

(declare-fun m!6714850 () Bool)

(assert (=> b!5770153 m!6714850))

(declare-fun m!6714852 () Bool)

(assert (=> b!5770153 m!6714852))

(declare-fun m!6714854 () Bool)

(assert (=> b!5770153 m!6714854))

(assert (=> b!5770153 m!6714814))

(declare-fun m!6714856 () Bool)

(assert (=> b!5770153 m!6714856))

(declare-fun m!6714858 () Bool)

(assert (=> b!5770153 m!6714858))

(declare-fun m!6714860 () Bool)

(assert (=> b!5770153 m!6714860))

(declare-fun m!6714862 () Bool)

(assert (=> b!5770153 m!6714862))

(declare-fun m!6714864 () Bool)

(assert (=> b!5770153 m!6714864))

(declare-fun m!6714866 () Bool)

(assert (=> b!5770153 m!6714866))

(declare-fun m!6714868 () Bool)

(assert (=> bm!444401 m!6714868))

(declare-fun m!6714870 () Bool)

(assert (=> bm!444426 m!6714870))

(assert (=> bm!444421 m!6714780))

(declare-fun m!6714872 () Bool)

(assert (=> bm!444458 m!6714872))

(declare-fun m!6714874 () Bool)

(assert (=> bm!444478 m!6714874))

(declare-fun m!6714876 () Bool)

(assert (=> bm!444315 m!6714876))

(declare-fun m!6714878 () Bool)

(assert (=> bm!444383 m!6714878))

(declare-fun m!6714880 () Bool)

(assert (=> bm!444365 m!6714880))

(declare-fun m!6714882 () Bool)

(assert (=> bm!444294 m!6714882))

(declare-fun m!6714884 () Bool)

(assert (=> b!5770176 m!6714884))

(declare-fun m!6714886 () Bool)

(assert (=> bm!444462 m!6714886))

(declare-fun m!6714888 () Bool)

(assert (=> bm!444377 m!6714888))

(declare-fun m!6714890 () Bool)

(assert (=> b!5770184 m!6714890))

(declare-fun m!6714892 () Bool)

(assert (=> b!5770184 m!6714892))

(declare-fun m!6714894 () Bool)

(assert (=> b!5770184 m!6714894))

(declare-fun m!6714896 () Bool)

(assert (=> b!5770184 m!6714896))

(declare-fun m!6714898 () Bool)

(assert (=> b!5770184 m!6714898))

(declare-fun m!6714900 () Bool)

(assert (=> b!5770184 m!6714900))

(declare-fun m!6714902 () Bool)

(assert (=> b!5770184 m!6714902))

(declare-fun m!6714904 () Bool)

(assert (=> bm!444318 m!6714904))

(assert (=> b!5770190 m!6714814))

(declare-fun m!6714906 () Bool)

(assert (=> bm!444415 m!6714906))

(declare-fun m!6714908 () Bool)

(assert (=> bm!444448 m!6714908))

(assert (=> b!5770136 m!6714814))

(declare-fun m!6714910 () Bool)

(assert (=> bm!444436 m!6714910))

(declare-fun m!6714912 () Bool)

(assert (=> bm!444427 m!6714912))

(declare-fun m!6714914 () Bool)

(assert (=> bm!444441 m!6714914))

(declare-fun m!6714916 () Bool)

(assert (=> bm!444292 m!6714916))

(declare-fun m!6714918 () Bool)

(assert (=> b!5770180 m!6714918))

(declare-fun m!6714920 () Bool)

(assert (=> b!5770133 m!6714920))

(declare-fun m!6714922 () Bool)

(assert (=> b!5770133 m!6714922))

(declare-fun m!6714924 () Bool)

(assert (=> b!5770133 m!6714924))

(declare-fun m!6714926 () Bool)

(assert (=> bm!444452 m!6714926))

(declare-fun m!6714928 () Bool)

(assert (=> bm!444432 m!6714928))

(declare-fun m!6714930 () Bool)

(assert (=> b!5770172 m!6714930))

(declare-fun m!6714932 () Bool)

(assert (=> b!5770157 m!6714932))

(declare-fun m!6714934 () Bool)

(assert (=> bm!444349 m!6714934))

(declare-fun m!6714936 () Bool)

(assert (=> bm!444388 m!6714936))

(declare-fun m!6714938 () Bool)

(assert (=> bm!444423 m!6714938))

(declare-fun m!6714940 () Bool)

(assert (=> bm!444463 m!6714940))

(assert (=> b!5770173 m!6714814))

(declare-fun m!6714942 () Bool)

(assert (=> bm!444412 m!6714942))

(declare-fun m!6714944 () Bool)

(assert (=> bm!444334 m!6714944))

(declare-fun m!6714946 () Bool)

(assert (=> b!5770140 m!6714946))

(declare-fun m!6714948 () Bool)

(assert (=> bm!444407 m!6714948))

(declare-fun m!6714950 () Bool)

(assert (=> bm!444289 m!6714950))

(declare-fun m!6714952 () Bool)

(assert (=> b!5770163 m!6714952))

(assert (=> b!5770163 m!6714952))

(declare-fun m!6714954 () Bool)

(assert (=> b!5770163 m!6714954))

(declare-fun m!6714956 () Bool)

(assert (=> b!5770141 m!6714956))

(declare-fun m!6714958 () Bool)

(assert (=> bm!444482 m!6714958))

(check-sat (not bm!444399) (not b!5770176) (not bm!444426) (not b!5770151) (not bm!444424) (not bm!444397) (not bm!444431) (not bm!444440) (not bm!444368) (not bm!444378) (not start!592608) (not bm!444334) (not b!5770178) (not bm!444427) (not b!5770145) (not bm!444471) (not bm!444298) (not bm!444398) (not bm!444381) (not bm!444295) (not bm!444349) (not bm!444365) (not bm!444401) (not bm!444324) (not b!5770157) (not bm!444463) (not b!5770133) (not bm!444294) (not bm!444435) (not bm!444430) (not bm!444412) (not b!5770135) (not bm!444462) (not bm!444445) (not bm!444414) (not bm!444458) (not b!5770140) (not bm!444416) (not bm!444432) (not b!5770141) (not bm!444407) (not bm!444384) (not bm!444377) (not b!5770164) tp_is_empty!40823 (not bm!444479) (not bm!444339) (not bm!444367) (not bm!444341) (not bm!444436) (not bm!444434) (not b!5770159) (not bm!444347) (not b!5770167) (not b!5770193) (not bm!444448) (not bm!444325) (not bm!444478) (not b!5770165) (not bm!444415) (not bm!444482) (not setNonEmpty!38781) (not bm!444300) (not bm!444290) (not bm!444383) (not b!5770172) (not bm!444441) (not bm!444395) (not b!5770181) (not bm!444315) (not bm!444301) (not bm!444393) (not bm!444477) (not bm!444304) (not bm!444453) (not b!5770166) (not bm!444464) (not b!5770171) (not b!5770184) (not bm!444302) (not b!5770153) (not b!5770163) (not bm!444452) (not bm!444433) (not bm!444284) (not b!5770144) (not bm!444421) (not bm!444318) (not bm!444338) (not b!5770169) (not bm!444423) (not bm!444289) (not bm!444410) (not bm!444292) (not bm!444475) (not bm!444388) (not bm!444370) (not bm!444408))
(check-sat)
(get-model)

(declare-fun e!3544861 () Bool)

(declare-fun d!1817324 () Bool)

(assert (=> d!1817324 (= (matchZipper!1923 ((_ map or) lt!2291059 lt!2291005) (t!376992 s!2326)) e!3544861)))

(declare-fun res!2435193 () Bool)

(assert (=> d!1817324 (=> res!2435193 e!3544861)))

(assert (=> d!1817324 (= res!2435193 (matchZipper!1923 lt!2291059 (t!376992 s!2326)))))

(declare-fun lt!2291187 () Unit!156690)

(declare-fun choose!43777 ((InoxSet Context!10338) (InoxSet Context!10338) List!63654) Unit!156690)

(assert (=> d!1817324 (= lt!2291187 (choose!43777 lt!2291059 lt!2291005 (t!376992 s!2326)))))

(assert (=> d!1817324 (= (lemmaZipperConcatMatchesSameAsBothZippers!810 lt!2291059 lt!2291005 (t!376992 s!2326)) lt!2291187)))

(declare-fun b!5770206 () Bool)

(assert (=> b!5770206 (= e!3544861 (matchZipper!1923 lt!2291005 (t!376992 s!2326)))))

(assert (= (and d!1817324 (not res!2435193)) b!5770206))

(declare-fun m!6714960 () Bool)

(assert (=> d!1817324 m!6714960))

(declare-fun m!6714962 () Bool)

(assert (=> d!1817324 m!6714962))

(declare-fun m!6714964 () Bool)

(assert (=> d!1817324 m!6714964))

(assert (=> b!5770206 m!6714694))

(assert (=> b!5770141 d!1817324))

(declare-fun d!1817326 () Bool)

(declare-fun choose!43778 (Int) Bool)

(assert (=> d!1817326 (= (Exists!2885 (ite c!1020242 lambda!313683 (ite c!1020252 lambda!313688 (ite c!1020250 lambda!313693 lambda!313698)))) (choose!43778 (ite c!1020242 lambda!313683 (ite c!1020252 lambda!313688 (ite c!1020250 lambda!313693 lambda!313698)))))))

(declare-fun bs!1353475 () Bool)

(assert (= bs!1353475 d!1817326))

(declare-fun m!6714966 () Bool)

(assert (=> bs!1353475 m!6714966))

(assert (=> bm!444434 d!1817326))

(declare-fun d!1817328 () Bool)

(assert (=> d!1817328 (= (Exists!2885 (ite c!1020250 lambda!313691 (ite c!1020244 lambda!313700 lambda!313703))) (choose!43778 (ite c!1020250 lambda!313691 (ite c!1020244 lambda!313700 lambda!313703))))))

(declare-fun bs!1353476 () Bool)

(assert (= bs!1353476 d!1817328))

(declare-fun m!6714968 () Bool)

(assert (=> bs!1353476 m!6714968))

(assert (=> bm!444301 d!1817328))

(declare-fun d!1817330 () Bool)

(declare-fun e!3544867 () Bool)

(assert (=> d!1817330 e!3544867))

(declare-fun res!2435198 () Bool)

(assert (=> d!1817330 (=> (not res!2435198) (not e!3544867))))

(declare-fun lt!2291190 () List!63654)

(declare-fun content!11600 (List!63654) (InoxSet C!31840))

(assert (=> d!1817330 (= res!2435198 (= (content!11600 lt!2291190) ((_ map or) (content!11600 lt!2291141) (content!11600 (_2!36185 lt!2291163)))))))

(declare-fun e!3544866 () List!63654)

(assert (=> d!1817330 (= lt!2291190 e!3544866)))

(declare-fun c!1020258 () Bool)

(assert (=> d!1817330 (= c!1020258 ((_ is Nil!63530) lt!2291141))))

(assert (=> d!1817330 (= (++!13998 lt!2291141 (_2!36185 lt!2291163)) lt!2291190)))

(declare-fun b!5770215 () Bool)

(assert (=> b!5770215 (= e!3544866 (_2!36185 lt!2291163))))

(declare-fun b!5770217 () Bool)

(declare-fun res!2435199 () Bool)

(assert (=> b!5770217 (=> (not res!2435199) (not e!3544867))))

(declare-fun size!40078 (List!63654) Int)

(assert (=> b!5770217 (= res!2435199 (= (size!40078 lt!2291190) (+ (size!40078 lt!2291141) (size!40078 (_2!36185 lt!2291163)))))))

(declare-fun b!5770218 () Bool)

(assert (=> b!5770218 (= e!3544867 (or (not (= (_2!36185 lt!2291163) Nil!63530)) (= lt!2291190 lt!2291141)))))

(declare-fun b!5770216 () Bool)

(assert (=> b!5770216 (= e!3544866 (Cons!63530 (h!69978 lt!2291141) (++!13998 (t!376992 lt!2291141) (_2!36185 lt!2291163))))))

(assert (= (and d!1817330 c!1020258) b!5770215))

(assert (= (and d!1817330 (not c!1020258)) b!5770216))

(assert (= (and d!1817330 res!2435198) b!5770217))

(assert (= (and b!5770217 res!2435199) b!5770218))

(declare-fun m!6714970 () Bool)

(assert (=> d!1817330 m!6714970))

(declare-fun m!6714972 () Bool)

(assert (=> d!1817330 m!6714972))

(declare-fun m!6714974 () Bool)

(assert (=> d!1817330 m!6714974))

(declare-fun m!6714976 () Bool)

(assert (=> b!5770217 m!6714976))

(declare-fun m!6714978 () Bool)

(assert (=> b!5770217 m!6714978))

(declare-fun m!6714980 () Bool)

(assert (=> b!5770217 m!6714980))

(declare-fun m!6714982 () Bool)

(assert (=> b!5770216 m!6714982))

(assert (=> b!5770193 d!1817330))

(declare-fun d!1817332 () Bool)

(assert (=> d!1817332 (isDefined!12497 (findConcatSeparationZippers!138 lt!2291003 (store ((as const (Array Context!10338 Bool)) false) lt!2291151 true) Nil!63530 s!2326 s!2326))))

(declare-fun lt!2291193 () Unit!156690)

(declare-fun choose!43779 ((InoxSet Context!10338) Context!10338 List!63654) Unit!156690)

(assert (=> d!1817332 (= lt!2291193 (choose!43779 lt!2291003 lt!2291151 s!2326))))

(declare-fun appendTo!129 ((InoxSet Context!10338) Context!10338) (InoxSet Context!10338))

(assert (=> d!1817332 (matchZipper!1923 (appendTo!129 lt!2291003 lt!2291151) s!2326)))

(assert (=> d!1817332 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!138 lt!2291003 lt!2291151 s!2326) lt!2291193)))

(declare-fun bs!1353477 () Bool)

(assert (= bs!1353477 d!1817332))

(declare-fun m!6714984 () Bool)

(assert (=> bs!1353477 m!6714984))

(declare-fun m!6714986 () Bool)

(assert (=> bs!1353477 m!6714986))

(declare-fun m!6714988 () Bool)

(assert (=> bs!1353477 m!6714988))

(assert (=> bs!1353477 m!6714988))

(declare-fun m!6714990 () Bool)

(assert (=> bs!1353477 m!6714990))

(assert (=> bs!1353477 m!6714900))

(declare-fun m!6714992 () Bool)

(assert (=> bs!1353477 m!6714992))

(assert (=> bs!1353477 m!6714900))

(assert (=> bs!1353477 m!6714984))

(assert (=> b!5770193 d!1817332))

(declare-fun d!1817334 () Bool)

(declare-fun choose!43780 ((InoxSet Context!10338) Int) (InoxSet Context!10338))

(assert (=> d!1817334 (= (map!14564 lt!2291003 lambda!313696) (choose!43780 lt!2291003 lambda!313696))))

(declare-fun bs!1353478 () Bool)

(assert (= bs!1353478 d!1817334))

(declare-fun m!6714994 () Bool)

(assert (=> bs!1353478 m!6714994))

(assert (=> b!5770193 d!1817334))

(declare-fun d!1817336 () Bool)

(assert (=> d!1817336 (= (get!21923 lt!2291004) (v!51852 lt!2291004))))

(assert (=> b!5770193 d!1817336))

(declare-fun bm!444490 () Bool)

(declare-fun call!444495 () Bool)

(assert (=> bm!444490 (= call!444495 (isEmpty!35427 lt!2291038))))

(declare-fun b!5770248 () Bool)

(declare-fun e!3544886 () Bool)

(declare-fun lt!2291196 () Bool)

(assert (=> b!5770248 (= e!3544886 (not lt!2291196))))

(declare-fun b!5770249 () Bool)

(declare-fun e!3544885 () Bool)

(declare-fun e!3544883 () Bool)

(assert (=> b!5770249 (= e!3544885 e!3544883)))

(declare-fun res!2435220 () Bool)

(assert (=> b!5770249 (=> res!2435220 e!3544883)))

(assert (=> b!5770249 (= res!2435220 call!444495)))

(declare-fun b!5770250 () Bool)

(declare-fun res!2435216 () Bool)

(assert (=> b!5770250 (=> res!2435216 e!3544883)))

(declare-fun tail!11295 (List!63654) List!63654)

(assert (=> b!5770250 (= res!2435216 (not (isEmpty!35427 (tail!11295 lt!2291038))))))

(declare-fun b!5770251 () Bool)

(declare-fun e!3544884 () Bool)

(declare-fun derivativeStep!4563 (Regex!15785 C!31840) Regex!15785)

(declare-fun head!12200 (List!63654) C!31840)

(assert (=> b!5770251 (= e!3544884 (matchR!7970 (derivativeStep!4563 lt!2291050 (head!12200 lt!2291038)) (tail!11295 lt!2291038)))))

(declare-fun b!5770252 () Bool)

(declare-fun e!3544888 () Bool)

(assert (=> b!5770252 (= e!3544888 e!3544885)))

(declare-fun res!2435222 () Bool)

(assert (=> b!5770252 (=> (not res!2435222) (not e!3544885))))

(assert (=> b!5770252 (= res!2435222 (not lt!2291196))))

(declare-fun b!5770253 () Bool)

(declare-fun res!2435219 () Bool)

(assert (=> b!5770253 (=> res!2435219 e!3544888)))

(declare-fun e!3544887 () Bool)

(assert (=> b!5770253 (= res!2435219 e!3544887)))

(declare-fun res!2435223 () Bool)

(assert (=> b!5770253 (=> (not res!2435223) (not e!3544887))))

(assert (=> b!5770253 (= res!2435223 lt!2291196)))

(declare-fun b!5770254 () Bool)

(declare-fun res!2435217 () Bool)

(assert (=> b!5770254 (=> res!2435217 e!3544888)))

(assert (=> b!5770254 (= res!2435217 (not ((_ is ElementMatch!15785) lt!2291050)))))

(assert (=> b!5770254 (= e!3544886 e!3544888)))

(declare-fun b!5770247 () Bool)

(assert (=> b!5770247 (= e!3544883 (not (= (head!12200 lt!2291038) (c!1020255 lt!2291050))))))

(declare-fun d!1817338 () Bool)

(declare-fun e!3544882 () Bool)

(assert (=> d!1817338 e!3544882))

(declare-fun c!1020267 () Bool)

(assert (=> d!1817338 (= c!1020267 ((_ is EmptyExpr!15785) lt!2291050))))

(assert (=> d!1817338 (= lt!2291196 e!3544884)))

(declare-fun c!1020266 () Bool)

(assert (=> d!1817338 (= c!1020266 (isEmpty!35427 lt!2291038))))

(assert (=> d!1817338 (validRegex!7521 lt!2291050)))

(assert (=> d!1817338 (= (matchR!7970 lt!2291050 lt!2291038) lt!2291196)))

(declare-fun b!5770255 () Bool)

(assert (=> b!5770255 (= e!3544882 e!3544886)))

(declare-fun c!1020265 () Bool)

(assert (=> b!5770255 (= c!1020265 ((_ is EmptyLang!15785) lt!2291050))))

(declare-fun b!5770256 () Bool)

(assert (=> b!5770256 (= e!3544884 (nullable!5817 lt!2291050))))

(declare-fun b!5770257 () Bool)

(declare-fun res!2435221 () Bool)

(assert (=> b!5770257 (=> (not res!2435221) (not e!3544887))))

(assert (=> b!5770257 (= res!2435221 (isEmpty!35427 (tail!11295 lt!2291038)))))

(declare-fun b!5770258 () Bool)

(assert (=> b!5770258 (= e!3544887 (= (head!12200 lt!2291038) (c!1020255 lt!2291050)))))

(declare-fun b!5770259 () Bool)

(declare-fun res!2435218 () Bool)

(assert (=> b!5770259 (=> (not res!2435218) (not e!3544887))))

(assert (=> b!5770259 (= res!2435218 (not call!444495))))

(declare-fun b!5770260 () Bool)

(assert (=> b!5770260 (= e!3544882 (= lt!2291196 call!444495))))

(assert (= (and d!1817338 c!1020266) b!5770256))

(assert (= (and d!1817338 (not c!1020266)) b!5770251))

(assert (= (and d!1817338 c!1020267) b!5770260))

(assert (= (and d!1817338 (not c!1020267)) b!5770255))

(assert (= (and b!5770255 c!1020265) b!5770248))

(assert (= (and b!5770255 (not c!1020265)) b!5770254))

(assert (= (and b!5770254 (not res!2435217)) b!5770253))

(assert (= (and b!5770253 res!2435223) b!5770259))

(assert (= (and b!5770259 res!2435218) b!5770257))

(assert (= (and b!5770257 res!2435221) b!5770258))

(assert (= (and b!5770253 (not res!2435219)) b!5770252))

(assert (= (and b!5770252 res!2435222) b!5770249))

(assert (= (and b!5770249 (not res!2435220)) b!5770250))

(assert (= (and b!5770250 (not res!2435216)) b!5770247))

(assert (= (or b!5770260 b!5770249 b!5770259) bm!444490))

(declare-fun m!6714996 () Bool)

(assert (=> bm!444490 m!6714996))

(declare-fun m!6714998 () Bool)

(assert (=> b!5770247 m!6714998))

(declare-fun m!6715000 () Bool)

(assert (=> b!5770257 m!6715000))

(assert (=> b!5770257 m!6715000))

(declare-fun m!6715002 () Bool)

(assert (=> b!5770257 m!6715002))

(declare-fun m!6715004 () Bool)

(assert (=> b!5770256 m!6715004))

(assert (=> b!5770251 m!6714998))

(assert (=> b!5770251 m!6714998))

(declare-fun m!6715006 () Bool)

(assert (=> b!5770251 m!6715006))

(assert (=> b!5770251 m!6715000))

(assert (=> b!5770251 m!6715006))

(assert (=> b!5770251 m!6715000))

(declare-fun m!6715008 () Bool)

(assert (=> b!5770251 m!6715008))

(assert (=> b!5770258 m!6714998))

(assert (=> b!5770250 m!6715000))

(assert (=> b!5770250 m!6715000))

(assert (=> b!5770250 m!6715002))

(assert (=> d!1817338 m!6714996))

(declare-fun m!6715010 () Bool)

(assert (=> d!1817338 m!6715010))

(assert (=> b!5770193 d!1817338))

(declare-fun b!5770279 () Bool)

(declare-fun res!2435238 () Bool)

(declare-fun e!3544900 () Bool)

(assert (=> b!5770279 (=> (not res!2435238) (not e!3544900))))

(declare-fun lt!2291204 () Option!15794)

(assert (=> b!5770279 (= res!2435238 (matchZipper!1923 lt!2291168 (_2!36185 (get!21923 lt!2291204))))))

(declare-fun b!5770280 () Bool)

(declare-fun e!3544902 () Option!15794)

(assert (=> b!5770280 (= e!3544902 None!15793)))

(declare-fun b!5770281 () Bool)

(declare-fun lt!2291205 () Unit!156690)

(declare-fun lt!2291203 () Unit!156690)

(assert (=> b!5770281 (= lt!2291205 lt!2291203)))

(assert (=> b!5770281 (= (++!13998 (++!13998 Nil!63530 (Cons!63530 (h!69978 s!2326) Nil!63530)) (t!376992 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2113 (List!63654 C!31840 List!63654 List!63654) Unit!156690)

(assert (=> b!5770281 (= lt!2291203 (lemmaMoveElementToOtherListKeepsConcatEq!2113 Nil!63530 (h!69978 s!2326) (t!376992 s!2326) s!2326))))

(assert (=> b!5770281 (= e!3544902 (findConcatSeparationZippers!138 lt!2291003 lt!2291168 (++!13998 Nil!63530 (Cons!63530 (h!69978 s!2326) Nil!63530)) (t!376992 s!2326) s!2326))))

(declare-fun b!5770282 () Bool)

(assert (=> b!5770282 (= e!3544900 (= (++!13998 (_1!36185 (get!21923 lt!2291204)) (_2!36185 (get!21923 lt!2291204))) s!2326))))

(declare-fun d!1817340 () Bool)

(declare-fun e!3544901 () Bool)

(assert (=> d!1817340 e!3544901))

(declare-fun res!2435236 () Bool)

(assert (=> d!1817340 (=> res!2435236 e!3544901)))

(assert (=> d!1817340 (= res!2435236 e!3544900)))

(declare-fun res!2435234 () Bool)

(assert (=> d!1817340 (=> (not res!2435234) (not e!3544900))))

(assert (=> d!1817340 (= res!2435234 (isDefined!12497 lt!2291204))))

(declare-fun e!3544903 () Option!15794)

(assert (=> d!1817340 (= lt!2291204 e!3544903)))

(declare-fun c!1020272 () Bool)

(declare-fun e!3544899 () Bool)

(assert (=> d!1817340 (= c!1020272 e!3544899)))

(declare-fun res!2435237 () Bool)

(assert (=> d!1817340 (=> (not res!2435237) (not e!3544899))))

(assert (=> d!1817340 (= res!2435237 (matchZipper!1923 lt!2291003 Nil!63530))))

(assert (=> d!1817340 (= (++!13998 Nil!63530 s!2326) s!2326)))

(assert (=> d!1817340 (= (findConcatSeparationZippers!138 lt!2291003 lt!2291168 Nil!63530 s!2326 s!2326) lt!2291204)))

(declare-fun b!5770283 () Bool)

(assert (=> b!5770283 (= e!3544899 (matchZipper!1923 lt!2291168 s!2326))))

(declare-fun b!5770284 () Bool)

(assert (=> b!5770284 (= e!3544903 e!3544902)))

(declare-fun c!1020273 () Bool)

(assert (=> b!5770284 (= c!1020273 ((_ is Nil!63530) s!2326))))

(declare-fun b!5770285 () Bool)

(assert (=> b!5770285 (= e!3544901 (not (isDefined!12497 lt!2291204)))))

(declare-fun b!5770286 () Bool)

(assert (=> b!5770286 (= e!3544903 (Some!15793 (tuple2!65765 Nil!63530 s!2326)))))

(declare-fun b!5770287 () Bool)

(declare-fun res!2435235 () Bool)

(assert (=> b!5770287 (=> (not res!2435235) (not e!3544900))))

(assert (=> b!5770287 (= res!2435235 (matchZipper!1923 lt!2291003 (_1!36185 (get!21923 lt!2291204))))))

(assert (= (and d!1817340 res!2435237) b!5770283))

(assert (= (and d!1817340 c!1020272) b!5770286))

(assert (= (and d!1817340 (not c!1020272)) b!5770284))

(assert (= (and b!5770284 c!1020273) b!5770280))

(assert (= (and b!5770284 (not c!1020273)) b!5770281))

(assert (= (and d!1817340 res!2435234) b!5770287))

(assert (= (and b!5770287 res!2435235) b!5770279))

(assert (= (and b!5770279 res!2435238) b!5770282))

(assert (= (and d!1817340 (not res!2435236)) b!5770285))

(declare-fun m!6715012 () Bool)

(assert (=> b!5770287 m!6715012))

(declare-fun m!6715014 () Bool)

(assert (=> b!5770287 m!6715014))

(declare-fun m!6715016 () Bool)

(assert (=> d!1817340 m!6715016))

(declare-fun m!6715018 () Bool)

(assert (=> d!1817340 m!6715018))

(declare-fun m!6715020 () Bool)

(assert (=> d!1817340 m!6715020))

(declare-fun m!6715022 () Bool)

(assert (=> b!5770283 m!6715022))

(assert (=> b!5770279 m!6715012))

(declare-fun m!6715024 () Bool)

(assert (=> b!5770279 m!6715024))

(assert (=> b!5770285 m!6715016))

(assert (=> b!5770282 m!6715012))

(declare-fun m!6715026 () Bool)

(assert (=> b!5770282 m!6715026))

(declare-fun m!6715028 () Bool)

(assert (=> b!5770281 m!6715028))

(assert (=> b!5770281 m!6715028))

(declare-fun m!6715030 () Bool)

(assert (=> b!5770281 m!6715030))

(declare-fun m!6715032 () Bool)

(assert (=> b!5770281 m!6715032))

(assert (=> b!5770281 m!6715028))

(declare-fun m!6715034 () Bool)

(assert (=> b!5770281 m!6715034))

(assert (=> b!5770193 d!1817340))

(declare-fun d!1817342 () Bool)

(declare-fun isEmpty!35429 (Option!15794) Bool)

(assert (=> d!1817342 (= (isDefined!12497 lt!2291087) (not (isEmpty!35429 lt!2291087)))))

(declare-fun bs!1353479 () Bool)

(assert (= bs!1353479 d!1817342))

(declare-fun m!6715036 () Bool)

(assert (=> bs!1353479 m!6715036))

(assert (=> b!5770193 d!1817342))

(declare-fun d!1817344 () Bool)

(declare-fun dynLambda!24868 (Int Context!10338) Context!10338)

(assert (=> d!1817344 (= (map!14564 lt!2291003 lambda!313696) (store ((as const (Array Context!10338 Bool)) false) (dynLambda!24868 lambda!313696 lt!2291103) true))))

(declare-fun lt!2291208 () Unit!156690)

(declare-fun choose!43781 ((InoxSet Context!10338) Context!10338 Int) Unit!156690)

(assert (=> d!1817344 (= lt!2291208 (choose!43781 lt!2291003 lt!2291103 lambda!313696))))

(assert (=> d!1817344 (= lt!2291003 (store ((as const (Array Context!10338 Bool)) false) lt!2291103 true))))

(assert (=> d!1817344 (= (lemmaMapOnSingletonSet!146 lt!2291003 lt!2291103 lambda!313696) lt!2291208)))

(declare-fun b_lambda!217751 () Bool)

(assert (=> (not b_lambda!217751) (not d!1817344)))

(declare-fun bs!1353480 () Bool)

(assert (= bs!1353480 d!1817344))

(declare-fun m!6715038 () Bool)

(assert (=> bs!1353480 m!6715038))

(declare-fun m!6715040 () Bool)

(assert (=> bs!1353480 m!6715040))

(declare-fun m!6715042 () Bool)

(assert (=> bs!1353480 m!6715042))

(assert (=> bs!1353480 m!6714736))

(assert (=> bs!1353480 m!6714894))

(assert (=> bs!1353480 m!6715040))

(assert (=> b!5770193 d!1817344))

(declare-fun bs!1353481 () Bool)

(declare-fun b!5770327 () Bool)

(assert (= bs!1353481 (and b!5770327 b!5770189)))

(declare-fun lambda!313710 () Int)

(assert (=> bs!1353481 (not (= lambda!313710 lambda!313684))))

(declare-fun bs!1353482 () Bool)

(assert (= bs!1353482 (and b!5770327 b!5770180)))

(assert (=> bs!1353482 (not (= lambda!313710 lambda!313687))))

(assert (=> bs!1353482 (not (= lambda!313710 lambda!313689))))

(declare-fun bs!1353483 () Bool)

(assert (= bs!1353483 (and b!5770327 b!5770193)))

(assert (=> bs!1353483 (not (= lambda!313710 lambda!313698))))

(assert (=> bs!1353483 (= (and (= (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530))) (_1!36185 lt!2291163)) (= (reg!16114 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))) (reg!16114 (regOne!32082 r!7292))) (= (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167))) lt!2291167)) (= lambda!313710 lambda!313702))))

(assert (=> bs!1353483 (not (= lambda!313710 lambda!313700))))

(assert (=> bs!1353482 (not (= lambda!313710 lambda!313686))))

(declare-fun bs!1353484 () Bool)

(assert (= bs!1353484 (and b!5770327 b!5770157)))

(assert (=> bs!1353484 (not (= lambda!313710 lambda!313690))))

(declare-fun bs!1353485 () Bool)

(assert (= bs!1353485 (and b!5770327 b!5770173)))

(assert (=> bs!1353485 (not (= lambda!313710 lambda!313703))))

(declare-fun bs!1353486 () Bool)

(assert (= bs!1353486 (and b!5770327 b!5770177)))

(assert (=> bs!1353486 (= (and (= (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530))) (_1!36185 lt!2291106)) (= (reg!16114 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))) (reg!16114 (regOne!32082 r!7292))) (= (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167))) lt!2291167)) (= lambda!313710 lambda!313693))))

(assert (=> bs!1353482 (not (= lambda!313710 lambda!313688))))

(assert (=> bs!1353484 (not (= lambda!313710 lambda!313691))))

(assert (=> bs!1353485 (not (= lambda!313710 lambda!313704))))

(assert (=> bs!1353485 (= (and (= (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530))) Nil!63530) (= (reg!16114 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))) (reg!16114 (regOne!32082 r!7292))) (= (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167))) lt!2291167)) (= lambda!313710 lambda!313705))))

(assert (=> bs!1353481 (not (= lambda!313710 lambda!313682))))

(assert (=> bs!1353486 (not (= lambda!313710 lambda!313694))))

(assert (=> bs!1353481 (not (= lambda!313710 lambda!313683))))

(assert (=> bs!1353486 (not (= lambda!313710 lambda!313692))))

(declare-fun bs!1353487 () Bool)

(assert (= bs!1353487 (and b!5770327 b!5770169)))

(assert (=> bs!1353487 (not (= lambda!313710 lambda!313680))))

(assert (=> bs!1353483 (not (= lambda!313710 lambda!313701))))

(assert (=> bs!1353483 (not (= lambda!313710 lambda!313699))))

(assert (=> bs!1353487 (not (= lambda!313710 lambda!313679))))

(assert (=> bs!1353481 (not (= lambda!313710 lambda!313685))))

(assert (=> b!5770327 true))

(assert (=> b!5770327 true))

(declare-fun bs!1353488 () Bool)

(declare-fun b!5770330 () Bool)

(assert (= bs!1353488 (and b!5770330 b!5770189)))

(declare-fun lambda!313711 () Int)

(assert (=> bs!1353488 (not (= lambda!313711 lambda!313684))))

(declare-fun bs!1353489 () Bool)

(assert (= bs!1353489 (and b!5770330 b!5770180)))

(assert (=> bs!1353489 (= (and (= (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530))) s!2326) (= (regOne!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))) (regOne!32082 (regOne!32082 r!7292))) (= (regTwo!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))) lt!2291065)) (= lambda!313711 lambda!313687))))

(assert (=> bs!1353489 (= (and (= (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530))) s!2326) (= (regOne!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))) (regTwo!32082 (regOne!32082 r!7292))) (= (regTwo!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))) lt!2291002)) (= lambda!313711 lambda!313689))))

(declare-fun bs!1353490 () Bool)

(assert (= bs!1353490 (and b!5770330 b!5770193)))

(assert (=> bs!1353490 (not (= lambda!313711 lambda!313698))))

(assert (=> bs!1353490 (not (= lambda!313711 lambda!313702))))

(assert (=> bs!1353490 (not (= lambda!313711 lambda!313700))))

(assert (=> bs!1353489 (not (= lambda!313711 lambda!313686))))

(declare-fun bs!1353491 () Bool)

(assert (= bs!1353491 (and b!5770330 b!5770157)))

(assert (=> bs!1353491 (not (= lambda!313711 lambda!313690))))

(declare-fun bs!1353492 () Bool)

(assert (= bs!1353492 (and b!5770330 b!5770173)))

(assert (=> bs!1353492 (not (= lambda!313711 lambda!313703))))

(declare-fun bs!1353493 () Bool)

(assert (= bs!1353493 (and b!5770330 b!5770177)))

(assert (=> bs!1353493 (not (= lambda!313711 lambda!313693))))

(assert (=> bs!1353489 (not (= lambda!313711 lambda!313688))))

(assert (=> bs!1353491 (= (and (= (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530))) s!2326) (= (regOne!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))) lt!2291167) (= (regTwo!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))) (regTwo!32082 r!7292))) (= lambda!313711 lambda!313691))))

(assert (=> bs!1353492 (= (and (= (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530))) Nil!63530) (= (regOne!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))) (reg!16114 (regOne!32082 r!7292))) (= (regTwo!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))) lt!2291167)) (= lambda!313711 lambda!313704))))

(declare-fun bs!1353494 () Bool)

(assert (= bs!1353494 (and b!5770330 b!5770327)))

(assert (=> bs!1353494 (not (= lambda!313711 lambda!313710))))

(assert (=> bs!1353492 (not (= lambda!313711 lambda!313705))))

(assert (=> bs!1353488 (not (= lambda!313711 lambda!313682))))

(assert (=> bs!1353493 (= (and (= (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530))) (_1!36185 lt!2291106)) (= (regOne!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))) (reg!16114 (regOne!32082 r!7292))) (= (regTwo!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))) lt!2291167)) (= lambda!313711 lambda!313694))))

(assert (=> bs!1353488 (= (and (= (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530))) s!2326) (= (regOne!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))) (regOne!32082 (regOne!32082 r!7292))) (= (regTwo!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))) lt!2291182)) (= lambda!313711 lambda!313683))))

(assert (=> bs!1353493 (not (= lambda!313711 lambda!313692))))

(declare-fun bs!1353495 () Bool)

(assert (= bs!1353495 (and b!5770330 b!5770169)))

(assert (=> bs!1353495 (= (and (= (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530))) s!2326) (= (regOne!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))) (regOne!32082 r!7292)) (= (regTwo!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))) (regTwo!32082 r!7292))) (= lambda!313711 lambda!313680))))

(assert (=> bs!1353490 (= (and (= (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530))) (_1!36185 lt!2291163)) (= (regOne!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))) (reg!16114 (regOne!32082 r!7292))) (= (regTwo!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))) lt!2291167)) (= lambda!313711 lambda!313701))))

(assert (=> bs!1353490 (= (and (= (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530))) s!2326) (= (regOne!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))) lt!2291100) (= (regTwo!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))) (regTwo!32082 r!7292))) (= lambda!313711 lambda!313699))))

(assert (=> bs!1353495 (not (= lambda!313711 lambda!313679))))

(assert (=> bs!1353488 (= (and (= (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530))) s!2326) (= (regOne!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))) (regTwo!32082 (regOne!32082 r!7292))) (= (regTwo!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))) lt!2291109)) (= lambda!313711 lambda!313685))))

(assert (=> b!5770330 true))

(assert (=> b!5770330 true))

(declare-fun c!1020283 () Bool)

(declare-fun b!5770320 () Bool)

(assert (=> b!5770320 (= c!1020283 ((_ is Union!15785) (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))))))

(declare-fun e!3544922 () Bool)

(declare-fun e!3544926 () Bool)

(assert (=> b!5770320 (= e!3544922 e!3544926)))

(declare-fun c!1020282 () Bool)

(declare-fun b!5770321 () Bool)

(assert (=> b!5770321 (= c!1020282 ((_ is ElementMatch!15785) (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))))))

(declare-fun e!3544928 () Bool)

(assert (=> b!5770321 (= e!3544928 e!3544922)))

(declare-fun b!5770322 () Bool)

(declare-fun res!2435257 () Bool)

(declare-fun e!3544923 () Bool)

(assert (=> b!5770322 (=> res!2435257 e!3544923)))

(declare-fun call!444500 () Bool)

(assert (=> b!5770322 (= res!2435257 call!444500)))

(declare-fun e!3544924 () Bool)

(assert (=> b!5770322 (= e!3544924 e!3544923)))

(declare-fun bm!444495 () Bool)

(declare-fun c!1020285 () Bool)

(declare-fun call!444501 () Bool)

(assert (=> bm!444495 (= call!444501 (Exists!2885 (ite c!1020285 lambda!313710 lambda!313711)))))

(declare-fun b!5770323 () Bool)

(declare-fun e!3544925 () Bool)

(assert (=> b!5770323 (= e!3544925 call!444500)))

(declare-fun b!5770324 () Bool)

(declare-fun e!3544927 () Bool)

(assert (=> b!5770324 (= e!3544927 (matchRSpec!2888 (regTwo!32083 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))) (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530)))))))

(declare-fun b!5770325 () Bool)

(assert (=> b!5770325 (= e!3544926 e!3544924)))

(assert (=> b!5770325 (= c!1020285 ((_ is Star!15785) (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))))))

(declare-fun bm!444496 () Bool)

(assert (=> bm!444496 (= call!444500 (isEmpty!35427 (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530)))))))

(declare-fun c!1020284 () Bool)

(declare-fun d!1817346 () Bool)

(assert (=> d!1817346 (= c!1020284 ((_ is EmptyExpr!15785) (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))))))

(assert (=> d!1817346 (= (matchRSpec!2888 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167))) (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530)))) e!3544925)))

(declare-fun b!5770326 () Bool)

(assert (=> b!5770326 (= e!3544925 e!3544928)))

(declare-fun res!2435256 () Bool)

(assert (=> b!5770326 (= res!2435256 (not ((_ is EmptyLang!15785) (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167))))))))

(assert (=> b!5770326 (=> (not res!2435256) (not e!3544928))))

(assert (=> b!5770327 (= e!3544923 call!444501)))

(declare-fun b!5770328 () Bool)

(assert (=> b!5770328 (= e!3544926 e!3544927)))

(declare-fun res!2435255 () Bool)

(assert (=> b!5770328 (= res!2435255 (matchRSpec!2888 (regOne!32083 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))) (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530)))))))

(assert (=> b!5770328 (=> res!2435255 e!3544927)))

(declare-fun b!5770329 () Bool)

(assert (=> b!5770329 (= e!3544922 (= (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530))) (Cons!63530 (c!1020255 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))) Nil!63530)))))

(assert (=> b!5770330 (= e!3544924 call!444501)))

(assert (= (and d!1817346 c!1020284) b!5770323))

(assert (= (and d!1817346 (not c!1020284)) b!5770326))

(assert (= (and b!5770326 res!2435256) b!5770321))

(assert (= (and b!5770321 c!1020282) b!5770329))

(assert (= (and b!5770321 (not c!1020282)) b!5770320))

(assert (= (and b!5770320 c!1020283) b!5770328))

(assert (= (and b!5770320 (not c!1020283)) b!5770325))

(assert (= (and b!5770328 (not res!2435255)) b!5770324))

(assert (= (and b!5770325 c!1020285) b!5770322))

(assert (= (and b!5770325 (not c!1020285)) b!5770330))

(assert (= (and b!5770322 (not res!2435257)) b!5770327))

(assert (= (or b!5770327 b!5770330) bm!444495))

(assert (= (or b!5770323 b!5770322) bm!444496))

(declare-fun m!6715044 () Bool)

(assert (=> bm!444495 m!6715044))

(declare-fun m!6715046 () Bool)

(assert (=> b!5770324 m!6715046))

(declare-fun m!6715048 () Bool)

(assert (=> bm!444496 m!6715048))

(declare-fun m!6715050 () Bool)

(assert (=> b!5770328 m!6715050))

(assert (=> bm!444401 d!1817346))

(declare-fun b!5770341 () Bool)

(declare-fun e!3544935 () (InoxSet Context!10338))

(assert (=> b!5770341 (= e!3544935 ((as const (Array Context!10338 Bool)) false))))

(declare-fun b!5770342 () Bool)

(declare-fun call!444504 () (InoxSet Context!10338))

(assert (=> b!5770342 (= e!3544935 call!444504)))

(declare-fun bm!444499 () Bool)

(assert (=> bm!444499 (= call!444504 (derivationStepZipperDown!1127 (h!69979 (exprs!5669 (ite c!1020249 lt!2290995 (ite c!1020242 lt!2291008 (ite c!1020252 lt!2291165 lt!2291089))))) (Context!10339 (t!376993 (exprs!5669 (ite c!1020249 lt!2290995 (ite c!1020242 lt!2291008 (ite c!1020252 lt!2291165 lt!2291089)))))) (h!69978 s!2326)))))

(declare-fun e!3544937 () Bool)

(declare-fun b!5770344 () Bool)

(assert (=> b!5770344 (= e!3544937 (nullable!5817 (h!69979 (exprs!5669 (ite c!1020249 lt!2290995 (ite c!1020242 lt!2291008 (ite c!1020252 lt!2291165 lt!2291089)))))))))

(declare-fun b!5770345 () Bool)

(declare-fun e!3544936 () (InoxSet Context!10338))

(assert (=> b!5770345 (= e!3544936 ((_ map or) call!444504 (derivationStepZipperUp!1053 (Context!10339 (t!376993 (exprs!5669 (ite c!1020249 lt!2290995 (ite c!1020242 lt!2291008 (ite c!1020252 lt!2291165 lt!2291089)))))) (h!69978 s!2326))))))

(declare-fun d!1817348 () Bool)

(declare-fun c!1020290 () Bool)

(assert (=> d!1817348 (= c!1020290 e!3544937)))

(declare-fun res!2435260 () Bool)

(assert (=> d!1817348 (=> (not res!2435260) (not e!3544937))))

(assert (=> d!1817348 (= res!2435260 ((_ is Cons!63531) (exprs!5669 (ite c!1020249 lt!2290995 (ite c!1020242 lt!2291008 (ite c!1020252 lt!2291165 lt!2291089))))))))

(assert (=> d!1817348 (= (derivationStepZipperUp!1053 (ite c!1020249 lt!2290995 (ite c!1020242 lt!2291008 (ite c!1020252 lt!2291165 lt!2291089))) (h!69978 s!2326)) e!3544936)))

(declare-fun b!5770343 () Bool)

(assert (=> b!5770343 (= e!3544936 e!3544935)))

(declare-fun c!1020291 () Bool)

(assert (=> b!5770343 (= c!1020291 ((_ is Cons!63531) (exprs!5669 (ite c!1020249 lt!2290995 (ite c!1020242 lt!2291008 (ite c!1020252 lt!2291165 lt!2291089))))))))

(assert (= (and d!1817348 res!2435260) b!5770344))

(assert (= (and d!1817348 c!1020290) b!5770345))

(assert (= (and d!1817348 (not c!1020290)) b!5770343))

(assert (= (and b!5770343 c!1020291) b!5770342))

(assert (= (and b!5770343 (not c!1020291)) b!5770341))

(assert (= (or b!5770345 b!5770342) bm!444499))

(declare-fun m!6715052 () Bool)

(assert (=> bm!444499 m!6715052))

(declare-fun m!6715054 () Bool)

(assert (=> b!5770344 m!6715054))

(declare-fun m!6715056 () Bool)

(assert (=> b!5770345 m!6715056))

(assert (=> bm!444300 d!1817348))

(declare-fun c!1020294 () Bool)

(declare-fun d!1817350 () Bool)

(assert (=> d!1817350 (= c!1020294 (isEmpty!35427 (ite (or c!1020249 c!1020242) (t!376992 s!2326) (ite c!1020248 (ite c!1020250 lt!2291088 (_2!36185 lt!2291107)) (t!376992 s!2326)))))))

(declare-fun e!3544940 () Bool)

(assert (=> d!1817350 (= (matchZipper!1923 (ite c!1020249 ((_ map or) lt!2291059 lt!2291005) (ite c!1020242 lt!2291150 (ite c!1020248 lt!2291168 lt!2290998))) (ite (or c!1020249 c!1020242) (t!376992 s!2326) (ite c!1020248 (ite c!1020250 lt!2291088 (_2!36185 lt!2291107)) (t!376992 s!2326)))) e!3544940)))

(declare-fun b!5770350 () Bool)

(declare-fun nullableZipper!1709 ((InoxSet Context!10338)) Bool)

(assert (=> b!5770350 (= e!3544940 (nullableZipper!1709 (ite c!1020249 ((_ map or) lt!2291059 lt!2291005) (ite c!1020242 lt!2291150 (ite c!1020248 lt!2291168 lt!2290998)))))))

(declare-fun b!5770351 () Bool)

(assert (=> b!5770351 (= e!3544940 (matchZipper!1923 (derivationStepZipper!1862 (ite c!1020249 ((_ map or) lt!2291059 lt!2291005) (ite c!1020242 lt!2291150 (ite c!1020248 lt!2291168 lt!2290998))) (head!12200 (ite (or c!1020249 c!1020242) (t!376992 s!2326) (ite c!1020248 (ite c!1020250 lt!2291088 (_2!36185 lt!2291107)) (t!376992 s!2326))))) (tail!11295 (ite (or c!1020249 c!1020242) (t!376992 s!2326) (ite c!1020248 (ite c!1020250 lt!2291088 (_2!36185 lt!2291107)) (t!376992 s!2326))))))))

(assert (= (and d!1817350 c!1020294) b!5770350))

(assert (= (and d!1817350 (not c!1020294)) b!5770351))

(declare-fun m!6715058 () Bool)

(assert (=> d!1817350 m!6715058))

(declare-fun m!6715060 () Bool)

(assert (=> b!5770350 m!6715060))

(declare-fun m!6715062 () Bool)

(assert (=> b!5770351 m!6715062))

(assert (=> b!5770351 m!6715062))

(declare-fun m!6715064 () Bool)

(assert (=> b!5770351 m!6715064))

(declare-fun m!6715066 () Bool)

(assert (=> b!5770351 m!6715066))

(assert (=> b!5770351 m!6715064))

(assert (=> b!5770351 m!6715066))

(declare-fun m!6715068 () Bool)

(assert (=> b!5770351 m!6715068))

(assert (=> bm!444478 d!1817350))

(declare-fun d!1817352 () Bool)

(declare-fun e!3544942 () Bool)

(assert (=> d!1817352 e!3544942))

(declare-fun res!2435261 () Bool)

(assert (=> d!1817352 (=> (not res!2435261) (not e!3544942))))

(declare-fun lt!2291209 () List!63654)

(assert (=> d!1817352 (= res!2435261 (= (content!11600 lt!2291209) ((_ map or) (content!11600 (ite c!1020250 (_2!36185 lt!2291010) (ite c!1020244 (_1!36185 lt!2291169) Nil!63530))) (content!11600 (ite c!1020250 (_2!36185 lt!2291106) (ite c!1020244 (_2!36185 lt!2291169) s!2326))))))))

(declare-fun e!3544941 () List!63654)

(assert (=> d!1817352 (= lt!2291209 e!3544941)))

(declare-fun c!1020295 () Bool)

(assert (=> d!1817352 (= c!1020295 ((_ is Nil!63530) (ite c!1020250 (_2!36185 lt!2291010) (ite c!1020244 (_1!36185 lt!2291169) Nil!63530))))))

(assert (=> d!1817352 (= (++!13998 (ite c!1020250 (_2!36185 lt!2291010) (ite c!1020244 (_1!36185 lt!2291169) Nil!63530)) (ite c!1020250 (_2!36185 lt!2291106) (ite c!1020244 (_2!36185 lt!2291169) s!2326))) lt!2291209)))

(declare-fun b!5770352 () Bool)

(assert (=> b!5770352 (= e!3544941 (ite c!1020250 (_2!36185 lt!2291106) (ite c!1020244 (_2!36185 lt!2291169) s!2326)))))

(declare-fun b!5770354 () Bool)

(declare-fun res!2435262 () Bool)

(assert (=> b!5770354 (=> (not res!2435262) (not e!3544942))))

(assert (=> b!5770354 (= res!2435262 (= (size!40078 lt!2291209) (+ (size!40078 (ite c!1020250 (_2!36185 lt!2291010) (ite c!1020244 (_1!36185 lt!2291169) Nil!63530))) (size!40078 (ite c!1020250 (_2!36185 lt!2291106) (ite c!1020244 (_2!36185 lt!2291169) s!2326))))))))

(declare-fun b!5770355 () Bool)

(assert (=> b!5770355 (= e!3544942 (or (not (= (ite c!1020250 (_2!36185 lt!2291106) (ite c!1020244 (_2!36185 lt!2291169) s!2326)) Nil!63530)) (= lt!2291209 (ite c!1020250 (_2!36185 lt!2291010) (ite c!1020244 (_1!36185 lt!2291169) Nil!63530)))))))

(declare-fun b!5770353 () Bool)

(assert (=> b!5770353 (= e!3544941 (Cons!63530 (h!69978 (ite c!1020250 (_2!36185 lt!2291010) (ite c!1020244 (_1!36185 lt!2291169) Nil!63530))) (++!13998 (t!376992 (ite c!1020250 (_2!36185 lt!2291010) (ite c!1020244 (_1!36185 lt!2291169) Nil!63530))) (ite c!1020250 (_2!36185 lt!2291106) (ite c!1020244 (_2!36185 lt!2291169) s!2326)))))))

(assert (= (and d!1817352 c!1020295) b!5770352))

(assert (= (and d!1817352 (not c!1020295)) b!5770353))

(assert (= (and d!1817352 res!2435261) b!5770354))

(assert (= (and b!5770354 res!2435262) b!5770355))

(declare-fun m!6715070 () Bool)

(assert (=> d!1817352 m!6715070))

(declare-fun m!6715072 () Bool)

(assert (=> d!1817352 m!6715072))

(declare-fun m!6715074 () Bool)

(assert (=> d!1817352 m!6715074))

(declare-fun m!6715076 () Bool)

(assert (=> b!5770354 m!6715076))

(declare-fun m!6715078 () Bool)

(assert (=> b!5770354 m!6715078))

(declare-fun m!6715080 () Bool)

(assert (=> b!5770354 m!6715080))

(declare-fun m!6715082 () Bool)

(assert (=> b!5770353 m!6715082))

(assert (=> bm!444367 d!1817352))

(declare-fun d!1817354 () Bool)

(assert (=> d!1817354 (matchR!7970 (Concat!24630 (reg!16114 (regOne!32082 r!7292)) lt!2291050) (++!13998 (ite c!1020250 (_1!36185 lt!2291010) (_1!36185 lt!2291107)) (ite c!1020250 lt!2291088 (_2!36185 lt!2291107))))))

(declare-fun lt!2291212 () Unit!156690)

(declare-fun choose!43782 (Regex!15785 Regex!15785 List!63654 List!63654) Unit!156690)

(assert (=> d!1817354 (= lt!2291212 (choose!43782 (reg!16114 (regOne!32082 r!7292)) lt!2291050 (ite c!1020250 (_1!36185 lt!2291010) (_1!36185 lt!2291107)) (ite c!1020250 lt!2291088 (_2!36185 lt!2291107))))))

(declare-fun e!3544945 () Bool)

(assert (=> d!1817354 e!3544945))

(declare-fun res!2435265 () Bool)

(assert (=> d!1817354 (=> (not res!2435265) (not e!3544945))))

(assert (=> d!1817354 (= res!2435265 (validRegex!7521 (reg!16114 (regOne!32082 r!7292))))))

(assert (=> d!1817354 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!290 (reg!16114 (regOne!32082 r!7292)) lt!2291050 (ite c!1020250 (_1!36185 lt!2291010) (_1!36185 lt!2291107)) (ite c!1020250 lt!2291088 (_2!36185 lt!2291107))) lt!2291212)))

(declare-fun b!5770358 () Bool)

(assert (=> b!5770358 (= e!3544945 (validRegex!7521 lt!2291050))))

(assert (= (and d!1817354 res!2435265) b!5770358))

(assert (=> d!1817354 m!6714778))

(assert (=> d!1817354 m!6714778))

(declare-fun m!6715084 () Bool)

(assert (=> d!1817354 m!6715084))

(declare-fun m!6715086 () Bool)

(assert (=> d!1817354 m!6715086))

(declare-fun m!6715088 () Bool)

(assert (=> d!1817354 m!6715088))

(assert (=> b!5770358 m!6715010))

(assert (=> bm!444448 d!1817354))

(declare-fun bs!1353496 () Bool)

(declare-fun b!5770366 () Bool)

(assert (= bs!1353496 (and b!5770366 b!5770189)))

(declare-fun lambda!313712 () Int)

(assert (=> bs!1353496 (not (= lambda!313712 lambda!313684))))

(declare-fun bs!1353497 () Bool)

(assert (= bs!1353497 (and b!5770366 b!5770180)))

(assert (=> bs!1353497 (not (= lambda!313712 lambda!313687))))

(assert (=> bs!1353497 (not (= lambda!313712 lambda!313689))))

(declare-fun bs!1353498 () Bool)

(assert (= bs!1353498 (and b!5770366 b!5770193)))

(assert (=> bs!1353498 (not (= lambda!313712 lambda!313698))))

(assert (=> bs!1353498 (= (and (= (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (_1!36185 lt!2291163) s!2326)) (_1!36185 lt!2291163)) (= (reg!16114 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))) (reg!16114 (regOne!32082 r!7292))) (= (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292))))) lt!2291167)) (= lambda!313712 lambda!313702))))

(declare-fun bs!1353499 () Bool)

(assert (= bs!1353499 (and b!5770366 b!5770330)))

(assert (=> bs!1353499 (not (= lambda!313712 lambda!313711))))

(assert (=> bs!1353498 (not (= lambda!313712 lambda!313700))))

(assert (=> bs!1353497 (not (= lambda!313712 lambda!313686))))

(declare-fun bs!1353500 () Bool)

(assert (= bs!1353500 (and b!5770366 b!5770157)))

(assert (=> bs!1353500 (not (= lambda!313712 lambda!313690))))

(declare-fun bs!1353501 () Bool)

(assert (= bs!1353501 (and b!5770366 b!5770173)))

(assert (=> bs!1353501 (not (= lambda!313712 lambda!313703))))

(declare-fun bs!1353502 () Bool)

(assert (= bs!1353502 (and b!5770366 b!5770177)))

(assert (=> bs!1353502 (= (and (= (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (_1!36185 lt!2291163) s!2326)) (_1!36185 lt!2291106)) (= (reg!16114 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))) (reg!16114 (regOne!32082 r!7292))) (= (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292))))) lt!2291167)) (= lambda!313712 lambda!313693))))

(assert (=> bs!1353497 (not (= lambda!313712 lambda!313688))))

(assert (=> bs!1353500 (not (= lambda!313712 lambda!313691))))

(assert (=> bs!1353501 (not (= lambda!313712 lambda!313704))))

(declare-fun bs!1353503 () Bool)

(assert (= bs!1353503 (and b!5770366 b!5770327)))

(assert (=> bs!1353503 (= (and (= (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (_1!36185 lt!2291163) s!2326)) (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530)))) (= (reg!16114 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))) (reg!16114 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167))))) (= (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292))))) (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167))))) (= lambda!313712 lambda!313710))))

(assert (=> bs!1353501 (= (and (= (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (_1!36185 lt!2291163) s!2326)) Nil!63530) (= (reg!16114 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))) (reg!16114 (regOne!32082 r!7292))) (= (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292))))) lt!2291167)) (= lambda!313712 lambda!313705))))

(assert (=> bs!1353496 (not (= lambda!313712 lambda!313682))))

(assert (=> bs!1353502 (not (= lambda!313712 lambda!313694))))

(assert (=> bs!1353496 (not (= lambda!313712 lambda!313683))))

(assert (=> bs!1353502 (not (= lambda!313712 lambda!313692))))

(declare-fun bs!1353504 () Bool)

(assert (= bs!1353504 (and b!5770366 b!5770169)))

(assert (=> bs!1353504 (not (= lambda!313712 lambda!313680))))

(assert (=> bs!1353498 (not (= lambda!313712 lambda!313701))))

(assert (=> bs!1353498 (not (= lambda!313712 lambda!313699))))

(assert (=> bs!1353504 (not (= lambda!313712 lambda!313679))))

(assert (=> bs!1353496 (not (= lambda!313712 lambda!313685))))

(assert (=> b!5770366 true))

(assert (=> b!5770366 true))

(declare-fun bs!1353505 () Bool)

(declare-fun b!5770369 () Bool)

(assert (= bs!1353505 (and b!5770369 b!5770189)))

(declare-fun lambda!313713 () Int)

(assert (=> bs!1353505 (not (= lambda!313713 lambda!313684))))

(declare-fun bs!1353506 () Bool)

(assert (= bs!1353506 (and b!5770369 b!5770180)))

(assert (=> bs!1353506 (= (and (= (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (_1!36185 lt!2291163) s!2326)) s!2326) (= (regOne!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))) (regOne!32082 (regOne!32082 r!7292))) (= (regTwo!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))) lt!2291065)) (= lambda!313713 lambda!313687))))

(assert (=> bs!1353506 (= (and (= (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (_1!36185 lt!2291163) s!2326)) s!2326) (= (regOne!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))) (regTwo!32082 (regOne!32082 r!7292))) (= (regTwo!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))) lt!2291002)) (= lambda!313713 lambda!313689))))

(declare-fun bs!1353507 () Bool)

(assert (= bs!1353507 (and b!5770369 b!5770193)))

(assert (=> bs!1353507 (not (= lambda!313713 lambda!313698))))

(declare-fun bs!1353508 () Bool)

(assert (= bs!1353508 (and b!5770369 b!5770330)))

(assert (=> bs!1353508 (= (and (= (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (_1!36185 lt!2291163) s!2326)) (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530)))) (= (regOne!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))) (regOne!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167))))) (= (regTwo!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))) (regTwo!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))))) (= lambda!313713 lambda!313711))))

(assert (=> bs!1353507 (not (= lambda!313713 lambda!313700))))

(assert (=> bs!1353506 (not (= lambda!313713 lambda!313686))))

(declare-fun bs!1353509 () Bool)

(assert (= bs!1353509 (and b!5770369 b!5770157)))

(assert (=> bs!1353509 (not (= lambda!313713 lambda!313690))))

(declare-fun bs!1353510 () Bool)

(assert (= bs!1353510 (and b!5770369 b!5770173)))

(assert (=> bs!1353510 (not (= lambda!313713 lambda!313703))))

(declare-fun bs!1353511 () Bool)

(assert (= bs!1353511 (and b!5770369 b!5770177)))

(assert (=> bs!1353511 (not (= lambda!313713 lambda!313693))))

(assert (=> bs!1353506 (not (= lambda!313713 lambda!313688))))

(assert (=> bs!1353509 (= (and (= (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (_1!36185 lt!2291163) s!2326)) s!2326) (= (regOne!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))) lt!2291167) (= (regTwo!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))) (regTwo!32082 r!7292))) (= lambda!313713 lambda!313691))))

(assert (=> bs!1353510 (= (and (= (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (_1!36185 lt!2291163) s!2326)) Nil!63530) (= (regOne!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))) (reg!16114 (regOne!32082 r!7292))) (= (regTwo!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))) lt!2291167)) (= lambda!313713 lambda!313704))))

(declare-fun bs!1353512 () Bool)

(assert (= bs!1353512 (and b!5770369 b!5770327)))

(assert (=> bs!1353512 (not (= lambda!313713 lambda!313710))))

(assert (=> bs!1353510 (not (= lambda!313713 lambda!313705))))

(assert (=> bs!1353507 (not (= lambda!313713 lambda!313702))))

(declare-fun bs!1353513 () Bool)

(assert (= bs!1353513 (and b!5770369 b!5770366)))

(assert (=> bs!1353513 (not (= lambda!313713 lambda!313712))))

(assert (=> bs!1353505 (not (= lambda!313713 lambda!313682))))

(assert (=> bs!1353511 (= (and (= (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (_1!36185 lt!2291163) s!2326)) (_1!36185 lt!2291106)) (= (regOne!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))) (reg!16114 (regOne!32082 r!7292))) (= (regTwo!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))) lt!2291167)) (= lambda!313713 lambda!313694))))

(assert (=> bs!1353505 (= (and (= (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (_1!36185 lt!2291163) s!2326)) s!2326) (= (regOne!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))) (regOne!32082 (regOne!32082 r!7292))) (= (regTwo!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))) lt!2291182)) (= lambda!313713 lambda!313683))))

(assert (=> bs!1353511 (not (= lambda!313713 lambda!313692))))

(declare-fun bs!1353514 () Bool)

(assert (= bs!1353514 (and b!5770369 b!5770169)))

(assert (=> bs!1353514 (= (and (= (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (_1!36185 lt!2291163) s!2326)) s!2326) (= (regOne!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))) (regOne!32082 r!7292)) (= (regTwo!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))) (regTwo!32082 r!7292))) (= lambda!313713 lambda!313680))))

(assert (=> bs!1353507 (= (and (= (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (_1!36185 lt!2291163) s!2326)) (_1!36185 lt!2291163)) (= (regOne!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))) (reg!16114 (regOne!32082 r!7292))) (= (regTwo!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))) lt!2291167)) (= lambda!313713 lambda!313701))))

(assert (=> bs!1353507 (= (and (= (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (_1!36185 lt!2291163) s!2326)) s!2326) (= (regOne!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))) lt!2291100) (= (regTwo!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))) (regTwo!32082 r!7292))) (= lambda!313713 lambda!313699))))

(assert (=> bs!1353514 (not (= lambda!313713 lambda!313679))))

(assert (=> bs!1353505 (= (and (= (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (_1!36185 lt!2291163) s!2326)) s!2326) (= (regOne!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))) (regTwo!32082 (regOne!32082 r!7292))) (= (regTwo!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))) lt!2291109)) (= lambda!313713 lambda!313685))))

(assert (=> b!5770369 true))

(assert (=> b!5770369 true))

(declare-fun b!5770359 () Bool)

(declare-fun c!1020297 () Bool)

(assert (=> b!5770359 (= c!1020297 ((_ is Union!15785) (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))))))

(declare-fun e!3544946 () Bool)

(declare-fun e!3544950 () Bool)

(assert (=> b!5770359 (= e!3544946 e!3544950)))

(declare-fun b!5770360 () Bool)

(declare-fun c!1020296 () Bool)

(assert (=> b!5770360 (= c!1020296 ((_ is ElementMatch!15785) (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))))))

(declare-fun e!3544952 () Bool)

(assert (=> b!5770360 (= e!3544952 e!3544946)))

(declare-fun b!5770361 () Bool)

(declare-fun res!2435268 () Bool)

(declare-fun e!3544947 () Bool)

(assert (=> b!5770361 (=> res!2435268 e!3544947)))

(declare-fun call!444505 () Bool)

(assert (=> b!5770361 (= res!2435268 call!444505)))

(declare-fun e!3544948 () Bool)

(assert (=> b!5770361 (= e!3544948 e!3544947)))

(declare-fun call!444506 () Bool)

(declare-fun c!1020299 () Bool)

(declare-fun bm!444500 () Bool)

(assert (=> bm!444500 (= call!444506 (Exists!2885 (ite c!1020299 lambda!313712 lambda!313713)))))

(declare-fun b!5770362 () Bool)

(declare-fun e!3544949 () Bool)

(assert (=> b!5770362 (= e!3544949 call!444505)))

(declare-fun b!5770363 () Bool)

(declare-fun e!3544951 () Bool)

(assert (=> b!5770363 (= e!3544951 (matchRSpec!2888 (regTwo!32083 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))) (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (_1!36185 lt!2291163) s!2326))))))

(declare-fun b!5770364 () Bool)

(assert (=> b!5770364 (= e!3544950 e!3544948)))

(assert (=> b!5770364 (= c!1020299 ((_ is Star!15785) (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))))))

(declare-fun bm!444501 () Bool)

(assert (=> bm!444501 (= call!444505 (isEmpty!35427 (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (_1!36185 lt!2291163) s!2326))))))

(declare-fun d!1817356 () Bool)

(declare-fun c!1020298 () Bool)

(assert (=> d!1817356 (= c!1020298 ((_ is EmptyExpr!15785) (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))))))

(assert (=> d!1817356 (= (matchRSpec!2888 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292))))) (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (_1!36185 lt!2291163) s!2326))) e!3544949)))

(declare-fun b!5770365 () Bool)

(assert (=> b!5770365 (= e!3544949 e!3544952)))

(declare-fun res!2435267 () Bool)

(assert (=> b!5770365 (= res!2435267 (not ((_ is EmptyLang!15785) (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292))))))))))

(assert (=> b!5770365 (=> (not res!2435267) (not e!3544952))))

(assert (=> b!5770366 (= e!3544947 call!444506)))

(declare-fun b!5770367 () Bool)

(assert (=> b!5770367 (= e!3544950 e!3544951)))

(declare-fun res!2435266 () Bool)

(assert (=> b!5770367 (= res!2435266 (matchRSpec!2888 (regOne!32083 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))) (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (_1!36185 lt!2291163) s!2326))))))

(assert (=> b!5770367 (=> res!2435266 e!3544951)))

(declare-fun b!5770368 () Bool)

(assert (=> b!5770368 (= e!3544946 (= (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (_1!36185 lt!2291163) s!2326)) (Cons!63530 (c!1020255 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))) Nil!63530)))))

(assert (=> b!5770369 (= e!3544948 call!444506)))

(assert (= (and d!1817356 c!1020298) b!5770362))

(assert (= (and d!1817356 (not c!1020298)) b!5770365))

(assert (= (and b!5770365 res!2435267) b!5770360))

(assert (= (and b!5770360 c!1020296) b!5770368))

(assert (= (and b!5770360 (not c!1020296)) b!5770359))

(assert (= (and b!5770359 c!1020297) b!5770367))

(assert (= (and b!5770359 (not c!1020297)) b!5770364))

(assert (= (and b!5770367 (not res!2435266)) b!5770363))

(assert (= (and b!5770364 c!1020299) b!5770361))

(assert (= (and b!5770364 (not c!1020299)) b!5770369))

(assert (= (and b!5770361 (not res!2435268)) b!5770366))

(assert (= (or b!5770366 b!5770369) bm!444500))

(assert (= (or b!5770362 b!5770361) bm!444501))

(declare-fun m!6715090 () Bool)

(assert (=> bm!444500 m!6715090))

(declare-fun m!6715092 () Bool)

(assert (=> b!5770363 m!6715092))

(declare-fun m!6715094 () Bool)

(assert (=> bm!444501 m!6715094))

(declare-fun m!6715096 () Bool)

(assert (=> b!5770367 m!6715096))

(assert (=> bm!444452 d!1817356))

(declare-fun d!1817358 () Bool)

(declare-fun dynLambda!24869 (Int Context!10338) (InoxSet Context!10338))

(assert (=> d!1817358 (= (flatMap!1398 (ite c!1020242 lt!2291026 lt!2291003) (ite c!1020242 lambda!313681 lambda!313681)) (dynLambda!24869 (ite c!1020242 lambda!313681 lambda!313681) (ite c!1020242 lt!2291007 lt!2291103)))))

(declare-fun lt!2291215 () Unit!156690)

(declare-fun choose!43783 ((InoxSet Context!10338) Context!10338 Int) Unit!156690)

(assert (=> d!1817358 (= lt!2291215 (choose!43783 (ite c!1020242 lt!2291026 lt!2291003) (ite c!1020242 lt!2291007 lt!2291103) (ite c!1020242 lambda!313681 lambda!313681)))))

(assert (=> d!1817358 (= (ite c!1020242 lt!2291026 lt!2291003) (store ((as const (Array Context!10338 Bool)) false) (ite c!1020242 lt!2291007 lt!2291103) true))))

(assert (=> d!1817358 (= (lemmaFlatMapOnSingletonSet!930 (ite c!1020242 lt!2291026 lt!2291003) (ite c!1020242 lt!2291007 lt!2291103) (ite c!1020242 lambda!313681 lambda!313681)) lt!2291215)))

(declare-fun b_lambda!217753 () Bool)

(assert (=> (not b_lambda!217753) (not d!1817358)))

(declare-fun bs!1353515 () Bool)

(assert (= bs!1353515 d!1817358))

(declare-fun m!6715098 () Bool)

(assert (=> bs!1353515 m!6715098))

(declare-fun m!6715100 () Bool)

(assert (=> bs!1353515 m!6715100))

(declare-fun m!6715102 () Bool)

(assert (=> bs!1353515 m!6715102))

(declare-fun m!6715104 () Bool)

(assert (=> bs!1353515 m!6715104))

(assert (=> bm!444338 d!1817358))

(declare-fun d!1817360 () Bool)

(assert (=> d!1817360 (= (matchR!7970 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292))))) s!2326) (matchRSpec!2888 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292))))) s!2326))))

(declare-fun lt!2291218 () Unit!156690)

(declare-fun choose!43784 (Regex!15785 List!63654) Unit!156690)

(assert (=> d!1817360 (= lt!2291218 (choose!43784 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292))))) s!2326))))

(assert (=> d!1817360 (validRegex!7521 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292))))))))

(assert (=> d!1817360 (= (mainMatchTheorem!2888 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292))))) s!2326) lt!2291218)))

(declare-fun bs!1353516 () Bool)

(assert (= bs!1353516 d!1817360))

(declare-fun m!6715106 () Bool)

(assert (=> bs!1353516 m!6715106))

(declare-fun m!6715108 () Bool)

(assert (=> bs!1353516 m!6715108))

(declare-fun m!6715110 () Bool)

(assert (=> bs!1353516 m!6715110))

(declare-fun m!6715112 () Bool)

(assert (=> bs!1353516 m!6715112))

(assert (=> bm!444462 d!1817360))

(declare-fun bs!1353517 () Bool)

(declare-fun d!1817362 () Bool)

(assert (= bs!1353517 (and d!1817362 b!5770189)))

(declare-fun lambda!313716 () Int)

(assert (=> bs!1353517 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530))) s!2326) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 (reg!16114 (regOne!32082 r!7292)) (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (regTwo!32082 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite c!1020250 lt!2291167 (ite c!1020244 (regTwo!32082 r!7292) lt!2291167)))) lt!2291109)) (= lambda!313716 lambda!313684))))

(declare-fun bs!1353518 () Bool)

(assert (= bs!1353518 (and d!1817362 b!5770180)))

(assert (=> bs!1353518 (not (= lambda!313716 lambda!313687))))

(assert (=> bs!1353518 (not (= lambda!313716 lambda!313689))))

(declare-fun bs!1353519 () Bool)

(assert (= bs!1353519 (and d!1817362 b!5770193)))

(assert (=> bs!1353519 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530))) s!2326) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 (reg!16114 (regOne!32082 r!7292)) (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) lt!2291100) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite c!1020250 lt!2291167 (ite c!1020244 (regTwo!32082 r!7292) lt!2291167)))) (regTwo!32082 r!7292))) (= lambda!313716 lambda!313698))))

(declare-fun bs!1353520 () Bool)

(assert (= bs!1353520 (and d!1817362 b!5770330)))

(assert (=> bs!1353520 (not (= lambda!313716 lambda!313711))))

(assert (=> bs!1353518 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530))) s!2326) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 (reg!16114 (regOne!32082 r!7292)) (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (regOne!32082 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite c!1020250 lt!2291167 (ite c!1020244 (regTwo!32082 r!7292) lt!2291167)))) lt!2291065)) (= lambda!313716 lambda!313686))))

(declare-fun bs!1353521 () Bool)

(assert (= bs!1353521 (and d!1817362 b!5770157)))

(assert (=> bs!1353521 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530))) s!2326) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 (reg!16114 (regOne!32082 r!7292)) (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) lt!2291167) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite c!1020250 lt!2291167 (ite c!1020244 (regTwo!32082 r!7292) lt!2291167)))) (regTwo!32082 r!7292))) (= lambda!313716 lambda!313690))))

(declare-fun bs!1353522 () Bool)

(assert (= bs!1353522 (and d!1817362 b!5770173)))

(assert (=> bs!1353522 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530))) Nil!63530) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 (reg!16114 (regOne!32082 r!7292)) (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (reg!16114 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite c!1020250 lt!2291167 (ite c!1020244 (regTwo!32082 r!7292) lt!2291167)))) lt!2291167)) (= lambda!313716 lambda!313703))))

(declare-fun bs!1353523 () Bool)

(assert (= bs!1353523 (and d!1817362 b!5770177)))

(assert (=> bs!1353523 (not (= lambda!313716 lambda!313693))))

(assert (=> bs!1353518 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530))) s!2326) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 (reg!16114 (regOne!32082 r!7292)) (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (regTwo!32082 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite c!1020250 lt!2291167 (ite c!1020244 (regTwo!32082 r!7292) lt!2291167)))) lt!2291002)) (= lambda!313716 lambda!313688))))

(assert (=> bs!1353521 (not (= lambda!313716 lambda!313691))))

(assert (=> bs!1353522 (not (= lambda!313716 lambda!313704))))

(declare-fun bs!1353524 () Bool)

(assert (= bs!1353524 (and d!1817362 b!5770327)))

(assert (=> bs!1353524 (not (= lambda!313716 lambda!313710))))

(assert (=> bs!1353522 (not (= lambda!313716 lambda!313705))))

(assert (=> bs!1353519 (not (= lambda!313716 lambda!313702))))

(declare-fun bs!1353525 () Bool)

(assert (= bs!1353525 (and d!1817362 b!5770366)))

(assert (=> bs!1353525 (not (= lambda!313716 lambda!313712))))

(assert (=> bs!1353519 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530))) (_1!36185 lt!2291163)) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 (reg!16114 (regOne!32082 r!7292)) (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (reg!16114 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite c!1020250 lt!2291167 (ite c!1020244 (regTwo!32082 r!7292) lt!2291167)))) lt!2291167)) (= lambda!313716 lambda!313700))))

(declare-fun bs!1353526 () Bool)

(assert (= bs!1353526 (and d!1817362 b!5770369)))

(assert (=> bs!1353526 (not (= lambda!313716 lambda!313713))))

(assert (=> bs!1353517 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530))) s!2326) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 (reg!16114 (regOne!32082 r!7292)) (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (regOne!32082 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite c!1020250 lt!2291167 (ite c!1020244 (regTwo!32082 r!7292) lt!2291167)))) lt!2291182)) (= lambda!313716 lambda!313682))))

(assert (=> bs!1353523 (not (= lambda!313716 lambda!313694))))

(assert (=> bs!1353517 (not (= lambda!313716 lambda!313683))))

(assert (=> bs!1353523 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530))) (_1!36185 lt!2291106)) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 (reg!16114 (regOne!32082 r!7292)) (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (reg!16114 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite c!1020250 lt!2291167 (ite c!1020244 (regTwo!32082 r!7292) lt!2291167)))) lt!2291167)) (= lambda!313716 lambda!313692))))

(declare-fun bs!1353527 () Bool)

(assert (= bs!1353527 (and d!1817362 b!5770169)))

(assert (=> bs!1353527 (not (= lambda!313716 lambda!313680))))

(assert (=> bs!1353519 (not (= lambda!313716 lambda!313701))))

(assert (=> bs!1353519 (not (= lambda!313716 lambda!313699))))

(assert (=> bs!1353527 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530))) s!2326) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 (reg!16114 (regOne!32082 r!7292)) (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (regOne!32082 r!7292)) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite c!1020250 lt!2291167 (ite c!1020244 (regTwo!32082 r!7292) lt!2291167)))) (regTwo!32082 r!7292))) (= lambda!313716 lambda!313679))))

(assert (=> bs!1353517 (not (= lambda!313716 lambda!313685))))

(assert (=> d!1817362 true))

(assert (=> d!1817362 true))

(assert (=> d!1817362 true))

(assert (=> d!1817362 (= (isDefined!12497 (findConcatSeparation!2208 (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 (reg!16114 (regOne!32082 r!7292)) (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite c!1020250 lt!2291167 (ite c!1020244 (regTwo!32082 r!7292) lt!2291167)))) Nil!63530 (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530))) (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530))))) (Exists!2885 lambda!313716))))

(declare-fun lt!2291221 () Unit!156690)

(declare-fun choose!43785 (Regex!15785 Regex!15785 List!63654) Unit!156690)

(assert (=> d!1817362 (= lt!2291221 (choose!43785 (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 (reg!16114 (regOne!32082 r!7292)) (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite c!1020250 lt!2291167 (ite c!1020244 (regTwo!32082 r!7292) lt!2291167)))) (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530)))))))

(assert (=> d!1817362 (validRegex!7521 (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 (reg!16114 (regOne!32082 r!7292)) (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))))))

(assert (=> d!1817362 (= (lemmaFindConcatSeparationEquivalentToExists!1972 (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 (reg!16114 (regOne!32082 r!7292)) (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite c!1020250 lt!2291167 (ite c!1020244 (regTwo!32082 r!7292) lt!2291167)))) (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530)))) lt!2291221)))

(declare-fun bs!1353528 () Bool)

(assert (= bs!1353528 d!1817362))

(declare-fun m!6715114 () Bool)

(assert (=> bs!1353528 m!6715114))

(declare-fun m!6715116 () Bool)

(assert (=> bs!1353528 m!6715116))

(declare-fun m!6715118 () Bool)

(assert (=> bs!1353528 m!6715118))

(assert (=> bs!1353528 m!6715114))

(declare-fun m!6715120 () Bool)

(assert (=> bs!1353528 m!6715120))

(declare-fun m!6715122 () Bool)

(assert (=> bs!1353528 m!6715122))

(assert (=> bm!444415 d!1817362))

(declare-fun b!5770396 () Bool)

(declare-fun e!3544968 () Bool)

(assert (=> b!5770396 (= e!3544968 (nullable!5817 (regOne!32082 (ite c!1020249 (regOne!32083 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))))))))

(declare-fun b!5770397 () Bool)

(declare-fun e!3544971 () (InoxSet Context!10338))

(declare-fun call!444523 () (InoxSet Context!10338))

(assert (=> b!5770397 (= e!3544971 call!444523)))

(declare-fun bm!444514 () Bool)

(declare-fun call!444520 () (InoxSet Context!10338))

(declare-fun call!444521 () (InoxSet Context!10338))

(assert (=> bm!444514 (= call!444520 call!444521)))

(declare-fun b!5770398 () Bool)

(declare-fun e!3544967 () (InoxSet Context!10338))

(declare-fun call!444524 () (InoxSet Context!10338))

(assert (=> b!5770398 (= e!3544967 ((_ map or) call!444524 call!444520))))

(declare-fun bm!444515 () Bool)

(assert (=> bm!444515 (= call!444523 call!444520)))

(declare-fun b!5770399 () Bool)

(declare-fun e!3544969 () (InoxSet Context!10338))

(assert (=> b!5770399 (= e!3544969 ((_ map or) call!444524 call!444521))))

(declare-fun call!444522 () List!63655)

(declare-fun c!1020313 () Bool)

(declare-fun bm!444516 () Bool)

(assert (=> bm!444516 (= call!444524 (derivationStepZipperDown!1127 (ite c!1020313 (regOne!32083 (ite c!1020249 (regOne!32083 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292)))) (regOne!32082 (ite c!1020249 (regOne!32083 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))))) (ite c!1020313 lt!2291089 (Context!10339 call!444522)) (h!69978 s!2326)))))

(declare-fun c!1020311 () Bool)

(declare-fun c!1020310 () Bool)

(declare-fun bm!444517 () Bool)

(declare-fun $colon$colon!1777 (List!63655 Regex!15785) List!63655)

(assert (=> bm!444517 (= call!444522 ($colon$colon!1777 (exprs!5669 lt!2291089) (ite (or c!1020310 c!1020311) (regTwo!32082 (ite c!1020249 (regOne!32083 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292)))) (ite c!1020249 (regOne!32083 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))))))))

(declare-fun b!5770401 () Bool)

(assert (=> b!5770401 (= e!3544967 e!3544971)))

(assert (=> b!5770401 (= c!1020311 ((_ is Concat!24630) (ite c!1020249 (regOne!32083 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292)))))))

(declare-fun b!5770402 () Bool)

(assert (=> b!5770402 (= c!1020310 e!3544968)))

(declare-fun res!2435275 () Bool)

(assert (=> b!5770402 (=> (not res!2435275) (not e!3544968))))

(assert (=> b!5770402 (= res!2435275 ((_ is Concat!24630) (ite c!1020249 (regOne!32083 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292)))))))

(assert (=> b!5770402 (= e!3544969 e!3544967)))

(declare-fun b!5770400 () Bool)

(declare-fun c!1020314 () Bool)

(assert (=> b!5770400 (= c!1020314 ((_ is Star!15785) (ite c!1020249 (regOne!32083 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292)))))))

(declare-fun e!3544970 () (InoxSet Context!10338))

(assert (=> b!5770400 (= e!3544971 e!3544970)))

(declare-fun d!1817364 () Bool)

(declare-fun c!1020312 () Bool)

(assert (=> d!1817364 (= c!1020312 (and ((_ is ElementMatch!15785) (ite c!1020249 (regOne!32083 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292)))) (= (c!1020255 (ite c!1020249 (regOne!32083 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292)))) (h!69978 s!2326))))))

(declare-fun e!3544972 () (InoxSet Context!10338))

(assert (=> d!1817364 (= (derivationStepZipperDown!1127 (ite c!1020249 (regOne!32083 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))) lt!2291089 (h!69978 s!2326)) e!3544972)))

(declare-fun bm!444518 () Bool)

(declare-fun call!444519 () List!63655)

(assert (=> bm!444518 (= call!444519 call!444522)))

(declare-fun b!5770403 () Bool)

(assert (=> b!5770403 (= e!3544972 (store ((as const (Array Context!10338 Bool)) false) lt!2291089 true))))

(declare-fun b!5770404 () Bool)

(assert (=> b!5770404 (= e!3544972 e!3544969)))

(assert (=> b!5770404 (= c!1020313 ((_ is Union!15785) (ite c!1020249 (regOne!32083 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292)))))))

(declare-fun b!5770405 () Bool)

(assert (=> b!5770405 (= e!3544970 call!444523)))

(declare-fun b!5770406 () Bool)

(assert (=> b!5770406 (= e!3544970 ((as const (Array Context!10338 Bool)) false))))

(declare-fun bm!444519 () Bool)

(assert (=> bm!444519 (= call!444521 (derivationStepZipperDown!1127 (ite c!1020313 (regTwo!32083 (ite c!1020249 (regOne!32083 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292)))) (ite c!1020310 (regTwo!32082 (ite c!1020249 (regOne!32083 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292)))) (ite c!1020311 (regOne!32082 (ite c!1020249 (regOne!32083 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292)))) (reg!16114 (ite c!1020249 (regOne!32083 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))))))) (ite (or c!1020313 c!1020310) lt!2291089 (Context!10339 call!444519)) (h!69978 s!2326)))))

(assert (= (and d!1817364 c!1020312) b!5770403))

(assert (= (and d!1817364 (not c!1020312)) b!5770404))

(assert (= (and b!5770404 c!1020313) b!5770399))

(assert (= (and b!5770404 (not c!1020313)) b!5770402))

(assert (= (and b!5770402 res!2435275) b!5770396))

(assert (= (and b!5770402 c!1020310) b!5770398))

(assert (= (and b!5770402 (not c!1020310)) b!5770401))

(assert (= (and b!5770401 c!1020311) b!5770397))

(assert (= (and b!5770401 (not c!1020311)) b!5770400))

(assert (= (and b!5770400 c!1020314) b!5770405))

(assert (= (and b!5770400 (not c!1020314)) b!5770406))

(assert (= (or b!5770397 b!5770405) bm!444518))

(assert (= (or b!5770397 b!5770405) bm!444515))

(assert (= (or b!5770398 bm!444518) bm!444517))

(assert (= (or b!5770398 bm!444515) bm!444514))

(assert (= (or b!5770399 bm!444514) bm!444519))

(assert (= (or b!5770399 b!5770398) bm!444516))

(declare-fun m!6715124 () Bool)

(assert (=> bm!444517 m!6715124))

(declare-fun m!6715126 () Bool)

(assert (=> b!5770396 m!6715126))

(declare-fun m!6715128 () Bool)

(assert (=> bm!444516 m!6715128))

(assert (=> b!5770403 m!6714814))

(declare-fun m!6715130 () Bool)

(assert (=> bm!444519 m!6715130))

(assert (=> bm!444464 d!1817364))

(declare-fun d!1817366 () Bool)

(assert (=> d!1817366 (= (isEmpty!35426 (t!376994 zl!343)) ((_ is Nil!63532) (t!376994 zl!343)))))

(assert (=> b!5770140 d!1817366))

(declare-fun bs!1353529 () Bool)

(declare-fun d!1817368 () Bool)

(assert (= bs!1353529 (and d!1817368 b!5770189)))

(declare-fun lambda!313721 () Int)

(assert (=> bs!1353529 (= (and (= (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530) s!2326) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (regTwo!32082 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))) lt!2291109)) (= lambda!313721 lambda!313684))))

(declare-fun bs!1353530 () Bool)

(assert (= bs!1353530 (and d!1817368 b!5770180)))

(assert (=> bs!1353530 (not (= lambda!313721 lambda!313687))))

(declare-fun bs!1353531 () Bool)

(assert (= bs!1353531 (and d!1817368 b!5770193)))

(assert (=> bs!1353531 (= (and (= (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530) s!2326) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) lt!2291100) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))) (regTwo!32082 r!7292))) (= lambda!313721 lambda!313698))))

(declare-fun bs!1353532 () Bool)

(assert (= bs!1353532 (and d!1817368 b!5770330)))

(assert (=> bs!1353532 (not (= lambda!313721 lambda!313711))))

(assert (=> bs!1353530 (= (and (= (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530) s!2326) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (regOne!32082 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))) lt!2291065)) (= lambda!313721 lambda!313686))))

(declare-fun bs!1353533 () Bool)

(assert (= bs!1353533 (and d!1817368 b!5770157)))

(assert (=> bs!1353533 (= (and (= (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530) s!2326) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) lt!2291167) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))) (regTwo!32082 r!7292))) (= lambda!313721 lambda!313690))))

(declare-fun bs!1353534 () Bool)

(assert (= bs!1353534 (and d!1817368 b!5770173)))

(assert (=> bs!1353534 (= (and (= (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530) Nil!63530) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (reg!16114 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))) lt!2291167)) (= lambda!313721 lambda!313703))))

(declare-fun bs!1353535 () Bool)

(assert (= bs!1353535 (and d!1817368 b!5770177)))

(assert (=> bs!1353535 (not (= lambda!313721 lambda!313693))))

(assert (=> bs!1353530 (= (and (= (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530) s!2326) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (regTwo!32082 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))) lt!2291002)) (= lambda!313721 lambda!313688))))

(assert (=> bs!1353533 (not (= lambda!313721 lambda!313691))))

(assert (=> bs!1353534 (not (= lambda!313721 lambda!313704))))

(declare-fun bs!1353536 () Bool)

(assert (= bs!1353536 (and d!1817368 b!5770327)))

(assert (=> bs!1353536 (not (= lambda!313721 lambda!313710))))

(assert (=> bs!1353534 (not (= lambda!313721 lambda!313705))))

(declare-fun bs!1353537 () Bool)

(assert (= bs!1353537 (and d!1817368 d!1817362)))

(assert (=> bs!1353537 (= (and (= (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530) (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530)))) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 (reg!16114 (regOne!32082 r!7292)) (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292)))))) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))) (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite c!1020250 lt!2291167 (ite c!1020244 (regTwo!32082 r!7292) lt!2291167)))))) (= lambda!313721 lambda!313716))))

(assert (=> bs!1353530 (not (= lambda!313721 lambda!313689))))

(assert (=> bs!1353531 (not (= lambda!313721 lambda!313702))))

(declare-fun bs!1353538 () Bool)

(assert (= bs!1353538 (and d!1817368 b!5770366)))

(assert (=> bs!1353538 (not (= lambda!313721 lambda!313712))))

(assert (=> bs!1353531 (= (and (= (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530) (_1!36185 lt!2291163)) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (reg!16114 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))) lt!2291167)) (= lambda!313721 lambda!313700))))

(declare-fun bs!1353539 () Bool)

(assert (= bs!1353539 (and d!1817368 b!5770369)))

(assert (=> bs!1353539 (not (= lambda!313721 lambda!313713))))

(assert (=> bs!1353529 (= (and (= (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530) s!2326) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (regOne!32082 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))) lt!2291182)) (= lambda!313721 lambda!313682))))

(assert (=> bs!1353535 (not (= lambda!313721 lambda!313694))))

(assert (=> bs!1353529 (not (= lambda!313721 lambda!313683))))

(assert (=> bs!1353535 (= (and (= (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530) (_1!36185 lt!2291106)) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (reg!16114 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))) lt!2291167)) (= lambda!313721 lambda!313692))))

(declare-fun bs!1353540 () Bool)

(assert (= bs!1353540 (and d!1817368 b!5770169)))

(assert (=> bs!1353540 (not (= lambda!313721 lambda!313680))))

(assert (=> bs!1353531 (not (= lambda!313721 lambda!313701))))

(assert (=> bs!1353531 (not (= lambda!313721 lambda!313699))))

(assert (=> bs!1353540 (= (and (= (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530) s!2326) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (regOne!32082 r!7292)) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))) (regTwo!32082 r!7292))) (= lambda!313721 lambda!313679))))

(assert (=> bs!1353529 (not (= lambda!313721 lambda!313685))))

(assert (=> d!1817368 true))

(assert (=> d!1817368 true))

(assert (=> d!1817368 true))

(declare-fun bs!1353541 () Bool)

(assert (= bs!1353541 d!1817368))

(declare-fun lambda!313722 () Int)

(assert (=> bs!1353541 (not (= lambda!313722 lambda!313721))))

(assert (=> bs!1353529 (not (= lambda!313722 lambda!313684))))

(assert (=> bs!1353530 (= (and (= (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530) s!2326) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (regOne!32082 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))) lt!2291065)) (= lambda!313722 lambda!313687))))

(assert (=> bs!1353531 (not (= lambda!313722 lambda!313698))))

(assert (=> bs!1353532 (= (and (= (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530) (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530)))) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (regOne!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167))))) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))) (regTwo!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))))) (= lambda!313722 lambda!313711))))

(assert (=> bs!1353530 (not (= lambda!313722 lambda!313686))))

(assert (=> bs!1353533 (not (= lambda!313722 lambda!313690))))

(assert (=> bs!1353534 (not (= lambda!313722 lambda!313703))))

(assert (=> bs!1353535 (not (= lambda!313722 lambda!313693))))

(assert (=> bs!1353530 (not (= lambda!313722 lambda!313688))))

(assert (=> bs!1353533 (= (and (= (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530) s!2326) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) lt!2291167) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))) (regTwo!32082 r!7292))) (= lambda!313722 lambda!313691))))

(assert (=> bs!1353534 (= (and (= (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530) Nil!63530) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (reg!16114 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))) lt!2291167)) (= lambda!313722 lambda!313704))))

(assert (=> bs!1353536 (not (= lambda!313722 lambda!313710))))

(assert (=> bs!1353534 (not (= lambda!313722 lambda!313705))))

(assert (=> bs!1353537 (not (= lambda!313722 lambda!313716))))

(assert (=> bs!1353530 (= (and (= (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530) s!2326) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (regTwo!32082 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))) lt!2291002)) (= lambda!313722 lambda!313689))))

(assert (=> bs!1353531 (not (= lambda!313722 lambda!313702))))

(assert (=> bs!1353538 (not (= lambda!313722 lambda!313712))))

(assert (=> bs!1353531 (not (= lambda!313722 lambda!313700))))

(assert (=> bs!1353539 (= (and (= (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530) (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (_1!36185 lt!2291163) s!2326))) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (regOne!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292))))))) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))) (regTwo!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))))) (= lambda!313722 lambda!313713))))

(assert (=> bs!1353529 (not (= lambda!313722 lambda!313682))))

(assert (=> bs!1353535 (= (and (= (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530) (_1!36185 lt!2291106)) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (reg!16114 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))) lt!2291167)) (= lambda!313722 lambda!313694))))

(assert (=> bs!1353529 (= (and (= (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530) s!2326) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (regOne!32082 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))) lt!2291182)) (= lambda!313722 lambda!313683))))

(assert (=> bs!1353535 (not (= lambda!313722 lambda!313692))))

(assert (=> bs!1353540 (= (and (= (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530) s!2326) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (regOne!32082 r!7292)) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))) (regTwo!32082 r!7292))) (= lambda!313722 lambda!313680))))

(assert (=> bs!1353531 (= (and (= (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530) (_1!36185 lt!2291163)) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (reg!16114 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))) lt!2291167)) (= lambda!313722 lambda!313701))))

(assert (=> bs!1353531 (= (and (= (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530) s!2326) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) lt!2291100) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))) (regTwo!32082 r!7292))) (= lambda!313722 lambda!313699))))

(assert (=> bs!1353540 (not (= lambda!313722 lambda!313679))))

(assert (=> bs!1353529 (= (and (= (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530) s!2326) (= (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (regTwo!32082 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))) lt!2291109)) (= lambda!313722 lambda!313685))))

(assert (=> d!1817368 true))

(assert (=> d!1817368 true))

(assert (=> d!1817368 true))

(assert (=> d!1817368 (= (Exists!2885 lambda!313721) (Exists!2885 lambda!313722))))

(declare-fun lt!2291224 () Unit!156690)

(declare-fun choose!43786 (Regex!15785 Regex!15785 List!63654) Unit!156690)

(assert (=> d!1817368 (= lt!2291224 (choose!43786 (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))) (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530)))))

(assert (=> d!1817368 (validRegex!7521 (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))))))

(assert (=> d!1817368 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1514 (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292))))) (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))) (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530)) lt!2291224)))

(declare-fun m!6715132 () Bool)

(assert (=> bs!1353541 m!6715132))

(declare-fun m!6715134 () Bool)

(assert (=> bs!1353541 m!6715134))

(declare-fun m!6715136 () Bool)

(assert (=> bs!1353541 m!6715136))

(declare-fun m!6715138 () Bool)

(assert (=> bs!1353541 m!6715138))

(assert (=> bm!444432 d!1817368))

(declare-fun bs!1353542 () Bool)

(declare-fun d!1817370 () Bool)

(assert (= bs!1353542 (and d!1817370 b!5770177)))

(declare-fun lambda!313725 () Int)

(assert (=> bs!1353542 (= lambda!313725 lambda!313695)))

(declare-fun bs!1353543 () Bool)

(assert (= bs!1353543 (and d!1817370 b!5770193)))

(assert (=> bs!1353543 (= lambda!313725 lambda!313697)))

(declare-fun b!5770435 () Bool)

(declare-fun e!3544993 () Bool)

(assert (=> b!5770435 (= e!3544993 (isEmpty!35428 (t!376993 (ite c!1020249 lt!2291125 (t!376993 (exprs!5669 (h!69980 zl!343)))))))))

(declare-fun e!3544994 () Regex!15785)

(declare-fun b!5770436 () Bool)

(assert (=> b!5770436 (= e!3544994 (h!69979 (ite c!1020249 lt!2291125 (t!376993 (exprs!5669 (h!69980 zl!343))))))))

(declare-fun b!5770437 () Bool)

(declare-fun e!3544991 () Bool)

(declare-fun e!3544990 () Bool)

(assert (=> b!5770437 (= e!3544991 e!3544990)))

(declare-fun c!1020324 () Bool)

(declare-fun tail!11296 (List!63655) List!63655)

(assert (=> b!5770437 (= c!1020324 (isEmpty!35428 (tail!11296 (ite c!1020249 lt!2291125 (t!376993 (exprs!5669 (h!69980 zl!343)))))))))

(declare-fun b!5770438 () Bool)

(declare-fun e!3544989 () Regex!15785)

(assert (=> b!5770438 (= e!3544989 EmptyExpr!15785)))

(declare-fun b!5770439 () Bool)

(assert (=> b!5770439 (= e!3544989 (Concat!24630 (h!69979 (ite c!1020249 lt!2291125 (t!376993 (exprs!5669 (h!69980 zl!343))))) (generalisedConcat!1400 (t!376993 (ite c!1020249 lt!2291125 (t!376993 (exprs!5669 (h!69980 zl!343))))))))))

(declare-fun b!5770440 () Bool)

(declare-fun lt!2291227 () Regex!15785)

(declare-fun isEmptyExpr!1268 (Regex!15785) Bool)

(assert (=> b!5770440 (= e!3544991 (isEmptyExpr!1268 lt!2291227))))

(declare-fun b!5770441 () Bool)

(declare-fun head!12201 (List!63655) Regex!15785)

(assert (=> b!5770441 (= e!3544990 (= lt!2291227 (head!12201 (ite c!1020249 lt!2291125 (t!376993 (exprs!5669 (h!69980 zl!343)))))))))

(declare-fun b!5770442 () Bool)

(declare-fun isConcat!791 (Regex!15785) Bool)

(assert (=> b!5770442 (= e!3544990 (isConcat!791 lt!2291227))))

(declare-fun b!5770443 () Bool)

(assert (=> b!5770443 (= e!3544994 e!3544989)))

(declare-fun c!1020325 () Bool)

(assert (=> b!5770443 (= c!1020325 ((_ is Cons!63531) (ite c!1020249 lt!2291125 (t!376993 (exprs!5669 (h!69980 zl!343))))))))

(declare-fun b!5770444 () Bool)

(declare-fun e!3544992 () Bool)

(assert (=> b!5770444 (= e!3544992 e!3544991)))

(declare-fun c!1020326 () Bool)

(assert (=> b!5770444 (= c!1020326 (isEmpty!35428 (ite c!1020249 lt!2291125 (t!376993 (exprs!5669 (h!69980 zl!343))))))))

(assert (=> d!1817370 e!3544992))

(declare-fun res!2435289 () Bool)

(assert (=> d!1817370 (=> (not res!2435289) (not e!3544992))))

(assert (=> d!1817370 (= res!2435289 (validRegex!7521 lt!2291227))))

(assert (=> d!1817370 (= lt!2291227 e!3544994)))

(declare-fun c!1020323 () Bool)

(assert (=> d!1817370 (= c!1020323 e!3544993)))

(declare-fun res!2435288 () Bool)

(assert (=> d!1817370 (=> (not res!2435288) (not e!3544993))))

(assert (=> d!1817370 (= res!2435288 ((_ is Cons!63531) (ite c!1020249 lt!2291125 (t!376993 (exprs!5669 (h!69980 zl!343))))))))

(declare-fun forall!14900 (List!63655 Int) Bool)

(assert (=> d!1817370 (forall!14900 (ite c!1020249 lt!2291125 (t!376993 (exprs!5669 (h!69980 zl!343)))) lambda!313725)))

(assert (=> d!1817370 (= (generalisedConcat!1400 (ite c!1020249 lt!2291125 (t!376993 (exprs!5669 (h!69980 zl!343))))) lt!2291227)))

(assert (= (and d!1817370 res!2435288) b!5770435))

(assert (= (and d!1817370 c!1020323) b!5770436))

(assert (= (and d!1817370 (not c!1020323)) b!5770443))

(assert (= (and b!5770443 c!1020325) b!5770439))

(assert (= (and b!5770443 (not c!1020325)) b!5770438))

(assert (= (and d!1817370 res!2435289) b!5770444))

(assert (= (and b!5770444 c!1020326) b!5770440))

(assert (= (and b!5770444 (not c!1020326)) b!5770437))

(assert (= (and b!5770437 c!1020324) b!5770441))

(assert (= (and b!5770437 (not c!1020324)) b!5770442))

(declare-fun m!6715140 () Bool)

(assert (=> b!5770439 m!6715140))

(declare-fun m!6715142 () Bool)

(assert (=> b!5770444 m!6715142))

(declare-fun m!6715144 () Bool)

(assert (=> b!5770440 m!6715144))

(declare-fun m!6715146 () Bool)

(assert (=> b!5770441 m!6715146))

(declare-fun m!6715148 () Bool)

(assert (=> d!1817370 m!6715148))

(declare-fun m!6715150 () Bool)

(assert (=> d!1817370 m!6715150))

(declare-fun m!6715152 () Bool)

(assert (=> b!5770437 m!6715152))

(assert (=> b!5770437 m!6715152))

(declare-fun m!6715154 () Bool)

(assert (=> b!5770437 m!6715154))

(declare-fun m!6715156 () Bool)

(assert (=> b!5770435 m!6715156))

(declare-fun m!6715158 () Bool)

(assert (=> b!5770442 m!6715158))

(assert (=> bm!444334 d!1817370))

(declare-fun d!1817372 () Bool)

(assert (=> d!1817372 (= (Exists!2885 (ite c!1020252 lambda!313686 (ite c!1020250 lambda!313690 lambda!313702))) (choose!43778 (ite c!1020252 lambda!313686 (ite c!1020250 lambda!313690 lambda!313702))))))

(declare-fun bs!1353544 () Bool)

(assert (= bs!1353544 d!1817372))

(declare-fun m!6715160 () Bool)

(assert (=> bs!1353544 m!6715160))

(assert (=> bm!444430 d!1817372))

(declare-fun d!1817374 () Bool)

(assert (=> d!1817374 (= (flatMap!1398 (ite c!1020249 lt!2291006 lt!2291113) (ite c!1020249 lambda!313681 lambda!313681)) (dynLambda!24869 (ite c!1020249 lambda!313681 lambda!313681) (ite c!1020249 lt!2290984 lt!2290989)))))

(declare-fun lt!2291228 () Unit!156690)

(assert (=> d!1817374 (= lt!2291228 (choose!43783 (ite c!1020249 lt!2291006 lt!2291113) (ite c!1020249 lt!2290984 lt!2290989) (ite c!1020249 lambda!313681 lambda!313681)))))

(assert (=> d!1817374 (= (ite c!1020249 lt!2291006 lt!2291113) (store ((as const (Array Context!10338 Bool)) false) (ite c!1020249 lt!2290984 lt!2290989) true))))

(assert (=> d!1817374 (= (lemmaFlatMapOnSingletonSet!930 (ite c!1020249 lt!2291006 lt!2291113) (ite c!1020249 lt!2290984 lt!2290989) (ite c!1020249 lambda!313681 lambda!313681)) lt!2291228)))

(declare-fun b_lambda!217755 () Bool)

(assert (=> (not b_lambda!217755) (not d!1817374)))

(declare-fun bs!1353545 () Bool)

(assert (= bs!1353545 d!1817374))

(declare-fun m!6715162 () Bool)

(assert (=> bs!1353545 m!6715162))

(declare-fun m!6715164 () Bool)

(assert (=> bs!1353545 m!6715164))

(declare-fun m!6715166 () Bool)

(assert (=> bs!1353545 m!6715166))

(declare-fun m!6715168 () Bool)

(assert (=> bs!1353545 m!6715168))

(assert (=> bm!444298 d!1817374))

(declare-fun d!1817376 () Bool)

(assert (=> d!1817376 (= (Exists!2885 (ite c!1020242 lambda!313685 (ite c!1020250 lambda!313692 (ite c!1020244 lambda!313700 lambda!313705)))) (choose!43778 (ite c!1020242 lambda!313685 (ite c!1020250 lambda!313692 (ite c!1020244 lambda!313700 lambda!313705)))))))

(declare-fun bs!1353546 () Bool)

(assert (= bs!1353546 d!1817376))

(declare-fun m!6715170 () Bool)

(assert (=> bs!1353546 m!6715170))

(assert (=> bm!444477 d!1817376))

(declare-fun d!1817378 () Bool)

(assert (=> d!1817378 (forall!14900 (++!13999 lt!2291074 lt!2291047) (ite c!1020250 lambda!313695 lambda!313697))))

(declare-fun lt!2291231 () Unit!156690)

(declare-fun choose!43787 (List!63655 List!63655 Int) Unit!156690)

(assert (=> d!1817378 (= lt!2291231 (choose!43787 lt!2291074 lt!2291047 (ite c!1020250 lambda!313695 lambda!313697)))))

(assert (=> d!1817378 (forall!14900 lt!2291074 (ite c!1020250 lambda!313695 lambda!313697))))

(assert (=> d!1817378 (= (lemmaConcatPreservesForall!320 lt!2291074 lt!2291047 (ite c!1020250 lambda!313695 lambda!313697)) lt!2291231)))

(declare-fun bs!1353547 () Bool)

(assert (= bs!1353547 d!1817378))

(assert (=> bs!1353547 m!6714934))

(assert (=> bs!1353547 m!6714934))

(declare-fun m!6715172 () Bool)

(assert (=> bs!1353547 m!6715172))

(declare-fun m!6715174 () Bool)

(assert (=> bs!1353547 m!6715174))

(declare-fun m!6715176 () Bool)

(assert (=> bs!1353547 m!6715176))

(assert (=> bm!444384 d!1817378))

(declare-fun d!1817380 () Bool)

(assert (=> d!1817380 (= (isDefined!12497 (ite c!1020242 call!444294 (ite c!1020252 call!444301 (ite c!1020250 lt!2291112 (ite c!1020244 lt!2290997 call!444345))))) (not (isEmpty!35429 (ite c!1020242 call!444294 (ite c!1020252 call!444301 (ite c!1020250 lt!2291112 (ite c!1020244 lt!2290997 call!444345)))))))))

(declare-fun bs!1353548 () Bool)

(assert (= bs!1353548 d!1817380))

(declare-fun m!6715178 () Bool)

(assert (=> bs!1353548 m!6715178))

(assert (=> bm!444410 d!1817380))

(declare-fun d!1817382 () Bool)

(assert (=> d!1817382 (= (get!21923 (ite c!1020250 lt!2291148 lt!2290997)) (v!51852 (ite c!1020250 lt!2291148 lt!2290997)))))

(assert (=> bm!444378 d!1817382))

(declare-fun bs!1353549 () Bool)

(declare-fun d!1817384 () Bool)

(assert (= bs!1353549 (and d!1817384 b!5770177)))

(declare-fun lambda!313726 () Int)

(assert (=> bs!1353549 (= lambda!313726 lambda!313695)))

(declare-fun bs!1353550 () Bool)

(assert (= bs!1353550 (and d!1817384 b!5770193)))

(assert (=> bs!1353550 (= lambda!313726 lambda!313697)))

(declare-fun bs!1353551 () Bool)

(assert (= bs!1353551 (and d!1817384 d!1817370)))

(assert (=> bs!1353551 (= lambda!313726 lambda!313725)))

(declare-fun e!3544999 () Bool)

(declare-fun b!5770445 () Bool)

(assert (=> b!5770445 (= e!3544999 (isEmpty!35428 (t!376993 (ite c!1020249 lt!2291098 (ite c!1020242 lt!2291164 lt!2291096)))))))

(declare-fun b!5770446 () Bool)

(declare-fun e!3545000 () Regex!15785)

(assert (=> b!5770446 (= e!3545000 (h!69979 (ite c!1020249 lt!2291098 (ite c!1020242 lt!2291164 lt!2291096))))))

(declare-fun b!5770447 () Bool)

(declare-fun e!3544997 () Bool)

(declare-fun e!3544996 () Bool)

(assert (=> b!5770447 (= e!3544997 e!3544996)))

(declare-fun c!1020328 () Bool)

(assert (=> b!5770447 (= c!1020328 (isEmpty!35428 (tail!11296 (ite c!1020249 lt!2291098 (ite c!1020242 lt!2291164 lt!2291096)))))))

(declare-fun b!5770448 () Bool)

(declare-fun e!3544995 () Regex!15785)

(assert (=> b!5770448 (= e!3544995 EmptyExpr!15785)))

(declare-fun b!5770449 () Bool)

(assert (=> b!5770449 (= e!3544995 (Concat!24630 (h!69979 (ite c!1020249 lt!2291098 (ite c!1020242 lt!2291164 lt!2291096))) (generalisedConcat!1400 (t!376993 (ite c!1020249 lt!2291098 (ite c!1020242 lt!2291164 lt!2291096))))))))

(declare-fun b!5770450 () Bool)

(declare-fun lt!2291232 () Regex!15785)

(assert (=> b!5770450 (= e!3544997 (isEmptyExpr!1268 lt!2291232))))

(declare-fun b!5770451 () Bool)

(assert (=> b!5770451 (= e!3544996 (= lt!2291232 (head!12201 (ite c!1020249 lt!2291098 (ite c!1020242 lt!2291164 lt!2291096)))))))

(declare-fun b!5770452 () Bool)

(assert (=> b!5770452 (= e!3544996 (isConcat!791 lt!2291232))))

(declare-fun b!5770453 () Bool)

(assert (=> b!5770453 (= e!3545000 e!3544995)))

(declare-fun c!1020329 () Bool)

(assert (=> b!5770453 (= c!1020329 ((_ is Cons!63531) (ite c!1020249 lt!2291098 (ite c!1020242 lt!2291164 lt!2291096))))))

(declare-fun b!5770454 () Bool)

(declare-fun e!3544998 () Bool)

(assert (=> b!5770454 (= e!3544998 e!3544997)))

(declare-fun c!1020330 () Bool)

(assert (=> b!5770454 (= c!1020330 (isEmpty!35428 (ite c!1020249 lt!2291098 (ite c!1020242 lt!2291164 lt!2291096))))))

(assert (=> d!1817384 e!3544998))

(declare-fun res!2435291 () Bool)

(assert (=> d!1817384 (=> (not res!2435291) (not e!3544998))))

(assert (=> d!1817384 (= res!2435291 (validRegex!7521 lt!2291232))))

(assert (=> d!1817384 (= lt!2291232 e!3545000)))

(declare-fun c!1020327 () Bool)

(assert (=> d!1817384 (= c!1020327 e!3544999)))

(declare-fun res!2435290 () Bool)

(assert (=> d!1817384 (=> (not res!2435290) (not e!3544999))))

(assert (=> d!1817384 (= res!2435290 ((_ is Cons!63531) (ite c!1020249 lt!2291098 (ite c!1020242 lt!2291164 lt!2291096))))))

(assert (=> d!1817384 (forall!14900 (ite c!1020249 lt!2291098 (ite c!1020242 lt!2291164 lt!2291096)) lambda!313726)))

(assert (=> d!1817384 (= (generalisedConcat!1400 (ite c!1020249 lt!2291098 (ite c!1020242 lt!2291164 lt!2291096))) lt!2291232)))

(assert (= (and d!1817384 res!2435290) b!5770445))

(assert (= (and d!1817384 c!1020327) b!5770446))

(assert (= (and d!1817384 (not c!1020327)) b!5770453))

(assert (= (and b!5770453 c!1020329) b!5770449))

(assert (= (and b!5770453 (not c!1020329)) b!5770448))

(assert (= (and d!1817384 res!2435291) b!5770454))

(assert (= (and b!5770454 c!1020330) b!5770450))

(assert (= (and b!5770454 (not c!1020330)) b!5770447))

(assert (= (and b!5770447 c!1020328) b!5770451))

(assert (= (and b!5770447 (not c!1020328)) b!5770452))

(declare-fun m!6715180 () Bool)

(assert (=> b!5770449 m!6715180))

(declare-fun m!6715182 () Bool)

(assert (=> b!5770454 m!6715182))

(declare-fun m!6715184 () Bool)

(assert (=> b!5770450 m!6715184))

(declare-fun m!6715186 () Bool)

(assert (=> b!5770451 m!6715186))

(declare-fun m!6715188 () Bool)

(assert (=> d!1817384 m!6715188))

(declare-fun m!6715190 () Bool)

(assert (=> d!1817384 m!6715190))

(declare-fun m!6715192 () Bool)

(assert (=> b!5770447 m!6715192))

(assert (=> b!5770447 m!6715192))

(declare-fun m!6715194 () Bool)

(assert (=> b!5770447 m!6715194))

(declare-fun m!6715196 () Bool)

(assert (=> b!5770445 m!6715196))

(declare-fun m!6715198 () Bool)

(assert (=> b!5770452 m!6715198))

(assert (=> bm!444441 d!1817384))

(declare-fun d!1817386 () Bool)

(declare-fun choose!43788 ((InoxSet Context!10338) Int) (InoxSet Context!10338))

(assert (=> d!1817386 (= (flatMap!1398 lt!2291025 lambda!313681) (choose!43788 lt!2291025 lambda!313681))))

(declare-fun bs!1353552 () Bool)

(assert (= bs!1353552 d!1817386))

(declare-fun m!6715200 () Bool)

(assert (=> bs!1353552 m!6715200))

(assert (=> b!5770153 d!1817386))

(declare-fun d!1817388 () Bool)

(assert (=> d!1817388 (= (flatMap!1398 lt!2291025 lambda!313681) (dynLambda!24869 lambda!313681 lt!2291089))))

(declare-fun lt!2291233 () Unit!156690)

(assert (=> d!1817388 (= lt!2291233 (choose!43783 lt!2291025 lt!2291089 lambda!313681))))

(assert (=> d!1817388 (= lt!2291025 (store ((as const (Array Context!10338 Bool)) false) lt!2291089 true))))

(assert (=> d!1817388 (= (lemmaFlatMapOnSingletonSet!930 lt!2291025 lt!2291089 lambda!313681) lt!2291233)))

(declare-fun b_lambda!217757 () Bool)

(assert (=> (not b_lambda!217757) (not d!1817388)))

(declare-fun bs!1353553 () Bool)

(assert (= bs!1353553 d!1817388))

(assert (=> bs!1353553 m!6714858))

(declare-fun m!6715202 () Bool)

(assert (=> bs!1353553 m!6715202))

(declare-fun m!6715204 () Bool)

(assert (=> bs!1353553 m!6715204))

(assert (=> bs!1353553 m!6714814))

(assert (=> b!5770153 d!1817388))

(declare-fun d!1817390 () Bool)

(assert (=> d!1817390 (= (flatMap!1398 z!1189 lambda!313681) (choose!43788 z!1189 lambda!313681))))

(declare-fun bs!1353554 () Bool)

(assert (= bs!1353554 d!1817390))

(declare-fun m!6715206 () Bool)

(assert (=> bs!1353554 m!6715206))

(assert (=> b!5770153 d!1817390))

(declare-fun d!1817392 () Bool)

(declare-fun nullableFct!1855 (Regex!15785) Bool)

(assert (=> d!1817392 (= (nullable!5817 (h!69979 (exprs!5669 (h!69980 zl!343)))) (nullableFct!1855 (h!69979 (exprs!5669 (h!69980 zl!343)))))))

(declare-fun bs!1353555 () Bool)

(assert (= bs!1353555 d!1817392))

(declare-fun m!6715208 () Bool)

(assert (=> bs!1353555 m!6715208))

(assert (=> b!5770153 d!1817392))

(declare-fun b!5770455 () Bool)

(declare-fun e!3545001 () (InoxSet Context!10338))

(assert (=> b!5770455 (= e!3545001 ((as const (Array Context!10338 Bool)) false))))

(declare-fun b!5770456 () Bool)

(declare-fun call!444525 () (InoxSet Context!10338))

(assert (=> b!5770456 (= e!3545001 call!444525)))

(declare-fun bm!444520 () Bool)

(assert (=> bm!444520 (= call!444525 (derivationStepZipperDown!1127 (h!69979 (exprs!5669 (Context!10339 (Cons!63531 (h!69979 (exprs!5669 (h!69980 zl!343))) (t!376993 (exprs!5669 (h!69980 zl!343))))))) (Context!10339 (t!376993 (exprs!5669 (Context!10339 (Cons!63531 (h!69979 (exprs!5669 (h!69980 zl!343))) (t!376993 (exprs!5669 (h!69980 zl!343)))))))) (h!69978 s!2326)))))

(declare-fun b!5770458 () Bool)

(declare-fun e!3545003 () Bool)

(assert (=> b!5770458 (= e!3545003 (nullable!5817 (h!69979 (exprs!5669 (Context!10339 (Cons!63531 (h!69979 (exprs!5669 (h!69980 zl!343))) (t!376993 (exprs!5669 (h!69980 zl!343)))))))))))

(declare-fun e!3545002 () (InoxSet Context!10338))

(declare-fun b!5770459 () Bool)

(assert (=> b!5770459 (= e!3545002 ((_ map or) call!444525 (derivationStepZipperUp!1053 (Context!10339 (t!376993 (exprs!5669 (Context!10339 (Cons!63531 (h!69979 (exprs!5669 (h!69980 zl!343))) (t!376993 (exprs!5669 (h!69980 zl!343)))))))) (h!69978 s!2326))))))

(declare-fun d!1817394 () Bool)

(declare-fun c!1020331 () Bool)

(assert (=> d!1817394 (= c!1020331 e!3545003)))

(declare-fun res!2435292 () Bool)

(assert (=> d!1817394 (=> (not res!2435292) (not e!3545003))))

(assert (=> d!1817394 (= res!2435292 ((_ is Cons!63531) (exprs!5669 (Context!10339 (Cons!63531 (h!69979 (exprs!5669 (h!69980 zl!343))) (t!376993 (exprs!5669 (h!69980 zl!343))))))))))

(assert (=> d!1817394 (= (derivationStepZipperUp!1053 (Context!10339 (Cons!63531 (h!69979 (exprs!5669 (h!69980 zl!343))) (t!376993 (exprs!5669 (h!69980 zl!343))))) (h!69978 s!2326)) e!3545002)))

(declare-fun b!5770457 () Bool)

(assert (=> b!5770457 (= e!3545002 e!3545001)))

(declare-fun c!1020332 () Bool)

(assert (=> b!5770457 (= c!1020332 ((_ is Cons!63531) (exprs!5669 (Context!10339 (Cons!63531 (h!69979 (exprs!5669 (h!69980 zl!343))) (t!376993 (exprs!5669 (h!69980 zl!343))))))))))

(assert (= (and d!1817394 res!2435292) b!5770458))

(assert (= (and d!1817394 c!1020331) b!5770459))

(assert (= (and d!1817394 (not c!1020331)) b!5770457))

(assert (= (and b!5770457 c!1020332) b!5770456))

(assert (= (and b!5770457 (not c!1020332)) b!5770455))

(assert (= (or b!5770459 b!5770456) bm!444520))

(declare-fun m!6715210 () Bool)

(assert (=> bm!444520 m!6715210))

(declare-fun m!6715212 () Bool)

(assert (=> b!5770458 m!6715212))

(declare-fun m!6715214 () Bool)

(assert (=> b!5770459 m!6715214))

(assert (=> b!5770153 d!1817394))

(declare-fun bs!1353556 () Bool)

(declare-fun d!1817396 () Bool)

(assert (= bs!1353556 (and d!1817396 b!5770153)))

(declare-fun lambda!313729 () Int)

(assert (=> bs!1353556 (= lambda!313729 lambda!313681)))

(assert (=> d!1817396 true))

(assert (=> d!1817396 (= (derivationStepZipper!1862 lt!2291025 (h!69978 s!2326)) (flatMap!1398 lt!2291025 lambda!313729))))

(declare-fun bs!1353557 () Bool)

(assert (= bs!1353557 d!1817396))

(declare-fun m!6715216 () Bool)

(assert (=> bs!1353557 m!6715216))

(assert (=> b!5770153 d!1817396))

(declare-fun d!1817398 () Bool)

(assert (=> d!1817398 (= (flatMap!1398 z!1189 lambda!313681) (dynLambda!24869 lambda!313681 (h!69980 zl!343)))))

(declare-fun lt!2291234 () Unit!156690)

(assert (=> d!1817398 (= lt!2291234 (choose!43783 z!1189 (h!69980 zl!343) lambda!313681))))

(assert (=> d!1817398 (= z!1189 (store ((as const (Array Context!10338 Bool)) false) (h!69980 zl!343) true))))

(assert (=> d!1817398 (= (lemmaFlatMapOnSingletonSet!930 z!1189 (h!69980 zl!343) lambda!313681) lt!2291234)))

(declare-fun b_lambda!217759 () Bool)

(assert (=> (not b_lambda!217759) (not d!1817398)))

(declare-fun bs!1353558 () Bool)

(assert (= bs!1353558 d!1817398))

(assert (=> bs!1353558 m!6714850))

(declare-fun m!6715218 () Bool)

(assert (=> bs!1353558 m!6715218))

(declare-fun m!6715220 () Bool)

(assert (=> bs!1353558 m!6715220))

(declare-fun m!6715222 () Bool)

(assert (=> bs!1353558 m!6715222))

(assert (=> b!5770153 d!1817398))

(declare-fun b!5770462 () Bool)

(declare-fun e!3545004 () (InoxSet Context!10338))

(assert (=> b!5770462 (= e!3545004 ((as const (Array Context!10338 Bool)) false))))

(declare-fun b!5770463 () Bool)

(declare-fun call!444526 () (InoxSet Context!10338))

(assert (=> b!5770463 (= e!3545004 call!444526)))

(declare-fun bm!444521 () Bool)

(assert (=> bm!444521 (= call!444526 (derivationStepZipperDown!1127 (h!69979 (exprs!5669 lt!2291089)) (Context!10339 (t!376993 (exprs!5669 lt!2291089))) (h!69978 s!2326)))))

(declare-fun b!5770465 () Bool)

(declare-fun e!3545006 () Bool)

(assert (=> b!5770465 (= e!3545006 (nullable!5817 (h!69979 (exprs!5669 lt!2291089))))))

(declare-fun b!5770466 () Bool)

(declare-fun e!3545005 () (InoxSet Context!10338))

(assert (=> b!5770466 (= e!3545005 ((_ map or) call!444526 (derivationStepZipperUp!1053 (Context!10339 (t!376993 (exprs!5669 lt!2291089))) (h!69978 s!2326))))))

(declare-fun d!1817400 () Bool)

(declare-fun c!1020335 () Bool)

(assert (=> d!1817400 (= c!1020335 e!3545006)))

(declare-fun res!2435293 () Bool)

(assert (=> d!1817400 (=> (not res!2435293) (not e!3545006))))

(assert (=> d!1817400 (= res!2435293 ((_ is Cons!63531) (exprs!5669 lt!2291089)))))

(assert (=> d!1817400 (= (derivationStepZipperUp!1053 lt!2291089 (h!69978 s!2326)) e!3545005)))

(declare-fun b!5770464 () Bool)

(assert (=> b!5770464 (= e!3545005 e!3545004)))

(declare-fun c!1020336 () Bool)

(assert (=> b!5770464 (= c!1020336 ((_ is Cons!63531) (exprs!5669 lt!2291089)))))

(assert (= (and d!1817400 res!2435293) b!5770465))

(assert (= (and d!1817400 c!1020335) b!5770466))

(assert (= (and d!1817400 (not c!1020335)) b!5770464))

(assert (= (and b!5770464 c!1020336) b!5770463))

(assert (= (and b!5770464 (not c!1020336)) b!5770462))

(assert (= (or b!5770466 b!5770463) bm!444521))

(declare-fun m!6715224 () Bool)

(assert (=> bm!444521 m!6715224))

(declare-fun m!6715226 () Bool)

(assert (=> b!5770465 m!6715226))

(declare-fun m!6715228 () Bool)

(assert (=> b!5770466 m!6715228))

(assert (=> b!5770153 d!1817400))

(declare-fun b!5770467 () Bool)

(declare-fun e!3545007 () (InoxSet Context!10338))

(assert (=> b!5770467 (= e!3545007 ((as const (Array Context!10338 Bool)) false))))

(declare-fun b!5770468 () Bool)

(declare-fun call!444527 () (InoxSet Context!10338))

(assert (=> b!5770468 (= e!3545007 call!444527)))

(declare-fun bm!444522 () Bool)

(assert (=> bm!444522 (= call!444527 (derivationStepZipperDown!1127 (h!69979 (exprs!5669 (h!69980 zl!343))) (Context!10339 (t!376993 (exprs!5669 (h!69980 zl!343)))) (h!69978 s!2326)))))

(declare-fun b!5770470 () Bool)

(declare-fun e!3545009 () Bool)

(assert (=> b!5770470 (= e!3545009 (nullable!5817 (h!69979 (exprs!5669 (h!69980 zl!343)))))))

(declare-fun b!5770471 () Bool)

(declare-fun e!3545008 () (InoxSet Context!10338))

(assert (=> b!5770471 (= e!3545008 ((_ map or) call!444527 (derivationStepZipperUp!1053 (Context!10339 (t!376993 (exprs!5669 (h!69980 zl!343)))) (h!69978 s!2326))))))

(declare-fun d!1817402 () Bool)

(declare-fun c!1020337 () Bool)

(assert (=> d!1817402 (= c!1020337 e!3545009)))

(declare-fun res!2435294 () Bool)

(assert (=> d!1817402 (=> (not res!2435294) (not e!3545009))))

(assert (=> d!1817402 (= res!2435294 ((_ is Cons!63531) (exprs!5669 (h!69980 zl!343))))))

(assert (=> d!1817402 (= (derivationStepZipperUp!1053 (h!69980 zl!343) (h!69978 s!2326)) e!3545008)))

(declare-fun b!5770469 () Bool)

(assert (=> b!5770469 (= e!3545008 e!3545007)))

(declare-fun c!1020338 () Bool)

(assert (=> b!5770469 (= c!1020338 ((_ is Cons!63531) (exprs!5669 (h!69980 zl!343))))))

(assert (= (and d!1817402 res!2435294) b!5770470))

(assert (= (and d!1817402 c!1020337) b!5770471))

(assert (= (and d!1817402 (not c!1020337)) b!5770469))

(assert (= (and b!5770469 c!1020338) b!5770468))

(assert (= (and b!5770469 (not c!1020338)) b!5770467))

(assert (= (or b!5770471 b!5770468) bm!444522))

(declare-fun m!6715230 () Bool)

(assert (=> bm!444522 m!6715230))

(assert (=> b!5770470 m!6714856))

(declare-fun m!6715232 () Bool)

(assert (=> b!5770471 m!6715232))

(assert (=> b!5770153 d!1817402))

(declare-fun b!5770472 () Bool)

(declare-fun e!3545011 () Bool)

(assert (=> b!5770472 (= e!3545011 (nullable!5817 (regOne!32082 (h!69979 (exprs!5669 (h!69980 zl!343))))))))

(declare-fun b!5770473 () Bool)

(declare-fun e!3545014 () (InoxSet Context!10338))

(declare-fun call!444532 () (InoxSet Context!10338))

(assert (=> b!5770473 (= e!3545014 call!444532)))

(declare-fun bm!444523 () Bool)

(declare-fun call!444529 () (InoxSet Context!10338))

(declare-fun call!444530 () (InoxSet Context!10338))

(assert (=> bm!444523 (= call!444529 call!444530)))

(declare-fun b!5770474 () Bool)

(declare-fun e!3545010 () (InoxSet Context!10338))

(declare-fun call!444533 () (InoxSet Context!10338))

(assert (=> b!5770474 (= e!3545010 ((_ map or) call!444533 call!444529))))

(declare-fun bm!444524 () Bool)

(assert (=> bm!444524 (= call!444532 call!444529)))

(declare-fun b!5770475 () Bool)

(declare-fun e!3545012 () (InoxSet Context!10338))

(assert (=> b!5770475 (= e!3545012 ((_ map or) call!444533 call!444530))))

(declare-fun call!444531 () List!63655)

(declare-fun bm!444525 () Bool)

(declare-fun c!1020342 () Bool)

(assert (=> bm!444525 (= call!444533 (derivationStepZipperDown!1127 (ite c!1020342 (regOne!32083 (h!69979 (exprs!5669 (h!69980 zl!343)))) (regOne!32082 (h!69979 (exprs!5669 (h!69980 zl!343))))) (ite c!1020342 lt!2291089 (Context!10339 call!444531)) (h!69978 s!2326)))))

(declare-fun c!1020339 () Bool)

(declare-fun c!1020340 () Bool)

(declare-fun bm!444526 () Bool)

(assert (=> bm!444526 (= call!444531 ($colon$colon!1777 (exprs!5669 lt!2291089) (ite (or c!1020339 c!1020340) (regTwo!32082 (h!69979 (exprs!5669 (h!69980 zl!343)))) (h!69979 (exprs!5669 (h!69980 zl!343))))))))

(declare-fun b!5770477 () Bool)

(assert (=> b!5770477 (= e!3545010 e!3545014)))

(assert (=> b!5770477 (= c!1020340 ((_ is Concat!24630) (h!69979 (exprs!5669 (h!69980 zl!343)))))))

(declare-fun b!5770478 () Bool)

(assert (=> b!5770478 (= c!1020339 e!3545011)))

(declare-fun res!2435295 () Bool)

(assert (=> b!5770478 (=> (not res!2435295) (not e!3545011))))

(assert (=> b!5770478 (= res!2435295 ((_ is Concat!24630) (h!69979 (exprs!5669 (h!69980 zl!343)))))))

(assert (=> b!5770478 (= e!3545012 e!3545010)))

(declare-fun b!5770476 () Bool)

(declare-fun c!1020343 () Bool)

(assert (=> b!5770476 (= c!1020343 ((_ is Star!15785) (h!69979 (exprs!5669 (h!69980 zl!343)))))))

(declare-fun e!3545013 () (InoxSet Context!10338))

(assert (=> b!5770476 (= e!3545014 e!3545013)))

(declare-fun d!1817404 () Bool)

(declare-fun c!1020341 () Bool)

(assert (=> d!1817404 (= c!1020341 (and ((_ is ElementMatch!15785) (h!69979 (exprs!5669 (h!69980 zl!343)))) (= (c!1020255 (h!69979 (exprs!5669 (h!69980 zl!343)))) (h!69978 s!2326))))))

(declare-fun e!3545015 () (InoxSet Context!10338))

(assert (=> d!1817404 (= (derivationStepZipperDown!1127 (h!69979 (exprs!5669 (h!69980 zl!343))) lt!2291089 (h!69978 s!2326)) e!3545015)))

(declare-fun bm!444527 () Bool)

(declare-fun call!444528 () List!63655)

(assert (=> bm!444527 (= call!444528 call!444531)))

(declare-fun b!5770479 () Bool)

(assert (=> b!5770479 (= e!3545015 (store ((as const (Array Context!10338 Bool)) false) lt!2291089 true))))

(declare-fun b!5770480 () Bool)

(assert (=> b!5770480 (= e!3545015 e!3545012)))

(assert (=> b!5770480 (= c!1020342 ((_ is Union!15785) (h!69979 (exprs!5669 (h!69980 zl!343)))))))

(declare-fun b!5770481 () Bool)

(assert (=> b!5770481 (= e!3545013 call!444532)))

(declare-fun b!5770482 () Bool)

(assert (=> b!5770482 (= e!3545013 ((as const (Array Context!10338 Bool)) false))))

(declare-fun bm!444528 () Bool)

(assert (=> bm!444528 (= call!444530 (derivationStepZipperDown!1127 (ite c!1020342 (regTwo!32083 (h!69979 (exprs!5669 (h!69980 zl!343)))) (ite c!1020339 (regTwo!32082 (h!69979 (exprs!5669 (h!69980 zl!343)))) (ite c!1020340 (regOne!32082 (h!69979 (exprs!5669 (h!69980 zl!343)))) (reg!16114 (h!69979 (exprs!5669 (h!69980 zl!343))))))) (ite (or c!1020342 c!1020339) lt!2291089 (Context!10339 call!444528)) (h!69978 s!2326)))))

(assert (= (and d!1817404 c!1020341) b!5770479))

(assert (= (and d!1817404 (not c!1020341)) b!5770480))

(assert (= (and b!5770480 c!1020342) b!5770475))

(assert (= (and b!5770480 (not c!1020342)) b!5770478))

(assert (= (and b!5770478 res!2435295) b!5770472))

(assert (= (and b!5770478 c!1020339) b!5770474))

(assert (= (and b!5770478 (not c!1020339)) b!5770477))

(assert (= (and b!5770477 c!1020340) b!5770473))

(assert (= (and b!5770477 (not c!1020340)) b!5770476))

(assert (= (and b!5770476 c!1020343) b!5770481))

(assert (= (and b!5770476 (not c!1020343)) b!5770482))

(assert (= (or b!5770473 b!5770481) bm!444527))

(assert (= (or b!5770473 b!5770481) bm!444524))

(assert (= (or b!5770474 bm!444527) bm!444526))

(assert (= (or b!5770474 bm!444524) bm!444523))

(assert (= (or b!5770475 bm!444523) bm!444528))

(assert (= (or b!5770475 b!5770474) bm!444525))

(declare-fun m!6715234 () Bool)

(assert (=> bm!444526 m!6715234))

(declare-fun m!6715236 () Bool)

(assert (=> b!5770472 m!6715236))

(declare-fun m!6715238 () Bool)

(assert (=> bm!444525 m!6715238))

(assert (=> b!5770479 m!6714814))

(declare-fun m!6715240 () Bool)

(assert (=> bm!444528 m!6715240))

(assert (=> b!5770153 d!1817404))

(declare-fun b!5770501 () Bool)

(declare-fun e!3545031 () Bool)

(declare-fun call!444542 () Bool)

(assert (=> b!5770501 (= e!3545031 call!444542)))

(declare-fun b!5770502 () Bool)

(declare-fun e!3545035 () Bool)

(declare-fun e!3545036 () Bool)

(assert (=> b!5770502 (= e!3545035 e!3545036)))

(declare-fun c!1020348 () Bool)

(assert (=> b!5770502 (= c!1020348 ((_ is Star!15785) r!7292))))

(declare-fun bm!444535 () Bool)

(declare-fun call!444541 () Bool)

(assert (=> bm!444535 (= call!444541 call!444542)))

(declare-fun b!5770503 () Bool)

(declare-fun e!3545034 () Bool)

(declare-fun e!3545032 () Bool)

(assert (=> b!5770503 (= e!3545034 e!3545032)))

(declare-fun res!2435307 () Bool)

(assert (=> b!5770503 (=> (not res!2435307) (not e!3545032))))

(declare-fun call!444540 () Bool)

(assert (=> b!5770503 (= res!2435307 call!444540)))

(declare-fun bm!444536 () Bool)

(declare-fun c!1020349 () Bool)

(assert (=> bm!444536 (= call!444540 (validRegex!7521 (ite c!1020349 (regOne!32083 r!7292) (regOne!32082 r!7292))))))

(declare-fun b!5770505 () Bool)

(assert (=> b!5770505 (= e!3545036 e!3545031)))

(declare-fun res!2435309 () Bool)

(assert (=> b!5770505 (= res!2435309 (not (nullable!5817 (reg!16114 r!7292))))))

(assert (=> b!5770505 (=> (not res!2435309) (not e!3545031))))

(declare-fun b!5770506 () Bool)

(declare-fun e!3545030 () Bool)

(assert (=> b!5770506 (= e!3545030 call!444541)))

(declare-fun b!5770507 () Bool)

(declare-fun res!2435308 () Bool)

(assert (=> b!5770507 (=> res!2435308 e!3545034)))

(assert (=> b!5770507 (= res!2435308 (not ((_ is Concat!24630) r!7292)))))

(declare-fun e!3545033 () Bool)

(assert (=> b!5770507 (= e!3545033 e!3545034)))

(declare-fun b!5770508 () Bool)

(assert (=> b!5770508 (= e!3545032 call!444541)))

(declare-fun b!5770509 () Bool)

(assert (=> b!5770509 (= e!3545036 e!3545033)))

(assert (=> b!5770509 (= c!1020349 ((_ is Union!15785) r!7292))))

(declare-fun bm!444537 () Bool)

(assert (=> bm!444537 (= call!444542 (validRegex!7521 (ite c!1020348 (reg!16114 r!7292) (ite c!1020349 (regTwo!32083 r!7292) (regTwo!32082 r!7292)))))))

(declare-fun d!1817406 () Bool)

(declare-fun res!2435306 () Bool)

(assert (=> d!1817406 (=> res!2435306 e!3545035)))

(assert (=> d!1817406 (= res!2435306 ((_ is ElementMatch!15785) r!7292))))

(assert (=> d!1817406 (= (validRegex!7521 r!7292) e!3545035)))

(declare-fun b!5770504 () Bool)

(declare-fun res!2435310 () Bool)

(assert (=> b!5770504 (=> (not res!2435310) (not e!3545030))))

(assert (=> b!5770504 (= res!2435310 call!444540)))

(assert (=> b!5770504 (= e!3545033 e!3545030)))

(assert (= (and d!1817406 (not res!2435306)) b!5770502))

(assert (= (and b!5770502 c!1020348) b!5770505))

(assert (= (and b!5770502 (not c!1020348)) b!5770509))

(assert (= (and b!5770505 res!2435309) b!5770501))

(assert (= (and b!5770509 c!1020349) b!5770504))

(assert (= (and b!5770509 (not c!1020349)) b!5770507))

(assert (= (and b!5770504 res!2435310) b!5770506))

(assert (= (and b!5770507 (not res!2435308)) b!5770503))

(assert (= (and b!5770503 res!2435307) b!5770508))

(assert (= (or b!5770506 b!5770508) bm!444535))

(assert (= (or b!5770504 b!5770503) bm!444536))

(assert (= (or b!5770501 bm!444535) bm!444537))

(declare-fun m!6715242 () Bool)

(assert (=> bm!444536 m!6715242))

(declare-fun m!6715244 () Bool)

(assert (=> b!5770505 m!6715244))

(declare-fun m!6715246 () Bool)

(assert (=> bm!444537 m!6715246))

(assert (=> start!592608 d!1817406))

(declare-fun d!1817408 () Bool)

(declare-fun e!3545039 () Bool)

(assert (=> d!1817408 e!3545039))

(declare-fun res!2435313 () Bool)

(assert (=> d!1817408 (=> (not res!2435313) (not e!3545039))))

(declare-fun lt!2291237 () List!63656)

(declare-fun noDuplicate!1689 (List!63656) Bool)

(assert (=> d!1817408 (= res!2435313 (noDuplicate!1689 lt!2291237))))

(declare-fun choose!43789 ((InoxSet Context!10338)) List!63656)

(assert (=> d!1817408 (= lt!2291237 (choose!43789 z!1189))))

(assert (=> d!1817408 (= (toList!9569 z!1189) lt!2291237)))

(declare-fun b!5770512 () Bool)

(declare-fun content!11601 (List!63656) (InoxSet Context!10338))

(assert (=> b!5770512 (= e!3545039 (= (content!11601 lt!2291237) z!1189))))

(assert (= (and d!1817408 res!2435313) b!5770512))

(declare-fun m!6715248 () Bool)

(assert (=> d!1817408 m!6715248))

(declare-fun m!6715250 () Bool)

(assert (=> d!1817408 m!6715250))

(declare-fun m!6715252 () Bool)

(assert (=> b!5770512 m!6715252))

(assert (=> b!5770172 d!1817408))

(declare-fun bs!1353559 () Bool)

(declare-fun b!5770520 () Bool)

(assert (= bs!1353559 (and b!5770520 d!1817368)))

(declare-fun lambda!313730 () Int)

(assert (=> bs!1353559 (not (= lambda!313730 lambda!313721))))

(declare-fun bs!1353560 () Bool)

(assert (= bs!1353560 (and b!5770520 b!5770189)))

(assert (=> bs!1353560 (not (= lambda!313730 lambda!313684))))

(declare-fun bs!1353561 () Bool)

(assert (= bs!1353561 (and b!5770520 b!5770180)))

(assert (=> bs!1353561 (not (= lambda!313730 lambda!313687))))

(declare-fun bs!1353562 () Bool)

(assert (= bs!1353562 (and b!5770520 b!5770193)))

(assert (=> bs!1353562 (not (= lambda!313730 lambda!313698))))

(declare-fun bs!1353563 () Bool)

(assert (= bs!1353563 (and b!5770520 b!5770330)))

(assert (=> bs!1353563 (not (= lambda!313730 lambda!313711))))

(assert (=> bs!1353561 (not (= lambda!313730 lambda!313686))))

(declare-fun bs!1353564 () Bool)

(assert (= bs!1353564 (and b!5770520 b!5770157)))

(assert (=> bs!1353564 (not (= lambda!313730 lambda!313690))))

(declare-fun bs!1353565 () Bool)

(assert (= bs!1353565 (and b!5770520 b!5770173)))

(assert (=> bs!1353565 (not (= lambda!313730 lambda!313703))))

(declare-fun bs!1353566 () Bool)

(assert (= bs!1353566 (and b!5770520 b!5770177)))

(assert (=> bs!1353566 (= (and (= s!2326 (_1!36185 lt!2291106)) (= (reg!16114 lt!2291057) (reg!16114 (regOne!32082 r!7292))) (= lt!2291057 lt!2291167)) (= lambda!313730 lambda!313693))))

(assert (=> bs!1353561 (not (= lambda!313730 lambda!313688))))

(assert (=> bs!1353564 (not (= lambda!313730 lambda!313691))))

(assert (=> bs!1353565 (not (= lambda!313730 lambda!313704))))

(assert (=> bs!1353559 (not (= lambda!313730 lambda!313722))))

(declare-fun bs!1353567 () Bool)

(assert (= bs!1353567 (and b!5770520 b!5770327)))

(assert (=> bs!1353567 (= (and (= s!2326 (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530)))) (= (reg!16114 lt!2291057) (reg!16114 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167))))) (= lt!2291057 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167))))) (= lambda!313730 lambda!313710))))

(assert (=> bs!1353565 (= (and (= s!2326 Nil!63530) (= (reg!16114 lt!2291057) (reg!16114 (regOne!32082 r!7292))) (= lt!2291057 lt!2291167)) (= lambda!313730 lambda!313705))))

(declare-fun bs!1353568 () Bool)

(assert (= bs!1353568 (and b!5770520 d!1817362)))

(assert (=> bs!1353568 (not (= lambda!313730 lambda!313716))))

(assert (=> bs!1353561 (not (= lambda!313730 lambda!313689))))

(assert (=> bs!1353562 (= (and (= s!2326 (_1!36185 lt!2291163)) (= (reg!16114 lt!2291057) (reg!16114 (regOne!32082 r!7292))) (= lt!2291057 lt!2291167)) (= lambda!313730 lambda!313702))))

(declare-fun bs!1353569 () Bool)

(assert (= bs!1353569 (and b!5770520 b!5770366)))

(assert (=> bs!1353569 (= (and (= s!2326 (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (_1!36185 lt!2291163) s!2326))) (= (reg!16114 lt!2291057) (reg!16114 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292))))))) (= lt!2291057 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292))))))) (= lambda!313730 lambda!313712))))

(assert (=> bs!1353562 (not (= lambda!313730 lambda!313700))))

(declare-fun bs!1353570 () Bool)

(assert (= bs!1353570 (and b!5770520 b!5770369)))

(assert (=> bs!1353570 (not (= lambda!313730 lambda!313713))))

(assert (=> bs!1353560 (not (= lambda!313730 lambda!313682))))

(assert (=> bs!1353566 (not (= lambda!313730 lambda!313694))))

(assert (=> bs!1353560 (not (= lambda!313730 lambda!313683))))

(assert (=> bs!1353566 (not (= lambda!313730 lambda!313692))))

(declare-fun bs!1353571 () Bool)

(assert (= bs!1353571 (and b!5770520 b!5770169)))

(assert (=> bs!1353571 (not (= lambda!313730 lambda!313680))))

(assert (=> bs!1353562 (not (= lambda!313730 lambda!313701))))

(assert (=> bs!1353562 (not (= lambda!313730 lambda!313699))))

(assert (=> bs!1353571 (not (= lambda!313730 lambda!313679))))

(assert (=> bs!1353560 (not (= lambda!313730 lambda!313685))))

(assert (=> b!5770520 true))

(assert (=> b!5770520 true))

(declare-fun bs!1353572 () Bool)

(declare-fun b!5770523 () Bool)

(assert (= bs!1353572 (and b!5770523 d!1817368)))

(declare-fun lambda!313731 () Int)

(assert (=> bs!1353572 (not (= lambda!313731 lambda!313721))))

(declare-fun bs!1353573 () Bool)

(assert (= bs!1353573 (and b!5770523 b!5770189)))

(assert (=> bs!1353573 (not (= lambda!313731 lambda!313684))))

(declare-fun bs!1353574 () Bool)

(assert (= bs!1353574 (and b!5770523 b!5770180)))

(assert (=> bs!1353574 (= (and (= (regOne!32082 lt!2291057) (regOne!32082 (regOne!32082 r!7292))) (= (regTwo!32082 lt!2291057) lt!2291065)) (= lambda!313731 lambda!313687))))

(declare-fun bs!1353575 () Bool)

(assert (= bs!1353575 (and b!5770523 b!5770193)))

(assert (=> bs!1353575 (not (= lambda!313731 lambda!313698))))

(declare-fun bs!1353576 () Bool)

(assert (= bs!1353576 (and b!5770523 b!5770330)))

(assert (=> bs!1353576 (= (and (= s!2326 (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530)))) (= (regOne!32082 lt!2291057) (regOne!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167))))) (= (regTwo!32082 lt!2291057) (regTwo!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))))) (= lambda!313731 lambda!313711))))

(assert (=> bs!1353574 (not (= lambda!313731 lambda!313686))))

(declare-fun bs!1353577 () Bool)

(assert (= bs!1353577 (and b!5770523 b!5770157)))

(assert (=> bs!1353577 (not (= lambda!313731 lambda!313690))))

(declare-fun bs!1353578 () Bool)

(assert (= bs!1353578 (and b!5770523 b!5770173)))

(assert (=> bs!1353578 (not (= lambda!313731 lambda!313703))))

(declare-fun bs!1353579 () Bool)

(assert (= bs!1353579 (and b!5770523 b!5770177)))

(assert (=> bs!1353579 (not (= lambda!313731 lambda!313693))))

(declare-fun bs!1353580 () Bool)

(assert (= bs!1353580 (and b!5770523 b!5770520)))

(assert (=> bs!1353580 (not (= lambda!313731 lambda!313730))))

(assert (=> bs!1353574 (not (= lambda!313731 lambda!313688))))

(assert (=> bs!1353577 (= (and (= (regOne!32082 lt!2291057) lt!2291167) (= (regTwo!32082 lt!2291057) (regTwo!32082 r!7292))) (= lambda!313731 lambda!313691))))

(assert (=> bs!1353578 (= (and (= s!2326 Nil!63530) (= (regOne!32082 lt!2291057) (reg!16114 (regOne!32082 r!7292))) (= (regTwo!32082 lt!2291057) lt!2291167)) (= lambda!313731 lambda!313704))))

(assert (=> bs!1353572 (= (and (= s!2326 (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530)) (= (regOne!32082 lt!2291057) (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292)))))) (= (regTwo!32082 lt!2291057) (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))))) (= lambda!313731 lambda!313722))))

(declare-fun bs!1353581 () Bool)

(assert (= bs!1353581 (and b!5770523 b!5770327)))

(assert (=> bs!1353581 (not (= lambda!313731 lambda!313710))))

(assert (=> bs!1353578 (not (= lambda!313731 lambda!313705))))

(declare-fun bs!1353582 () Bool)

(assert (= bs!1353582 (and b!5770523 d!1817362)))

(assert (=> bs!1353582 (not (= lambda!313731 lambda!313716))))

(assert (=> bs!1353574 (= (and (= (regOne!32082 lt!2291057) (regTwo!32082 (regOne!32082 r!7292))) (= (regTwo!32082 lt!2291057) lt!2291002)) (= lambda!313731 lambda!313689))))

(assert (=> bs!1353575 (not (= lambda!313731 lambda!313702))))

(declare-fun bs!1353583 () Bool)

(assert (= bs!1353583 (and b!5770523 b!5770366)))

(assert (=> bs!1353583 (not (= lambda!313731 lambda!313712))))

(assert (=> bs!1353575 (not (= lambda!313731 lambda!313700))))

(declare-fun bs!1353584 () Bool)

(assert (= bs!1353584 (and b!5770523 b!5770369)))

(assert (=> bs!1353584 (= (and (= s!2326 (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (_1!36185 lt!2291163) s!2326))) (= (regOne!32082 lt!2291057) (regOne!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292))))))) (= (regTwo!32082 lt!2291057) (regTwo!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))))) (= lambda!313731 lambda!313713))))

(assert (=> bs!1353573 (not (= lambda!313731 lambda!313682))))

(assert (=> bs!1353579 (= (and (= s!2326 (_1!36185 lt!2291106)) (= (regOne!32082 lt!2291057) (reg!16114 (regOne!32082 r!7292))) (= (regTwo!32082 lt!2291057) lt!2291167)) (= lambda!313731 lambda!313694))))

(assert (=> bs!1353573 (= (and (= (regOne!32082 lt!2291057) (regOne!32082 (regOne!32082 r!7292))) (= (regTwo!32082 lt!2291057) lt!2291182)) (= lambda!313731 lambda!313683))))

(assert (=> bs!1353579 (not (= lambda!313731 lambda!313692))))

(declare-fun bs!1353585 () Bool)

(assert (= bs!1353585 (and b!5770523 b!5770169)))

(assert (=> bs!1353585 (= (and (= (regOne!32082 lt!2291057) (regOne!32082 r!7292)) (= (regTwo!32082 lt!2291057) (regTwo!32082 r!7292))) (= lambda!313731 lambda!313680))))

(assert (=> bs!1353575 (= (and (= s!2326 (_1!36185 lt!2291163)) (= (regOne!32082 lt!2291057) (reg!16114 (regOne!32082 r!7292))) (= (regTwo!32082 lt!2291057) lt!2291167)) (= lambda!313731 lambda!313701))))

(assert (=> bs!1353575 (= (and (= (regOne!32082 lt!2291057) lt!2291100) (= (regTwo!32082 lt!2291057) (regTwo!32082 r!7292))) (= lambda!313731 lambda!313699))))

(assert (=> bs!1353585 (not (= lambda!313731 lambda!313679))))

(assert (=> bs!1353573 (= (and (= (regOne!32082 lt!2291057) (regTwo!32082 (regOne!32082 r!7292))) (= (regTwo!32082 lt!2291057) lt!2291109)) (= lambda!313731 lambda!313685))))

(assert (=> b!5770523 true))

(assert (=> b!5770523 true))

(declare-fun b!5770513 () Bool)

(declare-fun c!1020351 () Bool)

(assert (=> b!5770513 (= c!1020351 ((_ is Union!15785) lt!2291057))))

(declare-fun e!3545040 () Bool)

(declare-fun e!3545044 () Bool)

(assert (=> b!5770513 (= e!3545040 e!3545044)))

(declare-fun b!5770514 () Bool)

(declare-fun c!1020350 () Bool)

(assert (=> b!5770514 (= c!1020350 ((_ is ElementMatch!15785) lt!2291057))))

(declare-fun e!3545046 () Bool)

(assert (=> b!5770514 (= e!3545046 e!3545040)))

(declare-fun b!5770515 () Bool)

(declare-fun res!2435316 () Bool)

(declare-fun e!3545041 () Bool)

(assert (=> b!5770515 (=> res!2435316 e!3545041)))

(declare-fun call!444543 () Bool)

(assert (=> b!5770515 (= res!2435316 call!444543)))

(declare-fun e!3545042 () Bool)

(assert (=> b!5770515 (= e!3545042 e!3545041)))

(declare-fun c!1020353 () Bool)

(declare-fun bm!444538 () Bool)

(declare-fun call!444544 () Bool)

(assert (=> bm!444538 (= call!444544 (Exists!2885 (ite c!1020353 lambda!313730 lambda!313731)))))

(declare-fun b!5770516 () Bool)

(declare-fun e!3545043 () Bool)

(assert (=> b!5770516 (= e!3545043 call!444543)))

(declare-fun b!5770517 () Bool)

(declare-fun e!3545045 () Bool)

(assert (=> b!5770517 (= e!3545045 (matchRSpec!2888 (regTwo!32083 lt!2291057) s!2326))))

(declare-fun b!5770518 () Bool)

(assert (=> b!5770518 (= e!3545044 e!3545042)))

(assert (=> b!5770518 (= c!1020353 ((_ is Star!15785) lt!2291057))))

(declare-fun bm!444539 () Bool)

(assert (=> bm!444539 (= call!444543 (isEmpty!35427 s!2326))))

(declare-fun d!1817410 () Bool)

(declare-fun c!1020352 () Bool)

(assert (=> d!1817410 (= c!1020352 ((_ is EmptyExpr!15785) lt!2291057))))

(assert (=> d!1817410 (= (matchRSpec!2888 lt!2291057 s!2326) e!3545043)))

(declare-fun b!5770519 () Bool)

(assert (=> b!5770519 (= e!3545043 e!3545046)))

(declare-fun res!2435315 () Bool)

(assert (=> b!5770519 (= res!2435315 (not ((_ is EmptyLang!15785) lt!2291057)))))

(assert (=> b!5770519 (=> (not res!2435315) (not e!3545046))))

(assert (=> b!5770520 (= e!3545041 call!444544)))

(declare-fun b!5770521 () Bool)

(assert (=> b!5770521 (= e!3545044 e!3545045)))

(declare-fun res!2435314 () Bool)

(assert (=> b!5770521 (= res!2435314 (matchRSpec!2888 (regOne!32083 lt!2291057) s!2326))))

(assert (=> b!5770521 (=> res!2435314 e!3545045)))

(declare-fun b!5770522 () Bool)

(assert (=> b!5770522 (= e!3545040 (= s!2326 (Cons!63530 (c!1020255 lt!2291057) Nil!63530)))))

(assert (=> b!5770523 (= e!3545042 call!444544)))

(assert (= (and d!1817410 c!1020352) b!5770516))

(assert (= (and d!1817410 (not c!1020352)) b!5770519))

(assert (= (and b!5770519 res!2435315) b!5770514))

(assert (= (and b!5770514 c!1020350) b!5770522))

(assert (= (and b!5770514 (not c!1020350)) b!5770513))

(assert (= (and b!5770513 c!1020351) b!5770521))

(assert (= (and b!5770513 (not c!1020351)) b!5770518))

(assert (= (and b!5770521 (not res!2435314)) b!5770517))

(assert (= (and b!5770518 c!1020353) b!5770515))

(assert (= (and b!5770518 (not c!1020353)) b!5770523))

(assert (= (and b!5770515 (not res!2435316)) b!5770520))

(assert (= (or b!5770520 b!5770523) bm!444538))

(assert (= (or b!5770516 b!5770515) bm!444539))

(declare-fun m!6715254 () Bool)

(assert (=> bm!444538 m!6715254))

(declare-fun m!6715256 () Bool)

(assert (=> b!5770517 m!6715256))

(declare-fun m!6715258 () Bool)

(assert (=> bm!444539 m!6715258))

(declare-fun m!6715260 () Bool)

(assert (=> b!5770521 m!6715260))

(assert (=> b!5770135 d!1817410))

(declare-fun d!1817412 () Bool)

(assert (=> d!1817412 (= (matchR!7970 (Concat!24630 (Union!15785 (regOne!32083 (regOne!32082 r!7292)) (regTwo!32083 (regOne!32082 r!7292))) (regTwo!32082 r!7292)) s!2326) (matchR!7970 (Union!15785 (Concat!24630 (regOne!32083 (regOne!32082 r!7292)) (regTwo!32082 r!7292)) (Concat!24630 (regTwo!32083 (regOne!32082 r!7292)) (regTwo!32082 r!7292))) s!2326))))

(declare-fun lt!2291240 () Unit!156690)

(declare-fun choose!43790 (Regex!15785 Regex!15785 Regex!15785 List!63654) Unit!156690)

(assert (=> d!1817412 (= lt!2291240 (choose!43790 (regOne!32083 (regOne!32082 r!7292)) (regTwo!32083 (regOne!32082 r!7292)) (regTwo!32082 r!7292) s!2326))))

(assert (=> d!1817412 (validRegex!7521 (regOne!32083 (regOne!32082 r!7292)))))

(assert (=> d!1817412 (= (lemmaConcatDistributesInUnion!44 (regOne!32083 (regOne!32082 r!7292)) (regTwo!32083 (regOne!32082 r!7292)) (regTwo!32082 r!7292) s!2326) lt!2291240)))

(declare-fun bs!1353586 () Bool)

(assert (= bs!1353586 d!1817412))

(declare-fun m!6715262 () Bool)

(assert (=> bs!1353586 m!6715262))

(declare-fun m!6715264 () Bool)

(assert (=> bs!1353586 m!6715264))

(declare-fun m!6715266 () Bool)

(assert (=> bs!1353586 m!6715266))

(declare-fun m!6715268 () Bool)

(assert (=> bs!1353586 m!6715268))

(assert (=> b!5770135 d!1817412))

(declare-fun d!1817414 () Bool)

(assert (=> d!1817414 (= (nullable!5817 (regOne!32083 (regOne!32082 r!7292))) (nullableFct!1855 (regOne!32083 (regOne!32082 r!7292))))))

(declare-fun bs!1353587 () Bool)

(assert (= bs!1353587 d!1817414))

(declare-fun m!6715270 () Bool)

(assert (=> bs!1353587 m!6715270))

(assert (=> b!5770135 d!1817414))

(declare-fun d!1817416 () Bool)

(declare-fun c!1020354 () Bool)

(assert (=> d!1817416 (= c!1020354 (isEmpty!35427 s!2326))))

(declare-fun e!3545047 () Bool)

(assert (=> d!1817416 (= (matchZipper!1923 lt!2291006 s!2326) e!3545047)))

(declare-fun b!5770524 () Bool)

(assert (=> b!5770524 (= e!3545047 (nullableZipper!1709 lt!2291006))))

(declare-fun b!5770525 () Bool)

(assert (=> b!5770525 (= e!3545047 (matchZipper!1923 (derivationStepZipper!1862 lt!2291006 (head!12200 s!2326)) (tail!11295 s!2326)))))

(assert (= (and d!1817416 c!1020354) b!5770524))

(assert (= (and d!1817416 (not c!1020354)) b!5770525))

(assert (=> d!1817416 m!6715258))

(declare-fun m!6715272 () Bool)

(assert (=> b!5770524 m!6715272))

(declare-fun m!6715274 () Bool)

(assert (=> b!5770525 m!6715274))

(assert (=> b!5770525 m!6715274))

(declare-fun m!6715276 () Bool)

(assert (=> b!5770525 m!6715276))

(declare-fun m!6715278 () Bool)

(assert (=> b!5770525 m!6715278))

(assert (=> b!5770525 m!6715276))

(assert (=> b!5770525 m!6715278))

(declare-fun m!6715280 () Bool)

(assert (=> b!5770525 m!6715280))

(assert (=> b!5770135 d!1817416))

(declare-fun d!1817418 () Bool)

(assert (=> d!1817418 (= (matchR!7970 lt!2291144 s!2326) (matchRSpec!2888 lt!2291144 s!2326))))

(declare-fun lt!2291241 () Unit!156690)

(assert (=> d!1817418 (= lt!2291241 (choose!43784 lt!2291144 s!2326))))

(assert (=> d!1817418 (validRegex!7521 lt!2291144)))

(assert (=> d!1817418 (= (mainMatchTheorem!2888 lt!2291144 s!2326) lt!2291241)))

(declare-fun bs!1353588 () Bool)

(assert (= bs!1353588 d!1817418))

(declare-fun m!6715282 () Bool)

(assert (=> bs!1353588 m!6715282))

(declare-fun m!6715284 () Bool)

(assert (=> bs!1353588 m!6715284))

(declare-fun m!6715286 () Bool)

(assert (=> bs!1353588 m!6715286))

(declare-fun m!6715288 () Bool)

(assert (=> bs!1353588 m!6715288))

(assert (=> b!5770135 d!1817418))

(declare-fun bm!444540 () Bool)

(declare-fun call!444545 () Bool)

(assert (=> bm!444540 (= call!444545 (isEmpty!35427 s!2326))))

(declare-fun b!5770527 () Bool)

(declare-fun e!3545052 () Bool)

(declare-fun lt!2291242 () Bool)

(assert (=> b!5770527 (= e!3545052 (not lt!2291242))))

(declare-fun b!5770528 () Bool)

(declare-fun e!3545051 () Bool)

(declare-fun e!3545049 () Bool)

(assert (=> b!5770528 (= e!3545051 e!3545049)))

(declare-fun res!2435322 () Bool)

(assert (=> b!5770528 (=> res!2435322 e!3545049)))

(assert (=> b!5770528 (= res!2435322 call!444545)))

(declare-fun b!5770529 () Bool)

(declare-fun res!2435318 () Bool)

(assert (=> b!5770529 (=> res!2435318 e!3545049)))

(assert (=> b!5770529 (= res!2435318 (not (isEmpty!35427 (tail!11295 s!2326))))))

(declare-fun e!3545050 () Bool)

(declare-fun b!5770530 () Bool)

(assert (=> b!5770530 (= e!3545050 (matchR!7970 (derivativeStep!4563 (ite c!1020242 (Concat!24630 (Concat!24630 (regOne!32082 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))) lt!2291109) (ite c!1020252 lt!2291128 lt!2291158)) (head!12200 s!2326)) (tail!11295 s!2326)))))

(declare-fun b!5770531 () Bool)

(declare-fun e!3545054 () Bool)

(assert (=> b!5770531 (= e!3545054 e!3545051)))

(declare-fun res!2435324 () Bool)

(assert (=> b!5770531 (=> (not res!2435324) (not e!3545051))))

(assert (=> b!5770531 (= res!2435324 (not lt!2291242))))

(declare-fun b!5770532 () Bool)

(declare-fun res!2435321 () Bool)

(assert (=> b!5770532 (=> res!2435321 e!3545054)))

(declare-fun e!3545053 () Bool)

(assert (=> b!5770532 (= res!2435321 e!3545053)))

(declare-fun res!2435325 () Bool)

(assert (=> b!5770532 (=> (not res!2435325) (not e!3545053))))

(assert (=> b!5770532 (= res!2435325 lt!2291242)))

(declare-fun b!5770533 () Bool)

(declare-fun res!2435319 () Bool)

(assert (=> b!5770533 (=> res!2435319 e!3545054)))

(assert (=> b!5770533 (= res!2435319 (not ((_ is ElementMatch!15785) (ite c!1020242 (Concat!24630 (Concat!24630 (regOne!32082 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))) lt!2291109) (ite c!1020252 lt!2291128 lt!2291158)))))))

(assert (=> b!5770533 (= e!3545052 e!3545054)))

(declare-fun b!5770526 () Bool)

(assert (=> b!5770526 (= e!3545049 (not (= (head!12200 s!2326) (c!1020255 (ite c!1020242 (Concat!24630 (Concat!24630 (regOne!32082 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))) lt!2291109) (ite c!1020252 lt!2291128 lt!2291158))))))))

(declare-fun d!1817420 () Bool)

(declare-fun e!3545048 () Bool)

(assert (=> d!1817420 e!3545048))

(declare-fun c!1020357 () Bool)

(assert (=> d!1817420 (= c!1020357 ((_ is EmptyExpr!15785) (ite c!1020242 (Concat!24630 (Concat!24630 (regOne!32082 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))) lt!2291109) (ite c!1020252 lt!2291128 lt!2291158))))))

(assert (=> d!1817420 (= lt!2291242 e!3545050)))

(declare-fun c!1020356 () Bool)

(assert (=> d!1817420 (= c!1020356 (isEmpty!35427 s!2326))))

(assert (=> d!1817420 (validRegex!7521 (ite c!1020242 (Concat!24630 (Concat!24630 (regOne!32082 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))) lt!2291109) (ite c!1020252 lt!2291128 lt!2291158)))))

(assert (=> d!1817420 (= (matchR!7970 (ite c!1020242 (Concat!24630 (Concat!24630 (regOne!32082 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))) lt!2291109) (ite c!1020252 lt!2291128 lt!2291158)) s!2326) lt!2291242)))

(declare-fun b!5770534 () Bool)

(assert (=> b!5770534 (= e!3545048 e!3545052)))

(declare-fun c!1020355 () Bool)

(assert (=> b!5770534 (= c!1020355 ((_ is EmptyLang!15785) (ite c!1020242 (Concat!24630 (Concat!24630 (regOne!32082 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))) lt!2291109) (ite c!1020252 lt!2291128 lt!2291158))))))

(declare-fun b!5770535 () Bool)

(assert (=> b!5770535 (= e!3545050 (nullable!5817 (ite c!1020242 (Concat!24630 (Concat!24630 (regOne!32082 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))) lt!2291109) (ite c!1020252 lt!2291128 lt!2291158))))))

(declare-fun b!5770536 () Bool)

(declare-fun res!2435323 () Bool)

(assert (=> b!5770536 (=> (not res!2435323) (not e!3545053))))

(assert (=> b!5770536 (= res!2435323 (isEmpty!35427 (tail!11295 s!2326)))))

(declare-fun b!5770537 () Bool)

(assert (=> b!5770537 (= e!3545053 (= (head!12200 s!2326) (c!1020255 (ite c!1020242 (Concat!24630 (Concat!24630 (regOne!32082 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))) lt!2291109) (ite c!1020252 lt!2291128 lt!2291158)))))))

(declare-fun b!5770538 () Bool)

(declare-fun res!2435320 () Bool)

(assert (=> b!5770538 (=> (not res!2435320) (not e!3545053))))

(assert (=> b!5770538 (= res!2435320 (not call!444545))))

(declare-fun b!5770539 () Bool)

(assert (=> b!5770539 (= e!3545048 (= lt!2291242 call!444545))))

(assert (= (and d!1817420 c!1020356) b!5770535))

(assert (= (and d!1817420 (not c!1020356)) b!5770530))

(assert (= (and d!1817420 c!1020357) b!5770539))

(assert (= (and d!1817420 (not c!1020357)) b!5770534))

(assert (= (and b!5770534 c!1020355) b!5770527))

(assert (= (and b!5770534 (not c!1020355)) b!5770533))

(assert (= (and b!5770533 (not res!2435319)) b!5770532))

(assert (= (and b!5770532 res!2435325) b!5770538))

(assert (= (and b!5770538 res!2435320) b!5770536))

(assert (= (and b!5770536 res!2435323) b!5770537))

(assert (= (and b!5770532 (not res!2435321)) b!5770531))

(assert (= (and b!5770531 res!2435324) b!5770528))

(assert (= (and b!5770528 (not res!2435322)) b!5770529))

(assert (= (and b!5770529 (not res!2435318)) b!5770526))

(assert (= (or b!5770539 b!5770528 b!5770538) bm!444540))

(assert (=> bm!444540 m!6715258))

(assert (=> b!5770526 m!6715274))

(assert (=> b!5770536 m!6715278))

(assert (=> b!5770536 m!6715278))

(declare-fun m!6715290 () Bool)

(assert (=> b!5770536 m!6715290))

(declare-fun m!6715292 () Bool)

(assert (=> b!5770535 m!6715292))

(assert (=> b!5770530 m!6715274))

(assert (=> b!5770530 m!6715274))

(declare-fun m!6715294 () Bool)

(assert (=> b!5770530 m!6715294))

(assert (=> b!5770530 m!6715278))

(assert (=> b!5770530 m!6715294))

(assert (=> b!5770530 m!6715278))

(declare-fun m!6715296 () Bool)

(assert (=> b!5770530 m!6715296))

(assert (=> b!5770537 m!6715274))

(assert (=> b!5770529 m!6715278))

(assert (=> b!5770529 m!6715278))

(assert (=> b!5770529 m!6715290))

(assert (=> d!1817420 m!6715258))

(declare-fun m!6715298 () Bool)

(assert (=> d!1817420 m!6715298))

(assert (=> bm!444412 d!1817420))

(declare-fun bs!1353589 () Bool)

(declare-fun d!1817422 () Bool)

(assert (= bs!1353589 (and d!1817422 d!1817368)))

(declare-fun lambda!313732 () Int)

(assert (=> bs!1353589 (= (and (= (ite (or c!1020242 c!1020252 c!1020250) s!2326 (_1!36185 lt!2291163)) (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530)) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (reg!16114 (regOne!32082 r!7292)))) (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292)))))) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020250 (regTwo!32082 r!7292) lt!2291167))) (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))))) (= lambda!313732 lambda!313721))))

(declare-fun bs!1353590 () Bool)

(assert (= bs!1353590 (and d!1817422 b!5770189)))

(assert (=> bs!1353590 (= (and (= (ite (or c!1020242 c!1020252 c!1020250) s!2326 (_1!36185 lt!2291163)) s!2326) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (reg!16114 (regOne!32082 r!7292)))) (regTwo!32082 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020250 (regTwo!32082 r!7292) lt!2291167))) lt!2291109)) (= lambda!313732 lambda!313684))))

(declare-fun bs!1353591 () Bool)

(assert (= bs!1353591 (and d!1817422 b!5770180)))

(assert (=> bs!1353591 (not (= lambda!313732 lambda!313687))))

(declare-fun bs!1353592 () Bool)

(assert (= bs!1353592 (and d!1817422 b!5770193)))

(assert (=> bs!1353592 (= (and (= (ite (or c!1020242 c!1020252 c!1020250) s!2326 (_1!36185 lt!2291163)) s!2326) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (reg!16114 (regOne!32082 r!7292)))) lt!2291100) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020250 (regTwo!32082 r!7292) lt!2291167))) (regTwo!32082 r!7292))) (= lambda!313732 lambda!313698))))

(declare-fun bs!1353593 () Bool)

(assert (= bs!1353593 (and d!1817422 b!5770330)))

(assert (=> bs!1353593 (not (= lambda!313732 lambda!313711))))

(assert (=> bs!1353591 (= (and (= (ite (or c!1020242 c!1020252 c!1020250) s!2326 (_1!36185 lt!2291163)) s!2326) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (reg!16114 (regOne!32082 r!7292)))) (regOne!32082 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020250 (regTwo!32082 r!7292) lt!2291167))) lt!2291065)) (= lambda!313732 lambda!313686))))

(declare-fun bs!1353594 () Bool)

(assert (= bs!1353594 (and d!1817422 b!5770157)))

(assert (=> bs!1353594 (= (and (= (ite (or c!1020242 c!1020252 c!1020250) s!2326 (_1!36185 lt!2291163)) s!2326) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (reg!16114 (regOne!32082 r!7292)))) lt!2291167) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020250 (regTwo!32082 r!7292) lt!2291167))) (regTwo!32082 r!7292))) (= lambda!313732 lambda!313690))))

(declare-fun bs!1353595 () Bool)

(assert (= bs!1353595 (and d!1817422 b!5770173)))

(assert (=> bs!1353595 (= (and (= (ite (or c!1020242 c!1020252 c!1020250) s!2326 (_1!36185 lt!2291163)) Nil!63530) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (reg!16114 (regOne!32082 r!7292)))) (reg!16114 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020250 (regTwo!32082 r!7292) lt!2291167))) lt!2291167)) (= lambda!313732 lambda!313703))))

(declare-fun bs!1353596 () Bool)

(assert (= bs!1353596 (and d!1817422 b!5770177)))

(assert (=> bs!1353596 (not (= lambda!313732 lambda!313693))))

(declare-fun bs!1353597 () Bool)

(assert (= bs!1353597 (and d!1817422 b!5770520)))

(assert (=> bs!1353597 (not (= lambda!313732 lambda!313730))))

(assert (=> bs!1353591 (= (and (= (ite (or c!1020242 c!1020252 c!1020250) s!2326 (_1!36185 lt!2291163)) s!2326) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (reg!16114 (regOne!32082 r!7292)))) (regTwo!32082 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020250 (regTwo!32082 r!7292) lt!2291167))) lt!2291002)) (= lambda!313732 lambda!313688))))

(assert (=> bs!1353594 (not (= lambda!313732 lambda!313691))))

(assert (=> bs!1353595 (not (= lambda!313732 lambda!313704))))

(assert (=> bs!1353589 (not (= lambda!313732 lambda!313722))))

(declare-fun bs!1353598 () Bool)

(assert (= bs!1353598 (and d!1817422 b!5770327)))

(assert (=> bs!1353598 (not (= lambda!313732 lambda!313710))))

(assert (=> bs!1353595 (not (= lambda!313732 lambda!313705))))

(declare-fun bs!1353599 () Bool)

(assert (= bs!1353599 (and d!1817422 d!1817362)))

(assert (=> bs!1353599 (= (and (= (ite (or c!1020242 c!1020252 c!1020250) s!2326 (_1!36185 lt!2291163)) (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530)))) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (reg!16114 (regOne!32082 r!7292)))) (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 (reg!16114 (regOne!32082 r!7292)) (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292)))))) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020250 (regTwo!32082 r!7292) lt!2291167))) (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite c!1020250 lt!2291167 (ite c!1020244 (regTwo!32082 r!7292) lt!2291167)))))) (= lambda!313732 lambda!313716))))

(assert (=> bs!1353591 (not (= lambda!313732 lambda!313689))))

(assert (=> bs!1353592 (not (= lambda!313732 lambda!313702))))

(declare-fun bs!1353600 () Bool)

(assert (= bs!1353600 (and d!1817422 b!5770366)))

(assert (=> bs!1353600 (not (= lambda!313732 lambda!313712))))

(assert (=> bs!1353592 (= (and (= (ite (or c!1020242 c!1020252 c!1020250) s!2326 (_1!36185 lt!2291163)) (_1!36185 lt!2291163)) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (reg!16114 (regOne!32082 r!7292)))) (reg!16114 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020250 (regTwo!32082 r!7292) lt!2291167))) lt!2291167)) (= lambda!313732 lambda!313700))))

(declare-fun bs!1353601 () Bool)

(assert (= bs!1353601 (and d!1817422 b!5770369)))

(assert (=> bs!1353601 (not (= lambda!313732 lambda!313713))))

(assert (=> bs!1353590 (= (and (= (ite (or c!1020242 c!1020252 c!1020250) s!2326 (_1!36185 lt!2291163)) s!2326) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (reg!16114 (regOne!32082 r!7292)))) (regOne!32082 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020250 (regTwo!32082 r!7292) lt!2291167))) lt!2291182)) (= lambda!313732 lambda!313682))))

(assert (=> bs!1353596 (not (= lambda!313732 lambda!313694))))

(assert (=> bs!1353590 (not (= lambda!313732 lambda!313683))))

(assert (=> bs!1353596 (= (and (= (ite (or c!1020242 c!1020252 c!1020250) s!2326 (_1!36185 lt!2291163)) (_1!36185 lt!2291106)) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (reg!16114 (regOne!32082 r!7292)))) (reg!16114 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020250 (regTwo!32082 r!7292) lt!2291167))) lt!2291167)) (= lambda!313732 lambda!313692))))

(declare-fun bs!1353602 () Bool)

(assert (= bs!1353602 (and d!1817422 b!5770169)))

(assert (=> bs!1353602 (not (= lambda!313732 lambda!313680))))

(declare-fun bs!1353603 () Bool)

(assert (= bs!1353603 (and d!1817422 b!5770523)))

(assert (=> bs!1353603 (not (= lambda!313732 lambda!313731))))

(assert (=> bs!1353592 (not (= lambda!313732 lambda!313701))))

(assert (=> bs!1353592 (not (= lambda!313732 lambda!313699))))

(assert (=> bs!1353602 (= (and (= (ite (or c!1020242 c!1020252 c!1020250) s!2326 (_1!36185 lt!2291163)) s!2326) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (reg!16114 (regOne!32082 r!7292)))) (regOne!32082 r!7292)) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020250 (regTwo!32082 r!7292) lt!2291167))) (regTwo!32082 r!7292))) (= lambda!313732 lambda!313679))))

(assert (=> bs!1353590 (not (= lambda!313732 lambda!313685))))

(assert (=> d!1817422 true))

(assert (=> d!1817422 true))

(assert (=> d!1817422 true))

(assert (=> d!1817422 (= (isDefined!12497 (findConcatSeparation!2208 (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (reg!16114 (regOne!32082 r!7292)))) (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020250 (regTwo!32082 r!7292) lt!2291167))) Nil!63530 (ite (or c!1020242 c!1020252 c!1020250) s!2326 (_1!36185 lt!2291163)) (ite (or c!1020242 c!1020252 c!1020250) s!2326 (_1!36185 lt!2291163)))) (Exists!2885 lambda!313732))))

(declare-fun lt!2291243 () Unit!156690)

(assert (=> d!1817422 (= lt!2291243 (choose!43785 (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (reg!16114 (regOne!32082 r!7292)))) (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020250 (regTwo!32082 r!7292) lt!2291167))) (ite (or c!1020242 c!1020252 c!1020250) s!2326 (_1!36185 lt!2291163))))))

(assert (=> d!1817422 (validRegex!7521 (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (reg!16114 (regOne!32082 r!7292)))))))

(assert (=> d!1817422 (= (lemmaFindConcatSeparationEquivalentToExists!1972 (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (reg!16114 (regOne!32082 r!7292)))) (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020250 (regTwo!32082 r!7292) lt!2291167))) (ite (or c!1020242 c!1020252 c!1020250) s!2326 (_1!36185 lt!2291163))) lt!2291243)))

(declare-fun bs!1353604 () Bool)

(assert (= bs!1353604 d!1817422))

(declare-fun m!6715300 () Bool)

(assert (=> bs!1353604 m!6715300))

(declare-fun m!6715302 () Bool)

(assert (=> bs!1353604 m!6715302))

(declare-fun m!6715304 () Bool)

(assert (=> bs!1353604 m!6715304))

(assert (=> bs!1353604 m!6715300))

(declare-fun m!6715306 () Bool)

(assert (=> bs!1353604 m!6715306))

(declare-fun m!6715308 () Bool)

(assert (=> bs!1353604 m!6715308))

(assert (=> bm!444397 d!1817422))

(declare-fun bs!1353605 () Bool)

(declare-fun d!1817424 () Bool)

(assert (= bs!1353605 (and d!1817424 b!5770177)))

(declare-fun lambda!313735 () Int)

(assert (=> bs!1353605 (= lambda!313735 lambda!313695)))

(declare-fun bs!1353606 () Bool)

(assert (= bs!1353606 (and d!1817424 b!5770193)))

(assert (=> bs!1353606 (= lambda!313735 lambda!313697)))

(declare-fun bs!1353607 () Bool)

(assert (= bs!1353607 (and d!1817424 d!1817370)))

(assert (=> bs!1353607 (= lambda!313735 lambda!313725)))

(declare-fun bs!1353608 () Bool)

(assert (= bs!1353608 (and d!1817424 d!1817384)))

(assert (=> bs!1353608 (= lambda!313735 lambda!313726)))

(assert (=> d!1817424 (= (inv!82709 (h!69980 zl!343)) (forall!14900 (exprs!5669 (h!69980 zl!343)) lambda!313735))))

(declare-fun bs!1353609 () Bool)

(assert (= bs!1353609 d!1817424))

(declare-fun m!6715310 () Bool)

(assert (=> bs!1353609 m!6715310))

(assert (=> b!5770145 d!1817424))

(declare-fun call!444546 () Bool)

(declare-fun bm!444541 () Bool)

(assert (=> bm!444541 (= call!444546 (isEmpty!35427 (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 lt!2291088 (_1!36185 lt!2291107)))))))

(declare-fun b!5770541 () Bool)

(declare-fun e!3545059 () Bool)

(declare-fun lt!2291244 () Bool)

(assert (=> b!5770541 (= e!3545059 (not lt!2291244))))

(declare-fun b!5770542 () Bool)

(declare-fun e!3545058 () Bool)

(declare-fun e!3545056 () Bool)

(assert (=> b!5770542 (= e!3545058 e!3545056)))

(declare-fun res!2435330 () Bool)

(assert (=> b!5770542 (=> res!2435330 e!3545056)))

(assert (=> b!5770542 (= res!2435330 call!444546)))

(declare-fun b!5770543 () Bool)

(declare-fun res!2435326 () Bool)

(assert (=> b!5770543 (=> res!2435326 e!3545056)))

(assert (=> b!5770543 (= res!2435326 (not (isEmpty!35427 (tail!11295 (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 lt!2291088 (_1!36185 lt!2291107)))))))))

(declare-fun e!3545057 () Bool)

(declare-fun b!5770544 () Bool)

(assert (=> b!5770544 (= e!3545057 (matchR!7970 (derivativeStep!4563 (ite c!1020242 (Concat!24630 (regOne!32082 (regOne!32082 r!7292)) (Concat!24630 (regTwo!32082 (regOne!32082 r!7292)) lt!2291109)) (ite c!1020252 (Concat!24630 (regOne!32082 r!7292) lt!2291002) (ite c!1020250 lt!2291050 (reg!16114 (regOne!32082 r!7292))))) (head!12200 (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 lt!2291088 (_1!36185 lt!2291107))))) (tail!11295 (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 lt!2291088 (_1!36185 lt!2291107))))))))

(declare-fun b!5770545 () Bool)

(declare-fun e!3545061 () Bool)

(assert (=> b!5770545 (= e!3545061 e!3545058)))

(declare-fun res!2435332 () Bool)

(assert (=> b!5770545 (=> (not res!2435332) (not e!3545058))))

(assert (=> b!5770545 (= res!2435332 (not lt!2291244))))

(declare-fun b!5770546 () Bool)

(declare-fun res!2435329 () Bool)

(assert (=> b!5770546 (=> res!2435329 e!3545061)))

(declare-fun e!3545060 () Bool)

(assert (=> b!5770546 (= res!2435329 e!3545060)))

(declare-fun res!2435333 () Bool)

(assert (=> b!5770546 (=> (not res!2435333) (not e!3545060))))

(assert (=> b!5770546 (= res!2435333 lt!2291244)))

(declare-fun b!5770547 () Bool)

(declare-fun res!2435327 () Bool)

(assert (=> b!5770547 (=> res!2435327 e!3545061)))

(assert (=> b!5770547 (= res!2435327 (not ((_ is ElementMatch!15785) (ite c!1020242 (Concat!24630 (regOne!32082 (regOne!32082 r!7292)) (Concat!24630 (regTwo!32082 (regOne!32082 r!7292)) lt!2291109)) (ite c!1020252 (Concat!24630 (regOne!32082 r!7292) lt!2291002) (ite c!1020250 lt!2291050 (reg!16114 (regOne!32082 r!7292))))))))))

(assert (=> b!5770547 (= e!3545059 e!3545061)))

(declare-fun b!5770540 () Bool)

(assert (=> b!5770540 (= e!3545056 (not (= (head!12200 (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 lt!2291088 (_1!36185 lt!2291107)))) (c!1020255 (ite c!1020242 (Concat!24630 (regOne!32082 (regOne!32082 r!7292)) (Concat!24630 (regTwo!32082 (regOne!32082 r!7292)) lt!2291109)) (ite c!1020252 (Concat!24630 (regOne!32082 r!7292) lt!2291002) (ite c!1020250 lt!2291050 (reg!16114 (regOne!32082 r!7292)))))))))))

(declare-fun d!1817426 () Bool)

(declare-fun e!3545055 () Bool)

(assert (=> d!1817426 e!3545055))

(declare-fun c!1020360 () Bool)

(assert (=> d!1817426 (= c!1020360 ((_ is EmptyExpr!15785) (ite c!1020242 (Concat!24630 (regOne!32082 (regOne!32082 r!7292)) (Concat!24630 (regTwo!32082 (regOne!32082 r!7292)) lt!2291109)) (ite c!1020252 (Concat!24630 (regOne!32082 r!7292) lt!2291002) (ite c!1020250 lt!2291050 (reg!16114 (regOne!32082 r!7292)))))))))

(assert (=> d!1817426 (= lt!2291244 e!3545057)))

(declare-fun c!1020359 () Bool)

(assert (=> d!1817426 (= c!1020359 (isEmpty!35427 (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 lt!2291088 (_1!36185 lt!2291107)))))))

(assert (=> d!1817426 (validRegex!7521 (ite c!1020242 (Concat!24630 (regOne!32082 (regOne!32082 r!7292)) (Concat!24630 (regTwo!32082 (regOne!32082 r!7292)) lt!2291109)) (ite c!1020252 (Concat!24630 (regOne!32082 r!7292) lt!2291002) (ite c!1020250 lt!2291050 (reg!16114 (regOne!32082 r!7292))))))))

(assert (=> d!1817426 (= (matchR!7970 (ite c!1020242 (Concat!24630 (regOne!32082 (regOne!32082 r!7292)) (Concat!24630 (regTwo!32082 (regOne!32082 r!7292)) lt!2291109)) (ite c!1020252 (Concat!24630 (regOne!32082 r!7292) lt!2291002) (ite c!1020250 lt!2291050 (reg!16114 (regOne!32082 r!7292))))) (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 lt!2291088 (_1!36185 lt!2291107)))) lt!2291244)))

(declare-fun b!5770548 () Bool)

(assert (=> b!5770548 (= e!3545055 e!3545059)))

(declare-fun c!1020358 () Bool)

(assert (=> b!5770548 (= c!1020358 ((_ is EmptyLang!15785) (ite c!1020242 (Concat!24630 (regOne!32082 (regOne!32082 r!7292)) (Concat!24630 (regTwo!32082 (regOne!32082 r!7292)) lt!2291109)) (ite c!1020252 (Concat!24630 (regOne!32082 r!7292) lt!2291002) (ite c!1020250 lt!2291050 (reg!16114 (regOne!32082 r!7292)))))))))

(declare-fun b!5770549 () Bool)

(assert (=> b!5770549 (= e!3545057 (nullable!5817 (ite c!1020242 (Concat!24630 (regOne!32082 (regOne!32082 r!7292)) (Concat!24630 (regTwo!32082 (regOne!32082 r!7292)) lt!2291109)) (ite c!1020252 (Concat!24630 (regOne!32082 r!7292) lt!2291002) (ite c!1020250 lt!2291050 (reg!16114 (regOne!32082 r!7292)))))))))

(declare-fun b!5770550 () Bool)

(declare-fun res!2435331 () Bool)

(assert (=> b!5770550 (=> (not res!2435331) (not e!3545060))))

(assert (=> b!5770550 (= res!2435331 (isEmpty!35427 (tail!11295 (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 lt!2291088 (_1!36185 lt!2291107))))))))

(declare-fun b!5770551 () Bool)

(assert (=> b!5770551 (= e!3545060 (= (head!12200 (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 lt!2291088 (_1!36185 lt!2291107)))) (c!1020255 (ite c!1020242 (Concat!24630 (regOne!32082 (regOne!32082 r!7292)) (Concat!24630 (regTwo!32082 (regOne!32082 r!7292)) lt!2291109)) (ite c!1020252 (Concat!24630 (regOne!32082 r!7292) lt!2291002) (ite c!1020250 lt!2291050 (reg!16114 (regOne!32082 r!7292))))))))))

(declare-fun b!5770552 () Bool)

(declare-fun res!2435328 () Bool)

(assert (=> b!5770552 (=> (not res!2435328) (not e!3545060))))

(assert (=> b!5770552 (= res!2435328 (not call!444546))))

(declare-fun b!5770553 () Bool)

(assert (=> b!5770553 (= e!3545055 (= lt!2291244 call!444546))))

(assert (= (and d!1817426 c!1020359) b!5770549))

(assert (= (and d!1817426 (not c!1020359)) b!5770544))

(assert (= (and d!1817426 c!1020360) b!5770553))

(assert (= (and d!1817426 (not c!1020360)) b!5770548))

(assert (= (and b!5770548 c!1020358) b!5770541))

(assert (= (and b!5770548 (not c!1020358)) b!5770547))

(assert (= (and b!5770547 (not res!2435327)) b!5770546))

(assert (= (and b!5770546 res!2435333) b!5770552))

(assert (= (and b!5770552 res!2435328) b!5770550))

(assert (= (and b!5770550 res!2435331) b!5770551))

(assert (= (and b!5770546 (not res!2435329)) b!5770545))

(assert (= (and b!5770545 res!2435332) b!5770542))

(assert (= (and b!5770542 (not res!2435330)) b!5770543))

(assert (= (and b!5770543 (not res!2435326)) b!5770540))

(assert (= (or b!5770553 b!5770542 b!5770552) bm!444541))

(declare-fun m!6715312 () Bool)

(assert (=> bm!444541 m!6715312))

(declare-fun m!6715314 () Bool)

(assert (=> b!5770540 m!6715314))

(declare-fun m!6715316 () Bool)

(assert (=> b!5770550 m!6715316))

(assert (=> b!5770550 m!6715316))

(declare-fun m!6715318 () Bool)

(assert (=> b!5770550 m!6715318))

(declare-fun m!6715320 () Bool)

(assert (=> b!5770549 m!6715320))

(assert (=> b!5770544 m!6715314))

(assert (=> b!5770544 m!6715314))

(declare-fun m!6715322 () Bool)

(assert (=> b!5770544 m!6715322))

(assert (=> b!5770544 m!6715316))

(assert (=> b!5770544 m!6715322))

(assert (=> b!5770544 m!6715316))

(declare-fun m!6715324 () Bool)

(assert (=> b!5770544 m!6715324))

(assert (=> b!5770551 m!6715314))

(assert (=> b!5770543 m!6715316))

(assert (=> b!5770543 m!6715316))

(assert (=> b!5770543 m!6715318))

(assert (=> d!1817426 m!6715312))

(declare-fun m!6715326 () Bool)

(assert (=> d!1817426 m!6715326))

(assert (=> bm!444339 d!1817426))

(declare-fun bs!1353610 () Bool)

(declare-fun d!1817428 () Bool)

(assert (= bs!1353610 (and d!1817428 d!1817424)))

(declare-fun lambda!313736 () Int)

(assert (=> bs!1353610 (= lambda!313736 lambda!313735)))

(declare-fun bs!1353611 () Bool)

(assert (= bs!1353611 (and d!1817428 d!1817370)))

(assert (=> bs!1353611 (= lambda!313736 lambda!313725)))

(declare-fun bs!1353612 () Bool)

(assert (= bs!1353612 (and d!1817428 b!5770177)))

(assert (=> bs!1353612 (= lambda!313736 lambda!313695)))

(declare-fun bs!1353613 () Bool)

(assert (= bs!1353613 (and d!1817428 b!5770193)))

(assert (=> bs!1353613 (= lambda!313736 lambda!313697)))

(declare-fun bs!1353614 () Bool)

(assert (= bs!1353614 (and d!1817428 d!1817384)))

(assert (=> bs!1353614 (= lambda!313736 lambda!313726)))

(assert (=> d!1817428 (= (inv!82709 setElem!38781) (forall!14900 (exprs!5669 setElem!38781) lambda!313736))))

(declare-fun bs!1353615 () Bool)

(assert (= bs!1353615 d!1817428))

(declare-fun m!6715328 () Bool)

(assert (=> bs!1353615 m!6715328))

(assert (=> setNonEmpty!38781 d!1817428))

(declare-fun d!1817430 () Bool)

(declare-fun lt!2291247 () Regex!15785)

(assert (=> d!1817430 (validRegex!7521 lt!2291247)))

(assert (=> d!1817430 (= lt!2291247 (generalisedUnion!1648 (unfocusZipperList!1213 zl!343)))))

(assert (=> d!1817430 (= (unfocusZipper!1527 zl!343) lt!2291247)))

(declare-fun bs!1353616 () Bool)

(assert (= bs!1353616 d!1817430))

(declare-fun m!6715330 () Bool)

(assert (=> bs!1353616 m!6715330))

(assert (=> bs!1353616 m!6714952))

(assert (=> bs!1353616 m!6714952))

(assert (=> bs!1353616 m!6714954))

(assert (=> b!5770176 d!1817430))

(declare-fun d!1817432 () Bool)

(assert (=> d!1817432 (matchR!7970 (Concat!24630 lt!2291167 (regTwo!32082 r!7292)) (++!13998 (ite c!1020250 (_2!36185 lt!2291010) (ite c!1020244 lt!2291141 Nil!63530)) (ite c!1020250 (_2!36185 lt!2291106) (ite c!1020244 (_2!36185 lt!2291163) s!2326))))))

(declare-fun lt!2291248 () Unit!156690)

(assert (=> d!1817432 (= lt!2291248 (choose!43782 lt!2291167 (regTwo!32082 r!7292) (ite c!1020250 (_2!36185 lt!2291010) (ite c!1020244 lt!2291141 Nil!63530)) (ite c!1020250 (_2!36185 lt!2291106) (ite c!1020244 (_2!36185 lt!2291163) s!2326))))))

(declare-fun e!3545062 () Bool)

(assert (=> d!1817432 e!3545062))

(declare-fun res!2435334 () Bool)

(assert (=> d!1817432 (=> (not res!2435334) (not e!3545062))))

(assert (=> d!1817432 (= res!2435334 (validRegex!7521 lt!2291167))))

(assert (=> d!1817432 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!290 lt!2291167 (regTwo!32082 r!7292) (ite c!1020250 (_2!36185 lt!2291010) (ite c!1020244 lt!2291141 Nil!63530)) (ite c!1020250 (_2!36185 lt!2291106) (ite c!1020244 (_2!36185 lt!2291163) s!2326))) lt!2291248)))

(declare-fun b!5770554 () Bool)

(assert (=> b!5770554 (= e!3545062 (validRegex!7521 (regTwo!32082 r!7292)))))

(assert (= (and d!1817432 res!2435334) b!5770554))

(declare-fun m!6715332 () Bool)

(assert (=> d!1817432 m!6715332))

(assert (=> d!1817432 m!6715332))

(declare-fun m!6715334 () Bool)

(assert (=> d!1817432 m!6715334))

(declare-fun m!6715336 () Bool)

(assert (=> d!1817432 m!6715336))

(declare-fun m!6715338 () Bool)

(assert (=> d!1817432 m!6715338))

(declare-fun m!6715340 () Bool)

(assert (=> b!5770554 m!6715340))

(assert (=> bm!444341 d!1817432))

(declare-fun bs!1353617 () Bool)

(declare-fun d!1817434 () Bool)

(assert (= bs!1353617 (and d!1817434 d!1817368)))

(declare-fun lambda!313737 () Int)

(assert (=> bs!1353617 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163))) (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530)) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292)))))) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)) (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))))) (= lambda!313737 lambda!313721))))

(declare-fun bs!1353618 () Bool)

(assert (= bs!1353618 (and d!1817434 d!1817422)))

(assert (=> bs!1353618 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163))) (ite (or c!1020242 c!1020252 c!1020250) s!2326 (_1!36185 lt!2291163))) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (reg!16114 (regOne!32082 r!7292))))) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)) (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020250 (regTwo!32082 r!7292) lt!2291167))))) (= lambda!313737 lambda!313732))))

(declare-fun bs!1353619 () Bool)

(assert (= bs!1353619 (and d!1817434 b!5770189)))

(assert (=> bs!1353619 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163))) s!2326) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (regTwo!32082 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)) lt!2291109)) (= lambda!313737 lambda!313684))))

(declare-fun bs!1353620 () Bool)

(assert (= bs!1353620 (and d!1817434 b!5770180)))

(assert (=> bs!1353620 (not (= lambda!313737 lambda!313687))))

(declare-fun bs!1353621 () Bool)

(assert (= bs!1353621 (and d!1817434 b!5770193)))

(assert (=> bs!1353621 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163))) s!2326) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) lt!2291100) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)) (regTwo!32082 r!7292))) (= lambda!313737 lambda!313698))))

(declare-fun bs!1353622 () Bool)

(assert (= bs!1353622 (and d!1817434 b!5770330)))

(assert (=> bs!1353622 (not (= lambda!313737 lambda!313711))))

(assert (=> bs!1353620 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163))) s!2326) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (regOne!32082 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)) lt!2291065)) (= lambda!313737 lambda!313686))))

(declare-fun bs!1353623 () Bool)

(assert (= bs!1353623 (and d!1817434 b!5770157)))

(assert (=> bs!1353623 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163))) s!2326) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) lt!2291167) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)) (regTwo!32082 r!7292))) (= lambda!313737 lambda!313690))))

(declare-fun bs!1353624 () Bool)

(assert (= bs!1353624 (and d!1817434 b!5770173)))

(assert (=> bs!1353624 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163))) Nil!63530) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (reg!16114 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)) lt!2291167)) (= lambda!313737 lambda!313703))))

(declare-fun bs!1353625 () Bool)

(assert (= bs!1353625 (and d!1817434 b!5770177)))

(assert (=> bs!1353625 (not (= lambda!313737 lambda!313693))))

(declare-fun bs!1353626 () Bool)

(assert (= bs!1353626 (and d!1817434 b!5770520)))

(assert (=> bs!1353626 (not (= lambda!313737 lambda!313730))))

(assert (=> bs!1353620 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163))) s!2326) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (regTwo!32082 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)) lt!2291002)) (= lambda!313737 lambda!313688))))

(assert (=> bs!1353623 (not (= lambda!313737 lambda!313691))))

(assert (=> bs!1353624 (not (= lambda!313737 lambda!313704))))

(assert (=> bs!1353617 (not (= lambda!313737 lambda!313722))))

(declare-fun bs!1353627 () Bool)

(assert (= bs!1353627 (and d!1817434 b!5770327)))

(assert (=> bs!1353627 (not (= lambda!313737 lambda!313710))))

(assert (=> bs!1353624 (not (= lambda!313737 lambda!313705))))

(declare-fun bs!1353628 () Bool)

(assert (= bs!1353628 (and d!1817434 d!1817362)))

(assert (=> bs!1353628 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163))) (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530)))) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 (reg!16114 (regOne!32082 r!7292)) (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292)))))) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)) (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite c!1020250 lt!2291167 (ite c!1020244 (regTwo!32082 r!7292) lt!2291167)))))) (= lambda!313737 lambda!313716))))

(assert (=> bs!1353620 (not (= lambda!313737 lambda!313689))))

(assert (=> bs!1353621 (not (= lambda!313737 lambda!313702))))

(declare-fun bs!1353629 () Bool)

(assert (= bs!1353629 (and d!1817434 b!5770366)))

(assert (=> bs!1353629 (not (= lambda!313737 lambda!313712))))

(assert (=> bs!1353621 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163))) (_1!36185 lt!2291163)) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (reg!16114 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)) lt!2291167)) (= lambda!313737 lambda!313700))))

(declare-fun bs!1353630 () Bool)

(assert (= bs!1353630 (and d!1817434 b!5770369)))

(assert (=> bs!1353630 (not (= lambda!313737 lambda!313713))))

(assert (=> bs!1353619 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163))) s!2326) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (regOne!32082 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)) lt!2291182)) (= lambda!313737 lambda!313682))))

(assert (=> bs!1353625 (not (= lambda!313737 lambda!313694))))

(assert (=> bs!1353619 (not (= lambda!313737 lambda!313683))))

(assert (=> bs!1353625 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163))) (_1!36185 lt!2291106)) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (reg!16114 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)) lt!2291167)) (= lambda!313737 lambda!313692))))

(declare-fun bs!1353631 () Bool)

(assert (= bs!1353631 (and d!1817434 b!5770169)))

(assert (=> bs!1353631 (not (= lambda!313737 lambda!313680))))

(declare-fun bs!1353632 () Bool)

(assert (= bs!1353632 (and d!1817434 b!5770523)))

(assert (=> bs!1353632 (not (= lambda!313737 lambda!313731))))

(assert (=> bs!1353621 (not (= lambda!313737 lambda!313701))))

(assert (=> bs!1353621 (not (= lambda!313737 lambda!313699))))

(assert (=> bs!1353631 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163))) s!2326) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (regOne!32082 r!7292)) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)) (regTwo!32082 r!7292))) (= lambda!313737 lambda!313679))))

(assert (=> bs!1353619 (not (= lambda!313737 lambda!313685))))

(assert (=> d!1817434 true))

(assert (=> d!1817434 true))

(assert (=> d!1817434 true))

(declare-fun lambda!313738 () Int)

(assert (=> bs!1353617 (not (= lambda!313738 lambda!313721))))

(assert (=> bs!1353618 (not (= lambda!313738 lambda!313732))))

(assert (=> bs!1353619 (not (= lambda!313738 lambda!313684))))

(assert (=> bs!1353620 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163))) s!2326) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (regOne!32082 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)) lt!2291065)) (= lambda!313738 lambda!313687))))

(assert (=> bs!1353621 (not (= lambda!313738 lambda!313698))))

(assert (=> bs!1353622 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163))) (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530)))) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (regOne!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167))))) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)) (regTwo!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))))) (= lambda!313738 lambda!313711))))

(assert (=> bs!1353620 (not (= lambda!313738 lambda!313686))))

(assert (=> bs!1353623 (not (= lambda!313738 lambda!313690))))

(declare-fun bs!1353633 () Bool)

(assert (= bs!1353633 d!1817434))

(assert (=> bs!1353633 (not (= lambda!313738 lambda!313737))))

(assert (=> bs!1353624 (not (= lambda!313738 lambda!313703))))

(assert (=> bs!1353625 (not (= lambda!313738 lambda!313693))))

(assert (=> bs!1353626 (not (= lambda!313738 lambda!313730))))

(assert (=> bs!1353620 (not (= lambda!313738 lambda!313688))))

(assert (=> bs!1353623 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163))) s!2326) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) lt!2291167) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)) (regTwo!32082 r!7292))) (= lambda!313738 lambda!313691))))

(assert (=> bs!1353624 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163))) Nil!63530) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (reg!16114 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)) lt!2291167)) (= lambda!313738 lambda!313704))))

(assert (=> bs!1353617 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163))) (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530)) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292)))))) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)) (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))))) (= lambda!313738 lambda!313722))))

(assert (=> bs!1353627 (not (= lambda!313738 lambda!313710))))

(assert (=> bs!1353624 (not (= lambda!313738 lambda!313705))))

(assert (=> bs!1353628 (not (= lambda!313738 lambda!313716))))

(assert (=> bs!1353620 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163))) s!2326) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (regTwo!32082 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)) lt!2291002)) (= lambda!313738 lambda!313689))))

(assert (=> bs!1353621 (not (= lambda!313738 lambda!313702))))

(assert (=> bs!1353629 (not (= lambda!313738 lambda!313712))))

(assert (=> bs!1353621 (not (= lambda!313738 lambda!313700))))

(assert (=> bs!1353630 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163))) (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (_1!36185 lt!2291163) s!2326))) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (regOne!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292))))))) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)) (regTwo!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))))) (= lambda!313738 lambda!313713))))

(assert (=> bs!1353619 (not (= lambda!313738 lambda!313682))))

(assert (=> bs!1353625 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163))) (_1!36185 lt!2291106)) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (reg!16114 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)) lt!2291167)) (= lambda!313738 lambda!313694))))

(assert (=> bs!1353619 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163))) s!2326) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (regOne!32082 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)) lt!2291182)) (= lambda!313738 lambda!313683))))

(assert (=> bs!1353625 (not (= lambda!313738 lambda!313692))))

(assert (=> bs!1353631 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163))) s!2326) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (regOne!32082 r!7292)) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)) (regTwo!32082 r!7292))) (= lambda!313738 lambda!313680))))

(assert (=> bs!1353632 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163))) s!2326) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (regOne!32082 lt!2291057)) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)) (regTwo!32082 lt!2291057))) (= lambda!313738 lambda!313731))))

(assert (=> bs!1353621 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163))) (_1!36185 lt!2291163)) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (reg!16114 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)) lt!2291167)) (= lambda!313738 lambda!313701))))

(assert (=> bs!1353621 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163))) s!2326) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) lt!2291100) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)) (regTwo!32082 r!7292))) (= lambda!313738 lambda!313699))))

(assert (=> bs!1353631 (not (= lambda!313738 lambda!313679))))

(assert (=> bs!1353619 (= (and (= (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163))) s!2326) (= (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (regTwo!32082 (regOne!32082 r!7292))) (= (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)) lt!2291109)) (= lambda!313738 lambda!313685))))

(assert (=> d!1817434 true))

(assert (=> d!1817434 true))

(assert (=> d!1817434 true))

(assert (=> d!1817434 (= (Exists!2885 lambda!313737) (Exists!2885 lambda!313738))))

(declare-fun lt!2291249 () Unit!156690)

(assert (=> d!1817434 (= lt!2291249 (choose!43786 (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)) (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163)))))))

(assert (=> d!1817434 (validRegex!7521 (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))))))

(assert (=> d!1817434 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1514 (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)) (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163)))) lt!2291249)))

(declare-fun m!6715342 () Bool)

(assert (=> bs!1353633 m!6715342))

(declare-fun m!6715344 () Bool)

(assert (=> bs!1353633 m!6715344))

(declare-fun m!6715346 () Bool)

(assert (=> bs!1353633 m!6715346))

(declare-fun m!6715348 () Bool)

(assert (=> bs!1353633 m!6715348))

(assert (=> bm!444424 d!1817434))

(declare-fun e!3545063 () Bool)

(declare-fun d!1817436 () Bool)

(assert (=> d!1817436 (= (matchZipper!1923 ((_ map or) lt!2290998 lt!2291005) (t!376992 s!2326)) e!3545063)))

(declare-fun res!2435335 () Bool)

(assert (=> d!1817436 (=> res!2435335 e!3545063)))

(assert (=> d!1817436 (= res!2435335 (matchZipper!1923 lt!2290998 (t!376992 s!2326)))))

(declare-fun lt!2291250 () Unit!156690)

(assert (=> d!1817436 (= lt!2291250 (choose!43777 lt!2290998 lt!2291005 (t!376992 s!2326)))))

(assert (=> d!1817436 (= (lemmaZipperConcatMatchesSameAsBothZippers!810 lt!2290998 lt!2291005 (t!376992 s!2326)) lt!2291250)))

(declare-fun b!5770555 () Bool)

(assert (=> b!5770555 (= e!3545063 (matchZipper!1923 lt!2291005 (t!376992 s!2326)))))

(assert (= (and d!1817436 (not res!2435335)) b!5770555))

(assert (=> d!1817436 m!6714924))

(assert (=> d!1817436 m!6714922))

(declare-fun m!6715350 () Bool)

(assert (=> d!1817436 m!6715350))

(assert (=> b!5770555 m!6714694))

(assert (=> b!5770133 d!1817436))

(declare-fun d!1817438 () Bool)

(declare-fun c!1020361 () Bool)

(assert (=> d!1817438 (= c!1020361 (isEmpty!35427 (t!376992 s!2326)))))

(declare-fun e!3545064 () Bool)

(assert (=> d!1817438 (= (matchZipper!1923 lt!2290998 (t!376992 s!2326)) e!3545064)))

(declare-fun b!5770556 () Bool)

(assert (=> b!5770556 (= e!3545064 (nullableZipper!1709 lt!2290998))))

(declare-fun b!5770557 () Bool)

(assert (=> b!5770557 (= e!3545064 (matchZipper!1923 (derivationStepZipper!1862 lt!2290998 (head!12200 (t!376992 s!2326))) (tail!11295 (t!376992 s!2326))))))

(assert (= (and d!1817438 c!1020361) b!5770556))

(assert (= (and d!1817438 (not c!1020361)) b!5770557))

(declare-fun m!6715352 () Bool)

(assert (=> d!1817438 m!6715352))

(declare-fun m!6715354 () Bool)

(assert (=> b!5770556 m!6715354))

(declare-fun m!6715356 () Bool)

(assert (=> b!5770557 m!6715356))

(assert (=> b!5770557 m!6715356))

(declare-fun m!6715358 () Bool)

(assert (=> b!5770557 m!6715358))

(declare-fun m!6715360 () Bool)

(assert (=> b!5770557 m!6715360))

(assert (=> b!5770557 m!6715358))

(assert (=> b!5770557 m!6715360))

(declare-fun m!6715362 () Bool)

(assert (=> b!5770557 m!6715362))

(assert (=> b!5770133 d!1817438))

(declare-fun d!1817440 () Bool)

(declare-fun c!1020362 () Bool)

(assert (=> d!1817440 (= c!1020362 (isEmpty!35427 (t!376992 s!2326)))))

(declare-fun e!3545065 () Bool)

(assert (=> d!1817440 (= (matchZipper!1923 ((_ map or) lt!2290998 lt!2291005) (t!376992 s!2326)) e!3545065)))

(declare-fun b!5770558 () Bool)

(assert (=> b!5770558 (= e!3545065 (nullableZipper!1709 ((_ map or) lt!2290998 lt!2291005)))))

(declare-fun b!5770559 () Bool)

(assert (=> b!5770559 (= e!3545065 (matchZipper!1923 (derivationStepZipper!1862 ((_ map or) lt!2290998 lt!2291005) (head!12200 (t!376992 s!2326))) (tail!11295 (t!376992 s!2326))))))

(assert (= (and d!1817440 c!1020362) b!5770558))

(assert (= (and d!1817440 (not c!1020362)) b!5770559))

(assert (=> d!1817440 m!6715352))

(declare-fun m!6715364 () Bool)

(assert (=> b!5770558 m!6715364))

(assert (=> b!5770559 m!6715356))

(assert (=> b!5770559 m!6715356))

(declare-fun m!6715366 () Bool)

(assert (=> b!5770559 m!6715366))

(assert (=> b!5770559 m!6715360))

(assert (=> b!5770559 m!6715366))

(assert (=> b!5770559 m!6715360))

(declare-fun m!6715368 () Bool)

(assert (=> b!5770559 m!6715368))

(assert (=> b!5770133 d!1817440))

(declare-fun d!1817444 () Bool)

(declare-fun c!1020363 () Bool)

(assert (=> d!1817444 (= c!1020363 (isEmpty!35427 (t!376992 s!2326)))))

(declare-fun e!3545066 () Bool)

(assert (=> d!1817444 (= (matchZipper!1923 lt!2291005 (t!376992 s!2326)) e!3545066)))

(declare-fun b!5770560 () Bool)

(assert (=> b!5770560 (= e!3545066 (nullableZipper!1709 lt!2291005))))

(declare-fun b!5770561 () Bool)

(assert (=> b!5770561 (= e!3545066 (matchZipper!1923 (derivationStepZipper!1862 lt!2291005 (head!12200 (t!376992 s!2326))) (tail!11295 (t!376992 s!2326))))))

(assert (= (and d!1817444 c!1020363) b!5770560))

(assert (= (and d!1817444 (not c!1020363)) b!5770561))

(assert (=> d!1817444 m!6715352))

(declare-fun m!6715370 () Bool)

(assert (=> b!5770560 m!6715370))

(assert (=> b!5770561 m!6715356))

(assert (=> b!5770561 m!6715356))

(declare-fun m!6715372 () Bool)

(assert (=> b!5770561 m!6715372))

(assert (=> b!5770561 m!6715360))

(assert (=> b!5770561 m!6715372))

(assert (=> b!5770561 m!6715360))

(declare-fun m!6715374 () Bool)

(assert (=> b!5770561 m!6715374))

(assert (=> b!5770165 d!1817444))

(declare-fun d!1817446 () Bool)

(declare-fun c!1020364 () Bool)

(assert (=> d!1817446 (= c!1020364 (isEmpty!35427 (t!376992 s!2326)))))

(declare-fun e!3545067 () Bool)

(assert (=> d!1817446 (= (matchZipper!1923 (ite c!1020249 lt!2290986 lt!2291101) (t!376992 s!2326)) e!3545067)))

(declare-fun b!5770562 () Bool)

(assert (=> b!5770562 (= e!3545067 (nullableZipper!1709 (ite c!1020249 lt!2290986 lt!2291101)))))

(declare-fun b!5770563 () Bool)

(assert (=> b!5770563 (= e!3545067 (matchZipper!1923 (derivationStepZipper!1862 (ite c!1020249 lt!2290986 lt!2291101) (head!12200 (t!376992 s!2326))) (tail!11295 (t!376992 s!2326))))))

(assert (= (and d!1817446 c!1020364) b!5770562))

(assert (= (and d!1817446 (not c!1020364)) b!5770563))

(assert (=> d!1817446 m!6715352))

(declare-fun m!6715376 () Bool)

(assert (=> b!5770562 m!6715376))

(assert (=> b!5770563 m!6715356))

(assert (=> b!5770563 m!6715356))

(declare-fun m!6715378 () Bool)

(assert (=> b!5770563 m!6715378))

(assert (=> b!5770563 m!6715360))

(assert (=> b!5770563 m!6715378))

(assert (=> b!5770563 m!6715360))

(declare-fun m!6715380 () Bool)

(assert (=> b!5770563 m!6715380))

(assert (=> bm!444395 d!1817446))

(declare-fun bs!1353634 () Bool)

(declare-fun d!1817448 () Bool)

(assert (= bs!1353634 (and d!1817448 d!1817424)))

(declare-fun lambda!313739 () Int)

(assert (=> bs!1353634 (= lambda!313739 lambda!313735)))

(declare-fun bs!1353635 () Bool)

(assert (= bs!1353635 (and d!1817448 d!1817370)))

(assert (=> bs!1353635 (= lambda!313739 lambda!313725)))

(declare-fun bs!1353636 () Bool)

(assert (= bs!1353636 (and d!1817448 b!5770193)))

(assert (=> bs!1353636 (= lambda!313739 lambda!313697)))

(declare-fun bs!1353637 () Bool)

(assert (= bs!1353637 (and d!1817448 d!1817384)))

(assert (=> bs!1353637 (= lambda!313739 lambda!313726)))

(declare-fun bs!1353638 () Bool)

(assert (= bs!1353638 (and d!1817448 b!5770177)))

(assert (=> bs!1353638 (= lambda!313739 lambda!313695)))

(declare-fun bs!1353639 () Bool)

(assert (= bs!1353639 (and d!1817448 d!1817428)))

(assert (=> bs!1353639 (= lambda!313739 lambda!313736)))

(declare-fun b!5770564 () Bool)

(declare-fun e!3545072 () Bool)

(assert (=> b!5770564 (= e!3545072 (isEmpty!35428 (t!376993 (exprs!5669 (h!69980 zl!343)))))))

(declare-fun b!5770565 () Bool)

(declare-fun e!3545073 () Regex!15785)

(assert (=> b!5770565 (= e!3545073 (h!69979 (exprs!5669 (h!69980 zl!343))))))

(declare-fun b!5770566 () Bool)

(declare-fun e!3545070 () Bool)

(declare-fun e!3545069 () Bool)

(assert (=> b!5770566 (= e!3545070 e!3545069)))

(declare-fun c!1020366 () Bool)

(assert (=> b!5770566 (= c!1020366 (isEmpty!35428 (tail!11296 (exprs!5669 (h!69980 zl!343)))))))

(declare-fun b!5770567 () Bool)

(declare-fun e!3545068 () Regex!15785)

(assert (=> b!5770567 (= e!3545068 EmptyExpr!15785)))

(declare-fun b!5770568 () Bool)

(assert (=> b!5770568 (= e!3545068 (Concat!24630 (h!69979 (exprs!5669 (h!69980 zl!343))) (generalisedConcat!1400 (t!376993 (exprs!5669 (h!69980 zl!343))))))))

(declare-fun b!5770569 () Bool)

(declare-fun lt!2291251 () Regex!15785)

(assert (=> b!5770569 (= e!3545070 (isEmptyExpr!1268 lt!2291251))))

(declare-fun b!5770570 () Bool)

(assert (=> b!5770570 (= e!3545069 (= lt!2291251 (head!12201 (exprs!5669 (h!69980 zl!343)))))))

(declare-fun b!5770571 () Bool)

(assert (=> b!5770571 (= e!3545069 (isConcat!791 lt!2291251))))

(declare-fun b!5770572 () Bool)

(assert (=> b!5770572 (= e!3545073 e!3545068)))

(declare-fun c!1020367 () Bool)

(assert (=> b!5770572 (= c!1020367 ((_ is Cons!63531) (exprs!5669 (h!69980 zl!343))))))

(declare-fun b!5770573 () Bool)

(declare-fun e!3545071 () Bool)

(assert (=> b!5770573 (= e!3545071 e!3545070)))

(declare-fun c!1020368 () Bool)

(assert (=> b!5770573 (= c!1020368 (isEmpty!35428 (exprs!5669 (h!69980 zl!343))))))

(assert (=> d!1817448 e!3545071))

(declare-fun res!2435337 () Bool)

(assert (=> d!1817448 (=> (not res!2435337) (not e!3545071))))

(assert (=> d!1817448 (= res!2435337 (validRegex!7521 lt!2291251))))

(assert (=> d!1817448 (= lt!2291251 e!3545073)))

(declare-fun c!1020365 () Bool)

(assert (=> d!1817448 (= c!1020365 e!3545072)))

(declare-fun res!2435336 () Bool)

(assert (=> d!1817448 (=> (not res!2435336) (not e!3545072))))

(assert (=> d!1817448 (= res!2435336 ((_ is Cons!63531) (exprs!5669 (h!69980 zl!343))))))

(assert (=> d!1817448 (forall!14900 (exprs!5669 (h!69980 zl!343)) lambda!313739)))

(assert (=> d!1817448 (= (generalisedConcat!1400 (exprs!5669 (h!69980 zl!343))) lt!2291251)))

(assert (= (and d!1817448 res!2435336) b!5770564))

(assert (= (and d!1817448 c!1020365) b!5770565))

(assert (= (and d!1817448 (not c!1020365)) b!5770572))

(assert (= (and b!5770572 c!1020367) b!5770568))

(assert (= (and b!5770572 (not c!1020367)) b!5770567))

(assert (= (and d!1817448 res!2435337) b!5770573))

(assert (= (and b!5770573 c!1020368) b!5770569))

(assert (= (and b!5770573 (not c!1020368)) b!5770566))

(assert (= (and b!5770566 c!1020366) b!5770570))

(assert (= (and b!5770566 (not c!1020366)) b!5770571))

(declare-fun m!6715382 () Bool)

(assert (=> b!5770568 m!6715382))

(declare-fun m!6715384 () Bool)

(assert (=> b!5770573 m!6715384))

(declare-fun m!6715386 () Bool)

(assert (=> b!5770569 m!6715386))

(declare-fun m!6715388 () Bool)

(assert (=> b!5770570 m!6715388))

(declare-fun m!6715390 () Bool)

(assert (=> d!1817448 m!6715390))

(declare-fun m!6715392 () Bool)

(assert (=> d!1817448 m!6715392))

(declare-fun m!6715394 () Bool)

(assert (=> b!5770566 m!6715394))

(assert (=> b!5770566 m!6715394))

(declare-fun m!6715396 () Bool)

(assert (=> b!5770566 m!6715396))

(assert (=> b!5770564 m!6714842))

(declare-fun m!6715398 () Bool)

(assert (=> b!5770571 m!6715398))

(assert (=> b!5770164 d!1817448))

(declare-fun d!1817450 () Bool)

(assert (=> d!1817450 (= (Exists!2885 (ite c!1020242 lambda!313682 (ite c!1020252 lambda!313687 (ite c!1020250 lambda!313690 (ite c!1020244 lambda!313698 lambda!313703))))) (choose!43778 (ite c!1020242 lambda!313682 (ite c!1020252 lambda!313687 (ite c!1020250 lambda!313690 (ite c!1020244 lambda!313698 lambda!313703))))))))

(declare-fun bs!1353640 () Bool)

(assert (= bs!1353640 d!1817450))

(declare-fun m!6715400 () Bool)

(assert (=> bs!1353640 m!6715400))

(assert (=> bm!444393 d!1817450))

(declare-fun d!1817452 () Bool)

(declare-fun e!3545075 () Bool)

(assert (=> d!1817452 e!3545075))

(declare-fun res!2435338 () Bool)

(assert (=> d!1817452 (=> (not res!2435338) (not e!3545075))))

(declare-fun lt!2291252 () List!63654)

(assert (=> d!1817452 (= res!2435338 (= (content!11600 lt!2291252) ((_ map or) (content!11600 (ite c!1020250 (_1!36185 lt!2291010) (_1!36185 lt!2291107))) (content!11600 (ite c!1020250 lt!2291088 (_2!36185 lt!2291107))))))))

(declare-fun e!3545074 () List!63654)

(assert (=> d!1817452 (= lt!2291252 e!3545074)))

(declare-fun c!1020369 () Bool)

(assert (=> d!1817452 (= c!1020369 ((_ is Nil!63530) (ite c!1020250 (_1!36185 lt!2291010) (_1!36185 lt!2291107))))))

(assert (=> d!1817452 (= (++!13998 (ite c!1020250 (_1!36185 lt!2291010) (_1!36185 lt!2291107)) (ite c!1020250 lt!2291088 (_2!36185 lt!2291107))) lt!2291252)))

(declare-fun b!5770574 () Bool)

(assert (=> b!5770574 (= e!3545074 (ite c!1020250 lt!2291088 (_2!36185 lt!2291107)))))

(declare-fun b!5770576 () Bool)

(declare-fun res!2435339 () Bool)

(assert (=> b!5770576 (=> (not res!2435339) (not e!3545075))))

(assert (=> b!5770576 (= res!2435339 (= (size!40078 lt!2291252) (+ (size!40078 (ite c!1020250 (_1!36185 lt!2291010) (_1!36185 lt!2291107))) (size!40078 (ite c!1020250 lt!2291088 (_2!36185 lt!2291107))))))))

(declare-fun b!5770577 () Bool)

(assert (=> b!5770577 (= e!3545075 (or (not (= (ite c!1020250 lt!2291088 (_2!36185 lt!2291107)) Nil!63530)) (= lt!2291252 (ite c!1020250 (_1!36185 lt!2291010) (_1!36185 lt!2291107)))))))

(declare-fun b!5770575 () Bool)

(assert (=> b!5770575 (= e!3545074 (Cons!63530 (h!69978 (ite c!1020250 (_1!36185 lt!2291010) (_1!36185 lt!2291107))) (++!13998 (t!376992 (ite c!1020250 (_1!36185 lt!2291010) (_1!36185 lt!2291107))) (ite c!1020250 lt!2291088 (_2!36185 lt!2291107)))))))

(assert (= (and d!1817452 c!1020369) b!5770574))

(assert (= (and d!1817452 (not c!1020369)) b!5770575))

(assert (= (and d!1817452 res!2435338) b!5770576))

(assert (= (and b!5770576 res!2435339) b!5770577))

(declare-fun m!6715402 () Bool)

(assert (=> d!1817452 m!6715402))

(declare-fun m!6715404 () Bool)

(assert (=> d!1817452 m!6715404))

(declare-fun m!6715406 () Bool)

(assert (=> d!1817452 m!6715406))

(declare-fun m!6715408 () Bool)

(assert (=> b!5770576 m!6715408))

(declare-fun m!6715410 () Bool)

(assert (=> b!5770576 m!6715410))

(declare-fun m!6715412 () Bool)

(assert (=> b!5770576 m!6715412))

(declare-fun m!6715414 () Bool)

(assert (=> b!5770575 m!6715414))

(assert (=> bm!444368 d!1817452))

(declare-fun bs!1353641 () Bool)

(declare-fun d!1817454 () Bool)

(assert (= bs!1353641 (and d!1817454 d!1817424)))

(declare-fun lambda!313740 () Int)

(assert (=> bs!1353641 (= lambda!313740 lambda!313735)))

(declare-fun bs!1353642 () Bool)

(assert (= bs!1353642 (and d!1817454 d!1817448)))

(assert (=> bs!1353642 (= lambda!313740 lambda!313739)))

(declare-fun bs!1353643 () Bool)

(assert (= bs!1353643 (and d!1817454 d!1817370)))

(assert (=> bs!1353643 (= lambda!313740 lambda!313725)))

(declare-fun bs!1353644 () Bool)

(assert (= bs!1353644 (and d!1817454 b!5770193)))

(assert (=> bs!1353644 (= lambda!313740 lambda!313697)))

(declare-fun bs!1353645 () Bool)

(assert (= bs!1353645 (and d!1817454 d!1817384)))

(assert (=> bs!1353645 (= lambda!313740 lambda!313726)))

(declare-fun bs!1353646 () Bool)

(assert (= bs!1353646 (and d!1817454 b!5770177)))

(assert (=> bs!1353646 (= lambda!313740 lambda!313695)))

(declare-fun bs!1353647 () Bool)

(assert (= bs!1353647 (and d!1817454 d!1817428)))

(assert (=> bs!1353647 (= lambda!313740 lambda!313736)))

(declare-fun b!5770578 () Bool)

(declare-fun e!3545080 () Bool)

(assert (=> b!5770578 (= e!3545080 (isEmpty!35428 (t!376993 (ite c!1020247 (t!376993 (exprs!5669 (h!69980 zl!343))) (ite c!1020242 lt!2291127 lt!2291061)))))))

(declare-fun b!5770579 () Bool)

(declare-fun e!3545081 () Regex!15785)

(assert (=> b!5770579 (= e!3545081 (h!69979 (ite c!1020247 (t!376993 (exprs!5669 (h!69980 zl!343))) (ite c!1020242 lt!2291127 lt!2291061))))))

(declare-fun b!5770580 () Bool)

(declare-fun e!3545078 () Bool)

(declare-fun e!3545077 () Bool)

(assert (=> b!5770580 (= e!3545078 e!3545077)))

(declare-fun c!1020371 () Bool)

(assert (=> b!5770580 (= c!1020371 (isEmpty!35428 (tail!11296 (ite c!1020247 (t!376993 (exprs!5669 (h!69980 zl!343))) (ite c!1020242 lt!2291127 lt!2291061)))))))

(declare-fun b!5770581 () Bool)

(declare-fun e!3545076 () Regex!15785)

(assert (=> b!5770581 (= e!3545076 EmptyExpr!15785)))

(declare-fun b!5770582 () Bool)

(assert (=> b!5770582 (= e!3545076 (Concat!24630 (h!69979 (ite c!1020247 (t!376993 (exprs!5669 (h!69980 zl!343))) (ite c!1020242 lt!2291127 lt!2291061))) (generalisedConcat!1400 (t!376993 (ite c!1020247 (t!376993 (exprs!5669 (h!69980 zl!343))) (ite c!1020242 lt!2291127 lt!2291061))))))))

(declare-fun b!5770583 () Bool)

(declare-fun lt!2291253 () Regex!15785)

(assert (=> b!5770583 (= e!3545078 (isEmptyExpr!1268 lt!2291253))))

(declare-fun b!5770584 () Bool)

(assert (=> b!5770584 (= e!3545077 (= lt!2291253 (head!12201 (ite c!1020247 (t!376993 (exprs!5669 (h!69980 zl!343))) (ite c!1020242 lt!2291127 lt!2291061)))))))

(declare-fun b!5770585 () Bool)

(assert (=> b!5770585 (= e!3545077 (isConcat!791 lt!2291253))))

(declare-fun b!5770586 () Bool)

(assert (=> b!5770586 (= e!3545081 e!3545076)))

(declare-fun c!1020372 () Bool)

(assert (=> b!5770586 (= c!1020372 ((_ is Cons!63531) (ite c!1020247 (t!376993 (exprs!5669 (h!69980 zl!343))) (ite c!1020242 lt!2291127 lt!2291061))))))

(declare-fun b!5770587 () Bool)

(declare-fun e!3545079 () Bool)

(assert (=> b!5770587 (= e!3545079 e!3545078)))

(declare-fun c!1020373 () Bool)

(assert (=> b!5770587 (= c!1020373 (isEmpty!35428 (ite c!1020247 (t!376993 (exprs!5669 (h!69980 zl!343))) (ite c!1020242 lt!2291127 lt!2291061))))))

(assert (=> d!1817454 e!3545079))

(declare-fun res!2435341 () Bool)

(assert (=> d!1817454 (=> (not res!2435341) (not e!3545079))))

(assert (=> d!1817454 (= res!2435341 (validRegex!7521 lt!2291253))))

(assert (=> d!1817454 (= lt!2291253 e!3545081)))

(declare-fun c!1020370 () Bool)

(assert (=> d!1817454 (= c!1020370 e!3545080)))

(declare-fun res!2435340 () Bool)

(assert (=> d!1817454 (=> (not res!2435340) (not e!3545080))))

(assert (=> d!1817454 (= res!2435340 ((_ is Cons!63531) (ite c!1020247 (t!376993 (exprs!5669 (h!69980 zl!343))) (ite c!1020242 lt!2291127 lt!2291061))))))

(assert (=> d!1817454 (forall!14900 (ite c!1020247 (t!376993 (exprs!5669 (h!69980 zl!343))) (ite c!1020242 lt!2291127 lt!2291061)) lambda!313740)))

(assert (=> d!1817454 (= (generalisedConcat!1400 (ite c!1020247 (t!376993 (exprs!5669 (h!69980 zl!343))) (ite c!1020242 lt!2291127 lt!2291061))) lt!2291253)))

(assert (= (and d!1817454 res!2435340) b!5770578))

(assert (= (and d!1817454 c!1020370) b!5770579))

(assert (= (and d!1817454 (not c!1020370)) b!5770586))

(assert (= (and b!5770586 c!1020372) b!5770582))

(assert (= (and b!5770586 (not c!1020372)) b!5770581))

(assert (= (and d!1817454 res!2435341) b!5770587))

(assert (= (and b!5770587 c!1020373) b!5770583))

(assert (= (and b!5770587 (not c!1020373)) b!5770580))

(assert (= (and b!5770580 c!1020371) b!5770584))

(assert (= (and b!5770580 (not c!1020371)) b!5770585))

(declare-fun m!6715416 () Bool)

(assert (=> b!5770582 m!6715416))

(declare-fun m!6715418 () Bool)

(assert (=> b!5770587 m!6715418))

(declare-fun m!6715420 () Bool)

(assert (=> b!5770583 m!6715420))

(declare-fun m!6715422 () Bool)

(assert (=> b!5770584 m!6715422))

(declare-fun m!6715424 () Bool)

(assert (=> d!1817454 m!6715424))

(declare-fun m!6715426 () Bool)

(assert (=> d!1817454 m!6715426))

(declare-fun m!6715428 () Bool)

(assert (=> b!5770580 m!6715428))

(assert (=> b!5770580 m!6715428))

(declare-fun m!6715430 () Bool)

(assert (=> b!5770580 m!6715430))

(declare-fun m!6715432 () Bool)

(assert (=> b!5770578 m!6715432))

(declare-fun m!6715434 () Bool)

(assert (=> b!5770585 m!6715434))

(assert (=> bm!444479 d!1817454))

(declare-fun bs!1353648 () Bool)

(declare-fun d!1817456 () Bool)

(assert (= bs!1353648 (and d!1817456 d!1817424)))

(declare-fun lambda!313743 () Int)

(assert (=> bs!1353648 (= lambda!313743 lambda!313735)))

(declare-fun bs!1353649 () Bool)

(assert (= bs!1353649 (and d!1817456 d!1817448)))

(assert (=> bs!1353649 (= lambda!313743 lambda!313739)))

(declare-fun bs!1353650 () Bool)

(assert (= bs!1353650 (and d!1817456 d!1817370)))

(assert (=> bs!1353650 (= lambda!313743 lambda!313725)))

(declare-fun bs!1353651 () Bool)

(assert (= bs!1353651 (and d!1817456 b!5770193)))

(assert (=> bs!1353651 (= lambda!313743 lambda!313697)))

(declare-fun bs!1353652 () Bool)

(assert (= bs!1353652 (and d!1817456 d!1817384)))

(assert (=> bs!1353652 (= lambda!313743 lambda!313726)))

(declare-fun bs!1353653 () Bool)

(assert (= bs!1353653 (and d!1817456 d!1817454)))

(assert (=> bs!1353653 (= lambda!313743 lambda!313740)))

(declare-fun bs!1353654 () Bool)

(assert (= bs!1353654 (and d!1817456 b!5770177)))

(assert (=> bs!1353654 (= lambda!313743 lambda!313695)))

(declare-fun bs!1353655 () Bool)

(assert (= bs!1353655 (and d!1817456 d!1817428)))

(assert (=> bs!1353655 (= lambda!313743 lambda!313736)))

(assert (=> d!1817456 (matchZipper!1923 (store ((as const (Array Context!10338 Bool)) false) (Context!10339 (++!13999 (exprs!5669 lt!2291103) (exprs!5669 lt!2291151))) true) (++!13998 (ite c!1020250 (_1!36185 lt!2291010) (_1!36185 lt!2291107)) (ite c!1020250 lt!2291088 (_2!36185 lt!2291107))))))

(declare-fun lt!2291261 () Unit!156690)

(assert (=> d!1817456 (= lt!2291261 (lemmaConcatPreservesForall!320 (exprs!5669 lt!2291103) (exprs!5669 lt!2291151) lambda!313743))))

(declare-fun lt!2291260 () Unit!156690)

(declare-fun choose!43793 (Context!10338 Context!10338 List!63654 List!63654) Unit!156690)

(assert (=> d!1817456 (= lt!2291260 (choose!43793 lt!2291103 lt!2291151 (ite c!1020250 (_1!36185 lt!2291010) (_1!36185 lt!2291107)) (ite c!1020250 lt!2291088 (_2!36185 lt!2291107))))))

(assert (=> d!1817456 (matchZipper!1923 (store ((as const (Array Context!10338 Bool)) false) lt!2291103 true) (ite c!1020250 (_1!36185 lt!2291010) (_1!36185 lt!2291107)))))

(assert (=> d!1817456 (= (lemmaConcatenateContextMatchesConcatOfStrings!150 lt!2291103 lt!2291151 (ite c!1020250 (_1!36185 lt!2291010) (_1!36185 lt!2291107)) (ite c!1020250 lt!2291088 (_2!36185 lt!2291107))) lt!2291260)))

(declare-fun bs!1353656 () Bool)

(assert (= bs!1353656 d!1817456))

(declare-fun m!6715436 () Bool)

(assert (=> bs!1353656 m!6715436))

(declare-fun m!6715438 () Bool)

(assert (=> bs!1353656 m!6715438))

(assert (=> bs!1353656 m!6714778))

(declare-fun m!6715440 () Bool)

(assert (=> bs!1353656 m!6715440))

(assert (=> bs!1353656 m!6714894))

(assert (=> bs!1353656 m!6714894))

(declare-fun m!6715442 () Bool)

(assert (=> bs!1353656 m!6715442))

(declare-fun m!6715444 () Bool)

(assert (=> bs!1353656 m!6715444))

(declare-fun m!6715446 () Bool)

(assert (=> bs!1353656 m!6715446))

(assert (=> bs!1353656 m!6715438))

(assert (=> bs!1353656 m!6714778))

(assert (=> bm!444435 d!1817456))

(declare-fun d!1817458 () Bool)

(declare-fun e!3545082 () Bool)

(assert (=> d!1817458 (= (matchZipper!1923 ((_ map or) (ite c!1020249 lt!2290986 (ite c!1020242 lt!2291179 lt!2290998)) (ite c!1020249 lt!2291005 (ite c!1020242 lt!2291150 lt!2291005))) (t!376992 s!2326)) e!3545082)))

(declare-fun res!2435342 () Bool)

(assert (=> d!1817458 (=> res!2435342 e!3545082)))

(assert (=> d!1817458 (= res!2435342 (matchZipper!1923 (ite c!1020249 lt!2290986 (ite c!1020242 lt!2291179 lt!2290998)) (t!376992 s!2326)))))

(declare-fun lt!2291262 () Unit!156690)

(assert (=> d!1817458 (= lt!2291262 (choose!43777 (ite c!1020249 lt!2290986 (ite c!1020242 lt!2291179 lt!2290998)) (ite c!1020249 lt!2291005 (ite c!1020242 lt!2291150 lt!2291005)) (t!376992 s!2326)))))

(assert (=> d!1817458 (= (lemmaZipperConcatMatchesSameAsBothZippers!810 (ite c!1020249 lt!2290986 (ite c!1020242 lt!2291179 lt!2290998)) (ite c!1020249 lt!2291005 (ite c!1020242 lt!2291150 lt!2291005)) (t!376992 s!2326)) lt!2291262)))

(declare-fun b!5770588 () Bool)

(assert (=> b!5770588 (= e!3545082 (matchZipper!1923 (ite c!1020249 lt!2291005 (ite c!1020242 lt!2291150 lt!2291005)) (t!376992 s!2326)))))

(assert (= (and d!1817458 (not res!2435342)) b!5770588))

(declare-fun m!6715448 () Bool)

(assert (=> d!1817458 m!6715448))

(declare-fun m!6715450 () Bool)

(assert (=> d!1817458 m!6715450))

(declare-fun m!6715452 () Bool)

(assert (=> d!1817458 m!6715452))

(declare-fun m!6715454 () Bool)

(assert (=> b!5770588 m!6715454))

(assert (=> bm!444433 d!1817458))

(declare-fun d!1817460 () Bool)

(declare-fun c!1020374 () Bool)

(assert (=> d!1817460 (= c!1020374 (isEmpty!35427 (ite c!1020249 s!2326 (t!376992 s!2326))))))

(declare-fun e!3545083 () Bool)

(assert (=> d!1817460 (= (matchZipper!1923 (ite c!1020249 lt!2291146 lt!2291179) (ite c!1020249 s!2326 (t!376992 s!2326))) e!3545083)))

(declare-fun b!5770589 () Bool)

(assert (=> b!5770589 (= e!3545083 (nullableZipper!1709 (ite c!1020249 lt!2291146 lt!2291179)))))

(declare-fun b!5770590 () Bool)

(assert (=> b!5770590 (= e!3545083 (matchZipper!1923 (derivationStepZipper!1862 (ite c!1020249 lt!2291146 lt!2291179) (head!12200 (ite c!1020249 s!2326 (t!376992 s!2326)))) (tail!11295 (ite c!1020249 s!2326 (t!376992 s!2326)))))))

(assert (= (and d!1817460 c!1020374) b!5770589))

(assert (= (and d!1817460 (not c!1020374)) b!5770590))

(declare-fun m!6715456 () Bool)

(assert (=> d!1817460 m!6715456))

(declare-fun m!6715458 () Bool)

(assert (=> b!5770589 m!6715458))

(declare-fun m!6715460 () Bool)

(assert (=> b!5770590 m!6715460))

(assert (=> b!5770590 m!6715460))

(declare-fun m!6715462 () Bool)

(assert (=> b!5770590 m!6715462))

(declare-fun m!6715464 () Bool)

(assert (=> b!5770590 m!6715464))

(assert (=> b!5770590 m!6715462))

(assert (=> b!5770590 m!6715464))

(declare-fun m!6715466 () Bool)

(assert (=> b!5770590 m!6715466))

(assert (=> bm!444318 d!1817460))

(declare-fun d!1817462 () Bool)

(assert (=> d!1817462 (= (matchR!7970 (Concat!24630 (Concat!24630 (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) lt!2291167)) (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (regTwo!32082 r!7292)))) s!2326) (matchR!7970 (Concat!24630 (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (Concat!24630 (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) lt!2291167) (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (regTwo!32082 r!7292))))) s!2326))))

(declare-fun lt!2291265 () Unit!156690)

(declare-fun choose!43794 (Regex!15785 Regex!15785 Regex!15785 List!63654) Unit!156690)

(assert (=> d!1817462 (= lt!2291265 (choose!43794 (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) lt!2291167) (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (regTwo!32082 r!7292))) s!2326))))

(declare-fun e!3545088 () Bool)

(assert (=> d!1817462 e!3545088))

(declare-fun res!2435351 () Bool)

(assert (=> d!1817462 (=> (not res!2435351) (not e!3545088))))

(assert (=> d!1817462 (= res!2435351 (validRegex!7521 (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292)))))))

(assert (=> d!1817462 (= (lemmaConcatAssociative!104 (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) lt!2291167) (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (regTwo!32082 r!7292))) s!2326) lt!2291265)))

(declare-fun b!5770599 () Bool)

(declare-fun res!2435352 () Bool)

(assert (=> b!5770599 (=> (not res!2435352) (not e!3545088))))

(assert (=> b!5770599 (= res!2435352 (validRegex!7521 (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) lt!2291167)))))

(declare-fun b!5770600 () Bool)

(assert (=> b!5770600 (= e!3545088 (validRegex!7521 (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (regTwo!32082 r!7292)))))))

(assert (= (and d!1817462 res!2435351) b!5770599))

(assert (= (and b!5770599 res!2435352) b!5770600))

(declare-fun m!6715468 () Bool)

(assert (=> d!1817462 m!6715468))

(declare-fun m!6715470 () Bool)

(assert (=> d!1817462 m!6715470))

(declare-fun m!6715472 () Bool)

(assert (=> d!1817462 m!6715472))

(assert (=> d!1817462 m!6715348))

(declare-fun m!6715474 () Bool)

(assert (=> b!5770599 m!6715474))

(declare-fun m!6715476 () Bool)

(assert (=> b!5770600 m!6715476))

(assert (=> bm!444436 d!1817462))

(declare-fun c!1020375 () Bool)

(declare-fun d!1817464 () Bool)

(assert (=> d!1817464 (= c!1020375 (isEmpty!35427 (ite c!1020249 (t!376992 s!2326) (ite (or c!1020242 c!1020252 (and c!1020248 c!1020250)) s!2326 (t!376992 s!2326)))))))

(declare-fun e!3545089 () Bool)

(assert (=> d!1817464 (= (matchZipper!1923 (ite c!1020249 lt!2291059 (ite (or c!1020242 c!1020252) z!1189 (ite c!1020248 (ite c!1020250 (ite c!1020243 lt!2291030 z!1189) lt!2290998) (ite c!1020246 ((_ map or) lt!2290998 lt!2291005) lt!2290998)))) (ite c!1020249 (t!376992 s!2326) (ite (or c!1020242 c!1020252 (and c!1020248 c!1020250)) s!2326 (t!376992 s!2326)))) e!3545089)))

(declare-fun b!5770601 () Bool)

(assert (=> b!5770601 (= e!3545089 (nullableZipper!1709 (ite c!1020249 lt!2291059 (ite (or c!1020242 c!1020252) z!1189 (ite c!1020248 (ite c!1020250 (ite c!1020243 lt!2291030 z!1189) lt!2290998) (ite c!1020246 ((_ map or) lt!2290998 lt!2291005) lt!2290998))))))))

(declare-fun b!5770602 () Bool)

(assert (=> b!5770602 (= e!3545089 (matchZipper!1923 (derivationStepZipper!1862 (ite c!1020249 lt!2291059 (ite (or c!1020242 c!1020252) z!1189 (ite c!1020248 (ite c!1020250 (ite c!1020243 lt!2291030 z!1189) lt!2290998) (ite c!1020246 ((_ map or) lt!2290998 lt!2291005) lt!2290998)))) (head!12200 (ite c!1020249 (t!376992 s!2326) (ite (or c!1020242 c!1020252 (and c!1020248 c!1020250)) s!2326 (t!376992 s!2326))))) (tail!11295 (ite c!1020249 (t!376992 s!2326) (ite (or c!1020242 c!1020252 (and c!1020248 c!1020250)) s!2326 (t!376992 s!2326))))))))

(assert (= (and d!1817464 c!1020375) b!5770601))

(assert (= (and d!1817464 (not c!1020375)) b!5770602))

(declare-fun m!6715478 () Bool)

(assert (=> d!1817464 m!6715478))

(declare-fun m!6715480 () Bool)

(assert (=> b!5770601 m!6715480))

(declare-fun m!6715482 () Bool)

(assert (=> b!5770602 m!6715482))

(assert (=> b!5770602 m!6715482))

(declare-fun m!6715484 () Bool)

(assert (=> b!5770602 m!6715484))

(declare-fun m!6715486 () Bool)

(assert (=> b!5770602 m!6715486))

(assert (=> b!5770602 m!6715484))

(assert (=> b!5770602 m!6715486))

(declare-fun m!6715488 () Bool)

(assert (=> b!5770602 m!6715488))

(assert (=> bm!444304 d!1817464))

(declare-fun d!1817466 () Bool)

(assert (=> d!1817466 (= (Exists!2885 lambda!313680) (choose!43778 lambda!313680))))

(declare-fun bs!1353657 () Bool)

(assert (= bs!1353657 d!1817466))

(declare-fun m!6715490 () Bool)

(assert (=> bs!1353657 m!6715490))

(assert (=> b!5770169 d!1817466))

(declare-fun d!1817468 () Bool)

(declare-fun e!3545102 () Bool)

(assert (=> d!1817468 e!3545102))

(declare-fun res!2435373 () Bool)

(assert (=> d!1817468 (=> res!2435373 e!3545102)))

(declare-fun e!3545103 () Bool)

(assert (=> d!1817468 (= res!2435373 e!3545103)))

(declare-fun res!2435369 () Bool)

(assert (=> d!1817468 (=> (not res!2435369) (not e!3545103))))

(declare-fun lt!2291273 () Option!15794)

(assert (=> d!1817468 (= res!2435369 (isDefined!12497 lt!2291273))))

(declare-fun e!3545105 () Option!15794)

(assert (=> d!1817468 (= lt!2291273 e!3545105)))

(declare-fun c!1020380 () Bool)

(declare-fun e!3545104 () Bool)

(assert (=> d!1817468 (= c!1020380 e!3545104)))

(declare-fun res!2435370 () Bool)

(assert (=> d!1817468 (=> (not res!2435370) (not e!3545104))))

(assert (=> d!1817468 (= res!2435370 (matchR!7970 (regOne!32082 r!7292) Nil!63530))))

(assert (=> d!1817468 (validRegex!7521 (regOne!32082 r!7292))))

(assert (=> d!1817468 (= (findConcatSeparation!2208 (regOne!32082 r!7292) (regTwo!32082 r!7292) Nil!63530 s!2326 s!2326) lt!2291273)))

(declare-fun b!5770627 () Bool)

(assert (=> b!5770627 (= e!3545104 (matchR!7970 (regTwo!32082 r!7292) s!2326))))

(declare-fun b!5770628 () Bool)

(declare-fun e!3545106 () Option!15794)

(assert (=> b!5770628 (= e!3545106 None!15793)))

(declare-fun b!5770629 () Bool)

(declare-fun res!2435371 () Bool)

(assert (=> b!5770629 (=> (not res!2435371) (not e!3545103))))

(assert (=> b!5770629 (= res!2435371 (matchR!7970 (regTwo!32082 r!7292) (_2!36185 (get!21923 lt!2291273))))))

(declare-fun b!5770630 () Bool)

(assert (=> b!5770630 (= e!3545102 (not (isDefined!12497 lt!2291273)))))

(declare-fun b!5770631 () Bool)

(assert (=> b!5770631 (= e!3545105 (Some!15793 (tuple2!65765 Nil!63530 s!2326)))))

(declare-fun b!5770632 () Bool)

(assert (=> b!5770632 (= e!3545103 (= (++!13998 (_1!36185 (get!21923 lt!2291273)) (_2!36185 (get!21923 lt!2291273))) s!2326))))

(declare-fun b!5770633 () Bool)

(declare-fun res!2435372 () Bool)

(assert (=> b!5770633 (=> (not res!2435372) (not e!3545103))))

(assert (=> b!5770633 (= res!2435372 (matchR!7970 (regOne!32082 r!7292) (_1!36185 (get!21923 lt!2291273))))))

(declare-fun b!5770634 () Bool)

(declare-fun lt!2291275 () Unit!156690)

(declare-fun lt!2291274 () Unit!156690)

(assert (=> b!5770634 (= lt!2291275 lt!2291274)))

(assert (=> b!5770634 (= (++!13998 (++!13998 Nil!63530 (Cons!63530 (h!69978 s!2326) Nil!63530)) (t!376992 s!2326)) s!2326)))

(assert (=> b!5770634 (= lt!2291274 (lemmaMoveElementToOtherListKeepsConcatEq!2113 Nil!63530 (h!69978 s!2326) (t!376992 s!2326) s!2326))))

(assert (=> b!5770634 (= e!3545106 (findConcatSeparation!2208 (regOne!32082 r!7292) (regTwo!32082 r!7292) (++!13998 Nil!63530 (Cons!63530 (h!69978 s!2326) Nil!63530)) (t!376992 s!2326) s!2326))))

(declare-fun b!5770635 () Bool)

(assert (=> b!5770635 (= e!3545105 e!3545106)))

(declare-fun c!1020381 () Bool)

(assert (=> b!5770635 (= c!1020381 ((_ is Nil!63530) s!2326))))

(assert (= (and d!1817468 res!2435370) b!5770627))

(assert (= (and d!1817468 c!1020380) b!5770631))

(assert (= (and d!1817468 (not c!1020380)) b!5770635))

(assert (= (and b!5770635 c!1020381) b!5770628))

(assert (= (and b!5770635 (not c!1020381)) b!5770634))

(assert (= (and d!1817468 res!2435369) b!5770633))

(assert (= (and b!5770633 res!2435372) b!5770629))

(assert (= (and b!5770629 res!2435371) b!5770632))

(assert (= (and d!1817468 (not res!2435373)) b!5770630))

(assert (=> b!5770634 m!6715028))

(assert (=> b!5770634 m!6715028))

(assert (=> b!5770634 m!6715030))

(assert (=> b!5770634 m!6715032))

(assert (=> b!5770634 m!6715028))

(declare-fun m!6715492 () Bool)

(assert (=> b!5770634 m!6715492))

(declare-fun m!6715494 () Bool)

(assert (=> b!5770633 m!6715494))

(declare-fun m!6715496 () Bool)

(assert (=> b!5770633 m!6715496))

(declare-fun m!6715498 () Bool)

(assert (=> d!1817468 m!6715498))

(declare-fun m!6715500 () Bool)

(assert (=> d!1817468 m!6715500))

(declare-fun m!6715502 () Bool)

(assert (=> d!1817468 m!6715502))

(assert (=> b!5770632 m!6715494))

(declare-fun m!6715504 () Bool)

(assert (=> b!5770632 m!6715504))

(assert (=> b!5770630 m!6715498))

(declare-fun m!6715506 () Bool)

(assert (=> b!5770627 m!6715506))

(assert (=> b!5770629 m!6715494))

(declare-fun m!6715508 () Bool)

(assert (=> b!5770629 m!6715508))

(assert (=> b!5770169 d!1817468))

(declare-fun d!1817470 () Bool)

(assert (=> d!1817470 (= (Exists!2885 lambda!313679) (choose!43778 lambda!313679))))

(declare-fun bs!1353665 () Bool)

(assert (= bs!1353665 d!1817470))

(declare-fun m!6715510 () Bool)

(assert (=> bs!1353665 m!6715510))

(assert (=> b!5770169 d!1817470))

(declare-fun bs!1353666 () Bool)

(declare-fun d!1817472 () Bool)

(assert (= bs!1353666 (and d!1817472 d!1817368)))

(declare-fun lambda!313750 () Int)

(assert (=> bs!1353666 (= (and (= s!2326 (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530)) (= (regOne!32082 r!7292) (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292)))))) (= (regTwo!32082 r!7292) (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))))) (= lambda!313750 lambda!313721))))

(declare-fun bs!1353667 () Bool)

(assert (= bs!1353667 (and d!1817472 d!1817422)))

(assert (=> bs!1353667 (= (and (= s!2326 (ite (or c!1020242 c!1020252 c!1020250) s!2326 (_1!36185 lt!2291163))) (= (regOne!32082 r!7292) (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (reg!16114 (regOne!32082 r!7292))))) (= (regTwo!32082 r!7292) (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020250 (regTwo!32082 r!7292) lt!2291167))))) (= lambda!313750 lambda!313732))))

(declare-fun bs!1353668 () Bool)

(assert (= bs!1353668 (and d!1817472 b!5770189)))

(assert (=> bs!1353668 (= (and (= (regOne!32082 r!7292) (regTwo!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291109)) (= lambda!313750 lambda!313684))))

(declare-fun bs!1353669 () Bool)

(assert (= bs!1353669 (and d!1817472 b!5770180)))

(assert (=> bs!1353669 (not (= lambda!313750 lambda!313687))))

(declare-fun bs!1353670 () Bool)

(assert (= bs!1353670 (and d!1817472 d!1817434)))

(assert (=> bs!1353670 (not (= lambda!313750 lambda!313738))))

(declare-fun bs!1353671 () Bool)

(assert (= bs!1353671 (and d!1817472 b!5770193)))

(assert (=> bs!1353671 (= (= (regOne!32082 r!7292) lt!2291100) (= lambda!313750 lambda!313698))))

(declare-fun bs!1353672 () Bool)

(assert (= bs!1353672 (and d!1817472 b!5770330)))

(assert (=> bs!1353672 (not (= lambda!313750 lambda!313711))))

(assert (=> bs!1353669 (= (and (= (regOne!32082 r!7292) (regOne!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291065)) (= lambda!313750 lambda!313686))))

(declare-fun bs!1353673 () Bool)

(assert (= bs!1353673 (and d!1817472 b!5770157)))

(assert (=> bs!1353673 (= (= (regOne!32082 r!7292) lt!2291167) (= lambda!313750 lambda!313690))))

(assert (=> bs!1353670 (= (and (= s!2326 (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163)))) (= (regOne!32082 r!7292) (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292)))) (= (regTwo!32082 r!7292) (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)))) (= lambda!313750 lambda!313737))))

(declare-fun bs!1353674 () Bool)

(assert (= bs!1353674 (and d!1817472 b!5770173)))

(assert (=> bs!1353674 (= (and (= s!2326 Nil!63530) (= (regOne!32082 r!7292) (reg!16114 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291167)) (= lambda!313750 lambda!313703))))

(declare-fun bs!1353675 () Bool)

(assert (= bs!1353675 (and d!1817472 b!5770177)))

(assert (=> bs!1353675 (not (= lambda!313750 lambda!313693))))

(declare-fun bs!1353676 () Bool)

(assert (= bs!1353676 (and d!1817472 b!5770520)))

(assert (=> bs!1353676 (not (= lambda!313750 lambda!313730))))

(assert (=> bs!1353669 (= (and (= (regOne!32082 r!7292) (regTwo!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291002)) (= lambda!313750 lambda!313688))))

(assert (=> bs!1353673 (not (= lambda!313750 lambda!313691))))

(assert (=> bs!1353674 (not (= lambda!313750 lambda!313704))))

(assert (=> bs!1353666 (not (= lambda!313750 lambda!313722))))

(declare-fun bs!1353677 () Bool)

(assert (= bs!1353677 (and d!1817472 b!5770327)))

(assert (=> bs!1353677 (not (= lambda!313750 lambda!313710))))

(assert (=> bs!1353674 (not (= lambda!313750 lambda!313705))))

(declare-fun bs!1353678 () Bool)

(assert (= bs!1353678 (and d!1817472 d!1817362)))

(assert (=> bs!1353678 (= (and (= s!2326 (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530)))) (= (regOne!32082 r!7292) (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 (reg!16114 (regOne!32082 r!7292)) (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292)))))) (= (regTwo!32082 r!7292) (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite c!1020250 lt!2291167 (ite c!1020244 (regTwo!32082 r!7292) lt!2291167)))))) (= lambda!313750 lambda!313716))))

(assert (=> bs!1353669 (not (= lambda!313750 lambda!313689))))

(assert (=> bs!1353671 (not (= lambda!313750 lambda!313702))))

(declare-fun bs!1353680 () Bool)

(assert (= bs!1353680 (and d!1817472 b!5770366)))

(assert (=> bs!1353680 (not (= lambda!313750 lambda!313712))))

(assert (=> bs!1353671 (= (and (= s!2326 (_1!36185 lt!2291163)) (= (regOne!32082 r!7292) (reg!16114 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291167)) (= lambda!313750 lambda!313700))))

(declare-fun bs!1353681 () Bool)

(assert (= bs!1353681 (and d!1817472 b!5770369)))

(assert (=> bs!1353681 (not (= lambda!313750 lambda!313713))))

(assert (=> bs!1353668 (= (and (= (regOne!32082 r!7292) (regOne!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291182)) (= lambda!313750 lambda!313682))))

(assert (=> bs!1353675 (not (= lambda!313750 lambda!313694))))

(assert (=> bs!1353668 (not (= lambda!313750 lambda!313683))))

(assert (=> bs!1353675 (= (and (= s!2326 (_1!36185 lt!2291106)) (= (regOne!32082 r!7292) (reg!16114 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291167)) (= lambda!313750 lambda!313692))))

(declare-fun bs!1353682 () Bool)

(assert (= bs!1353682 (and d!1817472 b!5770169)))

(assert (=> bs!1353682 (not (= lambda!313750 lambda!313680))))

(declare-fun bs!1353683 () Bool)

(assert (= bs!1353683 (and d!1817472 b!5770523)))

(assert (=> bs!1353683 (not (= lambda!313750 lambda!313731))))

(assert (=> bs!1353671 (not (= lambda!313750 lambda!313701))))

(assert (=> bs!1353671 (not (= lambda!313750 lambda!313699))))

(assert (=> bs!1353682 (= lambda!313750 lambda!313679)))

(assert (=> bs!1353668 (not (= lambda!313750 lambda!313685))))

(assert (=> d!1817472 true))

(assert (=> d!1817472 true))

(assert (=> d!1817472 true))

(assert (=> d!1817472 (= (isDefined!12497 (findConcatSeparation!2208 (regOne!32082 r!7292) (regTwo!32082 r!7292) Nil!63530 s!2326 s!2326)) (Exists!2885 lambda!313750))))

(declare-fun lt!2291276 () Unit!156690)

(assert (=> d!1817472 (= lt!2291276 (choose!43785 (regOne!32082 r!7292) (regTwo!32082 r!7292) s!2326))))

(assert (=> d!1817472 (validRegex!7521 (regOne!32082 r!7292))))

(assert (=> d!1817472 (= (lemmaFindConcatSeparationEquivalentToExists!1972 (regOne!32082 r!7292) (regTwo!32082 r!7292) s!2326) lt!2291276)))

(declare-fun bs!1353684 () Bool)

(assert (= bs!1353684 d!1817472))

(assert (=> bs!1353684 m!6714786))

(assert (=> bs!1353684 m!6714788))

(declare-fun m!6715512 () Bool)

(assert (=> bs!1353684 m!6715512))

(assert (=> bs!1353684 m!6714786))

(assert (=> bs!1353684 m!6715502))

(declare-fun m!6715516 () Bool)

(assert (=> bs!1353684 m!6715516))

(assert (=> b!5770169 d!1817472))

(declare-fun bs!1353685 () Bool)

(declare-fun d!1817474 () Bool)

(assert (= bs!1353685 (and d!1817474 d!1817368)))

(declare-fun lambda!313751 () Int)

(assert (=> bs!1353685 (= (and (= s!2326 (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530)) (= (regOne!32082 r!7292) (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292)))))) (= (regTwo!32082 r!7292) (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))))) (= lambda!313751 lambda!313721))))

(declare-fun bs!1353686 () Bool)

(assert (= bs!1353686 (and d!1817474 d!1817422)))

(assert (=> bs!1353686 (= (and (= s!2326 (ite (or c!1020242 c!1020252 c!1020250) s!2326 (_1!36185 lt!2291163))) (= (regOne!32082 r!7292) (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (reg!16114 (regOne!32082 r!7292))))) (= (regTwo!32082 r!7292) (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020250 (regTwo!32082 r!7292) lt!2291167))))) (= lambda!313751 lambda!313732))))

(declare-fun bs!1353687 () Bool)

(assert (= bs!1353687 (and d!1817474 b!5770189)))

(assert (=> bs!1353687 (= (and (= (regOne!32082 r!7292) (regTwo!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291109)) (= lambda!313751 lambda!313684))))

(declare-fun bs!1353688 () Bool)

(assert (= bs!1353688 (and d!1817474 b!5770180)))

(assert (=> bs!1353688 (not (= lambda!313751 lambda!313687))))

(declare-fun bs!1353689 () Bool)

(assert (= bs!1353689 (and d!1817474 d!1817434)))

(assert (=> bs!1353689 (not (= lambda!313751 lambda!313738))))

(declare-fun bs!1353690 () Bool)

(assert (= bs!1353690 (and d!1817474 b!5770193)))

(assert (=> bs!1353690 (= (= (regOne!32082 r!7292) lt!2291100) (= lambda!313751 lambda!313698))))

(declare-fun bs!1353691 () Bool)

(assert (= bs!1353691 (and d!1817474 b!5770330)))

(assert (=> bs!1353691 (not (= lambda!313751 lambda!313711))))

(assert (=> bs!1353688 (= (and (= (regOne!32082 r!7292) (regOne!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291065)) (= lambda!313751 lambda!313686))))

(assert (=> bs!1353689 (= (and (= s!2326 (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163)))) (= (regOne!32082 r!7292) (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292)))) (= (regTwo!32082 r!7292) (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)))) (= lambda!313751 lambda!313737))))

(declare-fun bs!1353692 () Bool)

(assert (= bs!1353692 (and d!1817474 b!5770173)))

(assert (=> bs!1353692 (= (and (= s!2326 Nil!63530) (= (regOne!32082 r!7292) (reg!16114 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291167)) (= lambda!313751 lambda!313703))))

(declare-fun bs!1353693 () Bool)

(assert (= bs!1353693 (and d!1817474 b!5770177)))

(assert (=> bs!1353693 (not (= lambda!313751 lambda!313693))))

(declare-fun bs!1353694 () Bool)

(assert (= bs!1353694 (and d!1817474 b!5770520)))

(assert (=> bs!1353694 (not (= lambda!313751 lambda!313730))))

(assert (=> bs!1353688 (= (and (= (regOne!32082 r!7292) (regTwo!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291002)) (= lambda!313751 lambda!313688))))

(declare-fun bs!1353695 () Bool)

(assert (= bs!1353695 (and d!1817474 b!5770157)))

(assert (=> bs!1353695 (not (= lambda!313751 lambda!313691))))

(assert (=> bs!1353692 (not (= lambda!313751 lambda!313704))))

(assert (=> bs!1353685 (not (= lambda!313751 lambda!313722))))

(declare-fun bs!1353696 () Bool)

(assert (= bs!1353696 (and d!1817474 b!5770327)))

(assert (=> bs!1353696 (not (= lambda!313751 lambda!313710))))

(assert (=> bs!1353692 (not (= lambda!313751 lambda!313705))))

(declare-fun bs!1353697 () Bool)

(assert (= bs!1353697 (and d!1817474 d!1817362)))

(assert (=> bs!1353697 (= (and (= s!2326 (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530)))) (= (regOne!32082 r!7292) (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 (reg!16114 (regOne!32082 r!7292)) (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292)))))) (= (regTwo!32082 r!7292) (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite c!1020250 lt!2291167 (ite c!1020244 (regTwo!32082 r!7292) lt!2291167)))))) (= lambda!313751 lambda!313716))))

(assert (=> bs!1353688 (not (= lambda!313751 lambda!313689))))

(assert (=> bs!1353690 (not (= lambda!313751 lambda!313702))))

(declare-fun bs!1353698 () Bool)

(assert (= bs!1353698 (and d!1817474 b!5770366)))

(assert (=> bs!1353698 (not (= lambda!313751 lambda!313712))))

(assert (=> bs!1353690 (= (and (= s!2326 (_1!36185 lt!2291163)) (= (regOne!32082 r!7292) (reg!16114 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291167)) (= lambda!313751 lambda!313700))))

(declare-fun bs!1353699 () Bool)

(assert (= bs!1353699 (and d!1817474 b!5770369)))

(assert (=> bs!1353699 (not (= lambda!313751 lambda!313713))))

(assert (=> bs!1353695 (= (= (regOne!32082 r!7292) lt!2291167) (= lambda!313751 lambda!313690))))

(declare-fun bs!1353700 () Bool)

(assert (= bs!1353700 (and d!1817474 d!1817472)))

(assert (=> bs!1353700 (= lambda!313751 lambda!313750)))

(assert (=> bs!1353687 (= (and (= (regOne!32082 r!7292) (regOne!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291182)) (= lambda!313751 lambda!313682))))

(assert (=> bs!1353693 (not (= lambda!313751 lambda!313694))))

(assert (=> bs!1353687 (not (= lambda!313751 lambda!313683))))

(assert (=> bs!1353693 (= (and (= s!2326 (_1!36185 lt!2291106)) (= (regOne!32082 r!7292) (reg!16114 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291167)) (= lambda!313751 lambda!313692))))

(declare-fun bs!1353701 () Bool)

(assert (= bs!1353701 (and d!1817474 b!5770169)))

(assert (=> bs!1353701 (not (= lambda!313751 lambda!313680))))

(declare-fun bs!1353702 () Bool)

(assert (= bs!1353702 (and d!1817474 b!5770523)))

(assert (=> bs!1353702 (not (= lambda!313751 lambda!313731))))

(assert (=> bs!1353690 (not (= lambda!313751 lambda!313701))))

(assert (=> bs!1353690 (not (= lambda!313751 lambda!313699))))

(assert (=> bs!1353701 (= lambda!313751 lambda!313679)))

(assert (=> bs!1353687 (not (= lambda!313751 lambda!313685))))

(assert (=> d!1817474 true))

(assert (=> d!1817474 true))

(assert (=> d!1817474 true))

(declare-fun lambda!313752 () Int)

(assert (=> bs!1353685 (not (= lambda!313752 lambda!313721))))

(assert (=> bs!1353686 (not (= lambda!313752 lambda!313732))))

(assert (=> bs!1353687 (not (= lambda!313752 lambda!313684))))

(assert (=> bs!1353688 (= (and (= (regOne!32082 r!7292) (regOne!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291065)) (= lambda!313752 lambda!313687))))

(assert (=> bs!1353689 (= (and (= s!2326 (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163)))) (= (regOne!32082 r!7292) (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292)))) (= (regTwo!32082 r!7292) (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)))) (= lambda!313752 lambda!313738))))

(assert (=> bs!1353690 (not (= lambda!313752 lambda!313698))))

(declare-fun bs!1353704 () Bool)

(assert (= bs!1353704 d!1817474))

(assert (=> bs!1353704 (not (= lambda!313752 lambda!313751))))

(assert (=> bs!1353691 (= (and (= s!2326 (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530)))) (= (regOne!32082 r!7292) (regOne!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167))))) (= (regTwo!32082 r!7292) (regTwo!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))))) (= lambda!313752 lambda!313711))))

(assert (=> bs!1353688 (not (= lambda!313752 lambda!313686))))

(assert (=> bs!1353689 (not (= lambda!313752 lambda!313737))))

(assert (=> bs!1353692 (not (= lambda!313752 lambda!313703))))

(assert (=> bs!1353693 (not (= lambda!313752 lambda!313693))))

(assert (=> bs!1353694 (not (= lambda!313752 lambda!313730))))

(assert (=> bs!1353688 (not (= lambda!313752 lambda!313688))))

(assert (=> bs!1353695 (= (= (regOne!32082 r!7292) lt!2291167) (= lambda!313752 lambda!313691))))

(assert (=> bs!1353692 (= (and (= s!2326 Nil!63530) (= (regOne!32082 r!7292) (reg!16114 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291167)) (= lambda!313752 lambda!313704))))

(assert (=> bs!1353685 (= (and (= s!2326 (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530)) (= (regOne!32082 r!7292) (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292)))))) (= (regTwo!32082 r!7292) (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))))) (= lambda!313752 lambda!313722))))

(assert (=> bs!1353696 (not (= lambda!313752 lambda!313710))))

(assert (=> bs!1353692 (not (= lambda!313752 lambda!313705))))

(assert (=> bs!1353697 (not (= lambda!313752 lambda!313716))))

(assert (=> bs!1353688 (= (and (= (regOne!32082 r!7292) (regTwo!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291002)) (= lambda!313752 lambda!313689))))

(assert (=> bs!1353690 (not (= lambda!313752 lambda!313702))))

(assert (=> bs!1353698 (not (= lambda!313752 lambda!313712))))

(assert (=> bs!1353690 (not (= lambda!313752 lambda!313700))))

(assert (=> bs!1353699 (= (and (= s!2326 (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (_1!36185 lt!2291163) s!2326))) (= (regOne!32082 r!7292) (regOne!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292))))))) (= (regTwo!32082 r!7292) (regTwo!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))))) (= lambda!313752 lambda!313713))))

(assert (=> bs!1353695 (not (= lambda!313752 lambda!313690))))

(assert (=> bs!1353700 (not (= lambda!313752 lambda!313750))))

(assert (=> bs!1353687 (not (= lambda!313752 lambda!313682))))

(assert (=> bs!1353693 (= (and (= s!2326 (_1!36185 lt!2291106)) (= (regOne!32082 r!7292) (reg!16114 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291167)) (= lambda!313752 lambda!313694))))

(assert (=> bs!1353687 (= (and (= (regOne!32082 r!7292) (regOne!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291182)) (= lambda!313752 lambda!313683))))

(assert (=> bs!1353693 (not (= lambda!313752 lambda!313692))))

(assert (=> bs!1353701 (= lambda!313752 lambda!313680)))

(assert (=> bs!1353702 (= (and (= (regOne!32082 r!7292) (regOne!32082 lt!2291057)) (= (regTwo!32082 r!7292) (regTwo!32082 lt!2291057))) (= lambda!313752 lambda!313731))))

(assert (=> bs!1353690 (= (and (= s!2326 (_1!36185 lt!2291163)) (= (regOne!32082 r!7292) (reg!16114 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291167)) (= lambda!313752 lambda!313701))))

(assert (=> bs!1353690 (= (= (regOne!32082 r!7292) lt!2291100) (= lambda!313752 lambda!313699))))

(assert (=> bs!1353701 (not (= lambda!313752 lambda!313679))))

(assert (=> bs!1353687 (= (and (= (regOne!32082 r!7292) (regTwo!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291109)) (= lambda!313752 lambda!313685))))

(assert (=> d!1817474 true))

(assert (=> d!1817474 true))

(assert (=> d!1817474 true))

(assert (=> d!1817474 (= (Exists!2885 lambda!313751) (Exists!2885 lambda!313752))))

(declare-fun lt!2291277 () Unit!156690)

(assert (=> d!1817474 (= lt!2291277 (choose!43786 (regOne!32082 r!7292) (regTwo!32082 r!7292) s!2326))))

(assert (=> d!1817474 (validRegex!7521 (regOne!32082 r!7292))))

(assert (=> d!1817474 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1514 (regOne!32082 r!7292) (regTwo!32082 r!7292) s!2326) lt!2291277)))

(declare-fun m!6715534 () Bool)

(assert (=> bs!1353704 m!6715534))

(declare-fun m!6715536 () Bool)

(assert (=> bs!1353704 m!6715536))

(declare-fun m!6715538 () Bool)

(assert (=> bs!1353704 m!6715538))

(assert (=> bs!1353704 m!6715502))

(assert (=> b!5770169 d!1817474))

(declare-fun d!1817480 () Bool)

(assert (=> d!1817480 (= (isDefined!12497 (findConcatSeparation!2208 (regOne!32082 r!7292) (regTwo!32082 r!7292) Nil!63530 s!2326 s!2326)) (not (isEmpty!35429 (findConcatSeparation!2208 (regOne!32082 r!7292) (regTwo!32082 r!7292) Nil!63530 s!2326 s!2326))))))

(declare-fun bs!1353705 () Bool)

(assert (= bs!1353705 d!1817480))

(assert (=> bs!1353705 m!6714786))

(declare-fun m!6715540 () Bool)

(assert (=> bs!1353705 m!6715540))

(assert (=> b!5770169 d!1817480))

(declare-fun call!444547 () Bool)

(declare-fun bm!444542 () Bool)

(assert (=> bm!444542 (= call!444547 (isEmpty!35427 (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) s!2326))))))

(declare-fun b!5770637 () Bool)

(declare-fun e!3545111 () Bool)

(declare-fun lt!2291281 () Bool)

(assert (=> b!5770637 (= e!3545111 (not lt!2291281))))

(declare-fun b!5770638 () Bool)

(declare-fun e!3545110 () Bool)

(declare-fun e!3545108 () Bool)

(assert (=> b!5770638 (= e!3545110 e!3545108)))

(declare-fun res!2435378 () Bool)

(assert (=> b!5770638 (=> res!2435378 e!3545108)))

(assert (=> b!5770638 (= res!2435378 call!444547)))

(declare-fun b!5770639 () Bool)

(declare-fun res!2435374 () Bool)

(assert (=> b!5770639 (=> res!2435374 e!3545108)))

(assert (=> b!5770639 (= res!2435374 (not (isEmpty!35427 (tail!11295 (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) s!2326))))))))

(declare-fun b!5770640 () Bool)

(declare-fun e!3545109 () Bool)

(assert (=> b!5770640 (= e!3545109 (matchR!7970 (derivativeStep!4563 (ite c!1020249 lt!2291144 (ite c!1020250 lt!2291167 lt!2291180)) (head!12200 (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) s!2326)))) (tail!11295 (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) s!2326)))))))

(declare-fun b!5770641 () Bool)

(declare-fun e!3545113 () Bool)

(assert (=> b!5770641 (= e!3545113 e!3545110)))

(declare-fun res!2435380 () Bool)

(assert (=> b!5770641 (=> (not res!2435380) (not e!3545110))))

(assert (=> b!5770641 (= res!2435380 (not lt!2291281))))

(declare-fun b!5770642 () Bool)

(declare-fun res!2435377 () Bool)

(assert (=> b!5770642 (=> res!2435377 e!3545113)))

(declare-fun e!3545112 () Bool)

(assert (=> b!5770642 (= res!2435377 e!3545112)))

(declare-fun res!2435381 () Bool)

(assert (=> b!5770642 (=> (not res!2435381) (not e!3545112))))

(assert (=> b!5770642 (= res!2435381 lt!2291281)))

(declare-fun b!5770643 () Bool)

(declare-fun res!2435375 () Bool)

(assert (=> b!5770643 (=> res!2435375 e!3545113)))

(assert (=> b!5770643 (= res!2435375 (not ((_ is ElementMatch!15785) (ite c!1020249 lt!2291144 (ite c!1020250 lt!2291167 lt!2291180)))))))

(assert (=> b!5770643 (= e!3545111 e!3545113)))

(declare-fun b!5770636 () Bool)

(assert (=> b!5770636 (= e!3545108 (not (= (head!12200 (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) s!2326))) (c!1020255 (ite c!1020249 lt!2291144 (ite c!1020250 lt!2291167 lt!2291180))))))))

(declare-fun d!1817482 () Bool)

(declare-fun e!3545107 () Bool)

(assert (=> d!1817482 e!3545107))

(declare-fun c!1020384 () Bool)

(assert (=> d!1817482 (= c!1020384 ((_ is EmptyExpr!15785) (ite c!1020249 lt!2291144 (ite c!1020250 lt!2291167 lt!2291180))))))

(assert (=> d!1817482 (= lt!2291281 e!3545109)))

(declare-fun c!1020383 () Bool)

(assert (=> d!1817482 (= c!1020383 (isEmpty!35427 (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) s!2326))))))

(assert (=> d!1817482 (validRegex!7521 (ite c!1020249 lt!2291144 (ite c!1020250 lt!2291167 lt!2291180)))))

(assert (=> d!1817482 (= (matchR!7970 (ite c!1020249 lt!2291144 (ite c!1020250 lt!2291167 lt!2291180)) (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) s!2326))) lt!2291281)))

(declare-fun b!5770644 () Bool)

(assert (=> b!5770644 (= e!3545107 e!3545111)))

(declare-fun c!1020382 () Bool)

(assert (=> b!5770644 (= c!1020382 ((_ is EmptyLang!15785) (ite c!1020249 lt!2291144 (ite c!1020250 lt!2291167 lt!2291180))))))

(declare-fun b!5770645 () Bool)

(assert (=> b!5770645 (= e!3545109 (nullable!5817 (ite c!1020249 lt!2291144 (ite c!1020250 lt!2291167 lt!2291180))))))

(declare-fun b!5770646 () Bool)

(declare-fun res!2435379 () Bool)

(assert (=> b!5770646 (=> (not res!2435379) (not e!3545112))))

(assert (=> b!5770646 (= res!2435379 (isEmpty!35427 (tail!11295 (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) s!2326)))))))

(declare-fun b!5770647 () Bool)

(assert (=> b!5770647 (= e!3545112 (= (head!12200 (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) s!2326))) (c!1020255 (ite c!1020249 lt!2291144 (ite c!1020250 lt!2291167 lt!2291180)))))))

(declare-fun b!5770648 () Bool)

(declare-fun res!2435376 () Bool)

(assert (=> b!5770648 (=> (not res!2435376) (not e!3545112))))

(assert (=> b!5770648 (= res!2435376 (not call!444547))))

(declare-fun b!5770649 () Bool)

(assert (=> b!5770649 (= e!3545107 (= lt!2291281 call!444547))))

(assert (= (and d!1817482 c!1020383) b!5770645))

(assert (= (and d!1817482 (not c!1020383)) b!5770640))

(assert (= (and d!1817482 c!1020384) b!5770649))

(assert (= (and d!1817482 (not c!1020384)) b!5770644))

(assert (= (and b!5770644 c!1020382) b!5770637))

(assert (= (and b!5770644 (not c!1020382)) b!5770643))

(assert (= (and b!5770643 (not res!2435375)) b!5770642))

(assert (= (and b!5770642 res!2435381) b!5770648))

(assert (= (and b!5770648 res!2435376) b!5770646))

(assert (= (and b!5770646 res!2435379) b!5770647))

(assert (= (and b!5770642 (not res!2435377)) b!5770641))

(assert (= (and b!5770641 res!2435380) b!5770638))

(assert (= (and b!5770638 (not res!2435378)) b!5770639))

(assert (= (and b!5770639 (not res!2435374)) b!5770636))

(assert (= (or b!5770649 b!5770638 b!5770648) bm!444542))

(declare-fun m!6715542 () Bool)

(assert (=> bm!444542 m!6715542))

(declare-fun m!6715544 () Bool)

(assert (=> b!5770636 m!6715544))

(declare-fun m!6715546 () Bool)

(assert (=> b!5770646 m!6715546))

(assert (=> b!5770646 m!6715546))

(declare-fun m!6715548 () Bool)

(assert (=> b!5770646 m!6715548))

(declare-fun m!6715550 () Bool)

(assert (=> b!5770645 m!6715550))

(assert (=> b!5770640 m!6715544))

(assert (=> b!5770640 m!6715544))

(declare-fun m!6715552 () Bool)

(assert (=> b!5770640 m!6715552))

(assert (=> b!5770640 m!6715546))

(assert (=> b!5770640 m!6715552))

(assert (=> b!5770640 m!6715546))

(declare-fun m!6715554 () Bool)

(assert (=> b!5770640 m!6715554))

(assert (=> b!5770647 m!6715544))

(assert (=> b!5770639 m!6715546))

(assert (=> b!5770639 m!6715546))

(assert (=> b!5770639 m!6715548))

(assert (=> d!1817482 m!6715542))

(declare-fun m!6715556 () Bool)

(assert (=> d!1817482 m!6715556))

(assert (=> bm!444302 d!1817482))

(declare-fun bs!1353706 () Bool)

(declare-fun d!1817484 () Bool)

(assert (= bs!1353706 (and d!1817484 d!1817424)))

(declare-fun lambda!313755 () Int)

(assert (=> bs!1353706 (= lambda!313755 lambda!313735)))

(declare-fun bs!1353707 () Bool)

(assert (= bs!1353707 (and d!1817484 d!1817456)))

(assert (=> bs!1353707 (= lambda!313755 lambda!313743)))

(declare-fun bs!1353708 () Bool)

(assert (= bs!1353708 (and d!1817484 d!1817448)))

(assert (=> bs!1353708 (= lambda!313755 lambda!313739)))

(declare-fun bs!1353709 () Bool)

(assert (= bs!1353709 (and d!1817484 d!1817370)))

(assert (=> bs!1353709 (= lambda!313755 lambda!313725)))

(declare-fun bs!1353710 () Bool)

(assert (= bs!1353710 (and d!1817484 b!5770193)))

(assert (=> bs!1353710 (= lambda!313755 lambda!313697)))

(declare-fun bs!1353711 () Bool)

(assert (= bs!1353711 (and d!1817484 d!1817384)))

(assert (=> bs!1353711 (= lambda!313755 lambda!313726)))

(declare-fun bs!1353712 () Bool)

(assert (= bs!1353712 (and d!1817484 d!1817454)))

(assert (=> bs!1353712 (= lambda!313755 lambda!313740)))

(declare-fun bs!1353713 () Bool)

(assert (= bs!1353713 (and d!1817484 b!5770177)))

(assert (=> bs!1353713 (= lambda!313755 lambda!313695)))

(declare-fun bs!1353714 () Bool)

(assert (= bs!1353714 (and d!1817484 d!1817428)))

(assert (=> bs!1353714 (= lambda!313755 lambda!313736)))

(declare-fun b!5770682 () Bool)

(declare-fun e!3545132 () Bool)

(declare-fun e!3545136 () Bool)

(assert (=> b!5770682 (= e!3545132 e!3545136)))

(declare-fun c!1020398 () Bool)

(assert (=> b!5770682 (= c!1020398 (isEmpty!35428 (tail!11296 (unfocusZipperList!1213 zl!343))))))

(declare-fun b!5770683 () Bool)

(declare-fun e!3545133 () Regex!15785)

(declare-fun e!3545135 () Regex!15785)

(assert (=> b!5770683 (= e!3545133 e!3545135)))

(declare-fun c!1020396 () Bool)

(assert (=> b!5770683 (= c!1020396 ((_ is Cons!63531) (unfocusZipperList!1213 zl!343)))))

(declare-fun b!5770684 () Bool)

(declare-fun lt!2291287 () Regex!15785)

(declare-fun isEmptyLang!1278 (Regex!15785) Bool)

(assert (=> b!5770684 (= e!3545132 (isEmptyLang!1278 lt!2291287))))

(declare-fun b!5770685 () Bool)

(assert (=> b!5770685 (= e!3545133 (h!69979 (unfocusZipperList!1213 zl!343)))))

(declare-fun b!5770686 () Bool)

(declare-fun e!3545134 () Bool)

(assert (=> b!5770686 (= e!3545134 e!3545132)))

(declare-fun c!1020399 () Bool)

(assert (=> b!5770686 (= c!1020399 (isEmpty!35428 (unfocusZipperList!1213 zl!343)))))

(declare-fun b!5770687 () Bool)

(declare-fun e!3545137 () Bool)

(assert (=> b!5770687 (= e!3545137 (isEmpty!35428 (t!376993 (unfocusZipperList!1213 zl!343))))))

(declare-fun b!5770688 () Bool)

(assert (=> b!5770688 (= e!3545136 (= lt!2291287 (head!12201 (unfocusZipperList!1213 zl!343))))))

(declare-fun b!5770689 () Bool)

(assert (=> b!5770689 (= e!3545135 (Union!15785 (h!69979 (unfocusZipperList!1213 zl!343)) (generalisedUnion!1648 (t!376993 (unfocusZipperList!1213 zl!343)))))))

(assert (=> d!1817484 e!3545134))

(declare-fun res!2435392 () Bool)

(assert (=> d!1817484 (=> (not res!2435392) (not e!3545134))))

(assert (=> d!1817484 (= res!2435392 (validRegex!7521 lt!2291287))))

(assert (=> d!1817484 (= lt!2291287 e!3545133)))

(declare-fun c!1020397 () Bool)

(assert (=> d!1817484 (= c!1020397 e!3545137)))

(declare-fun res!2435393 () Bool)

(assert (=> d!1817484 (=> (not res!2435393) (not e!3545137))))

(assert (=> d!1817484 (= res!2435393 ((_ is Cons!63531) (unfocusZipperList!1213 zl!343)))))

(assert (=> d!1817484 (forall!14900 (unfocusZipperList!1213 zl!343) lambda!313755)))

(assert (=> d!1817484 (= (generalisedUnion!1648 (unfocusZipperList!1213 zl!343)) lt!2291287)))

(declare-fun b!5770690 () Bool)

(assert (=> b!5770690 (= e!3545135 EmptyLang!15785)))

(declare-fun b!5770691 () Bool)

(declare-fun isUnion!708 (Regex!15785) Bool)

(assert (=> b!5770691 (= e!3545136 (isUnion!708 lt!2291287))))

(assert (= (and d!1817484 res!2435393) b!5770687))

(assert (= (and d!1817484 c!1020397) b!5770685))

(assert (= (and d!1817484 (not c!1020397)) b!5770683))

(assert (= (and b!5770683 c!1020396) b!5770689))

(assert (= (and b!5770683 (not c!1020396)) b!5770690))

(assert (= (and d!1817484 res!2435392) b!5770686))

(assert (= (and b!5770686 c!1020399) b!5770684))

(assert (= (and b!5770686 (not c!1020399)) b!5770682))

(assert (= (and b!5770682 c!1020398) b!5770688))

(assert (= (and b!5770682 (not c!1020398)) b!5770691))

(assert (=> b!5770682 m!6714952))

(declare-fun m!6715572 () Bool)

(assert (=> b!5770682 m!6715572))

(assert (=> b!5770682 m!6715572))

(declare-fun m!6715574 () Bool)

(assert (=> b!5770682 m!6715574))

(declare-fun m!6715576 () Bool)

(assert (=> b!5770687 m!6715576))

(assert (=> b!5770686 m!6714952))

(declare-fun m!6715578 () Bool)

(assert (=> b!5770686 m!6715578))

(declare-fun m!6715580 () Bool)

(assert (=> b!5770684 m!6715580))

(declare-fun m!6715582 () Bool)

(assert (=> d!1817484 m!6715582))

(assert (=> d!1817484 m!6714952))

(declare-fun m!6715584 () Bool)

(assert (=> d!1817484 m!6715584))

(assert (=> b!5770688 m!6714952))

(declare-fun m!6715586 () Bool)

(assert (=> b!5770688 m!6715586))

(declare-fun m!6715588 () Bool)

(assert (=> b!5770691 m!6715588))

(declare-fun m!6715590 () Bool)

(assert (=> b!5770689 m!6715590))

(assert (=> b!5770163 d!1817484))

(declare-fun bs!1353715 () Bool)

(declare-fun d!1817488 () Bool)

(assert (= bs!1353715 (and d!1817488 d!1817424)))

(declare-fun lambda!313758 () Int)

(assert (=> bs!1353715 (= lambda!313758 lambda!313735)))

(declare-fun bs!1353716 () Bool)

(assert (= bs!1353716 (and d!1817488 d!1817484)))

(assert (=> bs!1353716 (= lambda!313758 lambda!313755)))

(declare-fun bs!1353717 () Bool)

(assert (= bs!1353717 (and d!1817488 d!1817456)))

(assert (=> bs!1353717 (= lambda!313758 lambda!313743)))

(declare-fun bs!1353718 () Bool)

(assert (= bs!1353718 (and d!1817488 d!1817448)))

(assert (=> bs!1353718 (= lambda!313758 lambda!313739)))

(declare-fun bs!1353719 () Bool)

(assert (= bs!1353719 (and d!1817488 d!1817370)))

(assert (=> bs!1353719 (= lambda!313758 lambda!313725)))

(declare-fun bs!1353720 () Bool)

(assert (= bs!1353720 (and d!1817488 b!5770193)))

(assert (=> bs!1353720 (= lambda!313758 lambda!313697)))

(declare-fun bs!1353721 () Bool)

(assert (= bs!1353721 (and d!1817488 d!1817384)))

(assert (=> bs!1353721 (= lambda!313758 lambda!313726)))

(declare-fun bs!1353722 () Bool)

(assert (= bs!1353722 (and d!1817488 d!1817454)))

(assert (=> bs!1353722 (= lambda!313758 lambda!313740)))

(declare-fun bs!1353723 () Bool)

(assert (= bs!1353723 (and d!1817488 b!5770177)))

(assert (=> bs!1353723 (= lambda!313758 lambda!313695)))

(declare-fun bs!1353724 () Bool)

(assert (= bs!1353724 (and d!1817488 d!1817428)))

(assert (=> bs!1353724 (= lambda!313758 lambda!313736)))

(declare-fun lt!2291290 () List!63655)

(assert (=> d!1817488 (forall!14900 lt!2291290 lambda!313758)))

(declare-fun e!3545140 () List!63655)

(assert (=> d!1817488 (= lt!2291290 e!3545140)))

(declare-fun c!1020402 () Bool)

(assert (=> d!1817488 (= c!1020402 ((_ is Cons!63532) zl!343))))

(assert (=> d!1817488 (= (unfocusZipperList!1213 zl!343) lt!2291290)))

(declare-fun b!5770696 () Bool)

(assert (=> b!5770696 (= e!3545140 (Cons!63531 (generalisedConcat!1400 (exprs!5669 (h!69980 zl!343))) (unfocusZipperList!1213 (t!376994 zl!343))))))

(declare-fun b!5770697 () Bool)

(assert (=> b!5770697 (= e!3545140 Nil!63531)))

(assert (= (and d!1817488 c!1020402) b!5770696))

(assert (= (and d!1817488 (not c!1020402)) b!5770697))

(declare-fun m!6715592 () Bool)

(assert (=> d!1817488 m!6715592))

(assert (=> b!5770696 m!6714824))

(declare-fun m!6715594 () Bool)

(assert (=> b!5770696 m!6715594))

(assert (=> b!5770163 d!1817488))

(declare-fun d!1817490 () Bool)

(assert (=> d!1817490 (= (++!13998 (++!13998 (ite c!1020250 (_1!36185 lt!2291010) (_1!36185 lt!2291169)) (ite c!1020250 (_2!36185 lt!2291010) (_2!36185 lt!2291169))) (ite c!1020250 (_2!36185 lt!2291106) (_2!36185 lt!2291163))) (++!13998 (ite c!1020250 (_1!36185 lt!2291010) (_1!36185 lt!2291169)) (++!13998 (ite c!1020250 (_2!36185 lt!2291010) (_2!36185 lt!2291169)) (ite c!1020250 (_2!36185 lt!2291106) (_2!36185 lt!2291163)))))))

(declare-fun lt!2291293 () Unit!156690)

(declare-fun choose!43798 (List!63654 List!63654 List!63654) Unit!156690)

(assert (=> d!1817490 (= lt!2291293 (choose!43798 (ite c!1020250 (_1!36185 lt!2291010) (_1!36185 lt!2291169)) (ite c!1020250 (_2!36185 lt!2291010) (_2!36185 lt!2291169)) (ite c!1020250 (_2!36185 lt!2291106) (_2!36185 lt!2291163))))))

(assert (=> d!1817490 (= (lemmaConcatAssociativity!2894 (ite c!1020250 (_1!36185 lt!2291010) (_1!36185 lt!2291169)) (ite c!1020250 (_2!36185 lt!2291010) (_2!36185 lt!2291169)) (ite c!1020250 (_2!36185 lt!2291106) (_2!36185 lt!2291163))) lt!2291293)))

(declare-fun bs!1353725 () Bool)

(assert (= bs!1353725 d!1817490))

(declare-fun m!6715596 () Bool)

(assert (=> bs!1353725 m!6715596))

(declare-fun m!6715598 () Bool)

(assert (=> bs!1353725 m!6715598))

(declare-fun m!6715600 () Bool)

(assert (=> bs!1353725 m!6715600))

(declare-fun m!6715602 () Bool)

(assert (=> bs!1353725 m!6715602))

(declare-fun m!6715604 () Bool)

(assert (=> bs!1353725 m!6715604))

(assert (=> bs!1353725 m!6715600))

(assert (=> bs!1353725 m!6715596))

(assert (=> bm!444370 d!1817490))

(declare-fun call!444548 () Bool)

(declare-fun bm!444543 () Bool)

(assert (=> bm!444543 (= call!444548 (isEmpty!35427 (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (ite c!1020250 (ite c!1020243 s!2326 lt!2291118) (ite c!1020244 lt!2291141 Nil!63530)) s!2326))))))

(declare-fun b!5770701 () Bool)

(declare-fun e!3545145 () Bool)

(declare-fun lt!2291294 () Bool)

(assert (=> b!5770701 (= e!3545145 (not lt!2291294))))

(declare-fun b!5770702 () Bool)

(declare-fun e!3545144 () Bool)

(declare-fun e!3545142 () Bool)

(assert (=> b!5770702 (= e!3545144 e!3545142)))

(declare-fun res!2435398 () Bool)

(assert (=> b!5770702 (=> res!2435398 e!3545142)))

(assert (=> b!5770702 (= res!2435398 call!444548)))

(declare-fun b!5770703 () Bool)

(declare-fun res!2435394 () Bool)

(assert (=> b!5770703 (=> res!2435394 e!3545142)))

(assert (=> b!5770703 (= res!2435394 (not (isEmpty!35427 (tail!11295 (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (ite c!1020250 (ite c!1020243 s!2326 lt!2291118) (ite c!1020244 lt!2291141 Nil!63530)) s!2326))))))))

(declare-fun b!5770704 () Bool)

(declare-fun e!3545143 () Bool)

(assert (=> b!5770704 (= e!3545143 (matchR!7970 (derivativeStep!4563 (ite c!1020249 lt!2291178 (ite c!1020242 lt!2291046 (ite c!1020252 (Concat!24630 (regOne!32082 (regOne!32082 r!7292)) (Concat!24630 (regTwo!32082 (regOne!32082 r!7292)) lt!2291002)) (ite c!1020248 (ite c!1020250 (ite c!1020243 lt!2291032 lt!2291158) lt!2291167) (regOne!32082 r!7292))))) (head!12200 (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (ite c!1020250 (ite c!1020243 s!2326 lt!2291118) (ite c!1020244 lt!2291141 Nil!63530)) s!2326)))) (tail!11295 (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (ite c!1020250 (ite c!1020243 s!2326 lt!2291118) (ite c!1020244 lt!2291141 Nil!63530)) s!2326)))))))

(declare-fun b!5770705 () Bool)

(declare-fun e!3545147 () Bool)

(assert (=> b!5770705 (= e!3545147 e!3545144)))

(declare-fun res!2435400 () Bool)

(assert (=> b!5770705 (=> (not res!2435400) (not e!3545144))))

(assert (=> b!5770705 (= res!2435400 (not lt!2291294))))

(declare-fun b!5770706 () Bool)

(declare-fun res!2435397 () Bool)

(assert (=> b!5770706 (=> res!2435397 e!3545147)))

(declare-fun e!3545146 () Bool)

(assert (=> b!5770706 (= res!2435397 e!3545146)))

(declare-fun res!2435401 () Bool)

(assert (=> b!5770706 (=> (not res!2435401) (not e!3545146))))

(assert (=> b!5770706 (= res!2435401 lt!2291294)))

(declare-fun b!5770707 () Bool)

(declare-fun res!2435395 () Bool)

(assert (=> b!5770707 (=> res!2435395 e!3545147)))

(assert (=> b!5770707 (= res!2435395 (not ((_ is ElementMatch!15785) (ite c!1020249 lt!2291178 (ite c!1020242 lt!2291046 (ite c!1020252 (Concat!24630 (regOne!32082 (regOne!32082 r!7292)) (Concat!24630 (regTwo!32082 (regOne!32082 r!7292)) lt!2291002)) (ite c!1020248 (ite c!1020250 (ite c!1020243 lt!2291032 lt!2291158) lt!2291167) (regOne!32082 r!7292))))))))))

(assert (=> b!5770707 (= e!3545145 e!3545147)))

(declare-fun b!5770700 () Bool)

(assert (=> b!5770700 (= e!3545142 (not (= (head!12200 (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (ite c!1020250 (ite c!1020243 s!2326 lt!2291118) (ite c!1020244 lt!2291141 Nil!63530)) s!2326))) (c!1020255 (ite c!1020249 lt!2291178 (ite c!1020242 lt!2291046 (ite c!1020252 (Concat!24630 (regOne!32082 (regOne!32082 r!7292)) (Concat!24630 (regTwo!32082 (regOne!32082 r!7292)) lt!2291002)) (ite c!1020248 (ite c!1020250 (ite c!1020243 lt!2291032 lt!2291158) lt!2291167) (regOne!32082 r!7292)))))))))))

(declare-fun d!1817492 () Bool)

(declare-fun e!3545141 () Bool)

(assert (=> d!1817492 e!3545141))

(declare-fun c!1020405 () Bool)

(assert (=> d!1817492 (= c!1020405 ((_ is EmptyExpr!15785) (ite c!1020249 lt!2291178 (ite c!1020242 lt!2291046 (ite c!1020252 (Concat!24630 (regOne!32082 (regOne!32082 r!7292)) (Concat!24630 (regTwo!32082 (regOne!32082 r!7292)) lt!2291002)) (ite c!1020248 (ite c!1020250 (ite c!1020243 lt!2291032 lt!2291158) lt!2291167) (regOne!32082 r!7292)))))))))

(assert (=> d!1817492 (= lt!2291294 e!3545143)))

(declare-fun c!1020404 () Bool)

(assert (=> d!1817492 (= c!1020404 (isEmpty!35427 (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (ite c!1020250 (ite c!1020243 s!2326 lt!2291118) (ite c!1020244 lt!2291141 Nil!63530)) s!2326))))))

(assert (=> d!1817492 (validRegex!7521 (ite c!1020249 lt!2291178 (ite c!1020242 lt!2291046 (ite c!1020252 (Concat!24630 (regOne!32082 (regOne!32082 r!7292)) (Concat!24630 (regTwo!32082 (regOne!32082 r!7292)) lt!2291002)) (ite c!1020248 (ite c!1020250 (ite c!1020243 lt!2291032 lt!2291158) lt!2291167) (regOne!32082 r!7292))))))))

(assert (=> d!1817492 (= (matchR!7970 (ite c!1020249 lt!2291178 (ite c!1020242 lt!2291046 (ite c!1020252 (Concat!24630 (regOne!32082 (regOne!32082 r!7292)) (Concat!24630 (regTwo!32082 (regOne!32082 r!7292)) lt!2291002)) (ite c!1020248 (ite c!1020250 (ite c!1020243 lt!2291032 lt!2291158) lt!2291167) (regOne!32082 r!7292))))) (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (ite c!1020250 (ite c!1020243 s!2326 lt!2291118) (ite c!1020244 lt!2291141 Nil!63530)) s!2326))) lt!2291294)))

(declare-fun b!5770708 () Bool)

(assert (=> b!5770708 (= e!3545141 e!3545145)))

(declare-fun c!1020403 () Bool)

(assert (=> b!5770708 (= c!1020403 ((_ is EmptyLang!15785) (ite c!1020249 lt!2291178 (ite c!1020242 lt!2291046 (ite c!1020252 (Concat!24630 (regOne!32082 (regOne!32082 r!7292)) (Concat!24630 (regTwo!32082 (regOne!32082 r!7292)) lt!2291002)) (ite c!1020248 (ite c!1020250 (ite c!1020243 lt!2291032 lt!2291158) lt!2291167) (regOne!32082 r!7292)))))))))

(declare-fun b!5770709 () Bool)

(assert (=> b!5770709 (= e!3545143 (nullable!5817 (ite c!1020249 lt!2291178 (ite c!1020242 lt!2291046 (ite c!1020252 (Concat!24630 (regOne!32082 (regOne!32082 r!7292)) (Concat!24630 (regTwo!32082 (regOne!32082 r!7292)) lt!2291002)) (ite c!1020248 (ite c!1020250 (ite c!1020243 lt!2291032 lt!2291158) lt!2291167) (regOne!32082 r!7292)))))))))

(declare-fun b!5770710 () Bool)

(declare-fun res!2435399 () Bool)

(assert (=> b!5770710 (=> (not res!2435399) (not e!3545146))))

(assert (=> b!5770710 (= res!2435399 (isEmpty!35427 (tail!11295 (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (ite c!1020250 (ite c!1020243 s!2326 lt!2291118) (ite c!1020244 lt!2291141 Nil!63530)) s!2326)))))))

(declare-fun b!5770711 () Bool)

(assert (=> b!5770711 (= e!3545146 (= (head!12200 (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (ite c!1020250 (ite c!1020243 s!2326 lt!2291118) (ite c!1020244 lt!2291141 Nil!63530)) s!2326))) (c!1020255 (ite c!1020249 lt!2291178 (ite c!1020242 lt!2291046 (ite c!1020252 (Concat!24630 (regOne!32082 (regOne!32082 r!7292)) (Concat!24630 (regTwo!32082 (regOne!32082 r!7292)) lt!2291002)) (ite c!1020248 (ite c!1020250 (ite c!1020243 lt!2291032 lt!2291158) lt!2291167) (regOne!32082 r!7292))))))))))

(declare-fun b!5770712 () Bool)

(declare-fun res!2435396 () Bool)

(assert (=> b!5770712 (=> (not res!2435396) (not e!3545146))))

(assert (=> b!5770712 (= res!2435396 (not call!444548))))

(declare-fun b!5770713 () Bool)

(assert (=> b!5770713 (= e!3545141 (= lt!2291294 call!444548))))

(assert (= (and d!1817492 c!1020404) b!5770709))

(assert (= (and d!1817492 (not c!1020404)) b!5770704))

(assert (= (and d!1817492 c!1020405) b!5770713))

(assert (= (and d!1817492 (not c!1020405)) b!5770708))

(assert (= (and b!5770708 c!1020403) b!5770701))

(assert (= (and b!5770708 (not c!1020403)) b!5770707))

(assert (= (and b!5770707 (not res!2435395)) b!5770706))

(assert (= (and b!5770706 res!2435401) b!5770712))

(assert (= (and b!5770712 res!2435396) b!5770710))

(assert (= (and b!5770710 res!2435399) b!5770711))

(assert (= (and b!5770706 (not res!2435397)) b!5770705))

(assert (= (and b!5770705 res!2435400) b!5770702))

(assert (= (and b!5770702 (not res!2435398)) b!5770703))

(assert (= (and b!5770703 (not res!2435394)) b!5770700))

(assert (= (or b!5770713 b!5770702 b!5770712) bm!444543))

(declare-fun m!6715606 () Bool)

(assert (=> bm!444543 m!6715606))

(declare-fun m!6715608 () Bool)

(assert (=> b!5770700 m!6715608))

(declare-fun m!6715610 () Bool)

(assert (=> b!5770710 m!6715610))

(assert (=> b!5770710 m!6715610))

(declare-fun m!6715612 () Bool)

(assert (=> b!5770710 m!6715612))

(declare-fun m!6715614 () Bool)

(assert (=> b!5770709 m!6715614))

(assert (=> b!5770704 m!6715608))

(assert (=> b!5770704 m!6715608))

(declare-fun m!6715616 () Bool)

(assert (=> b!5770704 m!6715616))

(assert (=> b!5770704 m!6715610))

(assert (=> b!5770704 m!6715616))

(assert (=> b!5770704 m!6715610))

(declare-fun m!6715618 () Bool)

(assert (=> b!5770704 m!6715618))

(assert (=> b!5770711 m!6715608))

(assert (=> b!5770703 m!6715610))

(assert (=> b!5770703 m!6715610))

(assert (=> b!5770703 m!6715612))

(assert (=> d!1817492 m!6715606))

(declare-fun m!6715620 () Bool)

(assert (=> d!1817492 m!6715620))

(assert (=> bm!444388 d!1817492))

(declare-fun b!5770734 () Bool)

(declare-fun e!3545162 () (InoxSet Context!10338))

(assert (=> b!5770734 (= e!3545162 ((as const (Array Context!10338 Bool)) false))))

(declare-fun b!5770735 () Bool)

(declare-fun call!444549 () (InoxSet Context!10338))

(assert (=> b!5770735 (= e!3545162 call!444549)))

(declare-fun bm!444544 () Bool)

(assert (=> bm!444544 (= call!444549 (derivationStepZipperDown!1127 (h!69979 (exprs!5669 (ite c!1020249 lt!2290984 (ite c!1020242 lt!2291007 lt!2291151)))) (Context!10339 (t!376993 (exprs!5669 (ite c!1020249 lt!2290984 (ite c!1020242 lt!2291007 lt!2291151))))) (h!69978 s!2326)))))

(declare-fun b!5770737 () Bool)

(declare-fun e!3545164 () Bool)

(assert (=> b!5770737 (= e!3545164 (nullable!5817 (h!69979 (exprs!5669 (ite c!1020249 lt!2290984 (ite c!1020242 lt!2291007 lt!2291151))))))))

(declare-fun e!3545163 () (InoxSet Context!10338))

(declare-fun b!5770738 () Bool)

(assert (=> b!5770738 (= e!3545163 ((_ map or) call!444549 (derivationStepZipperUp!1053 (Context!10339 (t!376993 (exprs!5669 (ite c!1020249 lt!2290984 (ite c!1020242 lt!2291007 lt!2291151))))) (h!69978 s!2326))))))

(declare-fun d!1817494 () Bool)

(declare-fun c!1020414 () Bool)

(assert (=> d!1817494 (= c!1020414 e!3545164)))

(declare-fun res!2435408 () Bool)

(assert (=> d!1817494 (=> (not res!2435408) (not e!3545164))))

(assert (=> d!1817494 (= res!2435408 ((_ is Cons!63531) (exprs!5669 (ite c!1020249 lt!2290984 (ite c!1020242 lt!2291007 lt!2291151)))))))

(assert (=> d!1817494 (= (derivationStepZipperUp!1053 (ite c!1020249 lt!2290984 (ite c!1020242 lt!2291007 lt!2291151)) (h!69978 s!2326)) e!3545163)))

(declare-fun b!5770736 () Bool)

(assert (=> b!5770736 (= e!3545163 e!3545162)))

(declare-fun c!1020415 () Bool)

(assert (=> b!5770736 (= c!1020415 ((_ is Cons!63531) (exprs!5669 (ite c!1020249 lt!2290984 (ite c!1020242 lt!2291007 lt!2291151)))))))

(assert (= (and d!1817494 res!2435408) b!5770737))

(assert (= (and d!1817494 c!1020414) b!5770738))

(assert (= (and d!1817494 (not c!1020414)) b!5770736))

(assert (= (and b!5770736 c!1020415) b!5770735))

(assert (= (and b!5770736 (not c!1020415)) b!5770734))

(assert (= (or b!5770738 b!5770735) bm!444544))

(declare-fun m!6715622 () Bool)

(assert (=> bm!444544 m!6715622))

(declare-fun m!6715624 () Bool)

(assert (=> b!5770737 m!6715624))

(declare-fun m!6715626 () Bool)

(assert (=> b!5770738 m!6715626))

(assert (=> bm!444445 d!1817494))

(declare-fun d!1817496 () Bool)

(assert (=> d!1817496 (= (Exists!2885 (ite c!1020242 lambda!313684 (ite c!1020252 lambda!313686 (ite c!1020250 lambda!313692 (ite c!1020244 lambda!313700 lambda!313704))))) (choose!43778 (ite c!1020242 lambda!313684 (ite c!1020252 lambda!313686 (ite c!1020250 lambda!313692 (ite c!1020244 lambda!313700 lambda!313704))))))))

(declare-fun bs!1353726 () Bool)

(assert (= bs!1353726 d!1817496))

(declare-fun m!6715628 () Bool)

(assert (=> bs!1353726 m!6715628))

(assert (=> bm!444347 d!1817496))

(declare-fun d!1817498 () Bool)

(assert (=> d!1817498 (= (flatMap!1398 (ite c!1020250 lt!2291030 lt!2291054) (ite c!1020250 lambda!313681 lambda!313681)) (choose!43788 (ite c!1020250 lt!2291030 lt!2291054) (ite c!1020250 lambda!313681 lambda!313681)))))

(declare-fun bs!1353727 () Bool)

(assert (= bs!1353727 d!1817498))

(declare-fun m!6715630 () Bool)

(assert (=> bs!1353727 m!6715630))

(assert (=> bm!444416 d!1817498))

(declare-fun bm!444545 () Bool)

(declare-fun call!444550 () Bool)

(assert (=> bm!444545 (= call!444550 (isEmpty!35427 (ite c!1020247 (t!376992 s!2326) (ite c!1020249 s!2326 (ite c!1020248 (ite c!1020250 lt!2291176 (_1!36185 lt!2291163)) s!2326)))))))

(declare-fun b!5770740 () Bool)

(declare-fun e!3545169 () Bool)

(declare-fun lt!2291295 () Bool)

(assert (=> b!5770740 (= e!3545169 (not lt!2291295))))

(declare-fun b!5770741 () Bool)

(declare-fun e!3545168 () Bool)

(declare-fun e!3545166 () Bool)

(assert (=> b!5770741 (= e!3545168 e!3545166)))

(declare-fun res!2435413 () Bool)

(assert (=> b!5770741 (=> res!2435413 e!3545166)))

(assert (=> b!5770741 (= res!2435413 call!444550)))

(declare-fun b!5770742 () Bool)

(declare-fun res!2435409 () Bool)

(assert (=> b!5770742 (=> res!2435409 e!3545166)))

(assert (=> b!5770742 (= res!2435409 (not (isEmpty!35427 (tail!11295 (ite c!1020247 (t!376992 s!2326) (ite c!1020249 s!2326 (ite c!1020248 (ite c!1020250 lt!2291176 (_1!36185 lt!2291163)) s!2326)))))))))

(declare-fun e!3545167 () Bool)

(declare-fun b!5770743 () Bool)

(assert (=> b!5770743 (= e!3545167 (matchR!7970 (derivativeStep!4563 (ite c!1020247 lt!2291083 (ite c!1020249 lt!2291135 (ite c!1020248 (ite c!1020250 lt!2291167 lt!2291100) (regTwo!32082 r!7292)))) (head!12200 (ite c!1020247 (t!376992 s!2326) (ite c!1020249 s!2326 (ite c!1020248 (ite c!1020250 lt!2291176 (_1!36185 lt!2291163)) s!2326))))) (tail!11295 (ite c!1020247 (t!376992 s!2326) (ite c!1020249 s!2326 (ite c!1020248 (ite c!1020250 lt!2291176 (_1!36185 lt!2291163)) s!2326))))))))

(declare-fun b!5770744 () Bool)

(declare-fun e!3545171 () Bool)

(assert (=> b!5770744 (= e!3545171 e!3545168)))

(declare-fun res!2435415 () Bool)

(assert (=> b!5770744 (=> (not res!2435415) (not e!3545168))))

(assert (=> b!5770744 (= res!2435415 (not lt!2291295))))

(declare-fun b!5770745 () Bool)

(declare-fun res!2435412 () Bool)

(assert (=> b!5770745 (=> res!2435412 e!3545171)))

(declare-fun e!3545170 () Bool)

(assert (=> b!5770745 (= res!2435412 e!3545170)))

(declare-fun res!2435416 () Bool)

(assert (=> b!5770745 (=> (not res!2435416) (not e!3545170))))

(assert (=> b!5770745 (= res!2435416 lt!2291295)))

(declare-fun b!5770746 () Bool)

(declare-fun res!2435410 () Bool)

(assert (=> b!5770746 (=> res!2435410 e!3545171)))

(assert (=> b!5770746 (= res!2435410 (not ((_ is ElementMatch!15785) (ite c!1020247 lt!2291083 (ite c!1020249 lt!2291135 (ite c!1020248 (ite c!1020250 lt!2291167 lt!2291100) (regTwo!32082 r!7292)))))))))

(assert (=> b!5770746 (= e!3545169 e!3545171)))

(declare-fun b!5770739 () Bool)

(assert (=> b!5770739 (= e!3545166 (not (= (head!12200 (ite c!1020247 (t!376992 s!2326) (ite c!1020249 s!2326 (ite c!1020248 (ite c!1020250 lt!2291176 (_1!36185 lt!2291163)) s!2326)))) (c!1020255 (ite c!1020247 lt!2291083 (ite c!1020249 lt!2291135 (ite c!1020248 (ite c!1020250 lt!2291167 lt!2291100) (regTwo!32082 r!7292))))))))))

(declare-fun d!1817500 () Bool)

(declare-fun e!3545165 () Bool)

(assert (=> d!1817500 e!3545165))

(declare-fun c!1020418 () Bool)

(assert (=> d!1817500 (= c!1020418 ((_ is EmptyExpr!15785) (ite c!1020247 lt!2291083 (ite c!1020249 lt!2291135 (ite c!1020248 (ite c!1020250 lt!2291167 lt!2291100) (regTwo!32082 r!7292))))))))

(assert (=> d!1817500 (= lt!2291295 e!3545167)))

(declare-fun c!1020417 () Bool)

(assert (=> d!1817500 (= c!1020417 (isEmpty!35427 (ite c!1020247 (t!376992 s!2326) (ite c!1020249 s!2326 (ite c!1020248 (ite c!1020250 lt!2291176 (_1!36185 lt!2291163)) s!2326)))))))

(assert (=> d!1817500 (validRegex!7521 (ite c!1020247 lt!2291083 (ite c!1020249 lt!2291135 (ite c!1020248 (ite c!1020250 lt!2291167 lt!2291100) (regTwo!32082 r!7292)))))))

(assert (=> d!1817500 (= (matchR!7970 (ite c!1020247 lt!2291083 (ite c!1020249 lt!2291135 (ite c!1020248 (ite c!1020250 lt!2291167 lt!2291100) (regTwo!32082 r!7292)))) (ite c!1020247 (t!376992 s!2326) (ite c!1020249 s!2326 (ite c!1020248 (ite c!1020250 lt!2291176 (_1!36185 lt!2291163)) s!2326)))) lt!2291295)))

(declare-fun b!5770747 () Bool)

(assert (=> b!5770747 (= e!3545165 e!3545169)))

(declare-fun c!1020416 () Bool)

(assert (=> b!5770747 (= c!1020416 ((_ is EmptyLang!15785) (ite c!1020247 lt!2291083 (ite c!1020249 lt!2291135 (ite c!1020248 (ite c!1020250 lt!2291167 lt!2291100) (regTwo!32082 r!7292))))))))

(declare-fun b!5770748 () Bool)

(assert (=> b!5770748 (= e!3545167 (nullable!5817 (ite c!1020247 lt!2291083 (ite c!1020249 lt!2291135 (ite c!1020248 (ite c!1020250 lt!2291167 lt!2291100) (regTwo!32082 r!7292))))))))

(declare-fun b!5770749 () Bool)

(declare-fun res!2435414 () Bool)

(assert (=> b!5770749 (=> (not res!2435414) (not e!3545170))))

(assert (=> b!5770749 (= res!2435414 (isEmpty!35427 (tail!11295 (ite c!1020247 (t!376992 s!2326) (ite c!1020249 s!2326 (ite c!1020248 (ite c!1020250 lt!2291176 (_1!36185 lt!2291163)) s!2326))))))))

(declare-fun b!5770750 () Bool)

(assert (=> b!5770750 (= e!3545170 (= (head!12200 (ite c!1020247 (t!376992 s!2326) (ite c!1020249 s!2326 (ite c!1020248 (ite c!1020250 lt!2291176 (_1!36185 lt!2291163)) s!2326)))) (c!1020255 (ite c!1020247 lt!2291083 (ite c!1020249 lt!2291135 (ite c!1020248 (ite c!1020250 lt!2291167 lt!2291100) (regTwo!32082 r!7292)))))))))

(declare-fun b!5770751 () Bool)

(declare-fun res!2435411 () Bool)

(assert (=> b!5770751 (=> (not res!2435411) (not e!3545170))))

(assert (=> b!5770751 (= res!2435411 (not call!444550))))

(declare-fun b!5770752 () Bool)

(assert (=> b!5770752 (= e!3545165 (= lt!2291295 call!444550))))

(assert (= (and d!1817500 c!1020417) b!5770748))

(assert (= (and d!1817500 (not c!1020417)) b!5770743))

(assert (= (and d!1817500 c!1020418) b!5770752))

(assert (= (and d!1817500 (not c!1020418)) b!5770747))

(assert (= (and b!5770747 c!1020416) b!5770740))

(assert (= (and b!5770747 (not c!1020416)) b!5770746))

(assert (= (and b!5770746 (not res!2435410)) b!5770745))

(assert (= (and b!5770745 res!2435416) b!5770751))

(assert (= (and b!5770751 res!2435411) b!5770749))

(assert (= (and b!5770749 res!2435414) b!5770750))

(assert (= (and b!5770745 (not res!2435412)) b!5770744))

(assert (= (and b!5770744 res!2435415) b!5770741))

(assert (= (and b!5770741 (not res!2435413)) b!5770742))

(assert (= (and b!5770742 (not res!2435409)) b!5770739))

(assert (= (or b!5770752 b!5770741 b!5770751) bm!444545))

(declare-fun m!6715632 () Bool)

(assert (=> bm!444545 m!6715632))

(declare-fun m!6715634 () Bool)

(assert (=> b!5770739 m!6715634))

(declare-fun m!6715636 () Bool)

(assert (=> b!5770749 m!6715636))

(assert (=> b!5770749 m!6715636))

(declare-fun m!6715638 () Bool)

(assert (=> b!5770749 m!6715638))

(declare-fun m!6715640 () Bool)

(assert (=> b!5770748 m!6715640))

(assert (=> b!5770743 m!6715634))

(assert (=> b!5770743 m!6715634))

(declare-fun m!6715642 () Bool)

(assert (=> b!5770743 m!6715642))

(assert (=> b!5770743 m!6715636))

(assert (=> b!5770743 m!6715642))

(assert (=> b!5770743 m!6715636))

(declare-fun m!6715644 () Bool)

(assert (=> b!5770743 m!6715644))

(assert (=> b!5770750 m!6715634))

(assert (=> b!5770742 m!6715636))

(assert (=> b!5770742 m!6715636))

(assert (=> b!5770742 m!6715638))

(assert (=> d!1817500 m!6715632))

(declare-fun m!6715646 () Bool)

(assert (=> d!1817500 m!6715646))

(assert (=> bm!444315 d!1817500))

(declare-fun d!1817502 () Bool)

(assert (=> d!1817502 (matchR!7970 (Star!15785 (reg!16114 (regOne!32082 r!7292))) (++!13998 (ite c!1020250 (_1!36185 lt!2291010) (_1!36185 lt!2291169)) (ite c!1020250 (_2!36185 lt!2291010) (_2!36185 lt!2291169))))))

(declare-fun lt!2291298 () Unit!156690)

(declare-fun choose!43801 (Regex!15785 List!63654 List!63654) Unit!156690)

(assert (=> d!1817502 (= lt!2291298 (choose!43801 (reg!16114 (regOne!32082 r!7292)) (ite c!1020250 (_1!36185 lt!2291010) (_1!36185 lt!2291169)) (ite c!1020250 (_2!36185 lt!2291010) (_2!36185 lt!2291169))))))

(assert (=> d!1817502 (validRegex!7521 (Star!15785 (reg!16114 (regOne!32082 r!7292))))))

(assert (=> d!1817502 (= (lemmaStarApp!102 (reg!16114 (regOne!32082 r!7292)) (ite c!1020250 (_1!36185 lt!2291010) (_1!36185 lt!2291169)) (ite c!1020250 (_2!36185 lt!2291010) (_2!36185 lt!2291169))) lt!2291298)))

(declare-fun bs!1353728 () Bool)

(assert (= bs!1353728 d!1817502))

(assert (=> bs!1353728 m!6715596))

(assert (=> bs!1353728 m!6715596))

(declare-fun m!6715648 () Bool)

(assert (=> bs!1353728 m!6715648))

(declare-fun m!6715650 () Bool)

(assert (=> bs!1353728 m!6715650))

(declare-fun m!6715652 () Bool)

(assert (=> bs!1353728 m!6715652))

(assert (=> bm!444414 d!1817502))

(declare-fun d!1817504 () Bool)

(assert (=> d!1817504 (= (flatMap!1398 (ite c!1020249 lt!2291146 (ite c!1020242 lt!2290993 (ite c!1020252 lt!2291014 (ite c!1020248 (ite c!1020250 lt!2291030 lt!2291054) lt!2291159)))) (ite c!1020249 lambda!313681 (ite c!1020242 lambda!313681 (ite c!1020252 lambda!313681 (ite c!1020248 (ite c!1020250 lambda!313681 lambda!313681) lambda!313681))))) (dynLambda!24869 (ite c!1020249 lambda!313681 (ite c!1020242 lambda!313681 (ite c!1020252 lambda!313681 (ite c!1020248 (ite c!1020250 lambda!313681 lambda!313681) lambda!313681)))) (ite c!1020249 lt!2290995 (ite c!1020242 lt!2291008 (ite c!1020252 lt!2291165 lt!2291089)))))))

(declare-fun lt!2291299 () Unit!156690)

(assert (=> d!1817504 (= lt!2291299 (choose!43783 (ite c!1020249 lt!2291146 (ite c!1020242 lt!2290993 (ite c!1020252 lt!2291014 (ite c!1020248 (ite c!1020250 lt!2291030 lt!2291054) lt!2291159)))) (ite c!1020249 lt!2290995 (ite c!1020242 lt!2291008 (ite c!1020252 lt!2291165 lt!2291089))) (ite c!1020249 lambda!313681 (ite c!1020242 lambda!313681 (ite c!1020252 lambda!313681 (ite c!1020248 (ite c!1020250 lambda!313681 lambda!313681) lambda!313681))))))))

(assert (=> d!1817504 (= (ite c!1020249 lt!2291146 (ite c!1020242 lt!2290993 (ite c!1020252 lt!2291014 (ite c!1020248 (ite c!1020250 lt!2291030 lt!2291054) lt!2291159)))) (store ((as const (Array Context!10338 Bool)) false) (ite c!1020249 lt!2290995 (ite c!1020242 lt!2291008 (ite c!1020252 lt!2291165 lt!2291089))) true))))

(assert (=> d!1817504 (= (lemmaFlatMapOnSingletonSet!930 (ite c!1020249 lt!2291146 (ite c!1020242 lt!2290993 (ite c!1020252 lt!2291014 (ite c!1020248 (ite c!1020250 lt!2291030 lt!2291054) lt!2291159)))) (ite c!1020249 lt!2290995 (ite c!1020242 lt!2291008 (ite c!1020252 lt!2291165 lt!2291089))) (ite c!1020249 lambda!313681 (ite c!1020242 lambda!313681 (ite c!1020252 lambda!313681 (ite c!1020248 (ite c!1020250 lambda!313681 lambda!313681) lambda!313681))))) lt!2291299)))

(declare-fun b_lambda!217761 () Bool)

(assert (=> (not b_lambda!217761) (not d!1817504)))

(declare-fun bs!1353729 () Bool)

(assert (= bs!1353729 d!1817504))

(declare-fun m!6715654 () Bool)

(assert (=> bs!1353729 m!6715654))

(declare-fun m!6715656 () Bool)

(assert (=> bs!1353729 m!6715656))

(declare-fun m!6715658 () Bool)

(assert (=> bs!1353729 m!6715658))

(declare-fun m!6715660 () Bool)

(assert (=> bs!1353729 m!6715660))

(assert (=> bm!444399 d!1817504))

(declare-fun d!1817506 () Bool)

(assert (=> d!1817506 (= (matchR!7970 (ite c!1020249 lt!2291178 lt!2291180) s!2326) (matchRSpec!2888 (ite c!1020249 lt!2291178 lt!2291180) s!2326))))

(declare-fun lt!2291300 () Unit!156690)

(assert (=> d!1817506 (= lt!2291300 (choose!43784 (ite c!1020249 lt!2291178 lt!2291180) s!2326))))

(assert (=> d!1817506 (validRegex!7521 (ite c!1020249 lt!2291178 lt!2291180))))

(assert (=> d!1817506 (= (mainMatchTheorem!2888 (ite c!1020249 lt!2291178 lt!2291180) s!2326) lt!2291300)))

(declare-fun bs!1353730 () Bool)

(assert (= bs!1353730 d!1817506))

(declare-fun m!6715662 () Bool)

(assert (=> bs!1353730 m!6715662))

(declare-fun m!6715664 () Bool)

(assert (=> bs!1353730 m!6715664))

(declare-fun m!6715666 () Bool)

(assert (=> bs!1353730 m!6715666))

(declare-fun m!6715668 () Bool)

(assert (=> bs!1353730 m!6715668))

(assert (=> bm!444475 d!1817506))

(declare-fun bs!1353731 () Bool)

(declare-fun b!5770770 () Bool)

(assert (= bs!1353731 (and b!5770770 d!1817368)))

(declare-fun lambda!313763 () Int)

(assert (=> bs!1353731 (not (= lambda!313763 lambda!313721))))

(declare-fun bs!1353732 () Bool)

(assert (= bs!1353732 (and b!5770770 d!1817422)))

(assert (=> bs!1353732 (not (= lambda!313763 lambda!313732))))

(declare-fun bs!1353733 () Bool)

(assert (= bs!1353733 (and b!5770770 b!5770189)))

(assert (=> bs!1353733 (not (= lambda!313763 lambda!313684))))

(declare-fun bs!1353734 () Bool)

(assert (= bs!1353734 (and b!5770770 b!5770180)))

(assert (=> bs!1353734 (not (= lambda!313763 lambda!313687))))

(declare-fun bs!1353735 () Bool)

(assert (= bs!1353735 (and b!5770770 d!1817434)))

(assert (=> bs!1353735 (not (= lambda!313763 lambda!313738))))

(declare-fun bs!1353736 () Bool)

(assert (= bs!1353736 (and b!5770770 b!5770193)))

(assert (=> bs!1353736 (not (= lambda!313763 lambda!313698))))

(declare-fun bs!1353737 () Bool)

(assert (= bs!1353737 (and b!5770770 d!1817474)))

(assert (=> bs!1353737 (not (= lambda!313763 lambda!313751))))

(declare-fun bs!1353738 () Bool)

(assert (= bs!1353738 (and b!5770770 b!5770330)))

(assert (=> bs!1353738 (not (= lambda!313763 lambda!313711))))

(assert (=> bs!1353734 (not (= lambda!313763 lambda!313686))))

(assert (=> bs!1353735 (not (= lambda!313763 lambda!313737))))

(declare-fun bs!1353739 () Bool)

(assert (= bs!1353739 (and b!5770770 b!5770173)))

(assert (=> bs!1353739 (not (= lambda!313763 lambda!313703))))

(declare-fun bs!1353740 () Bool)

(assert (= bs!1353740 (and b!5770770 b!5770177)))

(assert (=> bs!1353740 (= (and (= s!2326 (_1!36185 lt!2291106)) (= (reg!16114 r!7292) (reg!16114 (regOne!32082 r!7292))) (= r!7292 lt!2291167)) (= lambda!313763 lambda!313693))))

(declare-fun bs!1353741 () Bool)

(assert (= bs!1353741 (and b!5770770 b!5770520)))

(assert (=> bs!1353741 (= (and (= (reg!16114 r!7292) (reg!16114 lt!2291057)) (= r!7292 lt!2291057)) (= lambda!313763 lambda!313730))))

(assert (=> bs!1353734 (not (= lambda!313763 lambda!313688))))

(declare-fun bs!1353742 () Bool)

(assert (= bs!1353742 (and b!5770770 b!5770157)))

(assert (=> bs!1353742 (not (= lambda!313763 lambda!313691))))

(assert (=> bs!1353739 (not (= lambda!313763 lambda!313704))))

(assert (=> bs!1353731 (not (= lambda!313763 lambda!313722))))

(declare-fun bs!1353743 () Bool)

(assert (= bs!1353743 (and b!5770770 b!5770327)))

(assert (=> bs!1353743 (= (and (= s!2326 (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530)))) (= (reg!16114 r!7292) (reg!16114 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167))))) (= r!7292 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167))))) (= lambda!313763 lambda!313710))))

(assert (=> bs!1353739 (= (and (= s!2326 Nil!63530) (= (reg!16114 r!7292) (reg!16114 (regOne!32082 r!7292))) (= r!7292 lt!2291167)) (= lambda!313763 lambda!313705))))

(declare-fun bs!1353744 () Bool)

(assert (= bs!1353744 (and b!5770770 d!1817362)))

(assert (=> bs!1353744 (not (= lambda!313763 lambda!313716))))

(assert (=> bs!1353734 (not (= lambda!313763 lambda!313689))))

(assert (=> bs!1353736 (= (and (= s!2326 (_1!36185 lt!2291163)) (= (reg!16114 r!7292) (reg!16114 (regOne!32082 r!7292))) (= r!7292 lt!2291167)) (= lambda!313763 lambda!313702))))

(declare-fun bs!1353745 () Bool)

(assert (= bs!1353745 (and b!5770770 b!5770366)))

(assert (=> bs!1353745 (= (and (= s!2326 (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (_1!36185 lt!2291163) s!2326))) (= (reg!16114 r!7292) (reg!16114 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292))))))) (= r!7292 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292))))))) (= lambda!313763 lambda!313712))))

(assert (=> bs!1353736 (not (= lambda!313763 lambda!313700))))

(declare-fun bs!1353746 () Bool)

(assert (= bs!1353746 (and b!5770770 b!5770369)))

(assert (=> bs!1353746 (not (= lambda!313763 lambda!313713))))

(assert (=> bs!1353737 (not (= lambda!313763 lambda!313752))))

(assert (=> bs!1353742 (not (= lambda!313763 lambda!313690))))

(declare-fun bs!1353747 () Bool)

(assert (= bs!1353747 (and b!5770770 d!1817472)))

(assert (=> bs!1353747 (not (= lambda!313763 lambda!313750))))

(assert (=> bs!1353733 (not (= lambda!313763 lambda!313682))))

(assert (=> bs!1353740 (not (= lambda!313763 lambda!313694))))

(assert (=> bs!1353733 (not (= lambda!313763 lambda!313683))))

(assert (=> bs!1353740 (not (= lambda!313763 lambda!313692))))

(declare-fun bs!1353748 () Bool)

(assert (= bs!1353748 (and b!5770770 b!5770169)))

(assert (=> bs!1353748 (not (= lambda!313763 lambda!313680))))

(declare-fun bs!1353749 () Bool)

(assert (= bs!1353749 (and b!5770770 b!5770523)))

(assert (=> bs!1353749 (not (= lambda!313763 lambda!313731))))

(assert (=> bs!1353736 (not (= lambda!313763 lambda!313701))))

(assert (=> bs!1353736 (not (= lambda!313763 lambda!313699))))

(assert (=> bs!1353748 (not (= lambda!313763 lambda!313679))))

(assert (=> bs!1353733 (not (= lambda!313763 lambda!313685))))

(assert (=> b!5770770 true))

(assert (=> b!5770770 true))

(declare-fun bs!1353750 () Bool)

(declare-fun b!5770773 () Bool)

(assert (= bs!1353750 (and b!5770773 d!1817368)))

(declare-fun lambda!313764 () Int)

(assert (=> bs!1353750 (not (= lambda!313764 lambda!313721))))

(declare-fun bs!1353751 () Bool)

(assert (= bs!1353751 (and b!5770773 d!1817422)))

(assert (=> bs!1353751 (not (= lambda!313764 lambda!313732))))

(declare-fun bs!1353752 () Bool)

(assert (= bs!1353752 (and b!5770773 b!5770189)))

(assert (=> bs!1353752 (not (= lambda!313764 lambda!313684))))

(declare-fun bs!1353753 () Bool)

(assert (= bs!1353753 (and b!5770773 d!1817434)))

(assert (=> bs!1353753 (= (and (= s!2326 (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163)))) (= (regOne!32082 r!7292) (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292)))) (= (regTwo!32082 r!7292) (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)))) (= lambda!313764 lambda!313738))))

(declare-fun bs!1353754 () Bool)

(assert (= bs!1353754 (and b!5770773 b!5770193)))

(assert (=> bs!1353754 (not (= lambda!313764 lambda!313698))))

(declare-fun bs!1353755 () Bool)

(assert (= bs!1353755 (and b!5770773 d!1817474)))

(assert (=> bs!1353755 (not (= lambda!313764 lambda!313751))))

(declare-fun bs!1353756 () Bool)

(assert (= bs!1353756 (and b!5770773 b!5770330)))

(assert (=> bs!1353756 (= (and (= s!2326 (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530)))) (= (regOne!32082 r!7292) (regOne!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167))))) (= (regTwo!32082 r!7292) (regTwo!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))))) (= lambda!313764 lambda!313711))))

(declare-fun bs!1353757 () Bool)

(assert (= bs!1353757 (and b!5770773 b!5770180)))

(assert (=> bs!1353757 (not (= lambda!313764 lambda!313686))))

(assert (=> bs!1353753 (not (= lambda!313764 lambda!313737))))

(declare-fun bs!1353758 () Bool)

(assert (= bs!1353758 (and b!5770773 b!5770173)))

(assert (=> bs!1353758 (not (= lambda!313764 lambda!313703))))

(declare-fun bs!1353759 () Bool)

(assert (= bs!1353759 (and b!5770773 b!5770177)))

(assert (=> bs!1353759 (not (= lambda!313764 lambda!313693))))

(declare-fun bs!1353760 () Bool)

(assert (= bs!1353760 (and b!5770773 b!5770520)))

(assert (=> bs!1353760 (not (= lambda!313764 lambda!313730))))

(assert (=> bs!1353757 (not (= lambda!313764 lambda!313688))))

(declare-fun bs!1353761 () Bool)

(assert (= bs!1353761 (and b!5770773 b!5770157)))

(assert (=> bs!1353761 (= (= (regOne!32082 r!7292) lt!2291167) (= lambda!313764 lambda!313691))))

(declare-fun bs!1353762 () Bool)

(assert (= bs!1353762 (and b!5770773 b!5770770)))

(assert (=> bs!1353762 (not (= lambda!313764 lambda!313763))))

(assert (=> bs!1353757 (= (and (= (regOne!32082 r!7292) (regOne!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291065)) (= lambda!313764 lambda!313687))))

(assert (=> bs!1353758 (= (and (= s!2326 Nil!63530) (= (regOne!32082 r!7292) (reg!16114 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291167)) (= lambda!313764 lambda!313704))))

(assert (=> bs!1353750 (= (and (= s!2326 (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530)) (= (regOne!32082 r!7292) (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292)))))) (= (regTwo!32082 r!7292) (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))))) (= lambda!313764 lambda!313722))))

(declare-fun bs!1353763 () Bool)

(assert (= bs!1353763 (and b!5770773 b!5770327)))

(assert (=> bs!1353763 (not (= lambda!313764 lambda!313710))))

(assert (=> bs!1353758 (not (= lambda!313764 lambda!313705))))

(declare-fun bs!1353764 () Bool)

(assert (= bs!1353764 (and b!5770773 d!1817362)))

(assert (=> bs!1353764 (not (= lambda!313764 lambda!313716))))

(assert (=> bs!1353757 (= (and (= (regOne!32082 r!7292) (regTwo!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291002)) (= lambda!313764 lambda!313689))))

(assert (=> bs!1353754 (not (= lambda!313764 lambda!313702))))

(declare-fun bs!1353765 () Bool)

(assert (= bs!1353765 (and b!5770773 b!5770366)))

(assert (=> bs!1353765 (not (= lambda!313764 lambda!313712))))

(assert (=> bs!1353754 (not (= lambda!313764 lambda!313700))))

(declare-fun bs!1353766 () Bool)

(assert (= bs!1353766 (and b!5770773 b!5770369)))

(assert (=> bs!1353766 (= (and (= s!2326 (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (_1!36185 lt!2291163) s!2326))) (= (regOne!32082 r!7292) (regOne!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292))))))) (= (regTwo!32082 r!7292) (regTwo!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))))) (= lambda!313764 lambda!313713))))

(assert (=> bs!1353755 (= lambda!313764 lambda!313752)))

(assert (=> bs!1353761 (not (= lambda!313764 lambda!313690))))

(declare-fun bs!1353767 () Bool)

(assert (= bs!1353767 (and b!5770773 d!1817472)))

(assert (=> bs!1353767 (not (= lambda!313764 lambda!313750))))

(assert (=> bs!1353752 (not (= lambda!313764 lambda!313682))))

(assert (=> bs!1353759 (= (and (= s!2326 (_1!36185 lt!2291106)) (= (regOne!32082 r!7292) (reg!16114 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291167)) (= lambda!313764 lambda!313694))))

(assert (=> bs!1353752 (= (and (= (regOne!32082 r!7292) (regOne!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291182)) (= lambda!313764 lambda!313683))))

(assert (=> bs!1353759 (not (= lambda!313764 lambda!313692))))

(declare-fun bs!1353768 () Bool)

(assert (= bs!1353768 (and b!5770773 b!5770169)))

(assert (=> bs!1353768 (= lambda!313764 lambda!313680)))

(declare-fun bs!1353769 () Bool)

(assert (= bs!1353769 (and b!5770773 b!5770523)))

(assert (=> bs!1353769 (= (and (= (regOne!32082 r!7292) (regOne!32082 lt!2291057)) (= (regTwo!32082 r!7292) (regTwo!32082 lt!2291057))) (= lambda!313764 lambda!313731))))

(assert (=> bs!1353754 (= (and (= s!2326 (_1!36185 lt!2291163)) (= (regOne!32082 r!7292) (reg!16114 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291167)) (= lambda!313764 lambda!313701))))

(assert (=> bs!1353754 (= (= (regOne!32082 r!7292) lt!2291100) (= lambda!313764 lambda!313699))))

(assert (=> bs!1353768 (not (= lambda!313764 lambda!313679))))

(assert (=> bs!1353752 (= (and (= (regOne!32082 r!7292) (regTwo!32082 (regOne!32082 r!7292))) (= (regTwo!32082 r!7292) lt!2291109)) (= lambda!313764 lambda!313685))))

(assert (=> b!5770773 true))

(assert (=> b!5770773 true))

(declare-fun b!5770763 () Bool)

(declare-fun c!1020420 () Bool)

(assert (=> b!5770763 (= c!1020420 ((_ is Union!15785) r!7292))))

(declare-fun e!3545176 () Bool)

(declare-fun e!3545180 () Bool)

(assert (=> b!5770763 (= e!3545176 e!3545180)))

(declare-fun b!5770764 () Bool)

(declare-fun c!1020419 () Bool)

(assert (=> b!5770764 (= c!1020419 ((_ is ElementMatch!15785) r!7292))))

(declare-fun e!3545182 () Bool)

(assert (=> b!5770764 (= e!3545182 e!3545176)))

(declare-fun b!5770765 () Bool)

(declare-fun res!2435429 () Bool)

(declare-fun e!3545177 () Bool)

(assert (=> b!5770765 (=> res!2435429 e!3545177)))

(declare-fun call!444551 () Bool)

(assert (=> b!5770765 (= res!2435429 call!444551)))

(declare-fun e!3545178 () Bool)

(assert (=> b!5770765 (= e!3545178 e!3545177)))

(declare-fun call!444552 () Bool)

(declare-fun c!1020422 () Bool)

(declare-fun bm!444546 () Bool)

(assert (=> bm!444546 (= call!444552 (Exists!2885 (ite c!1020422 lambda!313763 lambda!313764)))))

(declare-fun b!5770766 () Bool)

(declare-fun e!3545179 () Bool)

(assert (=> b!5770766 (= e!3545179 call!444551)))

(declare-fun b!5770767 () Bool)

(declare-fun e!3545181 () Bool)

(assert (=> b!5770767 (= e!3545181 (matchRSpec!2888 (regTwo!32083 r!7292) s!2326))))

(declare-fun b!5770768 () Bool)

(assert (=> b!5770768 (= e!3545180 e!3545178)))

(assert (=> b!5770768 (= c!1020422 ((_ is Star!15785) r!7292))))

(declare-fun bm!444547 () Bool)

(assert (=> bm!444547 (= call!444551 (isEmpty!35427 s!2326))))

(declare-fun d!1817508 () Bool)

(declare-fun c!1020421 () Bool)

(assert (=> d!1817508 (= c!1020421 ((_ is EmptyExpr!15785) r!7292))))

(assert (=> d!1817508 (= (matchRSpec!2888 r!7292 s!2326) e!3545179)))

(declare-fun b!5770769 () Bool)

(assert (=> b!5770769 (= e!3545179 e!3545182)))

(declare-fun res!2435428 () Bool)

(assert (=> b!5770769 (= res!2435428 (not ((_ is EmptyLang!15785) r!7292)))))

(assert (=> b!5770769 (=> (not res!2435428) (not e!3545182))))

(assert (=> b!5770770 (= e!3545177 call!444552)))

(declare-fun b!5770771 () Bool)

(assert (=> b!5770771 (= e!3545180 e!3545181)))

(declare-fun res!2435427 () Bool)

(assert (=> b!5770771 (= res!2435427 (matchRSpec!2888 (regOne!32083 r!7292) s!2326))))

(assert (=> b!5770771 (=> res!2435427 e!3545181)))

(declare-fun b!5770772 () Bool)

(assert (=> b!5770772 (= e!3545176 (= s!2326 (Cons!63530 (c!1020255 r!7292) Nil!63530)))))

(assert (=> b!5770773 (= e!3545178 call!444552)))

(assert (= (and d!1817508 c!1020421) b!5770766))

(assert (= (and d!1817508 (not c!1020421)) b!5770769))

(assert (= (and b!5770769 res!2435428) b!5770764))

(assert (= (and b!5770764 c!1020419) b!5770772))

(assert (= (and b!5770764 (not c!1020419)) b!5770763))

(assert (= (and b!5770763 c!1020420) b!5770771))

(assert (= (and b!5770763 (not c!1020420)) b!5770768))

(assert (= (and b!5770771 (not res!2435427)) b!5770767))

(assert (= (and b!5770768 c!1020422) b!5770765))

(assert (= (and b!5770768 (not c!1020422)) b!5770773))

(assert (= (and b!5770765 (not res!2435429)) b!5770770))

(assert (= (or b!5770770 b!5770773) bm!444546))

(assert (= (or b!5770766 b!5770765) bm!444547))

(declare-fun m!6715670 () Bool)

(assert (=> bm!444546 m!6715670))

(declare-fun m!6715672 () Bool)

(assert (=> b!5770767 m!6715672))

(assert (=> bm!444547 m!6715258))

(declare-fun m!6715674 () Bool)

(assert (=> b!5770771 m!6715674))

(assert (=> b!5770167 d!1817508))

(declare-fun bm!444554 () Bool)

(declare-fun call!444559 () Bool)

(assert (=> bm!444554 (= call!444559 (isEmpty!35427 s!2326))))

(declare-fun b!5770786 () Bool)

(declare-fun e!3545194 () Bool)

(declare-fun lt!2291301 () Bool)

(assert (=> b!5770786 (= e!3545194 (not lt!2291301))))

(declare-fun b!5770787 () Bool)

(declare-fun e!3545193 () Bool)

(declare-fun e!3545191 () Bool)

(assert (=> b!5770787 (= e!3545193 e!3545191)))

(declare-fun res!2435437 () Bool)

(assert (=> b!5770787 (=> res!2435437 e!3545191)))

(assert (=> b!5770787 (= res!2435437 call!444559)))

(declare-fun b!5770788 () Bool)

(declare-fun res!2435433 () Bool)

(assert (=> b!5770788 (=> res!2435433 e!3545191)))

(assert (=> b!5770788 (= res!2435433 (not (isEmpty!35427 (tail!11295 s!2326))))))

(declare-fun b!5770789 () Bool)

(declare-fun e!3545192 () Bool)

(assert (=> b!5770789 (= e!3545192 (matchR!7970 (derivativeStep!4563 r!7292 (head!12200 s!2326)) (tail!11295 s!2326)))))

(declare-fun b!5770790 () Bool)

(declare-fun e!3545196 () Bool)

(assert (=> b!5770790 (= e!3545196 e!3545193)))

(declare-fun res!2435439 () Bool)

(assert (=> b!5770790 (=> (not res!2435439) (not e!3545193))))

(assert (=> b!5770790 (= res!2435439 (not lt!2291301))))

(declare-fun b!5770791 () Bool)

(declare-fun res!2435436 () Bool)

(assert (=> b!5770791 (=> res!2435436 e!3545196)))

(declare-fun e!3545195 () Bool)

(assert (=> b!5770791 (= res!2435436 e!3545195)))

(declare-fun res!2435440 () Bool)

(assert (=> b!5770791 (=> (not res!2435440) (not e!3545195))))

(assert (=> b!5770791 (= res!2435440 lt!2291301)))

(declare-fun b!5770792 () Bool)

(declare-fun res!2435434 () Bool)

(assert (=> b!5770792 (=> res!2435434 e!3545196)))

(assert (=> b!5770792 (= res!2435434 (not ((_ is ElementMatch!15785) r!7292)))))

(assert (=> b!5770792 (= e!3545194 e!3545196)))

(declare-fun b!5770785 () Bool)

(assert (=> b!5770785 (= e!3545191 (not (= (head!12200 s!2326) (c!1020255 r!7292))))))

(declare-fun d!1817510 () Bool)

(declare-fun e!3545190 () Bool)

(assert (=> d!1817510 e!3545190))

(declare-fun c!1020429 () Bool)

(assert (=> d!1817510 (= c!1020429 ((_ is EmptyExpr!15785) r!7292))))

(assert (=> d!1817510 (= lt!2291301 e!3545192)))

(declare-fun c!1020428 () Bool)

(assert (=> d!1817510 (= c!1020428 (isEmpty!35427 s!2326))))

(assert (=> d!1817510 (validRegex!7521 r!7292)))

(assert (=> d!1817510 (= (matchR!7970 r!7292 s!2326) lt!2291301)))

(declare-fun b!5770793 () Bool)

(assert (=> b!5770793 (= e!3545190 e!3545194)))

(declare-fun c!1020427 () Bool)

(assert (=> b!5770793 (= c!1020427 ((_ is EmptyLang!15785) r!7292))))

(declare-fun b!5770794 () Bool)

(assert (=> b!5770794 (= e!3545192 (nullable!5817 r!7292))))

(declare-fun b!5770795 () Bool)

(declare-fun res!2435438 () Bool)

(assert (=> b!5770795 (=> (not res!2435438) (not e!3545195))))

(assert (=> b!5770795 (= res!2435438 (isEmpty!35427 (tail!11295 s!2326)))))

(declare-fun b!5770796 () Bool)

(assert (=> b!5770796 (= e!3545195 (= (head!12200 s!2326) (c!1020255 r!7292)))))

(declare-fun b!5770797 () Bool)

(declare-fun res!2435435 () Bool)

(assert (=> b!5770797 (=> (not res!2435435) (not e!3545195))))

(assert (=> b!5770797 (= res!2435435 (not call!444559))))

(declare-fun b!5770798 () Bool)

(assert (=> b!5770798 (= e!3545190 (= lt!2291301 call!444559))))

(assert (= (and d!1817510 c!1020428) b!5770794))

(assert (= (and d!1817510 (not c!1020428)) b!5770789))

(assert (= (and d!1817510 c!1020429) b!5770798))

(assert (= (and d!1817510 (not c!1020429)) b!5770793))

(assert (= (and b!5770793 c!1020427) b!5770786))

(assert (= (and b!5770793 (not c!1020427)) b!5770792))

(assert (= (and b!5770792 (not res!2435434)) b!5770791))

(assert (= (and b!5770791 res!2435440) b!5770797))

(assert (= (and b!5770797 res!2435435) b!5770795))

(assert (= (and b!5770795 res!2435438) b!5770796))

(assert (= (and b!5770791 (not res!2435436)) b!5770790))

(assert (= (and b!5770790 res!2435439) b!5770787))

(assert (= (and b!5770787 (not res!2435437)) b!5770788))

(assert (= (and b!5770788 (not res!2435433)) b!5770785))

(assert (= (or b!5770798 b!5770787 b!5770797) bm!444554))

(assert (=> bm!444554 m!6715258))

(assert (=> b!5770785 m!6715274))

(assert (=> b!5770795 m!6715278))

(assert (=> b!5770795 m!6715278))

(assert (=> b!5770795 m!6715290))

(declare-fun m!6715676 () Bool)

(assert (=> b!5770794 m!6715676))

(assert (=> b!5770789 m!6715274))

(assert (=> b!5770789 m!6715274))

(declare-fun m!6715678 () Bool)

(assert (=> b!5770789 m!6715678))

(assert (=> b!5770789 m!6715278))

(assert (=> b!5770789 m!6715678))

(assert (=> b!5770789 m!6715278))

(declare-fun m!6715680 () Bool)

(assert (=> b!5770789 m!6715680))

(assert (=> b!5770796 m!6715274))

(assert (=> b!5770788 m!6715278))

(assert (=> b!5770788 m!6715278))

(assert (=> b!5770788 m!6715290))

(assert (=> d!1817510 m!6715258))

(assert (=> d!1817510 m!6714706))

(assert (=> b!5770167 d!1817510))

(declare-fun d!1817512 () Bool)

(assert (=> d!1817512 (= (matchR!7970 r!7292 s!2326) (matchRSpec!2888 r!7292 s!2326))))

(declare-fun lt!2291302 () Unit!156690)

(assert (=> d!1817512 (= lt!2291302 (choose!43784 r!7292 s!2326))))

(assert (=> d!1817512 (validRegex!7521 r!7292)))

(assert (=> d!1817512 (= (mainMatchTheorem!2888 r!7292 s!2326) lt!2291302)))

(declare-fun bs!1353775 () Bool)

(assert (= bs!1353775 d!1817512))

(assert (=> bs!1353775 m!6714798))

(assert (=> bs!1353775 m!6714796))

(declare-fun m!6715682 () Bool)

(assert (=> bs!1353775 m!6715682))

(assert (=> bs!1353775 m!6714706))

(assert (=> b!5770167 d!1817512))

(declare-fun d!1817514 () Bool)

(assert (=> d!1817514 (= (isEmpty!35427 (_1!36185 lt!2291106)) ((_ is Nil!63530) (_1!36185 lt!2291106)))))

(assert (=> b!5770157 d!1817514))

(declare-fun c!1020430 () Bool)

(declare-fun d!1817516 () Bool)

(assert (=> d!1817516 (= c!1020430 (isEmpty!35427 (ite (or c!1020249 c!1020242) (t!376992 s!2326) s!2326)))))

(declare-fun e!3545197 () Bool)

(assert (=> d!1817516 (= (matchZipper!1923 (ite c!1020249 ((_ map or) lt!2290986 lt!2291059) (ite c!1020242 ((_ map or) lt!2291179 lt!2291150) (ite c!1020252 lt!2291014 z!1189))) (ite (or c!1020249 c!1020242) (t!376992 s!2326) s!2326)) e!3545197)))

(declare-fun b!5770799 () Bool)

(assert (=> b!5770799 (= e!3545197 (nullableZipper!1709 (ite c!1020249 ((_ map or) lt!2290986 lt!2291059) (ite c!1020242 ((_ map or) lt!2291179 lt!2291150) (ite c!1020252 lt!2291014 z!1189)))))))

(declare-fun b!5770800 () Bool)

(assert (=> b!5770800 (= e!3545197 (matchZipper!1923 (derivationStepZipper!1862 (ite c!1020249 ((_ map or) lt!2290986 lt!2291059) (ite c!1020242 ((_ map or) lt!2291179 lt!2291150) (ite c!1020252 lt!2291014 z!1189))) (head!12200 (ite (or c!1020249 c!1020242) (t!376992 s!2326) s!2326))) (tail!11295 (ite (or c!1020249 c!1020242) (t!376992 s!2326) s!2326))))))

(assert (= (and d!1817516 c!1020430) b!5770799))

(assert (= (and d!1817516 (not c!1020430)) b!5770800))

(declare-fun m!6715684 () Bool)

(assert (=> d!1817516 m!6715684))

(declare-fun m!6715686 () Bool)

(assert (=> b!5770799 m!6715686))

(declare-fun m!6715688 () Bool)

(assert (=> b!5770800 m!6715688))

(assert (=> b!5770800 m!6715688))

(declare-fun m!6715690 () Bool)

(assert (=> b!5770800 m!6715690))

(declare-fun m!6715692 () Bool)

(assert (=> b!5770800 m!6715692))

(assert (=> b!5770800 m!6715690))

(assert (=> b!5770800 m!6715692))

(declare-fun m!6715694 () Bool)

(assert (=> b!5770800 m!6715694))

(assert (=> bm!444284 d!1817516))

(declare-fun b!5770801 () Bool)

(declare-fun e!3545198 () (InoxSet Context!10338))

(assert (=> b!5770801 (= e!3545198 ((as const (Array Context!10338 Bool)) false))))

(declare-fun b!5770802 () Bool)

(declare-fun call!444560 () (InoxSet Context!10338))

(assert (=> b!5770802 (= e!3545198 call!444560)))

(declare-fun bm!444555 () Bool)

(assert (=> bm!444555 (= call!444560 (derivationStepZipperDown!1127 (h!69979 (exprs!5669 lt!2290989)) (Context!10339 (t!376993 (exprs!5669 lt!2290989))) (h!69978 s!2326)))))

(declare-fun b!5770804 () Bool)

(declare-fun e!3545200 () Bool)

(assert (=> b!5770804 (= e!3545200 (nullable!5817 (h!69979 (exprs!5669 lt!2290989))))))

(declare-fun b!5770805 () Bool)

(declare-fun e!3545199 () (InoxSet Context!10338))

(assert (=> b!5770805 (= e!3545199 ((_ map or) call!444560 (derivationStepZipperUp!1053 (Context!10339 (t!376993 (exprs!5669 lt!2290989))) (h!69978 s!2326))))))

(declare-fun d!1817518 () Bool)

(declare-fun c!1020431 () Bool)

(assert (=> d!1817518 (= c!1020431 e!3545200)))

(declare-fun res!2435441 () Bool)

(assert (=> d!1817518 (=> (not res!2435441) (not e!3545200))))

(assert (=> d!1817518 (= res!2435441 ((_ is Cons!63531) (exprs!5669 lt!2290989)))))

(assert (=> d!1817518 (= (derivationStepZipperUp!1053 lt!2290989 (h!69978 s!2326)) e!3545199)))

(declare-fun b!5770803 () Bool)

(assert (=> b!5770803 (= e!3545199 e!3545198)))

(declare-fun c!1020432 () Bool)

(assert (=> b!5770803 (= c!1020432 ((_ is Cons!63531) (exprs!5669 lt!2290989)))))

(assert (= (and d!1817518 res!2435441) b!5770804))

(assert (= (and d!1817518 c!1020431) b!5770805))

(assert (= (and d!1817518 (not c!1020431)) b!5770803))

(assert (= (and b!5770803 c!1020432) b!5770802))

(assert (= (and b!5770803 (not c!1020432)) b!5770801))

(assert (= (or b!5770805 b!5770802) bm!444555))

(declare-fun m!6715696 () Bool)

(assert (=> bm!444555 m!6715696))

(declare-fun m!6715698 () Bool)

(assert (=> b!5770804 m!6715698))

(declare-fun m!6715700 () Bool)

(assert (=> b!5770805 m!6715700))

(assert (=> b!5770184 d!1817518))

(declare-fun d!1817520 () Bool)

(assert (=> d!1817520 (= (flatMap!1398 lt!2291113 lambda!313681) (choose!43788 lt!2291113 lambda!313681))))

(declare-fun bs!1353779 () Bool)

(assert (= bs!1353779 d!1817520))

(declare-fun m!6715702 () Bool)

(assert (=> bs!1353779 m!6715702))

(assert (=> b!5770184 d!1817520))

(declare-fun b!5770806 () Bool)

(declare-fun e!3545201 () (InoxSet Context!10338))

(assert (=> b!5770806 (= e!3545201 ((as const (Array Context!10338 Bool)) false))))

(declare-fun b!5770807 () Bool)

(declare-fun call!444561 () (InoxSet Context!10338))

(assert (=> b!5770807 (= e!3545201 call!444561)))

(declare-fun bm!444556 () Bool)

(assert (=> bm!444556 (= call!444561 (derivationStepZipperDown!1127 (h!69979 (exprs!5669 lt!2291103)) (Context!10339 (t!376993 (exprs!5669 lt!2291103))) (h!69978 s!2326)))))

(declare-fun b!5770809 () Bool)

(declare-fun e!3545203 () Bool)

(assert (=> b!5770809 (= e!3545203 (nullable!5817 (h!69979 (exprs!5669 lt!2291103))))))

(declare-fun b!5770810 () Bool)

(declare-fun e!3545202 () (InoxSet Context!10338))

(assert (=> b!5770810 (= e!3545202 ((_ map or) call!444561 (derivationStepZipperUp!1053 (Context!10339 (t!376993 (exprs!5669 lt!2291103))) (h!69978 s!2326))))))

(declare-fun d!1817522 () Bool)

(declare-fun c!1020433 () Bool)

(assert (=> d!1817522 (= c!1020433 e!3545203)))

(declare-fun res!2435442 () Bool)

(assert (=> d!1817522 (=> (not res!2435442) (not e!3545203))))

(assert (=> d!1817522 (= res!2435442 ((_ is Cons!63531) (exprs!5669 lt!2291103)))))

(assert (=> d!1817522 (= (derivationStepZipperUp!1053 lt!2291103 (h!69978 s!2326)) e!3545202)))

(declare-fun b!5770808 () Bool)

(assert (=> b!5770808 (= e!3545202 e!3545201)))

(declare-fun c!1020434 () Bool)

(assert (=> b!5770808 (= c!1020434 ((_ is Cons!63531) (exprs!5669 lt!2291103)))))

(assert (= (and d!1817522 res!2435442) b!5770809))

(assert (= (and d!1817522 c!1020433) b!5770810))

(assert (= (and d!1817522 (not c!1020433)) b!5770808))

(assert (= (and b!5770808 c!1020434) b!5770807))

(assert (= (and b!5770808 (not c!1020434)) b!5770806))

(assert (= (or b!5770810 b!5770807) bm!444556))

(declare-fun m!6715704 () Bool)

(assert (=> bm!444556 m!6715704))

(declare-fun m!6715706 () Bool)

(assert (=> b!5770809 m!6715706))

(declare-fun m!6715708 () Bool)

(assert (=> b!5770810 m!6715708))

(assert (=> b!5770184 d!1817522))

(declare-fun d!1817524 () Bool)

(assert (=> d!1817524 (= (flatMap!1398 lt!2291168 lambda!313681) (dynLambda!24869 lambda!313681 lt!2291151))))

(declare-fun lt!2291303 () Unit!156690)

(assert (=> d!1817524 (= lt!2291303 (choose!43783 lt!2291168 lt!2291151 lambda!313681))))

(assert (=> d!1817524 (= lt!2291168 (store ((as const (Array Context!10338 Bool)) false) lt!2291151 true))))

(assert (=> d!1817524 (= (lemmaFlatMapOnSingletonSet!930 lt!2291168 lt!2291151 lambda!313681) lt!2291303)))

(declare-fun b_lambda!217763 () Bool)

(assert (=> (not b_lambda!217763) (not d!1817524)))

(declare-fun bs!1353780 () Bool)

(assert (= bs!1353780 d!1817524))

(declare-fun m!6715710 () Bool)

(assert (=> bs!1353780 m!6715710))

(declare-fun m!6715712 () Bool)

(assert (=> bs!1353780 m!6715712))

(declare-fun m!6715714 () Bool)

(assert (=> bs!1353780 m!6715714))

(assert (=> bs!1353780 m!6714900))

(assert (=> b!5770184 d!1817524))

(declare-fun d!1817526 () Bool)

(assert (=> d!1817526 (= (matchR!7970 (ite c!1020249 lt!2291057 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291065 (ite c!1020248 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 lt!2291167)) (regOne!32082 r!7292))))) (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)) s!2326))) (matchRSpec!2888 (ite c!1020249 lt!2291057 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291065 (ite c!1020248 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 lt!2291167)) (regOne!32082 r!7292))))) (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)) s!2326))))))

(declare-fun lt!2291304 () Unit!156690)

(assert (=> d!1817526 (= lt!2291304 (choose!43784 (ite c!1020249 lt!2291057 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291065 (ite c!1020248 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 lt!2291167)) (regOne!32082 r!7292))))) (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)) s!2326))))))

(assert (=> d!1817526 (validRegex!7521 (ite c!1020249 lt!2291057 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291065 (ite c!1020248 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 lt!2291167)) (regOne!32082 r!7292))))))))

(assert (=> d!1817526 (= (mainMatchTheorem!2888 (ite c!1020249 lt!2291057 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291065 (ite c!1020248 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 lt!2291167)) (regOne!32082 r!7292))))) (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)) s!2326))) lt!2291304)))

(declare-fun bs!1353781 () Bool)

(assert (= bs!1353781 d!1817526))

(declare-fun m!6715716 () Bool)

(assert (=> bs!1353781 m!6715716))

(declare-fun m!6715718 () Bool)

(assert (=> bs!1353781 m!6715718))

(declare-fun m!6715720 () Bool)

(assert (=> bs!1353781 m!6715720))

(declare-fun m!6715722 () Bool)

(assert (=> bs!1353781 m!6715722))

(assert (=> bm!444365 d!1817526))

(declare-fun d!1817528 () Bool)

(assert (=> d!1817528 (= (flatMap!1398 (ite c!1020249 lt!2291006 (ite c!1020242 lt!2290993 (ite c!1020252 lt!2291014 lt!2291168))) (ite c!1020249 lambda!313681 (ite c!1020242 lambda!313681 (ite c!1020252 lambda!313681 lambda!313681)))) (choose!43788 (ite c!1020249 lt!2291006 (ite c!1020242 lt!2290993 (ite c!1020252 lt!2291014 lt!2291168))) (ite c!1020249 lambda!313681 (ite c!1020242 lambda!313681 (ite c!1020252 lambda!313681 lambda!313681)))))))

(declare-fun bs!1353782 () Bool)

(assert (= bs!1353782 d!1817528))

(declare-fun m!6715724 () Bool)

(assert (=> bs!1353782 m!6715724))

(assert (=> bm!444383 d!1817528))

(declare-fun d!1817530 () Bool)

(declare-fun e!3545205 () Bool)

(assert (=> d!1817530 e!3545205))

(declare-fun res!2435443 () Bool)

(assert (=> d!1817530 (=> (not res!2435443) (not e!3545205))))

(declare-fun lt!2291305 () List!63654)

(assert (=> d!1817530 (= res!2435443 (= (content!11600 lt!2291305) ((_ map or) (content!11600 (ite c!1020250 (_1!36185 lt!2291010) (_2!36185 lt!2291169))) (content!11600 (ite c!1020250 (_2!36185 lt!2291010) (_2!36185 lt!2291163))))))))

(declare-fun e!3545204 () List!63654)

(assert (=> d!1817530 (= lt!2291305 e!3545204)))

(declare-fun c!1020435 () Bool)

(assert (=> d!1817530 (= c!1020435 ((_ is Nil!63530) (ite c!1020250 (_1!36185 lt!2291010) (_2!36185 lt!2291169))))))

(assert (=> d!1817530 (= (++!13998 (ite c!1020250 (_1!36185 lt!2291010) (_2!36185 lt!2291169)) (ite c!1020250 (_2!36185 lt!2291010) (_2!36185 lt!2291163))) lt!2291305)))

(declare-fun b!5770811 () Bool)

(assert (=> b!5770811 (= e!3545204 (ite c!1020250 (_2!36185 lt!2291010) (_2!36185 lt!2291163)))))

(declare-fun b!5770813 () Bool)

(declare-fun res!2435444 () Bool)

(assert (=> b!5770813 (=> (not res!2435444) (not e!3545205))))

(assert (=> b!5770813 (= res!2435444 (= (size!40078 lt!2291305) (+ (size!40078 (ite c!1020250 (_1!36185 lt!2291010) (_2!36185 lt!2291169))) (size!40078 (ite c!1020250 (_2!36185 lt!2291010) (_2!36185 lt!2291163))))))))

(declare-fun b!5770814 () Bool)

(assert (=> b!5770814 (= e!3545205 (or (not (= (ite c!1020250 (_2!36185 lt!2291010) (_2!36185 lt!2291163)) Nil!63530)) (= lt!2291305 (ite c!1020250 (_1!36185 lt!2291010) (_2!36185 lt!2291169)))))))

(declare-fun b!5770812 () Bool)

(assert (=> b!5770812 (= e!3545204 (Cons!63530 (h!69978 (ite c!1020250 (_1!36185 lt!2291010) (_2!36185 lt!2291169))) (++!13998 (t!376992 (ite c!1020250 (_1!36185 lt!2291010) (_2!36185 lt!2291169))) (ite c!1020250 (_2!36185 lt!2291010) (_2!36185 lt!2291163)))))))

(assert (= (and d!1817530 c!1020435) b!5770811))

(assert (= (and d!1817530 (not c!1020435)) b!5770812))

(assert (= (and d!1817530 res!2435443) b!5770813))

(assert (= (and b!5770813 res!2435444) b!5770814))

(declare-fun m!6715726 () Bool)

(assert (=> d!1817530 m!6715726))

(declare-fun m!6715728 () Bool)

(assert (=> d!1817530 m!6715728))

(declare-fun m!6715730 () Bool)

(assert (=> d!1817530 m!6715730))

(declare-fun m!6715732 () Bool)

(assert (=> b!5770813 m!6715732))

(declare-fun m!6715734 () Bool)

(assert (=> b!5770813 m!6715734))

(declare-fun m!6715736 () Bool)

(assert (=> b!5770813 m!6715736))

(declare-fun m!6715738 () Bool)

(assert (=> b!5770812 m!6715738))

(assert (=> bm!444463 d!1817530))

(declare-fun b!5770823 () Bool)

(declare-fun e!3545210 () List!63655)

(assert (=> b!5770823 (= e!3545210 lt!2291047)))

(declare-fun d!1817532 () Bool)

(declare-fun e!3545211 () Bool)

(assert (=> d!1817532 e!3545211))

(declare-fun res!2435449 () Bool)

(assert (=> d!1817532 (=> (not res!2435449) (not e!3545211))))

(declare-fun lt!2291308 () List!63655)

(declare-fun content!11604 (List!63655) (InoxSet Regex!15785))

(assert (=> d!1817532 (= res!2435449 (= (content!11604 lt!2291308) ((_ map or) (content!11604 lt!2291074) (content!11604 lt!2291047))))))

(assert (=> d!1817532 (= lt!2291308 e!3545210)))

(declare-fun c!1020438 () Bool)

(assert (=> d!1817532 (= c!1020438 ((_ is Nil!63531) lt!2291074))))

(assert (=> d!1817532 (= (++!13999 lt!2291074 lt!2291047) lt!2291308)))

(declare-fun b!5770826 () Bool)

(assert (=> b!5770826 (= e!3545211 (or (not (= lt!2291047 Nil!63531)) (= lt!2291308 lt!2291074)))))

(declare-fun b!5770824 () Bool)

(assert (=> b!5770824 (= e!3545210 (Cons!63531 (h!69979 lt!2291074) (++!13999 (t!376993 lt!2291074) lt!2291047)))))

(declare-fun b!5770825 () Bool)

(declare-fun res!2435450 () Bool)

(assert (=> b!5770825 (=> (not res!2435450) (not e!3545211))))

(declare-fun size!40081 (List!63655) Int)

(assert (=> b!5770825 (= res!2435450 (= (size!40081 lt!2291308) (+ (size!40081 lt!2291074) (size!40081 lt!2291047))))))

(assert (= (and d!1817532 c!1020438) b!5770823))

(assert (= (and d!1817532 (not c!1020438)) b!5770824))

(assert (= (and d!1817532 res!2435449) b!5770825))

(assert (= (and b!5770825 res!2435450) b!5770826))

(declare-fun m!6715740 () Bool)

(assert (=> d!1817532 m!6715740))

(declare-fun m!6715742 () Bool)

(assert (=> d!1817532 m!6715742))

(declare-fun m!6715744 () Bool)

(assert (=> d!1817532 m!6715744))

(declare-fun m!6715746 () Bool)

(assert (=> b!5770824 m!6715746))

(declare-fun m!6715748 () Bool)

(assert (=> b!5770825 m!6715748))

(declare-fun m!6715750 () Bool)

(assert (=> b!5770825 m!6715750))

(declare-fun m!6715752 () Bool)

(assert (=> b!5770825 m!6715752))

(assert (=> bm!444349 d!1817532))

(declare-fun d!1817534 () Bool)

(declare-fun c!1020439 () Bool)

(assert (=> d!1817534 (= c!1020439 (isEmpty!35427 (ite c!1020249 s!2326 (ite c!1020242 (t!376992 s!2326) (ite c!1020248 (ite c!1020250 (ite c!1020243 s!2326 (_1!36185 lt!2291010)) lt!2291097) (t!376992 s!2326))))))))

(declare-fun e!3545212 () Bool)

(assert (=> d!1817534 (= (matchZipper!1923 (ite c!1020249 z!1189 (ite c!1020242 ((_ map or) lt!2291179 lt!2291101) (ite c!1020248 (ite c!1020250 (ite c!1020243 z!1189 lt!2291003) (store ((as const (Array Context!10338 Bool)) false) (Context!10339 lt!2291172) true)) lt!2291005))) (ite c!1020249 s!2326 (ite c!1020242 (t!376992 s!2326) (ite c!1020248 (ite c!1020250 (ite c!1020243 s!2326 (_1!36185 lt!2291010)) lt!2291097) (t!376992 s!2326))))) e!3545212)))

(declare-fun b!5770827 () Bool)

(assert (=> b!5770827 (= e!3545212 (nullableZipper!1709 (ite c!1020249 z!1189 (ite c!1020242 ((_ map or) lt!2291179 lt!2291101) (ite c!1020248 (ite c!1020250 (ite c!1020243 z!1189 lt!2291003) (store ((as const (Array Context!10338 Bool)) false) (Context!10339 lt!2291172) true)) lt!2291005)))))))

(declare-fun b!5770828 () Bool)

(assert (=> b!5770828 (= e!3545212 (matchZipper!1923 (derivationStepZipper!1862 (ite c!1020249 z!1189 (ite c!1020242 ((_ map or) lt!2291179 lt!2291101) (ite c!1020248 (ite c!1020250 (ite c!1020243 z!1189 lt!2291003) (store ((as const (Array Context!10338 Bool)) false) (Context!10339 lt!2291172) true)) lt!2291005))) (head!12200 (ite c!1020249 s!2326 (ite c!1020242 (t!376992 s!2326) (ite c!1020248 (ite c!1020250 (ite c!1020243 s!2326 (_1!36185 lt!2291010)) lt!2291097) (t!376992 s!2326)))))) (tail!11295 (ite c!1020249 s!2326 (ite c!1020242 (t!376992 s!2326) (ite c!1020248 (ite c!1020250 (ite c!1020243 s!2326 (_1!36185 lt!2291010)) lt!2291097) (t!376992 s!2326)))))))))

(assert (= (and d!1817534 c!1020439) b!5770827))

(assert (= (and d!1817534 (not c!1020439)) b!5770828))

(declare-fun m!6715754 () Bool)

(assert (=> d!1817534 m!6715754))

(declare-fun m!6715756 () Bool)

(assert (=> b!5770827 m!6715756))

(declare-fun m!6715758 () Bool)

(assert (=> b!5770828 m!6715758))

(assert (=> b!5770828 m!6715758))

(declare-fun m!6715760 () Bool)

(assert (=> b!5770828 m!6715760))

(declare-fun m!6715762 () Bool)

(assert (=> b!5770828 m!6715762))

(assert (=> b!5770828 m!6715760))

(assert (=> b!5770828 m!6715762))

(declare-fun m!6715764 () Bool)

(assert (=> b!5770828 m!6715764))

(assert (=> bm!444431 d!1817534))

(declare-fun d!1817536 () Bool)

(assert (=> d!1817536 (= (isDefined!12497 (ite c!1020242 call!444381 (ite c!1020252 call!444492 (ite c!1020250 lt!2291148 lt!2291004)))) (not (isEmpty!35429 (ite c!1020242 call!444381 (ite c!1020252 call!444492 (ite c!1020250 lt!2291148 lt!2291004))))))))

(declare-fun bs!1353792 () Bool)

(assert (= bs!1353792 d!1817536))

(declare-fun m!6715766 () Bool)

(assert (=> bs!1353792 m!6715766))

(assert (=> bm!444426 d!1817536))

(declare-fun d!1817538 () Bool)

(assert (=> d!1817538 (= (isEmpty!35428 (t!376993 (exprs!5669 (h!69980 zl!343)))) ((_ is Nil!63531) (t!376993 (exprs!5669 (h!69980 zl!343)))))))

(assert (=> b!5770171 d!1817538))

(declare-fun d!1817540 () Bool)

(declare-fun e!3545213 () Bool)

(assert (=> d!1817540 e!3545213))

(declare-fun res!2435455 () Bool)

(assert (=> d!1817540 (=> res!2435455 e!3545213)))

(declare-fun e!3545214 () Bool)

(assert (=> d!1817540 (= res!2435455 e!3545214)))

(declare-fun res!2435451 () Bool)

(assert (=> d!1817540 (=> (not res!2435451) (not e!3545214))))

(declare-fun lt!2291309 () Option!15794)

(assert (=> d!1817540 (= res!2435451 (isDefined!12497 lt!2291309))))

(declare-fun e!3545216 () Option!15794)

(assert (=> d!1817540 (= lt!2291309 e!3545216)))

(declare-fun c!1020440 () Bool)

(declare-fun e!3545215 () Bool)

(assert (=> d!1817540 (= c!1020440 e!3545215)))

(declare-fun res!2435452 () Bool)

(assert (=> d!1817540 (=> (not res!2435452) (not e!3545215))))

(assert (=> d!1817540 (= res!2435452 (matchR!7970 (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 lt!2291100)) Nil!63530))))

(assert (=> d!1817540 (validRegex!7521 (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 lt!2291100)))))

(assert (=> d!1817540 (= (findConcatSeparation!2208 (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 lt!2291100)) (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (regTwo!32082 r!7292))) Nil!63530 s!2326 s!2326) lt!2291309)))

(declare-fun b!5770829 () Bool)

(assert (=> b!5770829 (= e!3545215 (matchR!7970 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (regTwo!32082 r!7292))) s!2326))))

(declare-fun b!5770830 () Bool)

(declare-fun e!3545217 () Option!15794)

(assert (=> b!5770830 (= e!3545217 None!15793)))

(declare-fun b!5770831 () Bool)

(declare-fun res!2435453 () Bool)

(assert (=> b!5770831 (=> (not res!2435453) (not e!3545214))))

(assert (=> b!5770831 (= res!2435453 (matchR!7970 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (regTwo!32082 r!7292))) (_2!36185 (get!21923 lt!2291309))))))

(declare-fun b!5770832 () Bool)

(assert (=> b!5770832 (= e!3545213 (not (isDefined!12497 lt!2291309)))))

(declare-fun b!5770833 () Bool)

(assert (=> b!5770833 (= e!3545216 (Some!15793 (tuple2!65765 Nil!63530 s!2326)))))

(declare-fun b!5770834 () Bool)

(assert (=> b!5770834 (= e!3545214 (= (++!13998 (_1!36185 (get!21923 lt!2291309)) (_2!36185 (get!21923 lt!2291309))) s!2326))))

(declare-fun b!5770835 () Bool)

(declare-fun res!2435454 () Bool)

(assert (=> b!5770835 (=> (not res!2435454) (not e!3545214))))

(assert (=> b!5770835 (= res!2435454 (matchR!7970 (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 lt!2291100)) (_1!36185 (get!21923 lt!2291309))))))

(declare-fun b!5770836 () Bool)

(declare-fun lt!2291311 () Unit!156690)

(declare-fun lt!2291310 () Unit!156690)

(assert (=> b!5770836 (= lt!2291311 lt!2291310)))

(assert (=> b!5770836 (= (++!13998 (++!13998 Nil!63530 (Cons!63530 (h!69978 s!2326) Nil!63530)) (t!376992 s!2326)) s!2326)))

(assert (=> b!5770836 (= lt!2291310 (lemmaMoveElementToOtherListKeepsConcatEq!2113 Nil!63530 (h!69978 s!2326) (t!376992 s!2326) s!2326))))

(assert (=> b!5770836 (= e!3545217 (findConcatSeparation!2208 (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 lt!2291100)) (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (regTwo!32082 r!7292))) (++!13998 Nil!63530 (Cons!63530 (h!69978 s!2326) Nil!63530)) (t!376992 s!2326) s!2326))))

(declare-fun b!5770837 () Bool)

(assert (=> b!5770837 (= e!3545216 e!3545217)))

(declare-fun c!1020441 () Bool)

(assert (=> b!5770837 (= c!1020441 ((_ is Nil!63530) s!2326))))

(assert (= (and d!1817540 res!2435452) b!5770829))

(assert (= (and d!1817540 c!1020440) b!5770833))

(assert (= (and d!1817540 (not c!1020440)) b!5770837))

(assert (= (and b!5770837 c!1020441) b!5770830))

(assert (= (and b!5770837 (not c!1020441)) b!5770836))

(assert (= (and d!1817540 res!2435451) b!5770835))

(assert (= (and b!5770835 res!2435454) b!5770831))

(assert (= (and b!5770831 res!2435453) b!5770834))

(assert (= (and d!1817540 (not res!2435455)) b!5770832))

(assert (=> b!5770836 m!6715028))

(assert (=> b!5770836 m!6715028))

(assert (=> b!5770836 m!6715030))

(assert (=> b!5770836 m!6715032))

(assert (=> b!5770836 m!6715028))

(declare-fun m!6715768 () Bool)

(assert (=> b!5770836 m!6715768))

(declare-fun m!6715770 () Bool)

(assert (=> b!5770835 m!6715770))

(declare-fun m!6715772 () Bool)

(assert (=> b!5770835 m!6715772))

(declare-fun m!6715774 () Bool)

(assert (=> d!1817540 m!6715774))

(declare-fun m!6715776 () Bool)

(assert (=> d!1817540 m!6715776))

(declare-fun m!6715778 () Bool)

(assert (=> d!1817540 m!6715778))

(assert (=> b!5770834 m!6715770))

(declare-fun m!6715780 () Bool)

(assert (=> b!5770834 m!6715780))

(assert (=> b!5770832 m!6715774))

(declare-fun m!6715782 () Bool)

(assert (=> b!5770829 m!6715782))

(assert (=> b!5770831 m!6715770))

(declare-fun m!6715786 () Bool)

(assert (=> b!5770831 m!6715786))

(assert (=> bm!444325 d!1817540))

(declare-fun bs!1353793 () Bool)

(declare-fun d!1817542 () Bool)

(assert (= bs!1353793 (and d!1817542 d!1817368)))

(declare-fun lambda!313771 () Int)

(assert (=> bs!1353793 (= (and (= (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)) (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530)) (= (reg!16114 (regOne!32082 r!7292)) (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292)))))) (= (Star!15785 (reg!16114 (regOne!32082 r!7292))) (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))))) (= lambda!313771 lambda!313721))))

(declare-fun bs!1353794 () Bool)

(assert (= bs!1353794 (and d!1817542 d!1817422)))

(assert (=> bs!1353794 (= (and (= (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)) (ite (or c!1020242 c!1020252 c!1020250) s!2326 (_1!36185 lt!2291163))) (= (reg!16114 (regOne!32082 r!7292)) (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (reg!16114 (regOne!32082 r!7292))))) (= (Star!15785 (reg!16114 (regOne!32082 r!7292))) (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020250 (regTwo!32082 r!7292) lt!2291167))))) (= lambda!313771 lambda!313732))))

(declare-fun bs!1353795 () Bool)

(assert (= bs!1353795 (and d!1817542 b!5770189)))

(assert (=> bs!1353795 (= (and (= (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)) s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))) (= (Star!15785 (reg!16114 (regOne!32082 r!7292))) lt!2291109)) (= lambda!313771 lambda!313684))))

(declare-fun bs!1353796 () Bool)

(assert (= bs!1353796 (and d!1817542 d!1817434)))

(assert (=> bs!1353796 (not (= lambda!313771 lambda!313738))))

(declare-fun bs!1353797 () Bool)

(assert (= bs!1353797 (and d!1817542 b!5770193)))

(assert (=> bs!1353797 (= (and (= (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)) s!2326) (= (reg!16114 (regOne!32082 r!7292)) lt!2291100) (= (Star!15785 (reg!16114 (regOne!32082 r!7292))) (regTwo!32082 r!7292))) (= lambda!313771 lambda!313698))))

(declare-fun bs!1353798 () Bool)

(assert (= bs!1353798 (and d!1817542 d!1817474)))

(assert (=> bs!1353798 (= (and (= (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)) s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regOne!32082 r!7292)) (= (Star!15785 (reg!16114 (regOne!32082 r!7292))) (regTwo!32082 r!7292))) (= lambda!313771 lambda!313751))))

(declare-fun bs!1353799 () Bool)

(assert (= bs!1353799 (and d!1817542 b!5770330)))

(assert (=> bs!1353799 (not (= lambda!313771 lambda!313711))))

(declare-fun bs!1353800 () Bool)

(assert (= bs!1353800 (and d!1817542 b!5770180)))

(assert (=> bs!1353800 (= (and (= (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)) s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regOne!32082 (regOne!32082 r!7292))) (= (Star!15785 (reg!16114 (regOne!32082 r!7292))) lt!2291065)) (= lambda!313771 lambda!313686))))

(assert (=> bs!1353796 (= (and (= (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)) (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163)))) (= (reg!16114 (regOne!32082 r!7292)) (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292)))) (= (Star!15785 (reg!16114 (regOne!32082 r!7292))) (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)))) (= lambda!313771 lambda!313737))))

(declare-fun bs!1353801 () Bool)

(assert (= bs!1353801 (and d!1817542 b!5770173)))

(assert (=> bs!1353801 (= (and (= (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)) Nil!63530) (= (Star!15785 (reg!16114 (regOne!32082 r!7292))) lt!2291167)) (= lambda!313771 lambda!313703))))

(declare-fun bs!1353802 () Bool)

(assert (= bs!1353802 (and d!1817542 b!5770520)))

(assert (=> bs!1353802 (not (= lambda!313771 lambda!313730))))

(assert (=> bs!1353800 (= (and (= (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)) s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regTwo!32082 (regOne!32082 r!7292))) (= (Star!15785 (reg!16114 (regOne!32082 r!7292))) lt!2291002)) (= lambda!313771 lambda!313688))))

(declare-fun bs!1353803 () Bool)

(assert (= bs!1353803 (and d!1817542 b!5770157)))

(assert (=> bs!1353803 (not (= lambda!313771 lambda!313691))))

(declare-fun bs!1353804 () Bool)

(assert (= bs!1353804 (and d!1817542 b!5770770)))

(assert (=> bs!1353804 (not (= lambda!313771 lambda!313763))))

(assert (=> bs!1353800 (not (= lambda!313771 lambda!313687))))

(assert (=> bs!1353801 (not (= lambda!313771 lambda!313704))))

(assert (=> bs!1353793 (not (= lambda!313771 lambda!313722))))

(declare-fun bs!1353805 () Bool)

(assert (= bs!1353805 (and d!1817542 b!5770327)))

(assert (=> bs!1353805 (not (= lambda!313771 lambda!313710))))

(assert (=> bs!1353801 (not (= lambda!313771 lambda!313705))))

(declare-fun bs!1353806 () Bool)

(assert (= bs!1353806 (and d!1817542 d!1817362)))

(assert (=> bs!1353806 (= (and (= (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)) (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530)))) (= (reg!16114 (regOne!32082 r!7292)) (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 (reg!16114 (regOne!32082 r!7292)) (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292)))))) (= (Star!15785 (reg!16114 (regOne!32082 r!7292))) (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite c!1020250 lt!2291167 (ite c!1020244 (regTwo!32082 r!7292) lt!2291167)))))) (= lambda!313771 lambda!313716))))

(assert (=> bs!1353800 (not (= lambda!313771 lambda!313689))))

(assert (=> bs!1353797 (not (= lambda!313771 lambda!313702))))

(declare-fun bs!1353807 () Bool)

(assert (= bs!1353807 (and d!1817542 b!5770366)))

(assert (=> bs!1353807 (not (= lambda!313771 lambda!313712))))

(assert (=> bs!1353797 (= (and (= (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)) (_1!36185 lt!2291163)) (= (Star!15785 (reg!16114 (regOne!32082 r!7292))) lt!2291167)) (= lambda!313771 lambda!313700))))

(declare-fun bs!1353808 () Bool)

(assert (= bs!1353808 (and d!1817542 b!5770369)))

(assert (=> bs!1353808 (not (= lambda!313771 lambda!313713))))

(assert (=> bs!1353798 (not (= lambda!313771 lambda!313752))))

(assert (=> bs!1353803 (= (and (= (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)) s!2326) (= (reg!16114 (regOne!32082 r!7292)) lt!2291167) (= (Star!15785 (reg!16114 (regOne!32082 r!7292))) (regTwo!32082 r!7292))) (= lambda!313771 lambda!313690))))

(declare-fun bs!1353809 () Bool)

(assert (= bs!1353809 (and d!1817542 d!1817472)))

(assert (=> bs!1353809 (= (and (= (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)) s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regOne!32082 r!7292)) (= (Star!15785 (reg!16114 (regOne!32082 r!7292))) (regTwo!32082 r!7292))) (= lambda!313771 lambda!313750))))

(assert (=> bs!1353795 (= (and (= (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)) s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regOne!32082 (regOne!32082 r!7292))) (= (Star!15785 (reg!16114 (regOne!32082 r!7292))) lt!2291182)) (= lambda!313771 lambda!313682))))

(declare-fun bs!1353810 () Bool)

(assert (= bs!1353810 (and d!1817542 b!5770177)))

(assert (=> bs!1353810 (not (= lambda!313771 lambda!313694))))

(assert (=> bs!1353795 (not (= lambda!313771 lambda!313683))))

(assert (=> bs!1353810 (= (and (= (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)) (_1!36185 lt!2291106)) (= (Star!15785 (reg!16114 (regOne!32082 r!7292))) lt!2291167)) (= lambda!313771 lambda!313692))))

(declare-fun bs!1353811 () Bool)

(assert (= bs!1353811 (and d!1817542 b!5770169)))

(assert (=> bs!1353811 (not (= lambda!313771 lambda!313680))))

(declare-fun bs!1353812 () Bool)

(assert (= bs!1353812 (and d!1817542 b!5770523)))

(assert (=> bs!1353812 (not (= lambda!313771 lambda!313731))))

(assert (=> bs!1353797 (not (= lambda!313771 lambda!313701))))

(assert (=> bs!1353797 (not (= lambda!313771 lambda!313699))))

(assert (=> bs!1353810 (not (= lambda!313771 lambda!313693))))

(declare-fun bs!1353813 () Bool)

(assert (= bs!1353813 (and d!1817542 b!5770773)))

(assert (=> bs!1353813 (not (= lambda!313771 lambda!313764))))

(assert (=> bs!1353811 (= (and (= (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)) s!2326) (= (reg!16114 (regOne!32082 r!7292)) (regOne!32082 r!7292)) (= (Star!15785 (reg!16114 (regOne!32082 r!7292))) (regTwo!32082 r!7292))) (= lambda!313771 lambda!313679))))

(assert (=> bs!1353795 (not (= lambda!313771 lambda!313685))))

(assert (=> d!1817542 true))

(assert (=> d!1817542 true))

(declare-fun lambda!313772 () Int)

(assert (=> bs!1353793 (not (= lambda!313772 lambda!313721))))

(assert (=> bs!1353794 (not (= lambda!313772 lambda!313732))))

(assert (=> bs!1353795 (not (= lambda!313772 lambda!313684))))

(assert (=> bs!1353796 (not (= lambda!313772 lambda!313738))))

(assert (=> bs!1353797 (not (= lambda!313772 lambda!313698))))

(assert (=> bs!1353798 (not (= lambda!313772 lambda!313751))))

(assert (=> bs!1353799 (not (= lambda!313772 lambda!313711))))

(assert (=> bs!1353800 (not (= lambda!313772 lambda!313686))))

(assert (=> bs!1353796 (not (= lambda!313772 lambda!313737))))

(assert (=> bs!1353801 (not (= lambda!313772 lambda!313703))))

(assert (=> bs!1353802 (= (and (= (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)) s!2326) (= (reg!16114 (regOne!32082 r!7292)) (reg!16114 lt!2291057)) (= (Star!15785 (reg!16114 (regOne!32082 r!7292))) lt!2291057)) (= lambda!313772 lambda!313730))))

(assert (=> bs!1353800 (not (= lambda!313772 lambda!313688))))

(assert (=> bs!1353803 (not (= lambda!313772 lambda!313691))))

(assert (=> bs!1353804 (= (and (= (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)) s!2326) (= (reg!16114 (regOne!32082 r!7292)) (reg!16114 r!7292)) (= (Star!15785 (reg!16114 (regOne!32082 r!7292))) r!7292)) (= lambda!313772 lambda!313763))))

(assert (=> bs!1353800 (not (= lambda!313772 lambda!313687))))

(assert (=> bs!1353801 (not (= lambda!313772 lambda!313704))))

(assert (=> bs!1353793 (not (= lambda!313772 lambda!313722))))

(assert (=> bs!1353805 (= (and (= (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)) (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530)))) (= (reg!16114 (regOne!32082 r!7292)) (reg!16114 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167))))) (= (Star!15785 (reg!16114 (regOne!32082 r!7292))) (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167))))) (= lambda!313772 lambda!313710))))

(assert (=> bs!1353801 (= (and (= (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)) Nil!63530) (= (Star!15785 (reg!16114 (regOne!32082 r!7292))) lt!2291167)) (= lambda!313772 lambda!313705))))

(declare-fun bs!1353814 () Bool)

(assert (= bs!1353814 d!1817542))

(assert (=> bs!1353814 (not (= lambda!313772 lambda!313771))))

(assert (=> bs!1353806 (not (= lambda!313772 lambda!313716))))

(assert (=> bs!1353800 (not (= lambda!313772 lambda!313689))))

(assert (=> bs!1353797 (= (and (= (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)) (_1!36185 lt!2291163)) (= (Star!15785 (reg!16114 (regOne!32082 r!7292))) lt!2291167)) (= lambda!313772 lambda!313702))))

(assert (=> bs!1353807 (= (and (= (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)) (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (_1!36185 lt!2291163) s!2326))) (= (reg!16114 (regOne!32082 r!7292)) (reg!16114 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292))))))) (= (Star!15785 (reg!16114 (regOne!32082 r!7292))) (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292))))))) (= lambda!313772 lambda!313712))))

(assert (=> bs!1353797 (not (= lambda!313772 lambda!313700))))

(assert (=> bs!1353808 (not (= lambda!313772 lambda!313713))))

(assert (=> bs!1353798 (not (= lambda!313772 lambda!313752))))

(assert (=> bs!1353803 (not (= lambda!313772 lambda!313690))))

(assert (=> bs!1353809 (not (= lambda!313772 lambda!313750))))

(assert (=> bs!1353795 (not (= lambda!313772 lambda!313682))))

(assert (=> bs!1353810 (not (= lambda!313772 lambda!313694))))

(assert (=> bs!1353795 (not (= lambda!313772 lambda!313683))))

(assert (=> bs!1353810 (not (= lambda!313772 lambda!313692))))

(assert (=> bs!1353811 (not (= lambda!313772 lambda!313680))))

(assert (=> bs!1353812 (not (= lambda!313772 lambda!313731))))

(assert (=> bs!1353797 (not (= lambda!313772 lambda!313701))))

(assert (=> bs!1353797 (not (= lambda!313772 lambda!313699))))

(assert (=> bs!1353810 (= (and (= (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)) (_1!36185 lt!2291106)) (= (Star!15785 (reg!16114 (regOne!32082 r!7292))) lt!2291167)) (= lambda!313772 lambda!313693))))

(assert (=> bs!1353813 (not (= lambda!313772 lambda!313764))))

(assert (=> bs!1353811 (not (= lambda!313772 lambda!313679))))

(assert (=> bs!1353795 (not (= lambda!313772 lambda!313685))))

(assert (=> d!1817542 true))

(assert (=> d!1817542 true))

(assert (=> d!1817542 (= (Exists!2885 lambda!313771) (Exists!2885 lambda!313772))))

(declare-fun lt!2291314 () Unit!156690)

(declare-fun choose!43807 (Regex!15785 List!63654) Unit!156690)

(assert (=> d!1817542 (= lt!2291314 (choose!43807 (reg!16114 (regOne!32082 r!7292)) (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530))))))

(assert (=> d!1817542 (validRegex!7521 (reg!16114 (regOne!32082 r!7292)))))

(assert (=> d!1817542 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!566 (reg!16114 (regOne!32082 r!7292)) (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530))) lt!2291314)))

(declare-fun m!6715794 () Bool)

(assert (=> bs!1353814 m!6715794))

(declare-fun m!6715796 () Bool)

(assert (=> bs!1353814 m!6715796))

(declare-fun m!6715798 () Bool)

(assert (=> bs!1353814 m!6715798))

(assert (=> bs!1353814 m!6715088))

(assert (=> bm!444471 d!1817542))

(declare-fun d!1817546 () Bool)

(assert (=> d!1817546 (= (matchR!7970 (ite c!1020247 lt!2291083 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 (ite c!1020250 (ite c!1020243 lt!2291032 (reg!16114 (regOne!32082 r!7292))) (ite c!1020244 (reg!16114 (regOne!32082 r!7292)) lt!2291139)) lt!2290999))))) (ite c!1020247 (t!376992 s!2326) (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (ite c!1020250 (ite c!1020243 s!2326 (_1!36185 lt!2291010)) (ite c!1020244 (_1!36185 lt!2291107) s!2326)) s!2326)))) (matchZipper!1923 (ite c!1020247 lt!2291095 (ite c!1020249 lt!2291146 (ite c!1020242 lt!2290993 (ite c!1020252 lt!2291014 (ite c!1020248 (ite c!1020250 (ite c!1020243 lt!2291030 lt!2291003) (ite c!1020244 lt!2291003 lt!2291054)) lt!2291159))))) (ite c!1020247 (t!376992 s!2326) (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (ite c!1020250 (ite c!1020243 s!2326 (_1!36185 lt!2291010)) (ite c!1020244 (_1!36185 lt!2291107) s!2326)) s!2326)))))))

(declare-fun lt!2291326 () Unit!156690)

(declare-fun choose!43808 ((InoxSet Context!10338) List!63656 Regex!15785 List!63654) Unit!156690)

(assert (=> d!1817546 (= lt!2291326 (choose!43808 (ite c!1020247 lt!2291095 (ite c!1020249 lt!2291146 (ite c!1020242 lt!2290993 (ite c!1020252 lt!2291014 (ite c!1020248 (ite c!1020250 (ite c!1020243 lt!2291030 lt!2291003) (ite c!1020244 lt!2291003 lt!2291054)) lt!2291159))))) (ite c!1020247 (Cons!63532 lt!2291089 Nil!63532) (ite c!1020249 (Cons!63532 lt!2290995 Nil!63532) (ite c!1020242 (Cons!63532 lt!2291008 Nil!63532) (ite c!1020252 (Cons!63532 lt!2291165 Nil!63532) (ite c!1020248 (ite c!1020250 (ite c!1020243 (Cons!63532 lt!2291089 Nil!63532) (Cons!63532 lt!2291103 Nil!63532)) (ite c!1020244 (Cons!63532 lt!2291103 Nil!63532) (Cons!63532 lt!2291089 Nil!63532))) (Cons!63532 lt!2291089 Nil!63532)))))) (ite c!1020247 lt!2291083 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 (ite c!1020250 (ite c!1020243 lt!2291032 (reg!16114 (regOne!32082 r!7292))) (ite c!1020244 (reg!16114 (regOne!32082 r!7292)) lt!2291139)) lt!2290999))))) (ite c!1020247 (t!376992 s!2326) (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (ite c!1020250 (ite c!1020243 s!2326 (_1!36185 lt!2291010)) (ite c!1020244 (_1!36185 lt!2291107) s!2326)) s!2326)))))))

(assert (=> d!1817546 (validRegex!7521 (ite c!1020247 lt!2291083 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 (ite c!1020250 (ite c!1020243 lt!2291032 (reg!16114 (regOne!32082 r!7292))) (ite c!1020244 (reg!16114 (regOne!32082 r!7292)) lt!2291139)) lt!2290999))))))))

(assert (=> d!1817546 (= (theoremZipperRegexEquiv!679 (ite c!1020247 lt!2291095 (ite c!1020249 lt!2291146 (ite c!1020242 lt!2290993 (ite c!1020252 lt!2291014 (ite c!1020248 (ite c!1020250 (ite c!1020243 lt!2291030 lt!2291003) (ite c!1020244 lt!2291003 lt!2291054)) lt!2291159))))) (ite c!1020247 (Cons!63532 lt!2291089 Nil!63532) (ite c!1020249 (Cons!63532 lt!2290995 Nil!63532) (ite c!1020242 (Cons!63532 lt!2291008 Nil!63532) (ite c!1020252 (Cons!63532 lt!2291165 Nil!63532) (ite c!1020248 (ite c!1020250 (ite c!1020243 (Cons!63532 lt!2291089 Nil!63532) (Cons!63532 lt!2291103 Nil!63532)) (ite c!1020244 (Cons!63532 lt!2291103 Nil!63532) (Cons!63532 lt!2291089 Nil!63532))) (Cons!63532 lt!2291089 Nil!63532)))))) (ite c!1020247 lt!2291083 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 (ite c!1020250 (ite c!1020243 lt!2291032 (reg!16114 (regOne!32082 r!7292))) (ite c!1020244 (reg!16114 (regOne!32082 r!7292)) lt!2291139)) lt!2290999))))) (ite c!1020247 (t!376992 s!2326) (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (ite c!1020250 (ite c!1020243 s!2326 (_1!36185 lt!2291010)) (ite c!1020244 (_1!36185 lt!2291107) s!2326)) s!2326)))) lt!2291326)))

(declare-fun bs!1353815 () Bool)

(assert (= bs!1353815 d!1817546))

(declare-fun m!6715800 () Bool)

(assert (=> bs!1353815 m!6715800))

(declare-fun m!6715802 () Bool)

(assert (=> bs!1353815 m!6715802))

(declare-fun m!6715804 () Bool)

(assert (=> bs!1353815 m!6715804))

(declare-fun m!6715806 () Bool)

(assert (=> bs!1353815 m!6715806))

(assert (=> bm!444377 d!1817546))

(declare-fun d!1817548 () Bool)

(assert (=> d!1817548 (= (nullable!5817 (ite c!1020249 (regTwo!32083 (regOne!32082 r!7292)) (regOne!32082 (regOne!32082 r!7292)))) (nullableFct!1855 (ite c!1020249 (regTwo!32083 (regOne!32082 r!7292)) (regOne!32082 (regOne!32082 r!7292)))))))

(declare-fun bs!1353816 () Bool)

(assert (= bs!1353816 d!1817548))

(declare-fun m!6715808 () Bool)

(assert (=> bs!1353816 m!6715808))

(assert (=> bm!444427 d!1817548))

(declare-fun d!1817550 () Bool)

(assert (=> d!1817550 (= (matchR!7970 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 lt!2291050)) (ite (or c!1020249 c!1020242) s!2326 (ite c!1020250 lt!2291088 (_2!36185 lt!2291107)))) (matchZipper!1923 (ite c!1020249 lt!2291006 (ite c!1020242 lt!2291026 lt!2291168)) (ite (or c!1020249 c!1020242) s!2326 (ite c!1020250 lt!2291088 (_2!36185 lt!2291107)))))))

(declare-fun lt!2291327 () Unit!156690)

(assert (=> d!1817550 (= lt!2291327 (choose!43808 (ite c!1020249 lt!2291006 (ite c!1020242 lt!2291026 lt!2291168)) (ite c!1020249 (Cons!63532 lt!2290984 Nil!63532) (ite c!1020242 (Cons!63532 lt!2291007 Nil!63532) (Cons!63532 lt!2291151 Nil!63532))) (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 lt!2291050)) (ite (or c!1020249 c!1020242) s!2326 (ite c!1020250 lt!2291088 (_2!36185 lt!2291107)))))))

(assert (=> d!1817550 (validRegex!7521 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 lt!2291050)))))

(assert (=> d!1817550 (= (theoremZipperRegexEquiv!679 (ite c!1020249 lt!2291006 (ite c!1020242 lt!2291026 lt!2291168)) (ite c!1020249 (Cons!63532 lt!2290984 Nil!63532) (ite c!1020242 (Cons!63532 lt!2291007 Nil!63532) (Cons!63532 lt!2291151 Nil!63532))) (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 lt!2291050)) (ite (or c!1020249 c!1020242) s!2326 (ite c!1020250 lt!2291088 (_2!36185 lt!2291107)))) lt!2291327)))

(declare-fun bs!1353817 () Bool)

(assert (= bs!1353817 d!1817550))

(declare-fun m!6715810 () Bool)

(assert (=> bs!1353817 m!6715810))

(declare-fun m!6715812 () Bool)

(assert (=> bs!1353817 m!6715812))

(declare-fun m!6715814 () Bool)

(assert (=> bs!1353817 m!6715814))

(declare-fun m!6715816 () Bool)

(assert (=> bs!1353817 m!6715816))

(assert (=> bm!444398 d!1817550))

(declare-fun c!1020448 () Bool)

(declare-fun d!1817552 () Bool)

(assert (=> d!1817552 (= c!1020448 (isEmpty!35427 (ite (or c!1020247 c!1020249) (t!376992 s!2326) (ite c!1020242 s!2326 (ite c!1020248 (ite c!1020250 lt!2291118 (ite c!1020244 (_1!36185 lt!2291107) s!2326)) s!2326)))))))

(declare-fun e!3545237 () Bool)

(assert (=> d!1817552 (= (matchZipper!1923 (ite c!1020247 lt!2291095 (ite c!1020249 ((_ map or) lt!2290986 lt!2291005) (ite c!1020242 lt!2291026 (ite c!1020248 (ite c!1020250 (store ((as const (Array Context!10338 Bool)) false) (Context!10339 call!444463) true) (ite c!1020244 lt!2291003 lt!2291054)) lt!2291159)))) (ite (or c!1020247 c!1020249) (t!376992 s!2326) (ite c!1020242 s!2326 (ite c!1020248 (ite c!1020250 lt!2291118 (ite c!1020244 (_1!36185 lt!2291107) s!2326)) s!2326)))) e!3545237)))

(declare-fun b!5770875 () Bool)

(assert (=> b!5770875 (= e!3545237 (nullableZipper!1709 (ite c!1020247 lt!2291095 (ite c!1020249 ((_ map or) lt!2290986 lt!2291005) (ite c!1020242 lt!2291026 (ite c!1020248 (ite c!1020250 (store ((as const (Array Context!10338 Bool)) false) (Context!10339 call!444463) true) (ite c!1020244 lt!2291003 lt!2291054)) lt!2291159))))))))

(declare-fun b!5770876 () Bool)

(assert (=> b!5770876 (= e!3545237 (matchZipper!1923 (derivationStepZipper!1862 (ite c!1020247 lt!2291095 (ite c!1020249 ((_ map or) lt!2290986 lt!2291005) (ite c!1020242 lt!2291026 (ite c!1020248 (ite c!1020250 (store ((as const (Array Context!10338 Bool)) false) (Context!10339 call!444463) true) (ite c!1020244 lt!2291003 lt!2291054)) lt!2291159)))) (head!12200 (ite (or c!1020247 c!1020249) (t!376992 s!2326) (ite c!1020242 s!2326 (ite c!1020248 (ite c!1020250 lt!2291118 (ite c!1020244 (_1!36185 lt!2291107) s!2326)) s!2326))))) (tail!11295 (ite (or c!1020247 c!1020249) (t!376992 s!2326) (ite c!1020242 s!2326 (ite c!1020248 (ite c!1020250 lt!2291118 (ite c!1020244 (_1!36185 lt!2291107) s!2326)) s!2326))))))))

(assert (= (and d!1817552 c!1020448) b!5770875))

(assert (= (and d!1817552 (not c!1020448)) b!5770876))

(declare-fun m!6715818 () Bool)

(assert (=> d!1817552 m!6715818))

(declare-fun m!6715820 () Bool)

(assert (=> b!5770875 m!6715820))

(declare-fun m!6715822 () Bool)

(assert (=> b!5770876 m!6715822))

(assert (=> b!5770876 m!6715822))

(declare-fun m!6715824 () Bool)

(assert (=> b!5770876 m!6715824))

(declare-fun m!6715826 () Bool)

(assert (=> b!5770876 m!6715826))

(assert (=> b!5770876 m!6715824))

(assert (=> b!5770876 m!6715826))

(declare-fun m!6715830 () Bool)

(assert (=> b!5770876 m!6715830))

(assert (=> bm!444295 d!1817552))

(declare-fun d!1817554 () Bool)

(declare-fun e!3545238 () Bool)

(assert (=> d!1817554 (= (matchZipper!1923 ((_ map or) (ite c!1020249 lt!2290986 lt!2291179) (ite c!1020249 lt!2291059 lt!2291101)) (t!376992 s!2326)) e!3545238)))

(declare-fun res!2435481 () Bool)

(assert (=> d!1817554 (=> res!2435481 e!3545238)))

(assert (=> d!1817554 (= res!2435481 (matchZipper!1923 (ite c!1020249 lt!2290986 lt!2291179) (t!376992 s!2326)))))

(declare-fun lt!2291328 () Unit!156690)

(assert (=> d!1817554 (= lt!2291328 (choose!43777 (ite c!1020249 lt!2290986 lt!2291179) (ite c!1020249 lt!2291059 lt!2291101) (t!376992 s!2326)))))

(assert (=> d!1817554 (= (lemmaZipperConcatMatchesSameAsBothZippers!810 (ite c!1020249 lt!2290986 lt!2291179) (ite c!1020249 lt!2291059 lt!2291101) (t!376992 s!2326)) lt!2291328)))

(declare-fun b!5770877 () Bool)

(assert (=> b!5770877 (= e!3545238 (matchZipper!1923 (ite c!1020249 lt!2291059 lt!2291101) (t!376992 s!2326)))))

(assert (= (and d!1817554 (not res!2435481)) b!5770877))

(declare-fun m!6715840 () Bool)

(assert (=> d!1817554 m!6715840))

(declare-fun m!6715842 () Bool)

(assert (=> d!1817554 m!6715842))

(declare-fun m!6715844 () Bool)

(assert (=> d!1817554 m!6715844))

(declare-fun m!6715846 () Bool)

(assert (=> b!5770877 m!6715846))

(assert (=> bm!444381 d!1817554))

(declare-fun d!1817556 () Bool)

(assert (=> d!1817556 (= (get!21923 (ite c!1020250 lt!2291112 lt!2291087)) (v!51852 (ite c!1020250 lt!2291112 lt!2291087)))))

(assert (=> bm!444294 d!1817556))

(declare-fun bm!444557 () Bool)

(declare-fun call!444562 () Bool)

(assert (=> bm!444557 (= call!444562 (isEmpty!35427 (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (ite c!1020250 (_1!36185 lt!2291010) (ite c!1020244 (_2!36185 lt!2291107) s!2326)) s!2326))))))

(declare-fun b!5770879 () Bool)

(declare-fun e!3545243 () Bool)

(declare-fun lt!2291329 () Bool)

(assert (=> b!5770879 (= e!3545243 (not lt!2291329))))

(declare-fun b!5770880 () Bool)

(declare-fun e!3545242 () Bool)

(declare-fun e!3545240 () Bool)

(assert (=> b!5770880 (= e!3545242 e!3545240)))

(declare-fun res!2435486 () Bool)

(assert (=> b!5770880 (=> res!2435486 e!3545240)))

(assert (=> b!5770880 (= res!2435486 call!444562)))

(declare-fun b!5770881 () Bool)

(declare-fun res!2435482 () Bool)

(assert (=> b!5770881 (=> res!2435482 e!3545240)))

(assert (=> b!5770881 (= res!2435482 (not (isEmpty!35427 (tail!11295 (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (ite c!1020250 (_1!36185 lt!2291010) (ite c!1020244 (_2!36185 lt!2291107) s!2326)) s!2326))))))))

(declare-fun e!3545241 () Bool)

(declare-fun b!5770882 () Bool)

(assert (=> b!5770882 (= e!3545241 (matchR!7970 (derivativeStep!4563 (ite c!1020249 lt!2291057 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 (ite c!1020250 (reg!16114 (regOne!32082 r!7292)) (ite c!1020244 lt!2291050 lt!2291139)) lt!2290999)))) (head!12200 (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (ite c!1020250 (_1!36185 lt!2291010) (ite c!1020244 (_2!36185 lt!2291107) s!2326)) s!2326)))) (tail!11295 (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (ite c!1020250 (_1!36185 lt!2291010) (ite c!1020244 (_2!36185 lt!2291107) s!2326)) s!2326)))))))

(declare-fun b!5770883 () Bool)

(declare-fun e!3545245 () Bool)

(assert (=> b!5770883 (= e!3545245 e!3545242)))

(declare-fun res!2435488 () Bool)

(assert (=> b!5770883 (=> (not res!2435488) (not e!3545242))))

(assert (=> b!5770883 (= res!2435488 (not lt!2291329))))

(declare-fun b!5770884 () Bool)

(declare-fun res!2435485 () Bool)

(assert (=> b!5770884 (=> res!2435485 e!3545245)))

(declare-fun e!3545244 () Bool)

(assert (=> b!5770884 (= res!2435485 e!3545244)))

(declare-fun res!2435489 () Bool)

(assert (=> b!5770884 (=> (not res!2435489) (not e!3545244))))

(assert (=> b!5770884 (= res!2435489 lt!2291329)))

(declare-fun b!5770885 () Bool)

(declare-fun res!2435483 () Bool)

(assert (=> b!5770885 (=> res!2435483 e!3545245)))

(assert (=> b!5770885 (= res!2435483 (not ((_ is ElementMatch!15785) (ite c!1020249 lt!2291057 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 (ite c!1020250 (reg!16114 (regOne!32082 r!7292)) (ite c!1020244 lt!2291050 lt!2291139)) lt!2290999)))))))))

(assert (=> b!5770885 (= e!3545243 e!3545245)))

(declare-fun b!5770878 () Bool)

(assert (=> b!5770878 (= e!3545240 (not (= (head!12200 (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (ite c!1020250 (_1!36185 lt!2291010) (ite c!1020244 (_2!36185 lt!2291107) s!2326)) s!2326))) (c!1020255 (ite c!1020249 lt!2291057 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 (ite c!1020250 (reg!16114 (regOne!32082 r!7292)) (ite c!1020244 lt!2291050 lt!2291139)) lt!2290999))))))))))

(declare-fun d!1817558 () Bool)

(declare-fun e!3545239 () Bool)

(assert (=> d!1817558 e!3545239))

(declare-fun c!1020451 () Bool)

(assert (=> d!1817558 (= c!1020451 ((_ is EmptyExpr!15785) (ite c!1020249 lt!2291057 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 (ite c!1020250 (reg!16114 (regOne!32082 r!7292)) (ite c!1020244 lt!2291050 lt!2291139)) lt!2290999))))))))

(assert (=> d!1817558 (= lt!2291329 e!3545241)))

(declare-fun c!1020450 () Bool)

(assert (=> d!1817558 (= c!1020450 (isEmpty!35427 (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (ite c!1020250 (_1!36185 lt!2291010) (ite c!1020244 (_2!36185 lt!2291107) s!2326)) s!2326))))))

(assert (=> d!1817558 (validRegex!7521 (ite c!1020249 lt!2291057 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 (ite c!1020250 (reg!16114 (regOne!32082 r!7292)) (ite c!1020244 lt!2291050 lt!2291139)) lt!2290999)))))))

(assert (=> d!1817558 (= (matchR!7970 (ite c!1020249 lt!2291057 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 (ite c!1020250 (reg!16114 (regOne!32082 r!7292)) (ite c!1020244 lt!2291050 lt!2291139)) lt!2290999)))) (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (ite c!1020250 (_1!36185 lt!2291010) (ite c!1020244 (_2!36185 lt!2291107) s!2326)) s!2326))) lt!2291329)))

(declare-fun b!5770886 () Bool)

(assert (=> b!5770886 (= e!3545239 e!3545243)))

(declare-fun c!1020449 () Bool)

(assert (=> b!5770886 (= c!1020449 ((_ is EmptyLang!15785) (ite c!1020249 lt!2291057 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 (ite c!1020250 (reg!16114 (regOne!32082 r!7292)) (ite c!1020244 lt!2291050 lt!2291139)) lt!2290999))))))))

(declare-fun b!5770887 () Bool)

(assert (=> b!5770887 (= e!3545241 (nullable!5817 (ite c!1020249 lt!2291057 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 (ite c!1020250 (reg!16114 (regOne!32082 r!7292)) (ite c!1020244 lt!2291050 lt!2291139)) lt!2290999))))))))

(declare-fun b!5770888 () Bool)

(declare-fun res!2435487 () Bool)

(assert (=> b!5770888 (=> (not res!2435487) (not e!3545244))))

(assert (=> b!5770888 (= res!2435487 (isEmpty!35427 (tail!11295 (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (ite c!1020250 (_1!36185 lt!2291010) (ite c!1020244 (_2!36185 lt!2291107) s!2326)) s!2326)))))))

(declare-fun b!5770889 () Bool)

(assert (=> b!5770889 (= e!3545244 (= (head!12200 (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (ite c!1020250 (_1!36185 lt!2291010) (ite c!1020244 (_2!36185 lt!2291107) s!2326)) s!2326))) (c!1020255 (ite c!1020249 lt!2291057 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 (ite c!1020250 (reg!16114 (regOne!32082 r!7292)) (ite c!1020244 lt!2291050 lt!2291139)) lt!2290999)))))))))

(declare-fun b!5770890 () Bool)

(declare-fun res!2435484 () Bool)

(assert (=> b!5770890 (=> (not res!2435484) (not e!3545244))))

(assert (=> b!5770890 (= res!2435484 (not call!444562))))

(declare-fun b!5770891 () Bool)

(assert (=> b!5770891 (= e!3545239 (= lt!2291329 call!444562))))

(assert (= (and d!1817558 c!1020450) b!5770887))

(assert (= (and d!1817558 (not c!1020450)) b!5770882))

(assert (= (and d!1817558 c!1020451) b!5770891))

(assert (= (and d!1817558 (not c!1020451)) b!5770886))

(assert (= (and b!5770886 c!1020449) b!5770879))

(assert (= (and b!5770886 (not c!1020449)) b!5770885))

(assert (= (and b!5770885 (not res!2435483)) b!5770884))

(assert (= (and b!5770884 res!2435489) b!5770890))

(assert (= (and b!5770890 res!2435484) b!5770888))

(assert (= (and b!5770888 res!2435487) b!5770889))

(assert (= (and b!5770884 (not res!2435485)) b!5770883))

(assert (= (and b!5770883 res!2435488) b!5770880))

(assert (= (and b!5770880 (not res!2435486)) b!5770881))

(assert (= (and b!5770881 (not res!2435482)) b!5770878))

(assert (= (or b!5770891 b!5770880 b!5770890) bm!444557))

(declare-fun m!6715862 () Bool)

(assert (=> bm!444557 m!6715862))

(declare-fun m!6715864 () Bool)

(assert (=> b!5770878 m!6715864))

(declare-fun m!6715866 () Bool)

(assert (=> b!5770888 m!6715866))

(assert (=> b!5770888 m!6715866))

(declare-fun m!6715868 () Bool)

(assert (=> b!5770888 m!6715868))

(declare-fun m!6715870 () Bool)

(assert (=> b!5770887 m!6715870))

(assert (=> b!5770882 m!6715864))

(assert (=> b!5770882 m!6715864))

(declare-fun m!6715872 () Bool)

(assert (=> b!5770882 m!6715872))

(assert (=> b!5770882 m!6715866))

(assert (=> b!5770882 m!6715872))

(assert (=> b!5770882 m!6715866))

(declare-fun m!6715874 () Bool)

(assert (=> b!5770882 m!6715874))

(assert (=> b!5770889 m!6715864))

(assert (=> b!5770881 m!6715866))

(assert (=> b!5770881 m!6715866))

(assert (=> b!5770881 m!6715868))

(assert (=> d!1817558 m!6715862))

(declare-fun m!6715876 () Bool)

(assert (=> d!1817558 m!6715876))

(assert (=> bm!444458 d!1817558))

(assert (=> bm!444421 d!1817378))

(declare-fun b!5770892 () Bool)

(declare-fun e!3545247 () Bool)

(assert (=> b!5770892 (= e!3545247 (nullable!5817 (regOne!32082 (ite c!1020249 (regTwo!32083 (regOne!32082 r!7292)) (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292)))))))))

(declare-fun b!5770893 () Bool)

(declare-fun e!3545250 () (InoxSet Context!10338))

(declare-fun call!444567 () (InoxSet Context!10338))

(assert (=> b!5770893 (= e!3545250 call!444567)))

(declare-fun bm!444558 () Bool)

(declare-fun call!444564 () (InoxSet Context!10338))

(declare-fun call!444565 () (InoxSet Context!10338))

(assert (=> bm!444558 (= call!444564 call!444565)))

(declare-fun b!5770894 () Bool)

(declare-fun e!3545246 () (InoxSet Context!10338))

(declare-fun call!444568 () (InoxSet Context!10338))

(assert (=> b!5770894 (= e!3545246 ((_ map or) call!444568 call!444564))))

(declare-fun bm!444559 () Bool)

(assert (=> bm!444559 (= call!444567 call!444564)))

(declare-fun b!5770895 () Bool)

(declare-fun e!3545248 () (InoxSet Context!10338))

(assert (=> b!5770895 (= e!3545248 ((_ map or) call!444568 call!444565))))

(declare-fun c!1020455 () Bool)

(declare-fun call!444566 () List!63655)

(declare-fun bm!444560 () Bool)

(assert (=> bm!444560 (= call!444568 (derivationStepZipperDown!1127 (ite c!1020455 (regOne!32083 (ite c!1020249 (regTwo!32083 (regOne!32082 r!7292)) (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))))) (regOne!32082 (ite c!1020249 (regTwo!32083 (regOne!32082 r!7292)) (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292)))))) (ite c!1020455 (ite c!1020249 lt!2291089 (ite c!1020242 lt!2291007 (ite c!1020252 (Context!10339 lt!2291096) lt!2291151))) (Context!10339 call!444566)) (h!69978 s!2326)))))

(declare-fun c!1020452 () Bool)

(declare-fun c!1020453 () Bool)

(declare-fun bm!444561 () Bool)

(assert (=> bm!444561 (= call!444566 ($colon$colon!1777 (exprs!5669 (ite c!1020249 lt!2291089 (ite c!1020242 lt!2291007 (ite c!1020252 (Context!10339 lt!2291096) lt!2291151)))) (ite (or c!1020452 c!1020453) (regTwo!32082 (ite c!1020249 (regTwo!32083 (regOne!32082 r!7292)) (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))))) (ite c!1020249 (regTwo!32083 (regOne!32082 r!7292)) (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292)))))))))

(declare-fun b!5770897 () Bool)

(assert (=> b!5770897 (= e!3545246 e!3545250)))

(assert (=> b!5770897 (= c!1020453 ((_ is Concat!24630) (ite c!1020249 (regTwo!32083 (regOne!32082 r!7292)) (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))))))))

(declare-fun b!5770898 () Bool)

(assert (=> b!5770898 (= c!1020452 e!3545247)))

(declare-fun res!2435490 () Bool)

(assert (=> b!5770898 (=> (not res!2435490) (not e!3545247))))

(assert (=> b!5770898 (= res!2435490 ((_ is Concat!24630) (ite c!1020249 (regTwo!32083 (regOne!32082 r!7292)) (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))))))))

(assert (=> b!5770898 (= e!3545248 e!3545246)))

(declare-fun c!1020456 () Bool)

(declare-fun b!5770896 () Bool)

(assert (=> b!5770896 (= c!1020456 ((_ is Star!15785) (ite c!1020249 (regTwo!32083 (regOne!32082 r!7292)) (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))))))))

(declare-fun e!3545249 () (InoxSet Context!10338))

(assert (=> b!5770896 (= e!3545250 e!3545249)))

(declare-fun d!1817562 () Bool)

(declare-fun c!1020454 () Bool)

(assert (=> d!1817562 (= c!1020454 (and ((_ is ElementMatch!15785) (ite c!1020249 (regTwo!32083 (regOne!32082 r!7292)) (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))))) (= (c!1020255 (ite c!1020249 (regTwo!32083 (regOne!32082 r!7292)) (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))))) (h!69978 s!2326))))))

(declare-fun e!3545251 () (InoxSet Context!10338))

(assert (=> d!1817562 (= (derivationStepZipperDown!1127 (ite c!1020249 (regTwo!32083 (regOne!32082 r!7292)) (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292)))) (ite c!1020249 lt!2291089 (ite c!1020242 lt!2291007 (ite c!1020252 (Context!10339 lt!2291096) lt!2291151))) (h!69978 s!2326)) e!3545251)))

(declare-fun bm!444562 () Bool)

(declare-fun call!444563 () List!63655)

(assert (=> bm!444562 (= call!444563 call!444566)))

(declare-fun b!5770899 () Bool)

(assert (=> b!5770899 (= e!3545251 (store ((as const (Array Context!10338 Bool)) false) (ite c!1020249 lt!2291089 (ite c!1020242 lt!2291007 (ite c!1020252 (Context!10339 lt!2291096) lt!2291151))) true))))

(declare-fun b!5770900 () Bool)

(assert (=> b!5770900 (= e!3545251 e!3545248)))

(assert (=> b!5770900 (= c!1020455 ((_ is Union!15785) (ite c!1020249 (regTwo!32083 (regOne!32082 r!7292)) (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))))))))

(declare-fun b!5770901 () Bool)

(assert (=> b!5770901 (= e!3545249 call!444567)))

(declare-fun b!5770902 () Bool)

(assert (=> b!5770902 (= e!3545249 ((as const (Array Context!10338 Bool)) false))))

(declare-fun bm!444563 () Bool)

(assert (=> bm!444563 (= call!444565 (derivationStepZipperDown!1127 (ite c!1020455 (regTwo!32083 (ite c!1020249 (regTwo!32083 (regOne!32082 r!7292)) (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))))) (ite c!1020452 (regTwo!32082 (ite c!1020249 (regTwo!32083 (regOne!32082 r!7292)) (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))))) (ite c!1020453 (regOne!32082 (ite c!1020249 (regTwo!32083 (regOne!32082 r!7292)) (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))))) (reg!16114 (ite c!1020249 (regTwo!32083 (regOne!32082 r!7292)) (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292)))))))) (ite (or c!1020455 c!1020452) (ite c!1020249 lt!2291089 (ite c!1020242 lt!2291007 (ite c!1020252 (Context!10339 lt!2291096) lt!2291151))) (Context!10339 call!444563)) (h!69978 s!2326)))))

(assert (= (and d!1817562 c!1020454) b!5770899))

(assert (= (and d!1817562 (not c!1020454)) b!5770900))

(assert (= (and b!5770900 c!1020455) b!5770895))

(assert (= (and b!5770900 (not c!1020455)) b!5770898))

(assert (= (and b!5770898 res!2435490) b!5770892))

(assert (= (and b!5770898 c!1020452) b!5770894))

(assert (= (and b!5770898 (not c!1020452)) b!5770897))

(assert (= (and b!5770897 c!1020453) b!5770893))

(assert (= (and b!5770897 (not c!1020453)) b!5770896))

(assert (= (and b!5770896 c!1020456) b!5770901))

(assert (= (and b!5770896 (not c!1020456)) b!5770902))

(assert (= (or b!5770893 b!5770901) bm!444562))

(assert (= (or b!5770893 b!5770901) bm!444559))

(assert (= (or b!5770894 bm!444562) bm!444561))

(assert (= (or b!5770894 bm!444559) bm!444558))

(assert (= (or b!5770895 bm!444558) bm!444563))

(assert (= (or b!5770895 b!5770894) bm!444560))

(declare-fun m!6715878 () Bool)

(assert (=> bm!444561 m!6715878))

(declare-fun m!6715880 () Bool)

(assert (=> b!5770892 m!6715880))

(declare-fun m!6715882 () Bool)

(assert (=> bm!444560 m!6715882))

(declare-fun m!6715884 () Bool)

(assert (=> b!5770899 m!6715884))

(declare-fun m!6715886 () Bool)

(assert (=> bm!444563 m!6715886))

(assert (=> bm!444407 d!1817562))

(declare-fun d!1817564 () Bool)

(declare-fun e!3545253 () Bool)

(assert (=> d!1817564 e!3545253))

(declare-fun res!2435491 () Bool)

(assert (=> d!1817564 (=> (not res!2435491) (not e!3545253))))

(declare-fun lt!2291330 () List!63654)

(assert (=> d!1817564 (= res!2435491 (= (content!11600 lt!2291330) ((_ map or) (content!11600 (ite c!1020250 lt!2291176 (_1!36185 lt!2291169))) (content!11600 (ite c!1020250 (_2!36185 lt!2291106) lt!2291012)))))))

(declare-fun e!3545252 () List!63654)

(assert (=> d!1817564 (= lt!2291330 e!3545252)))

(declare-fun c!1020457 () Bool)

(assert (=> d!1817564 (= c!1020457 ((_ is Nil!63530) (ite c!1020250 lt!2291176 (_1!36185 lt!2291169))))))

(assert (=> d!1817564 (= (++!13998 (ite c!1020250 lt!2291176 (_1!36185 lt!2291169)) (ite c!1020250 (_2!36185 lt!2291106) lt!2291012)) lt!2291330)))

(declare-fun b!5770903 () Bool)

(assert (=> b!5770903 (= e!3545252 (ite c!1020250 (_2!36185 lt!2291106) lt!2291012))))

(declare-fun b!5770905 () Bool)

(declare-fun res!2435492 () Bool)

(assert (=> b!5770905 (=> (not res!2435492) (not e!3545253))))

(assert (=> b!5770905 (= res!2435492 (= (size!40078 lt!2291330) (+ (size!40078 (ite c!1020250 lt!2291176 (_1!36185 lt!2291169))) (size!40078 (ite c!1020250 (_2!36185 lt!2291106) lt!2291012)))))))

(declare-fun b!5770906 () Bool)

(assert (=> b!5770906 (= e!3545253 (or (not (= (ite c!1020250 (_2!36185 lt!2291106) lt!2291012) Nil!63530)) (= lt!2291330 (ite c!1020250 lt!2291176 (_1!36185 lt!2291169)))))))

(declare-fun b!5770904 () Bool)

(assert (=> b!5770904 (= e!3545252 (Cons!63530 (h!69978 (ite c!1020250 lt!2291176 (_1!36185 lt!2291169))) (++!13998 (t!376992 (ite c!1020250 lt!2291176 (_1!36185 lt!2291169))) (ite c!1020250 (_2!36185 lt!2291106) lt!2291012))))))

(assert (= (and d!1817564 c!1020457) b!5770903))

(assert (= (and d!1817564 (not c!1020457)) b!5770904))

(assert (= (and d!1817564 res!2435491) b!5770905))

(assert (= (and b!5770905 res!2435492) b!5770906))

(declare-fun m!6715888 () Bool)

(assert (=> d!1817564 m!6715888))

(declare-fun m!6715890 () Bool)

(assert (=> d!1817564 m!6715890))

(declare-fun m!6715892 () Bool)

(assert (=> d!1817564 m!6715892))

(declare-fun m!6715894 () Bool)

(assert (=> b!5770905 m!6715894))

(declare-fun m!6715896 () Bool)

(assert (=> b!5770905 m!6715896))

(declare-fun m!6715898 () Bool)

(assert (=> b!5770905 m!6715898))

(declare-fun m!6715900 () Bool)

(assert (=> b!5770904 m!6715900))

(assert (=> bm!444290 d!1817564))

(declare-fun d!1817566 () Bool)

(assert (=> d!1817566 (= (flatMap!1398 (ite c!1020249 lt!2291146 (ite c!1020242 lt!2291026 (ite c!1020248 lt!2291003 lt!2291159))) (ite c!1020249 lambda!313681 (ite c!1020242 lambda!313681 (ite c!1020248 lambda!313681 lambda!313681)))) (choose!43788 (ite c!1020249 lt!2291146 (ite c!1020242 lt!2291026 (ite c!1020248 lt!2291003 lt!2291159))) (ite c!1020249 lambda!313681 (ite c!1020242 lambda!313681 (ite c!1020248 lambda!313681 lambda!313681)))))))

(declare-fun bs!1353818 () Bool)

(assert (= bs!1353818 d!1817566))

(declare-fun m!6715902 () Bool)

(assert (=> bs!1353818 m!6715902))

(assert (=> bm!444482 d!1817566))

(declare-fun d!1817568 () Bool)

(assert (=> d!1817568 (= (Exists!2885 (ite c!1020242 lambda!313682 (ite c!1020252 lambda!313688 (ite c!1020250 lambda!313692 (ite c!1020244 lambda!313701 lambda!313703))))) (choose!43778 (ite c!1020242 lambda!313682 (ite c!1020252 lambda!313688 (ite c!1020250 lambda!313692 (ite c!1020244 lambda!313701 lambda!313703))))))))

(declare-fun bs!1353819 () Bool)

(assert (= bs!1353819 d!1817568))

(declare-fun m!6715904 () Bool)

(assert (=> bs!1353819 m!6715904))

(assert (=> bm!444289 d!1817568))

(declare-fun d!1817570 () Bool)

(assert (=> d!1817570 (not (matchZipper!1923 lt!2290998 (t!376992 s!2326)))))

(declare-fun lt!2291333 () Unit!156690)

(declare-fun choose!43814 ((InoxSet Context!10338) List!63654) Unit!156690)

(assert (=> d!1817570 (= lt!2291333 (choose!43814 lt!2290998 (t!376992 s!2326)))))

(assert (=> d!1817570 (= lt!2290998 ((as const (Array Context!10338 Bool)) false))))

(assert (=> d!1817570 (= (lemmaEmptyZipperMatchesNothing!70 lt!2290998 (t!376992 s!2326)) lt!2291333)))

(declare-fun bs!1353820 () Bool)

(assert (= bs!1353820 d!1817570))

(assert (=> bs!1353820 m!6714922))

(declare-fun m!6715906 () Bool)

(assert (=> bs!1353820 m!6715906))

(assert (=> bm!444453 d!1817570))

(declare-fun d!1817572 () Bool)

(assert (=> d!1817572 (= (Exists!2885 (ite c!1020242 lambda!313684 (ite c!1020252 lambda!313689 (ite c!1020250 lambda!313694 lambda!313699)))) (choose!43778 (ite c!1020242 lambda!313684 (ite c!1020252 lambda!313689 (ite c!1020250 lambda!313694 lambda!313699)))))))

(declare-fun bs!1353821 () Bool)

(assert (= bs!1353821 d!1817572))

(declare-fun m!6715908 () Bool)

(assert (=> bs!1353821 m!6715908))

(assert (=> bm!444292 d!1817572))

(declare-fun d!1817574 () Bool)

(declare-fun c!1020458 () Bool)

(assert (=> d!1817574 (= c!1020458 (isEmpty!35427 (ite c!1020249 (t!376992 s!2326) s!2326)))))

(declare-fun e!3545254 () Bool)

(assert (=> d!1817574 (= (matchZipper!1923 (ite c!1020249 lt!2291005 lt!2290993) (ite c!1020249 (t!376992 s!2326) s!2326)) e!3545254)))

(declare-fun b!5770907 () Bool)

(assert (=> b!5770907 (= e!3545254 (nullableZipper!1709 (ite c!1020249 lt!2291005 lt!2290993)))))

(declare-fun b!5770908 () Bool)

(assert (=> b!5770908 (= e!3545254 (matchZipper!1923 (derivationStepZipper!1862 (ite c!1020249 lt!2291005 lt!2290993) (head!12200 (ite c!1020249 (t!376992 s!2326) s!2326))) (tail!11295 (ite c!1020249 (t!376992 s!2326) s!2326))))))

(assert (= (and d!1817574 c!1020458) b!5770907))

(assert (= (and d!1817574 (not c!1020458)) b!5770908))

(declare-fun m!6715910 () Bool)

(assert (=> d!1817574 m!6715910))

(declare-fun m!6715912 () Bool)

(assert (=> b!5770907 m!6715912))

(declare-fun m!6715914 () Bool)

(assert (=> b!5770908 m!6715914))

(assert (=> b!5770908 m!6715914))

(declare-fun m!6715916 () Bool)

(assert (=> b!5770908 m!6715916))

(declare-fun m!6715918 () Bool)

(assert (=> b!5770908 m!6715918))

(assert (=> b!5770908 m!6715916))

(assert (=> b!5770908 m!6715918))

(declare-fun m!6715920 () Bool)

(assert (=> b!5770908 m!6715920))

(assert (=> bm!444440 d!1817574))

(declare-fun d!1817576 () Bool)

(declare-fun e!3545255 () Bool)

(assert (=> d!1817576 e!3545255))

(declare-fun res!2435497 () Bool)

(assert (=> d!1817576 (=> res!2435497 e!3545255)))

(declare-fun e!3545256 () Bool)

(assert (=> d!1817576 (= res!2435497 e!3545256)))

(declare-fun res!2435493 () Bool)

(assert (=> d!1817576 (=> (not res!2435493) (not e!3545256))))

(declare-fun lt!2291334 () Option!15794)

(assert (=> d!1817576 (= res!2435493 (isDefined!12497 lt!2291334))))

(declare-fun e!3545258 () Option!15794)

(assert (=> d!1817576 (= lt!2291334 e!3545258)))

(declare-fun c!1020459 () Bool)

(declare-fun e!3545257 () Bool)

(assert (=> d!1817576 (= c!1020459 e!3545257)))

(declare-fun res!2435494 () Bool)

(assert (=> d!1817576 (=> (not res!2435494) (not e!3545257))))

(assert (=> d!1817576 (= res!2435494 (matchR!7970 (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) Nil!63530))))

(assert (=> d!1817576 (validRegex!7521 (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))))))

(assert (=> d!1817576 (= (findConcatSeparation!2208 (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 lt!2291167)) Nil!63530 (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530))) (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)))) lt!2291334)))

(declare-fun b!5770909 () Bool)

(assert (=> b!5770909 (= e!3545257 (matchR!7970 (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 lt!2291167)) (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)))))))

(declare-fun b!5770910 () Bool)

(declare-fun e!3545259 () Option!15794)

(assert (=> b!5770910 (= e!3545259 None!15793)))

(declare-fun b!5770911 () Bool)

(declare-fun res!2435495 () Bool)

(assert (=> b!5770911 (=> (not res!2435495) (not e!3545256))))

(assert (=> b!5770911 (= res!2435495 (matchR!7970 (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 lt!2291167)) (_2!36185 (get!21923 lt!2291334))))))

(declare-fun b!5770912 () Bool)

(assert (=> b!5770912 (= e!3545255 (not (isDefined!12497 lt!2291334)))))

(declare-fun b!5770913 () Bool)

(assert (=> b!5770913 (= e!3545258 (Some!15793 (tuple2!65765 Nil!63530 (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530))))))))

(declare-fun b!5770914 () Bool)

(assert (=> b!5770914 (= e!3545256 (= (++!13998 (_1!36185 (get!21923 lt!2291334)) (_2!36185 (get!21923 lt!2291334))) (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)))))))

(declare-fun b!5770915 () Bool)

(declare-fun res!2435496 () Bool)

(assert (=> b!5770915 (=> (not res!2435496) (not e!3545256))))

(assert (=> b!5770915 (= res!2435496 (matchR!7970 (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (_1!36185 (get!21923 lt!2291334))))))

(declare-fun b!5770916 () Bool)

(declare-fun lt!2291336 () Unit!156690)

(declare-fun lt!2291335 () Unit!156690)

(assert (=> b!5770916 (= lt!2291336 lt!2291335)))

(assert (=> b!5770916 (= (++!13998 (++!13998 Nil!63530 (Cons!63530 (h!69978 (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)))) Nil!63530)) (t!376992 (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530))))) (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530))))))

(assert (=> b!5770916 (= lt!2291335 (lemmaMoveElementToOtherListKeepsConcatEq!2113 Nil!63530 (h!69978 (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)))) (t!376992 (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)))) (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)))))))

(assert (=> b!5770916 (= e!3545259 (findConcatSeparation!2208 (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292))) (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 lt!2291167)) (++!13998 Nil!63530 (Cons!63530 (h!69978 (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)))) Nil!63530)) (t!376992 (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)))) (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)))))))

(declare-fun b!5770917 () Bool)

(assert (=> b!5770917 (= e!3545258 e!3545259)))

(declare-fun c!1020460 () Bool)

(assert (=> b!5770917 (= c!1020460 ((_ is Nil!63530) (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530)))))))

(assert (= (and d!1817576 res!2435494) b!5770909))

(assert (= (and d!1817576 c!1020459) b!5770913))

(assert (= (and d!1817576 (not c!1020459)) b!5770917))

(assert (= (and b!5770917 c!1020460) b!5770910))

(assert (= (and b!5770917 (not c!1020460)) b!5770916))

(assert (= (and d!1817576 res!2435493) b!5770915))

(assert (= (and b!5770915 res!2435496) b!5770911))

(assert (= (and b!5770911 res!2435495) b!5770914))

(assert (= (and d!1817576 (not res!2435497)) b!5770912))

(declare-fun m!6715922 () Bool)

(assert (=> b!5770916 m!6715922))

(assert (=> b!5770916 m!6715922))

(declare-fun m!6715924 () Bool)

(assert (=> b!5770916 m!6715924))

(declare-fun m!6715926 () Bool)

(assert (=> b!5770916 m!6715926))

(assert (=> b!5770916 m!6715922))

(declare-fun m!6715928 () Bool)

(assert (=> b!5770916 m!6715928))

(declare-fun m!6715930 () Bool)

(assert (=> b!5770915 m!6715930))

(declare-fun m!6715932 () Bool)

(assert (=> b!5770915 m!6715932))

(declare-fun m!6715934 () Bool)

(assert (=> d!1817576 m!6715934))

(declare-fun m!6715936 () Bool)

(assert (=> d!1817576 m!6715936))

(declare-fun m!6715938 () Bool)

(assert (=> d!1817576 m!6715938))

(assert (=> b!5770914 m!6715930))

(declare-fun m!6715940 () Bool)

(assert (=> b!5770914 m!6715940))

(assert (=> b!5770912 m!6715934))

(declare-fun m!6715942 () Bool)

(assert (=> b!5770909 m!6715942))

(assert (=> b!5770911 m!6715930))

(declare-fun m!6715944 () Bool)

(assert (=> b!5770911 m!6715944))

(assert (=> bm!444423 d!1817576))

(declare-fun bs!1353822 () Bool)

(declare-fun b!5770933 () Bool)

(assert (= bs!1353822 (and b!5770933 d!1817368)))

(declare-fun lambda!313773 () Int)

(assert (=> bs!1353822 (not (= lambda!313773 lambda!313721))))

(declare-fun bs!1353823 () Bool)

(assert (= bs!1353823 (and b!5770933 d!1817422)))

(assert (=> bs!1353823 (not (= lambda!313773 lambda!313732))))

(declare-fun bs!1353824 () Bool)

(assert (= bs!1353824 (and b!5770933 b!5770189)))

(assert (=> bs!1353824 (not (= lambda!313773 lambda!313684))))

(declare-fun bs!1353825 () Bool)

(assert (= bs!1353825 (and b!5770933 d!1817434)))

(assert (=> bs!1353825 (not (= lambda!313773 lambda!313738))))

(declare-fun bs!1353826 () Bool)

(assert (= bs!1353826 (and b!5770933 b!5770193)))

(assert (=> bs!1353826 (not (= lambda!313773 lambda!313698))))

(declare-fun bs!1353827 () Bool)

(assert (= bs!1353827 (and b!5770933 d!1817474)))

(assert (=> bs!1353827 (not (= lambda!313773 lambda!313751))))

(declare-fun bs!1353828 () Bool)

(assert (= bs!1353828 (and b!5770933 b!5770330)))

(assert (=> bs!1353828 (not (= lambda!313773 lambda!313711))))

(declare-fun bs!1353829 () Bool)

(assert (= bs!1353829 (and b!5770933 b!5770180)))

(assert (=> bs!1353829 (not (= lambda!313773 lambda!313686))))

(assert (=> bs!1353825 (not (= lambda!313773 lambda!313737))))

(declare-fun bs!1353830 () Bool)

(assert (= bs!1353830 (and b!5770933 b!5770520)))

(assert (=> bs!1353830 (= (and (= (reg!16114 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (reg!16114 lt!2291057)) (= (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292))))) lt!2291057)) (= lambda!313773 lambda!313730))))

(assert (=> bs!1353829 (not (= lambda!313773 lambda!313688))))

(declare-fun bs!1353831 () Bool)

(assert (= bs!1353831 (and b!5770933 b!5770157)))

(assert (=> bs!1353831 (not (= lambda!313773 lambda!313691))))

(declare-fun bs!1353832 () Bool)

(assert (= bs!1353832 (and b!5770933 b!5770770)))

(assert (=> bs!1353832 (= (and (= (reg!16114 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (reg!16114 r!7292)) (= (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292))))) r!7292)) (= lambda!313773 lambda!313763))))

(assert (=> bs!1353829 (not (= lambda!313773 lambda!313687))))

(declare-fun bs!1353833 () Bool)

(assert (= bs!1353833 (and b!5770933 b!5770173)))

(assert (=> bs!1353833 (not (= lambda!313773 lambda!313704))))

(assert (=> bs!1353822 (not (= lambda!313773 lambda!313722))))

(declare-fun bs!1353834 () Bool)

(assert (= bs!1353834 (and b!5770933 b!5770327)))

(assert (=> bs!1353834 (= (and (= s!2326 (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530)))) (= (reg!16114 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (reg!16114 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167))))) (= (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292))))) (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167))))) (= lambda!313773 lambda!313710))))

(assert (=> bs!1353833 (= (and (= s!2326 Nil!63530) (= (reg!16114 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (reg!16114 (regOne!32082 r!7292))) (= (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292))))) lt!2291167)) (= lambda!313773 lambda!313705))))

(declare-fun bs!1353835 () Bool)

(assert (= bs!1353835 (and b!5770933 d!1817542)))

(assert (=> bs!1353835 (not (= lambda!313773 lambda!313771))))

(declare-fun bs!1353836 () Bool)

(assert (= bs!1353836 (and b!5770933 d!1817362)))

(assert (=> bs!1353836 (not (= lambda!313773 lambda!313716))))

(assert (=> bs!1353829 (not (= lambda!313773 lambda!313689))))

(assert (=> bs!1353826 (= (and (= s!2326 (_1!36185 lt!2291163)) (= (reg!16114 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (reg!16114 (regOne!32082 r!7292))) (= (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292))))) lt!2291167)) (= lambda!313773 lambda!313702))))

(declare-fun bs!1353837 () Bool)

(assert (= bs!1353837 (and b!5770933 b!5770366)))

(assert (=> bs!1353837 (= (and (= s!2326 (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (_1!36185 lt!2291163) s!2326))) (= (reg!16114 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (reg!16114 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292))))))) (= (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292))))) (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292))))))) (= lambda!313773 lambda!313712))))

(assert (=> bs!1353826 (not (= lambda!313773 lambda!313700))))

(declare-fun bs!1353838 () Bool)

(assert (= bs!1353838 (and b!5770933 b!5770369)))

(assert (=> bs!1353838 (not (= lambda!313773 lambda!313713))))

(assert (=> bs!1353827 (not (= lambda!313773 lambda!313752))))

(assert (=> bs!1353831 (not (= lambda!313773 lambda!313690))))

(declare-fun bs!1353839 () Bool)

(assert (= bs!1353839 (and b!5770933 d!1817472)))

(assert (=> bs!1353839 (not (= lambda!313773 lambda!313750))))

(assert (=> bs!1353824 (not (= lambda!313773 lambda!313682))))

(declare-fun bs!1353840 () Bool)

(assert (= bs!1353840 (and b!5770933 b!5770177)))

(assert (=> bs!1353840 (not (= lambda!313773 lambda!313694))))

(assert (=> bs!1353824 (not (= lambda!313773 lambda!313683))))

(assert (=> bs!1353840 (not (= lambda!313773 lambda!313692))))

(declare-fun bs!1353841 () Bool)

(assert (= bs!1353841 (and b!5770933 b!5770169)))

(assert (=> bs!1353841 (not (= lambda!313773 lambda!313680))))

(declare-fun bs!1353842 () Bool)

(assert (= bs!1353842 (and b!5770933 b!5770523)))

(assert (=> bs!1353842 (not (= lambda!313773 lambda!313731))))

(assert (=> bs!1353826 (not (= lambda!313773 lambda!313701))))

(assert (=> bs!1353826 (not (= lambda!313773 lambda!313699))))

(assert (=> bs!1353835 (= (and (= s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 (_1!36185 lt!2291163) Nil!63530))) (= (reg!16114 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (reg!16114 (regOne!32082 r!7292))) (= (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292))))) (Star!15785 (reg!16114 (regOne!32082 r!7292))))) (= lambda!313773 lambda!313772))))

(assert (=> bs!1353833 (not (= lambda!313773 lambda!313703))))

(assert (=> bs!1353840 (= (and (= s!2326 (_1!36185 lt!2291106)) (= (reg!16114 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (reg!16114 (regOne!32082 r!7292))) (= (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292))))) lt!2291167)) (= lambda!313773 lambda!313693))))

(declare-fun bs!1353843 () Bool)

(assert (= bs!1353843 (and b!5770933 b!5770773)))

(assert (=> bs!1353843 (not (= lambda!313773 lambda!313764))))

(assert (=> bs!1353841 (not (= lambda!313773 lambda!313679))))

(assert (=> bs!1353824 (not (= lambda!313773 lambda!313685))))

(assert (=> b!5770933 true))

(assert (=> b!5770933 true))

(declare-fun bs!1353844 () Bool)

(declare-fun b!5770936 () Bool)

(assert (= bs!1353844 (and b!5770936 d!1817368)))

(declare-fun lambda!313774 () Int)

(assert (=> bs!1353844 (not (= lambda!313774 lambda!313721))))

(declare-fun bs!1353845 () Bool)

(assert (= bs!1353845 (and b!5770936 d!1817422)))

(assert (=> bs!1353845 (not (= lambda!313774 lambda!313732))))

(declare-fun bs!1353846 () Bool)

(assert (= bs!1353846 (and b!5770936 b!5770189)))

(assert (=> bs!1353846 (not (= lambda!313774 lambda!313684))))

(declare-fun bs!1353847 () Bool)

(assert (= bs!1353847 (and b!5770936 d!1817434)))

(assert (=> bs!1353847 (= (and (= s!2326 (ite (or c!1020242 c!1020252) s!2326 (ite c!1020250 (_1!36185 lt!2291106) (_1!36185 lt!2291163)))) (= (regOne!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (ite (or c!1020242 c!1020252) (regOne!32082 (regOne!32082 r!7292)) (reg!16114 (regOne!32082 r!7292)))) (= (regTwo!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 lt!2291167)))) (= lambda!313774 lambda!313738))))

(declare-fun bs!1353848 () Bool)

(assert (= bs!1353848 (and b!5770936 b!5770193)))

(assert (=> bs!1353848 (not (= lambda!313774 lambda!313698))))

(declare-fun bs!1353849 () Bool)

(assert (= bs!1353849 (and b!5770936 d!1817474)))

(assert (=> bs!1353849 (not (= lambda!313774 lambda!313751))))

(declare-fun bs!1353850 () Bool)

(assert (= bs!1353850 (and b!5770936 b!5770330)))

(assert (=> bs!1353850 (= (and (= s!2326 (ite c!1020249 s!2326 (ite c!1020250 (_1!36185 lt!2291106) (ite c!1020244 s!2326 Nil!63530)))) (= (regOne!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (regOne!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167))))) (= (regTwo!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (regTwo!32082 (ite c!1020249 lt!2291178 (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291180 lt!2291167)))))) (= lambda!313774 lambda!313711))))

(declare-fun bs!1353851 () Bool)

(assert (= bs!1353851 (and b!5770936 b!5770933)))

(assert (=> bs!1353851 (not (= lambda!313774 lambda!313773))))

(declare-fun bs!1353852 () Bool)

(assert (= bs!1353852 (and b!5770936 b!5770180)))

(assert (=> bs!1353852 (not (= lambda!313774 lambda!313686))))

(assert (=> bs!1353847 (not (= lambda!313774 lambda!313737))))

(declare-fun bs!1353853 () Bool)

(assert (= bs!1353853 (and b!5770936 b!5770520)))

(assert (=> bs!1353853 (not (= lambda!313774 lambda!313730))))

(assert (=> bs!1353852 (not (= lambda!313774 lambda!313688))))

(declare-fun bs!1353854 () Bool)

(assert (= bs!1353854 (and b!5770936 b!5770157)))

(assert (=> bs!1353854 (= (and (= (regOne!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) lt!2291167) (= (regTwo!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (regTwo!32082 r!7292))) (= lambda!313774 lambda!313691))))

(declare-fun bs!1353855 () Bool)

(assert (= bs!1353855 (and b!5770936 b!5770770)))

(assert (=> bs!1353855 (not (= lambda!313774 lambda!313763))))

(assert (=> bs!1353852 (= (and (= (regOne!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (regOne!32082 (regOne!32082 r!7292))) (= (regTwo!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) lt!2291065)) (= lambda!313774 lambda!313687))))

(declare-fun bs!1353856 () Bool)

(assert (= bs!1353856 (and b!5770936 b!5770173)))

(assert (=> bs!1353856 (= (and (= s!2326 Nil!63530) (= (regOne!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (reg!16114 (regOne!32082 r!7292))) (= (regTwo!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) lt!2291167)) (= lambda!313774 lambda!313704))))

(assert (=> bs!1353844 (= (and (= s!2326 (ite (or c!1020242 c!1020252 c!1020250 c!1020244) s!2326 Nil!63530)) (= (regOne!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (ite (or c!1020242 c!1020252) (regTwo!32082 (regOne!32082 r!7292)) (ite c!1020250 lt!2291167 (ite c!1020244 lt!2291100 (reg!16114 (regOne!32082 r!7292)))))) (= (regTwo!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (ite c!1020242 lt!2291109 (ite c!1020252 lt!2291002 (ite (or c!1020250 c!1020244) (regTwo!32082 r!7292) lt!2291167))))) (= lambda!313774 lambda!313722))))

(declare-fun bs!1353857 () Bool)

(assert (= bs!1353857 (and b!5770936 b!5770327)))

(assert (=> bs!1353857 (not (= lambda!313774 lambda!313710))))

(assert (=> bs!1353856 (not (= lambda!313774 lambda!313705))))

(declare-fun bs!1353858 () Bool)

(assert (= bs!1353858 (and b!5770936 d!1817542)))

(assert (=> bs!1353858 (not (= lambda!313774 lambda!313771))))

(declare-fun bs!1353859 () Bool)

(assert (= bs!1353859 (and b!5770936 d!1817362)))

(assert (=> bs!1353859 (not (= lambda!313774 lambda!313716))))

(assert (=> bs!1353852 (= (and (= (regOne!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (regTwo!32082 (regOne!32082 r!7292))) (= (regTwo!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) lt!2291002)) (= lambda!313774 lambda!313689))))

(assert (=> bs!1353848 (not (= lambda!313774 lambda!313702))))

(declare-fun bs!1353860 () Bool)

(assert (= bs!1353860 (and b!5770936 b!5770366)))

(assert (=> bs!1353860 (not (= lambda!313774 lambda!313712))))

(assert (=> bs!1353848 (not (= lambda!313774 lambda!313700))))

(declare-fun bs!1353861 () Bool)

(assert (= bs!1353861 (and b!5770936 b!5770369)))

(assert (=> bs!1353861 (= (and (= s!2326 (ite (or c!1020249 c!1020242 c!1020252) s!2326 (ite c!1020248 (_1!36185 lt!2291163) s!2326))) (= (regOne!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (regOne!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292))))))) (= (regTwo!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (regTwo!32082 (ite c!1020249 lt!2291135 (ite c!1020242 lt!2291182 (ite c!1020252 lt!2291065 (ite c!1020248 lt!2291100 (regOne!32082 r!7292)))))))) (= lambda!313774 lambda!313713))))

(assert (=> bs!1353849 (= (and (= (regOne!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (regOne!32082 r!7292)) (= (regTwo!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (regTwo!32082 r!7292))) (= lambda!313774 lambda!313752))))

(assert (=> bs!1353854 (not (= lambda!313774 lambda!313690))))

(declare-fun bs!1353862 () Bool)

(assert (= bs!1353862 (and b!5770936 d!1817472)))

(assert (=> bs!1353862 (not (= lambda!313774 lambda!313750))))

(assert (=> bs!1353846 (not (= lambda!313774 lambda!313682))))

(declare-fun bs!1353863 () Bool)

(assert (= bs!1353863 (and b!5770936 b!5770177)))

(assert (=> bs!1353863 (= (and (= s!2326 (_1!36185 lt!2291106)) (= (regOne!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (reg!16114 (regOne!32082 r!7292))) (= (regTwo!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) lt!2291167)) (= lambda!313774 lambda!313694))))

(assert (=> bs!1353846 (= (and (= (regOne!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (regOne!32082 (regOne!32082 r!7292))) (= (regTwo!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) lt!2291182)) (= lambda!313774 lambda!313683))))

(assert (=> bs!1353863 (not (= lambda!313774 lambda!313692))))

(declare-fun bs!1353864 () Bool)

(assert (= bs!1353864 (and b!5770936 b!5770169)))

(assert (=> bs!1353864 (= (and (= (regOne!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (regOne!32082 r!7292)) (= (regTwo!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (regTwo!32082 r!7292))) (= lambda!313774 lambda!313680))))

(declare-fun bs!1353865 () Bool)

(assert (= bs!1353865 (and b!5770936 b!5770523)))

(assert (=> bs!1353865 (= (and (= (regOne!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (regOne!32082 lt!2291057)) (= (regTwo!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (regTwo!32082 lt!2291057))) (= lambda!313774 lambda!313731))))

(assert (=> bs!1353848 (= (and (= s!2326 (_1!36185 lt!2291163)) (= (regOne!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (reg!16114 (regOne!32082 r!7292))) (= (regTwo!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) lt!2291167)) (= lambda!313774 lambda!313701))))

(assert (=> bs!1353848 (= (and (= (regOne!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) lt!2291100) (= (regTwo!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (regTwo!32082 r!7292))) (= lambda!313774 lambda!313699))))

(assert (=> bs!1353858 (not (= lambda!313774 lambda!313772))))

(assert (=> bs!1353856 (not (= lambda!313774 lambda!313703))))

(assert (=> bs!1353863 (not (= lambda!313774 lambda!313693))))

(declare-fun bs!1353866 () Bool)

(assert (= bs!1353866 (and b!5770936 b!5770773)))

(assert (=> bs!1353866 (= (and (= (regOne!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (regOne!32082 r!7292)) (= (regTwo!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (regTwo!32082 r!7292))) (= lambda!313774 lambda!313764))))

(assert (=> bs!1353864 (not (= lambda!313774 lambda!313679))))

(assert (=> bs!1353846 (= (and (= (regOne!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) (regTwo!32082 (regOne!32082 r!7292))) (= (regTwo!32082 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) lt!2291109)) (= lambda!313774 lambda!313685))))

(assert (=> b!5770936 true))

(assert (=> b!5770936 true))

(declare-fun b!5770926 () Bool)

(declare-fun c!1020466 () Bool)

(assert (=> b!5770926 (= c!1020466 ((_ is Union!15785) (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))))))

(declare-fun e!3545264 () Bool)

(declare-fun e!3545268 () Bool)

(assert (=> b!5770926 (= e!3545264 e!3545268)))

(declare-fun c!1020465 () Bool)

(declare-fun b!5770927 () Bool)

(assert (=> b!5770927 (= c!1020465 ((_ is ElementMatch!15785) (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))))))

(declare-fun e!3545270 () Bool)

(assert (=> b!5770927 (= e!3545270 e!3545264)))

(declare-fun b!5770928 () Bool)

(declare-fun res!2435500 () Bool)

(declare-fun e!3545265 () Bool)

(assert (=> b!5770928 (=> res!2435500 e!3545265)))

(declare-fun call!444569 () Bool)

(assert (=> b!5770928 (= res!2435500 call!444569)))

(declare-fun e!3545266 () Bool)

(assert (=> b!5770928 (= e!3545266 e!3545265)))

(declare-fun bm!444564 () Bool)

(declare-fun c!1020468 () Bool)

(declare-fun call!444570 () Bool)

(assert (=> bm!444564 (= call!444570 (Exists!2885 (ite c!1020468 lambda!313773 lambda!313774)))))

(declare-fun b!5770929 () Bool)

(declare-fun e!3545267 () Bool)

(assert (=> b!5770929 (= e!3545267 call!444569)))

(declare-fun e!3545269 () Bool)

(declare-fun b!5770930 () Bool)

(assert (=> b!5770930 (= e!3545269 (matchRSpec!2888 (regTwo!32083 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) s!2326))))

(declare-fun b!5770931 () Bool)

(assert (=> b!5770931 (= e!3545268 e!3545266)))

(assert (=> b!5770931 (= c!1020468 ((_ is Star!15785) (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))))))

(declare-fun bm!444565 () Bool)

(assert (=> bm!444565 (= call!444569 (isEmpty!35427 s!2326))))

(declare-fun d!1817578 () Bool)

(declare-fun c!1020467 () Bool)

(assert (=> d!1817578 (= c!1020467 ((_ is EmptyExpr!15785) (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))))))

(assert (=> d!1817578 (= (matchRSpec!2888 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292))))) s!2326) e!3545267)))

(declare-fun b!5770932 () Bool)

(assert (=> b!5770932 (= e!3545267 e!3545270)))

(declare-fun res!2435499 () Bool)

(assert (=> b!5770932 (= res!2435499 (not ((_ is EmptyLang!15785) (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292))))))))))

(assert (=> b!5770932 (=> (not res!2435499) (not e!3545270))))

(assert (=> b!5770933 (= e!3545265 call!444570)))

(declare-fun b!5770934 () Bool)

(assert (=> b!5770934 (= e!3545268 e!3545269)))

(declare-fun res!2435498 () Bool)

(assert (=> b!5770934 (= res!2435498 (matchRSpec!2888 (regOne!32083 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) s!2326))))

(assert (=> b!5770934 (=> res!2435498 e!3545269)))

(declare-fun b!5770935 () Bool)

(assert (=> b!5770935 (= e!3545264 (= s!2326 (Cons!63530 (c!1020255 (ite c!1020249 lt!2291144 (ite c!1020242 lt!2291046 (ite c!1020252 lt!2291128 (ite c!1020248 lt!2291158 (regTwo!32082 r!7292)))))) Nil!63530)))))

(assert (=> b!5770936 (= e!3545266 call!444570)))

(assert (= (and d!1817578 c!1020467) b!5770929))

(assert (= (and d!1817578 (not c!1020467)) b!5770932))

(assert (= (and b!5770932 res!2435499) b!5770927))

(assert (= (and b!5770927 c!1020465) b!5770935))

(assert (= (and b!5770927 (not c!1020465)) b!5770926))

(assert (= (and b!5770926 c!1020466) b!5770934))

(assert (= (and b!5770926 (not c!1020466)) b!5770931))

(assert (= (and b!5770934 (not res!2435498)) b!5770930))

(assert (= (and b!5770931 c!1020468) b!5770928))

(assert (= (and b!5770931 (not c!1020468)) b!5770936))

(assert (= (and b!5770928 (not res!2435500)) b!5770933))

(assert (= (or b!5770933 b!5770936) bm!444564))

(assert (= (or b!5770929 b!5770928) bm!444565))

(declare-fun m!6715962 () Bool)

(assert (=> bm!444564 m!6715962))

(declare-fun m!6715964 () Bool)

(assert (=> b!5770930 m!6715964))

(assert (=> bm!444565 m!6715258))

(declare-fun m!6715966 () Bool)

(assert (=> b!5770934 m!6715966))

(assert (=> bm!444324 d!1817578))

(declare-fun bm!444575 () Bool)

(declare-fun call!444582 () Bool)

(assert (=> bm!444575 (= call!444582 (isEmpty!35427 (ite c!1020244 lt!2291097 call!444485)))))

(declare-fun b!5770994 () Bool)

(declare-fun e!3545304 () Bool)

(declare-fun lt!2291340 () Bool)

(assert (=> b!5770994 (= e!3545304 (not lt!2291340))))

(declare-fun b!5770995 () Bool)

(declare-fun e!3545303 () Bool)

(declare-fun e!3545301 () Bool)

(assert (=> b!5770995 (= e!3545303 e!3545301)))

(declare-fun res!2435531 () Bool)

(assert (=> b!5770995 (=> res!2435531 e!3545301)))

(assert (=> b!5770995 (= res!2435531 call!444582)))

(declare-fun b!5770996 () Bool)

(declare-fun res!2435527 () Bool)

(assert (=> b!5770996 (=> res!2435527 e!3545301)))

(assert (=> b!5770996 (= res!2435527 (not (isEmpty!35427 (tail!11295 (ite c!1020244 lt!2291097 call!444485)))))))

(declare-fun b!5770997 () Bool)

(declare-fun e!3545302 () Bool)

(assert (=> b!5770997 (= e!3545302 (matchR!7970 (derivativeStep!4563 (ite c!1020244 lt!2291158 lt!2291050) (head!12200 (ite c!1020244 lt!2291097 call!444485))) (tail!11295 (ite c!1020244 lt!2291097 call!444485))))))

(declare-fun b!5770998 () Bool)

(declare-fun e!3545306 () Bool)

(assert (=> b!5770998 (= e!3545306 e!3545303)))

(declare-fun res!2435533 () Bool)

(assert (=> b!5770998 (=> (not res!2435533) (not e!3545303))))

(assert (=> b!5770998 (= res!2435533 (not lt!2291340))))

(declare-fun b!5770999 () Bool)

(declare-fun res!2435530 () Bool)

(assert (=> b!5770999 (=> res!2435530 e!3545306)))

(declare-fun e!3545305 () Bool)

(assert (=> b!5770999 (= res!2435530 e!3545305)))

(declare-fun res!2435534 () Bool)

(assert (=> b!5770999 (=> (not res!2435534) (not e!3545305))))

(assert (=> b!5770999 (= res!2435534 lt!2291340)))

(declare-fun b!5771000 () Bool)

(declare-fun res!2435528 () Bool)

(assert (=> b!5771000 (=> res!2435528 e!3545306)))

(assert (=> b!5771000 (= res!2435528 (not ((_ is ElementMatch!15785) (ite c!1020244 lt!2291158 lt!2291050))))))

(assert (=> b!5771000 (= e!3545304 e!3545306)))

(declare-fun b!5770993 () Bool)

(assert (=> b!5770993 (= e!3545301 (not (= (head!12200 (ite c!1020244 lt!2291097 call!444485)) (c!1020255 (ite c!1020244 lt!2291158 lt!2291050)))))))

(declare-fun d!1817582 () Bool)

(declare-fun e!3545300 () Bool)

(assert (=> d!1817582 e!3545300))

(declare-fun c!1020486 () Bool)

(assert (=> d!1817582 (= c!1020486 ((_ is EmptyExpr!15785) (ite c!1020244 lt!2291158 lt!2291050)))))

(assert (=> d!1817582 (= lt!2291340 e!3545302)))

(declare-fun c!1020485 () Bool)

(assert (=> d!1817582 (= c!1020485 (isEmpty!35427 (ite c!1020244 lt!2291097 call!444485)))))

(assert (=> d!1817582 (validRegex!7521 (ite c!1020244 lt!2291158 lt!2291050))))

(assert (=> d!1817582 (= (matchR!7970 (ite c!1020244 lt!2291158 lt!2291050) (ite c!1020244 lt!2291097 call!444485)) lt!2291340)))

(declare-fun b!5771001 () Bool)

(assert (=> b!5771001 (= e!3545300 e!3545304)))

(declare-fun c!1020484 () Bool)

(assert (=> b!5771001 (= c!1020484 ((_ is EmptyLang!15785) (ite c!1020244 lt!2291158 lt!2291050)))))

(declare-fun b!5771002 () Bool)

(assert (=> b!5771002 (= e!3545302 (nullable!5817 (ite c!1020244 lt!2291158 lt!2291050)))))

(declare-fun b!5771003 () Bool)

(declare-fun res!2435532 () Bool)

(assert (=> b!5771003 (=> (not res!2435532) (not e!3545305))))

(assert (=> b!5771003 (= res!2435532 (isEmpty!35427 (tail!11295 (ite c!1020244 lt!2291097 call!444485))))))

(declare-fun b!5771004 () Bool)

(assert (=> b!5771004 (= e!3545305 (= (head!12200 (ite c!1020244 lt!2291097 call!444485)) (c!1020255 (ite c!1020244 lt!2291158 lt!2291050))))))

(declare-fun b!5771005 () Bool)

(declare-fun res!2435529 () Bool)

(assert (=> b!5771005 (=> (not res!2435529) (not e!3545305))))

(assert (=> b!5771005 (= res!2435529 (not call!444582))))

(declare-fun b!5771006 () Bool)

(assert (=> b!5771006 (= e!3545300 (= lt!2291340 call!444582))))

(assert (= (and d!1817582 c!1020485) b!5771002))

(assert (= (and d!1817582 (not c!1020485)) b!5770997))

(assert (= (and d!1817582 c!1020486) b!5771006))

(assert (= (and d!1817582 (not c!1020486)) b!5771001))

(assert (= (and b!5771001 c!1020484) b!5770994))

(assert (= (and b!5771001 (not c!1020484)) b!5771000))

(assert (= (and b!5771000 (not res!2435528)) b!5770999))

(assert (= (and b!5770999 res!2435534) b!5771005))

(assert (= (and b!5771005 res!2435529) b!5771003))

(assert (= (and b!5771003 res!2435532) b!5771004))

(assert (= (and b!5770999 (not res!2435530)) b!5770998))

(assert (= (and b!5770998 res!2435533) b!5770995))

(assert (= (and b!5770995 (not res!2435531)) b!5770996))

(assert (= (and b!5770996 (not res!2435527)) b!5770993))

(assert (= (or b!5771006 b!5770995 b!5771005) bm!444575))

(declare-fun m!6715968 () Bool)

(assert (=> bm!444575 m!6715968))

(declare-fun m!6715970 () Bool)

(assert (=> b!5770993 m!6715970))

(declare-fun m!6715972 () Bool)

(assert (=> b!5771003 m!6715972))

(assert (=> b!5771003 m!6715972))

(declare-fun m!6715974 () Bool)

(assert (=> b!5771003 m!6715974))

(declare-fun m!6715976 () Bool)

(assert (=> b!5771002 m!6715976))

(assert (=> b!5770997 m!6715970))

(assert (=> b!5770997 m!6715970))

(declare-fun m!6715978 () Bool)

(assert (=> b!5770997 m!6715978))

(assert (=> b!5770997 m!6715972))

(assert (=> b!5770997 m!6715978))

(assert (=> b!5770997 m!6715972))

(declare-fun m!6715980 () Bool)

(assert (=> b!5770997 m!6715980))

(assert (=> b!5771004 m!6715970))

(assert (=> b!5770996 m!6715972))

(assert (=> b!5770996 m!6715972))

(assert (=> b!5770996 m!6715974))

(assert (=> d!1817582 m!6715968))

(declare-fun m!6715982 () Bool)

(assert (=> d!1817582 m!6715982))

(assert (=> bm!444408 d!1817582))

(declare-fun b!5771011 () Bool)

(declare-fun e!3545309 () Bool)

(declare-fun tp!1594263 () Bool)

(declare-fun tp!1594264 () Bool)

(assert (=> b!5771011 (= e!3545309 (and tp!1594263 tp!1594264))))

(assert (=> b!5770181 (= tp!1594255 e!3545309)))

(assert (= (and b!5770181 ((_ is Cons!63531) (exprs!5669 (h!69980 zl!343)))) b!5771011))

(declare-fun e!3545312 () Bool)

(assert (=> b!5770151 (= tp!1594252 e!3545312)))

(declare-fun b!5771023 () Bool)

(declare-fun tp!1594278 () Bool)

(declare-fun tp!1594276 () Bool)

(assert (=> b!5771023 (= e!3545312 (and tp!1594278 tp!1594276))))

(declare-fun b!5771025 () Bool)

(declare-fun tp!1594279 () Bool)

(declare-fun tp!1594275 () Bool)

(assert (=> b!5771025 (= e!3545312 (and tp!1594279 tp!1594275))))

(declare-fun b!5771024 () Bool)

(declare-fun tp!1594277 () Bool)

(assert (=> b!5771024 (= e!3545312 tp!1594277)))

(declare-fun b!5771022 () Bool)

(assert (=> b!5771022 (= e!3545312 tp_is_empty!40823)))

(assert (= (and b!5770151 ((_ is ElementMatch!15785) (reg!16114 r!7292))) b!5771022))

(assert (= (and b!5770151 ((_ is Concat!24630) (reg!16114 r!7292))) b!5771023))

(assert (= (and b!5770151 ((_ is Star!15785) (reg!16114 r!7292))) b!5771024))

(assert (= (and b!5770151 ((_ is Union!15785) (reg!16114 r!7292))) b!5771025))

(declare-fun b!5771033 () Bool)

(declare-fun e!3545318 () Bool)

(declare-fun tp!1594284 () Bool)

(assert (=> b!5771033 (= e!3545318 tp!1594284)))

(declare-fun tp!1594285 () Bool)

(declare-fun b!5771032 () Bool)

(declare-fun e!3545317 () Bool)

(assert (=> b!5771032 (= e!3545317 (and (inv!82709 (h!69980 (t!376994 zl!343))) e!3545318 tp!1594285))))

(assert (=> b!5770145 (= tp!1594256 e!3545317)))

(assert (= b!5771032 b!5771033))

(assert (= (and b!5770145 ((_ is Cons!63532) (t!376994 zl!343))) b!5771032))

(declare-fun m!6715984 () Bool)

(assert (=> b!5771032 m!6715984))

(declare-fun condSetEmpty!38784 () Bool)

(assert (=> setNonEmpty!38781 (= condSetEmpty!38784 (= setRest!38781 ((as const (Array Context!10338 Bool)) false)))))

(declare-fun setRes!38784 () Bool)

(assert (=> setNonEmpty!38781 (= tp!1594253 setRes!38784)))

(declare-fun setIsEmpty!38784 () Bool)

(assert (=> setIsEmpty!38784 setRes!38784))

(declare-fun setElem!38784 () Context!10338)

(declare-fun e!3545321 () Bool)

(declare-fun tp!1594291 () Bool)

(declare-fun setNonEmpty!38784 () Bool)

(assert (=> setNonEmpty!38784 (= setRes!38784 (and tp!1594291 (inv!82709 setElem!38784) e!3545321))))

(declare-fun setRest!38784 () (InoxSet Context!10338))

(assert (=> setNonEmpty!38784 (= setRest!38781 ((_ map or) (store ((as const (Array Context!10338 Bool)) false) setElem!38784 true) setRest!38784))))

(declare-fun b!5771038 () Bool)

(declare-fun tp!1594290 () Bool)

(assert (=> b!5771038 (= e!3545321 tp!1594290)))

(assert (= (and setNonEmpty!38781 condSetEmpty!38784) setIsEmpty!38784))

(assert (= (and setNonEmpty!38781 (not condSetEmpty!38784)) setNonEmpty!38784))

(assert (= setNonEmpty!38784 b!5771038))

(declare-fun m!6715986 () Bool)

(assert (=> setNonEmpty!38784 m!6715986))

(declare-fun e!3545322 () Bool)

(assert (=> b!5770144 (= tp!1594249 e!3545322)))

(declare-fun b!5771040 () Bool)

(declare-fun tp!1594295 () Bool)

(declare-fun tp!1594293 () Bool)

(assert (=> b!5771040 (= e!3545322 (and tp!1594295 tp!1594293))))

(declare-fun b!5771042 () Bool)

(declare-fun tp!1594296 () Bool)

(declare-fun tp!1594292 () Bool)

(assert (=> b!5771042 (= e!3545322 (and tp!1594296 tp!1594292))))

(declare-fun b!5771041 () Bool)

(declare-fun tp!1594294 () Bool)

(assert (=> b!5771041 (= e!3545322 tp!1594294)))

(declare-fun b!5771039 () Bool)

(assert (=> b!5771039 (= e!3545322 tp_is_empty!40823)))

(assert (= (and b!5770144 ((_ is ElementMatch!15785) (regOne!32082 r!7292))) b!5771039))

(assert (= (and b!5770144 ((_ is Concat!24630) (regOne!32082 r!7292))) b!5771040))

(assert (= (and b!5770144 ((_ is Star!15785) (regOne!32082 r!7292))) b!5771041))

(assert (= (and b!5770144 ((_ is Union!15785) (regOne!32082 r!7292))) b!5771042))

(declare-fun e!3545329 () Bool)

(assert (=> b!5770144 (= tp!1594257 e!3545329)))

(declare-fun b!5771055 () Bool)

(declare-fun tp!1594300 () Bool)

(declare-fun tp!1594298 () Bool)

(assert (=> b!5771055 (= e!3545329 (and tp!1594300 tp!1594298))))

(declare-fun b!5771057 () Bool)

(declare-fun tp!1594301 () Bool)

(declare-fun tp!1594297 () Bool)

(assert (=> b!5771057 (= e!3545329 (and tp!1594301 tp!1594297))))

(declare-fun b!5771056 () Bool)

(declare-fun tp!1594299 () Bool)

(assert (=> b!5771056 (= e!3545329 tp!1594299)))

(declare-fun b!5771054 () Bool)

(assert (=> b!5771054 (= e!3545329 tp_is_empty!40823)))

(assert (= (and b!5770144 ((_ is ElementMatch!15785) (regTwo!32082 r!7292))) b!5771054))

(assert (= (and b!5770144 ((_ is Concat!24630) (regTwo!32082 r!7292))) b!5771055))

(assert (= (and b!5770144 ((_ is Star!15785) (regTwo!32082 r!7292))) b!5771056))

(assert (= (and b!5770144 ((_ is Union!15785) (regTwo!32082 r!7292))) b!5771057))

(declare-fun b!5771062 () Bool)

(declare-fun e!3545332 () Bool)

(declare-fun tp!1594304 () Bool)

(assert (=> b!5771062 (= e!3545332 (and tp_is_empty!40823 tp!1594304))))

(assert (=> b!5770178 (= tp!1594251 e!3545332)))

(assert (= (and b!5770178 ((_ is Cons!63530) (t!376992 s!2326))) b!5771062))

(declare-fun e!3545333 () Bool)

(assert (=> b!5770159 (= tp!1594258 e!3545333)))

(declare-fun b!5771064 () Bool)

(declare-fun tp!1594308 () Bool)

(declare-fun tp!1594306 () Bool)

(assert (=> b!5771064 (= e!3545333 (and tp!1594308 tp!1594306))))

(declare-fun b!5771066 () Bool)

(declare-fun tp!1594309 () Bool)

(declare-fun tp!1594305 () Bool)

(assert (=> b!5771066 (= e!3545333 (and tp!1594309 tp!1594305))))

(declare-fun b!5771065 () Bool)

(declare-fun tp!1594307 () Bool)

(assert (=> b!5771065 (= e!3545333 tp!1594307)))

(declare-fun b!5771063 () Bool)

(assert (=> b!5771063 (= e!3545333 tp_is_empty!40823)))

(assert (= (and b!5770159 ((_ is ElementMatch!15785) (regOne!32083 r!7292))) b!5771063))

(assert (= (and b!5770159 ((_ is Concat!24630) (regOne!32083 r!7292))) b!5771064))

(assert (= (and b!5770159 ((_ is Star!15785) (regOne!32083 r!7292))) b!5771065))

(assert (= (and b!5770159 ((_ is Union!15785) (regOne!32083 r!7292))) b!5771066))

(declare-fun e!3545334 () Bool)

(assert (=> b!5770159 (= tp!1594254 e!3545334)))

(declare-fun b!5771068 () Bool)

(declare-fun tp!1594313 () Bool)

(declare-fun tp!1594311 () Bool)

(assert (=> b!5771068 (= e!3545334 (and tp!1594313 tp!1594311))))

(declare-fun b!5771070 () Bool)

(declare-fun tp!1594314 () Bool)

(declare-fun tp!1594310 () Bool)

(assert (=> b!5771070 (= e!3545334 (and tp!1594314 tp!1594310))))

(declare-fun b!5771069 () Bool)

(declare-fun tp!1594312 () Bool)

(assert (=> b!5771069 (= e!3545334 tp!1594312)))

(declare-fun b!5771067 () Bool)

(assert (=> b!5771067 (= e!3545334 tp_is_empty!40823)))

(assert (= (and b!5770159 ((_ is ElementMatch!15785) (regTwo!32083 r!7292))) b!5771067))

(assert (= (and b!5770159 ((_ is Concat!24630) (regTwo!32083 r!7292))) b!5771068))

(assert (= (and b!5770159 ((_ is Star!15785) (regTwo!32083 r!7292))) b!5771069))

(assert (= (and b!5770159 ((_ is Union!15785) (regTwo!32083 r!7292))) b!5771070))

(declare-fun b!5771071 () Bool)

(declare-fun e!3545335 () Bool)

(declare-fun tp!1594315 () Bool)

(declare-fun tp!1594316 () Bool)

(assert (=> b!5771071 (= e!3545335 (and tp!1594315 tp!1594316))))

(assert (=> b!5770166 (= tp!1594250 e!3545335)))

(assert (= (and b!5770166 ((_ is Cons!63531) (exprs!5669 setElem!38781))) b!5771071))

(declare-fun b_lambda!217765 () Bool)

(assert (= b_lambda!217763 (or b!5770153 b_lambda!217765)))

(declare-fun bs!1353867 () Bool)

(declare-fun d!1817584 () Bool)

(assert (= bs!1353867 (and d!1817584 b!5770153)))

(assert (=> bs!1353867 (= (dynLambda!24869 lambda!313681 lt!2291151) (derivationStepZipperUp!1053 lt!2291151 (h!69978 s!2326)))))

(declare-fun m!6715998 () Bool)

(assert (=> bs!1353867 m!6715998))

(assert (=> d!1817524 d!1817584))

(declare-fun b_lambda!217767 () Bool)

(assert (= b_lambda!217759 (or b!5770153 b_lambda!217767)))

(declare-fun bs!1353868 () Bool)

(declare-fun d!1817586 () Bool)

(assert (= bs!1353868 (and d!1817586 b!5770153)))

(assert (=> bs!1353868 (= (dynLambda!24869 lambda!313681 (h!69980 zl!343)) (derivationStepZipperUp!1053 (h!69980 zl!343) (h!69978 s!2326)))))

(assert (=> bs!1353868 m!6714854))

(assert (=> d!1817398 d!1817586))

(declare-fun b_lambda!217769 () Bool)

(assert (= b_lambda!217751 (or b!5770193 b_lambda!217769)))

(declare-fun bs!1353869 () Bool)

(declare-fun d!1817590 () Bool)

(assert (= bs!1353869 (and d!1817590 b!5770193)))

(declare-fun lt!2291341 () Unit!156690)

(assert (=> bs!1353869 (= lt!2291341 (lemmaConcatPreservesForall!320 (exprs!5669 lt!2291103) lt!2291047 lambda!313697))))

(assert (=> bs!1353869 (= (dynLambda!24868 lambda!313696 lt!2291103) (Context!10339 (++!13999 (exprs!5669 lt!2291103) lt!2291047)))))

(declare-fun m!6716000 () Bool)

(assert (=> bs!1353869 m!6716000))

(declare-fun m!6716002 () Bool)

(assert (=> bs!1353869 m!6716002))

(assert (=> d!1817344 d!1817590))

(declare-fun b_lambda!217771 () Bool)

(assert (= b_lambda!217757 (or b!5770153 b_lambda!217771)))

(declare-fun bs!1353870 () Bool)

(declare-fun d!1817592 () Bool)

(assert (= bs!1353870 (and d!1817592 b!5770153)))

(assert (=> bs!1353870 (= (dynLambda!24869 lambda!313681 lt!2291089) (derivationStepZipperUp!1053 lt!2291089 (h!69978 s!2326)))))

(assert (=> bs!1353870 m!6714862))

(assert (=> d!1817388 d!1817592))

(check-sat (not b!5770640) (not d!1817430) (not b!5771003) (not b!5770344) (not b!5771069) (not d!1817576) (not d!1817502) (not b!5770550) (not d!1817550) (not b_lambda!217755) (not bm!444561) (not d!1817532) (not b!5770916) (not b!5770812) (not d!1817444) (not d!1817470) (not b!5770887) (not b!5771038) (not b!5770287) (not b!5770363) (not b!5770566) (not b!5770909) (not b!5770800) (not d!1817340) (not b!5770442) (not b!5770563) (not b!5770367) (not b!5770634) (not bm!444526) (not b!5770877) (not b!5770915) (not d!1817568) (not b!5770876) (not b!5770530) (not b!5770283) (not b!5770739) (not d!1817448) (not d!1817528) (not b!5770540) (not b!5770810) (not d!1817464) (not bs!1353867) (not d!1817552) (not b!5770449) (not d!1817472) (not b!5770738) (not d!1817506) (not b!5770458) (not d!1817466) (not b!5770881) (not b!5770809) (not b!5770908) (not b!5770583) (not bm!444496) (not b!5770282) (not b!5770535) (not b!5770703) (not b!5770585) (not b!5770639) (not d!1817388) (not d!1817542) (not b!5770440) (not d!1817510) (not b!5770217) (not b!5770544) (not bm!444516) (not d!1817488) (not d!1817574) (not b!5770647) (not b!5770564) (not d!1817438) (not b!5770799) (not d!1817408) (not d!1817564) (not d!1817452) (not b!5771070) (not d!1817342) (not d!1817354) (not b!5770569) (not d!1817530) (not b!5770794) (not b!5770646) (not d!1817460) (not b!5770560) (not b!5770570) (not bm!444575) (not d!1817358) (not d!1817324) (not b!5770737) (not b!5770350) (not d!1817468) (not bm!444555) (not d!1817434) (not b!5770686) (not b!5771057) (not b!5770250) (not d!1817412) (not bm!444546) (not d!1817554) (not bm!444547) (not b!5770557) (not d!1817414) (not d!1817504) (not b!5770206) (not b!5770396) (not bm!444544) (not b!5770555) (not b!5770934) (not b!5770584) (not b!5770471) (not d!1817548) (not b!5770251) (not d!1817490) (not b!5770582) (not b!5770709) (not d!1817454) (not bm!444543) (not b!5771032) (not b!5770450) (not b!5770525) (not b!5770748) (not d!1817516) (not bm!444519) (not d!1817392) (not b!5770247) (not b!5770691) (not b!5770521) (not b!5770688) (not b_lambda!217753) (not b!5770465) (not d!1817458) (not d!1817482) (not b!5770549) (not d!1817330) (not b!5770892) (not b!5771011) (not b!5770630) (not b!5771033) (not b!5771024) (not d!1817512) (not b!5770993) (not bm!444536) (not b!5770835) (not b!5770216) (not bm!444557) (not b!5770996) (not d!1817526) (not b!5770452) (not d!1817534) (not bm!444542) (not bm!444490) (not b!5770543) (not b!5770601) (not b!5771056) (not b!5770788) (not b!5770558) (not b!5770459) (not b!5770281) (not d!1817436) (not b!5770588) (not d!1817432) (not d!1817378) (not b!5770441) tp_is_empty!40823 (not b!5770590) (not d!1817498) (not b!5770687) (not bm!444521) (not b!5770829) (not bs!1353869) (not b!5770435) (not b_lambda!217771) (not b!5770904) (not b!5770930) (not d!1817352) (not d!1817398) (not b!5770568) (not d!1817546) (not b!5770602) (not b!5770578) (not bs!1353870) (not d!1817492) (not b_lambda!217765) (not b!5770256) (not b!5770889) (not b!5770785) (not d!1817384) (not b!5770771) (not b!5770832) (not d!1817386) (not b!5770704) (not b!5770472) (not b!5770749) (not d!1817370) (not b!5770517) (not b!5770767) (not d!1817524) (not d!1817374) (not b!5771064) (not b!5771055) (not bm!444556) (not b!5770689) (not b!5770526) (not b!5770580) (not bm!444541) (not d!1817344) (not bm!444495) (not b!5770587) (not bm!444538) (not b!5770743) (not b!5770875) (not b!5770636) (not b!5770345) (not b!5771062) (not b!5770710) (not b!5770627) (not d!1817350) (not bm!444563) (not d!1817416) (not b!5770524) (not b!5770554) (not d!1817368) (not d!1817572) (not d!1817474) (not b!5770444) (not b!5770447) (not b!5771025) (not b_lambda!217769) (not b!5770437) (not b!5770684) (not b!5770645) (not b!5770559) (not bm!444545) (not b!5770836) (not b!5770824) (not b!5770789) (not b!5770439) (not b!5770907) (not bm!444537) (not d!1817440) (not b!5770576) (not b!5770562) (not b!5770632) (not d!1817480) (not b!5770561) (not d!1817446) (not d!1817360) (not b!5770353) (not b!5770529) (not b!5770324) (not d!1817332) (not b!5770257) (not b!5770258) (not b!5770575) (not d!1817328) (not d!1817424) (not b!5770556) (not b!5770571) (not b!5770285) (not d!1817420) (not d!1817456) (not b!5770589) (not b!5770795) (not d!1817462) (not b!5771042) (not d!1817426) (not b!5770696) (not b!5770805) (not b!5770551) (not b!5770828) (not d!1817536) (not bm!444522) (not d!1817376) (not bm!444525) (not bm!444564) (not b!5771041) (not b!5770750) (not b!5770470) (not b!5770911) (not b!5770451) (not b!5770742) (not bm!444500) (not b!5770358) (not d!1817422) (not bm!444528) (not d!1817566) (not b!5770599) (not b!5770682) (not b!5770351) (not b!5771066) (not d!1817390) (not d!1817540) (not b_lambda!217761) (not b!5770796) (not b!5770536) (not d!1817558) (not b!5771004) (not bm!444554) (not b!5770882) (not b!5770466) (not bm!444499) (not b!5771040) (not b!5770912) (not d!1817582) (not d!1817500) (not b!5770629) (not b!5771071) (not d!1817334) (not b!5770804) (not d!1817428) (not b!5770905) (not d!1817520) (not b!5770888) (not d!1817372) (not d!1817450) (not bm!444501) (not b!5770711) (not b!5771002) (not b!5770279) (not d!1817338) (not b_lambda!217767) (not b!5770997) (not b!5771023) (not setNonEmpty!38784) (not bm!444565) (not b!5770834) (not bm!444517) (not bm!444540) (not b!5771065) (not d!1817496) (not b!5770878) (not d!1817326) (not b!5770537) (not bm!444560) (not b!5770354) (not d!1817570) (not d!1817396) (not b!5770633) (not d!1817484) (not b!5770454) (not d!1817380) (not b!5770700) (not bs!1353868) (not bm!444539) (not b!5770825) (not b!5770505) (not b!5770328) (not b!5770512) (not b!5771068) (not b!5770914) (not b!5770445) (not bm!444520) (not d!1817362) (not b!5770813) (not b!5770573) (not b!5770827) (not b!5770831) (not b!5770600) (not d!1817418))
(check-sat)
