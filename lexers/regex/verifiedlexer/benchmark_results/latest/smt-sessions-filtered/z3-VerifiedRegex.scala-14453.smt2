; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!752800 () Bool)

(assert start!752800)

(declare-fun b!8000566 () Bool)

(declare-fun e!4713124 () Bool)

(declare-fun tp!2393117 () Bool)

(declare-fun tp!2393120 () Bool)

(assert (=> b!8000566 (= e!4713124 (and tp!2393117 tp!2393120))))

(declare-fun b!8000567 () Bool)

(declare-fun res!3163983 () Bool)

(declare-fun e!4713123 () Bool)

(assert (=> b!8000567 (=> (not res!3163983) (not e!4713123))))

(declare-datatypes ((C!43512 0))(
  ( (C!43513 (val!32304 Int)) )
))
(declare-datatypes ((List!74816 0))(
  ( (Nil!74692) (Cons!74692 (h!81140 C!43512) (t!390559 List!74816)) )
))
(declare-fun input!8006 () List!74816)

(get-info :version)

(assert (=> b!8000567 (= res!3163983 ((_ is Cons!74692) input!8006))))

(declare-fun res!3163984 () Bool)

(assert (=> start!752800 (=> (not res!3163984) (not e!4713123))))

(declare-datatypes ((Regex!21587 0))(
  ( (ElementMatch!21587 (c!1468900 C!43512)) (Concat!30586 (regOne!43686 Regex!21587) (regTwo!43686 Regex!21587)) (EmptyExpr!21587) (Star!21587 (reg!21916 Regex!21587)) (EmptyLang!21587) (Union!21587 (regOne!43687 Regex!21587) (regTwo!43687 Regex!21587)) )
))
(declare-fun r!24748 () Regex!21587)

(declare-fun validRegex!11891 (Regex!21587) Bool)

(assert (=> start!752800 (= res!3163984 (validRegex!11891 r!24748))))

(assert (=> start!752800 e!4713123))

(assert (=> start!752800 e!4713124))

(declare-fun e!4713125 () Bool)

(assert (=> start!752800 e!4713125))

(declare-fun b!8000568 () Bool)

(declare-fun tp!2393119 () Bool)

(declare-fun tp!2393118 () Bool)

(assert (=> b!8000568 (= e!4713124 (and tp!2393119 tp!2393118))))

(declare-fun b!8000569 () Bool)

(declare-fun derivativeStep!6602 (Regex!21587 C!43512) Regex!21587)

(assert (=> b!8000569 (= e!4713123 (not (validRegex!11891 (derivativeStep!6602 r!24748 (h!81140 input!8006)))))))

(declare-fun b!8000570 () Bool)

(declare-fun tp_is_empty!53717 () Bool)

(declare-fun tp!2393121 () Bool)

(assert (=> b!8000570 (= e!4713125 (and tp_is_empty!53717 tp!2393121))))

(declare-fun b!8000571 () Bool)

(declare-fun tp!2393122 () Bool)

(assert (=> b!8000571 (= e!4713124 tp!2393122)))

(declare-fun b!8000572 () Bool)

(assert (=> b!8000572 (= e!4713124 tp_is_empty!53717)))

(assert (= (and start!752800 res!3163984) b!8000567))

(assert (= (and b!8000567 res!3163983) b!8000569))

(assert (= (and start!752800 ((_ is ElementMatch!21587) r!24748)) b!8000572))

(assert (= (and start!752800 ((_ is Concat!30586) r!24748)) b!8000568))

(assert (= (and start!752800 ((_ is Star!21587) r!24748)) b!8000571))

(assert (= (and start!752800 ((_ is Union!21587) r!24748)) b!8000566))

(assert (= (and start!752800 ((_ is Cons!74692) input!8006)) b!8000570))

(declare-fun m!8368400 () Bool)

(assert (=> start!752800 m!8368400))

(declare-fun m!8368402 () Bool)

(assert (=> b!8000569 m!8368402))

(assert (=> b!8000569 m!8368402))

(declare-fun m!8368404 () Bool)

(assert (=> b!8000569 m!8368404))

(check-sat (not b!8000566) (not b!8000571) tp_is_empty!53717 (not b!8000570) (not b!8000569) (not b!8000568) (not start!752800))
(check-sat)
(get-model)

(declare-fun b!8000692 () Bool)

(declare-fun e!4713193 () Bool)

(declare-fun e!4713199 () Bool)

(assert (=> b!8000692 (= e!4713193 e!4713199)))

(declare-fun c!1468929 () Bool)

(assert (=> b!8000692 (= c!1468929 ((_ is Star!21587) r!24748))))

(declare-fun b!8000693 () Bool)

(declare-fun e!4713197 () Bool)

(declare-fun e!4713194 () Bool)

(assert (=> b!8000693 (= e!4713197 e!4713194)))

(declare-fun res!3164018 () Bool)

(assert (=> b!8000693 (=> (not res!3164018) (not e!4713194))))

(declare-fun call!743267 () Bool)

(assert (=> b!8000693 (= res!3164018 call!743267)))

(declare-fun bm!743260 () Bool)

(declare-fun c!1468928 () Bool)

(assert (=> bm!743260 (= call!743267 (validRegex!11891 (ite c!1468928 (regTwo!43687 r!24748) (regOne!43686 r!24748))))))

(declare-fun d!2386658 () Bool)

(declare-fun res!3164017 () Bool)

(assert (=> d!2386658 (=> res!3164017 e!4713193)))

(assert (=> d!2386658 (= res!3164017 ((_ is ElementMatch!21587) r!24748))))

(assert (=> d!2386658 (= (validRegex!11891 r!24748) e!4713193)))

(declare-fun call!743265 () Bool)

(declare-fun bm!743261 () Bool)

(assert (=> bm!743261 (= call!743265 (validRegex!11891 (ite c!1468929 (reg!21916 r!24748) (ite c!1468928 (regOne!43687 r!24748) (regTwo!43686 r!24748)))))))

(declare-fun b!8000694 () Bool)

(declare-fun res!3164019 () Bool)

(declare-fun e!4713198 () Bool)

(assert (=> b!8000694 (=> (not res!3164019) (not e!4713198))))

(declare-fun call!743266 () Bool)

(assert (=> b!8000694 (= res!3164019 call!743266)))

(declare-fun e!4713196 () Bool)

(assert (=> b!8000694 (= e!4713196 e!4713198)))

(declare-fun b!8000695 () Bool)

(assert (=> b!8000695 (= e!4713198 call!743267)))

(declare-fun bm!743262 () Bool)

(assert (=> bm!743262 (= call!743266 call!743265)))

(declare-fun b!8000696 () Bool)

(declare-fun e!4713195 () Bool)

(assert (=> b!8000696 (= e!4713199 e!4713195)))

(declare-fun res!3164015 () Bool)

(declare-fun nullable!9668 (Regex!21587) Bool)

(assert (=> b!8000696 (= res!3164015 (not (nullable!9668 (reg!21916 r!24748))))))

(assert (=> b!8000696 (=> (not res!3164015) (not e!4713195))))

(declare-fun b!8000697 () Bool)

(assert (=> b!8000697 (= e!4713195 call!743265)))

(declare-fun b!8000698 () Bool)

(assert (=> b!8000698 (= e!4713199 e!4713196)))

(assert (=> b!8000698 (= c!1468928 ((_ is Union!21587) r!24748))))

(declare-fun b!8000699 () Bool)

(declare-fun res!3164016 () Bool)

(assert (=> b!8000699 (=> res!3164016 e!4713197)))

(assert (=> b!8000699 (= res!3164016 (not ((_ is Concat!30586) r!24748)))))

(assert (=> b!8000699 (= e!4713196 e!4713197)))

(declare-fun b!8000700 () Bool)

(assert (=> b!8000700 (= e!4713194 call!743266)))

(assert (= (and d!2386658 (not res!3164017)) b!8000692))

(assert (= (and b!8000692 c!1468929) b!8000696))

(assert (= (and b!8000692 (not c!1468929)) b!8000698))

(assert (= (and b!8000696 res!3164015) b!8000697))

(assert (= (and b!8000698 c!1468928) b!8000694))

(assert (= (and b!8000698 (not c!1468928)) b!8000699))

(assert (= (and b!8000694 res!3164019) b!8000695))

(assert (= (and b!8000699 (not res!3164016)) b!8000693))

(assert (= (and b!8000693 res!3164018) b!8000700))

(assert (= (or b!8000695 b!8000693) bm!743260))

(assert (= (or b!8000694 b!8000700) bm!743262))

(assert (= (or b!8000697 bm!743262) bm!743261))

(declare-fun m!8368426 () Bool)

(assert (=> bm!743260 m!8368426))

(declare-fun m!8368428 () Bool)

(assert (=> bm!743261 m!8368428))

(declare-fun m!8368430 () Bool)

(assert (=> b!8000696 m!8368430))

(assert (=> start!752800 d!2386658))

(declare-fun b!8000701 () Bool)

(declare-fun e!4713200 () Bool)

(declare-fun e!4713206 () Bool)

(assert (=> b!8000701 (= e!4713200 e!4713206)))

(declare-fun c!1468931 () Bool)

(assert (=> b!8000701 (= c!1468931 ((_ is Star!21587) (derivativeStep!6602 r!24748 (h!81140 input!8006))))))

(declare-fun b!8000702 () Bool)

(declare-fun e!4713204 () Bool)

(declare-fun e!4713201 () Bool)

(assert (=> b!8000702 (= e!4713204 e!4713201)))

(declare-fun res!3164023 () Bool)

(assert (=> b!8000702 (=> (not res!3164023) (not e!4713201))))

(declare-fun call!743270 () Bool)

(assert (=> b!8000702 (= res!3164023 call!743270)))

(declare-fun c!1468930 () Bool)

(declare-fun bm!743263 () Bool)

(assert (=> bm!743263 (= call!743270 (validRegex!11891 (ite c!1468930 (regTwo!43687 (derivativeStep!6602 r!24748 (h!81140 input!8006))) (regOne!43686 (derivativeStep!6602 r!24748 (h!81140 input!8006))))))))

(declare-fun d!2386662 () Bool)

(declare-fun res!3164022 () Bool)

(assert (=> d!2386662 (=> res!3164022 e!4713200)))

(assert (=> d!2386662 (= res!3164022 ((_ is ElementMatch!21587) (derivativeStep!6602 r!24748 (h!81140 input!8006))))))

(assert (=> d!2386662 (= (validRegex!11891 (derivativeStep!6602 r!24748 (h!81140 input!8006))) e!4713200)))

(declare-fun call!743268 () Bool)

(declare-fun bm!743264 () Bool)

(assert (=> bm!743264 (= call!743268 (validRegex!11891 (ite c!1468931 (reg!21916 (derivativeStep!6602 r!24748 (h!81140 input!8006))) (ite c!1468930 (regOne!43687 (derivativeStep!6602 r!24748 (h!81140 input!8006))) (regTwo!43686 (derivativeStep!6602 r!24748 (h!81140 input!8006)))))))))

(declare-fun b!8000703 () Bool)

(declare-fun res!3164024 () Bool)

(declare-fun e!4713205 () Bool)

(assert (=> b!8000703 (=> (not res!3164024) (not e!4713205))))

(declare-fun call!743269 () Bool)

(assert (=> b!8000703 (= res!3164024 call!743269)))

(declare-fun e!4713203 () Bool)

(assert (=> b!8000703 (= e!4713203 e!4713205)))

(declare-fun b!8000704 () Bool)

(assert (=> b!8000704 (= e!4713205 call!743270)))

(declare-fun bm!743265 () Bool)

(assert (=> bm!743265 (= call!743269 call!743268)))

(declare-fun b!8000705 () Bool)

(declare-fun e!4713202 () Bool)

(assert (=> b!8000705 (= e!4713206 e!4713202)))

(declare-fun res!3164020 () Bool)

(assert (=> b!8000705 (= res!3164020 (not (nullable!9668 (reg!21916 (derivativeStep!6602 r!24748 (h!81140 input!8006))))))))

(assert (=> b!8000705 (=> (not res!3164020) (not e!4713202))))

(declare-fun b!8000706 () Bool)

(assert (=> b!8000706 (= e!4713202 call!743268)))

(declare-fun b!8000707 () Bool)

(assert (=> b!8000707 (= e!4713206 e!4713203)))

(assert (=> b!8000707 (= c!1468930 ((_ is Union!21587) (derivativeStep!6602 r!24748 (h!81140 input!8006))))))

(declare-fun b!8000708 () Bool)

(declare-fun res!3164021 () Bool)

(assert (=> b!8000708 (=> res!3164021 e!4713204)))

(assert (=> b!8000708 (= res!3164021 (not ((_ is Concat!30586) (derivativeStep!6602 r!24748 (h!81140 input!8006)))))))

(assert (=> b!8000708 (= e!4713203 e!4713204)))

(declare-fun b!8000709 () Bool)

(assert (=> b!8000709 (= e!4713201 call!743269)))

(assert (= (and d!2386662 (not res!3164022)) b!8000701))

(assert (= (and b!8000701 c!1468931) b!8000705))

(assert (= (and b!8000701 (not c!1468931)) b!8000707))

(assert (= (and b!8000705 res!3164020) b!8000706))

(assert (= (and b!8000707 c!1468930) b!8000703))

(assert (= (and b!8000707 (not c!1468930)) b!8000708))

(assert (= (and b!8000703 res!3164024) b!8000704))

(assert (= (and b!8000708 (not res!3164021)) b!8000702))

(assert (= (and b!8000702 res!3164023) b!8000709))

(assert (= (or b!8000704 b!8000702) bm!743263))

(assert (= (or b!8000703 b!8000709) bm!743265))

(assert (= (or b!8000706 bm!743265) bm!743264))

(declare-fun m!8368432 () Bool)

(assert (=> bm!743263 m!8368432))

(declare-fun m!8368434 () Bool)

(assert (=> bm!743264 m!8368434))

(declare-fun m!8368436 () Bool)

(assert (=> b!8000705 m!8368436))

(assert (=> b!8000569 d!2386662))

(declare-fun b!8000730 () Bool)

(declare-fun c!1468946 () Bool)

(assert (=> b!8000730 (= c!1468946 ((_ is Union!21587) r!24748))))

(declare-fun e!4713221 () Regex!21587)

(declare-fun e!4713218 () Regex!21587)

(assert (=> b!8000730 (= e!4713221 e!4713218)))

(declare-fun b!8000731 () Bool)

(declare-fun e!4713219 () Regex!21587)

(assert (=> b!8000731 (= e!4713219 EmptyLang!21587)))

(declare-fun b!8000732 () Bool)

(declare-fun e!4713217 () Regex!21587)

(declare-fun call!743280 () Regex!21587)

(assert (=> b!8000732 (= e!4713217 (Concat!30586 call!743280 r!24748))))

(declare-fun b!8000733 () Bool)

(declare-fun c!1468945 () Bool)

(assert (=> b!8000733 (= c!1468945 (nullable!9668 (regOne!43686 r!24748)))))

(declare-fun e!4713220 () Regex!21587)

(assert (=> b!8000733 (= e!4713217 e!4713220)))

(declare-fun bm!743274 () Bool)

(declare-fun call!743279 () Regex!21587)

(declare-fun c!1468944 () Bool)

(assert (=> bm!743274 (= call!743279 (derivativeStep!6602 (ite c!1468946 (regTwo!43687 r!24748) (ite c!1468944 (reg!21916 r!24748) (regOne!43686 r!24748))) (h!81140 input!8006)))))

(declare-fun call!743281 () Regex!21587)

(declare-fun b!8000734 () Bool)

(declare-fun call!743282 () Regex!21587)

(assert (=> b!8000734 (= e!4713220 (Union!21587 (Concat!30586 call!743281 (regTwo!43686 r!24748)) call!743282))))

(declare-fun b!8000735 () Bool)

(assert (=> b!8000735 (= e!4713221 (ite (= (h!81140 input!8006) (c!1468900 r!24748)) EmptyExpr!21587 EmptyLang!21587))))

(declare-fun b!8000736 () Bool)

(assert (=> b!8000736 (= e!4713220 (Union!21587 (Concat!30586 call!743281 (regTwo!43686 r!24748)) EmptyLang!21587))))

(declare-fun b!8000737 () Bool)

(assert (=> b!8000737 (= e!4713218 e!4713217)))

(assert (=> b!8000737 (= c!1468944 ((_ is Star!21587) r!24748))))

(declare-fun bm!743276 () Bool)

(assert (=> bm!743276 (= call!743281 call!743280)))

(declare-fun b!8000738 () Bool)

(assert (=> b!8000738 (= e!4713218 (Union!21587 call!743282 call!743279))))

(declare-fun d!2386664 () Bool)

(declare-fun lt!2713699 () Regex!21587)

(assert (=> d!2386664 (validRegex!11891 lt!2713699)))

(assert (=> d!2386664 (= lt!2713699 e!4713219)))

(declare-fun c!1468943 () Bool)

(assert (=> d!2386664 (= c!1468943 (or ((_ is EmptyExpr!21587) r!24748) ((_ is EmptyLang!21587) r!24748)))))

(assert (=> d!2386664 (validRegex!11891 r!24748)))

(assert (=> d!2386664 (= (derivativeStep!6602 r!24748 (h!81140 input!8006)) lt!2713699)))

(declare-fun bm!743275 () Bool)

(assert (=> bm!743275 (= call!743282 (derivativeStep!6602 (ite c!1468946 (regOne!43687 r!24748) (regTwo!43686 r!24748)) (h!81140 input!8006)))))

(declare-fun bm!743277 () Bool)

(assert (=> bm!743277 (= call!743280 call!743279)))

(declare-fun b!8000739 () Bool)

(assert (=> b!8000739 (= e!4713219 e!4713221)))

(declare-fun c!1468942 () Bool)

(assert (=> b!8000739 (= c!1468942 ((_ is ElementMatch!21587) r!24748))))

(assert (= (and d!2386664 c!1468943) b!8000731))

(assert (= (and d!2386664 (not c!1468943)) b!8000739))

(assert (= (and b!8000739 c!1468942) b!8000735))

(assert (= (and b!8000739 (not c!1468942)) b!8000730))

(assert (= (and b!8000730 c!1468946) b!8000738))

(assert (= (and b!8000730 (not c!1468946)) b!8000737))

(assert (= (and b!8000737 c!1468944) b!8000732))

(assert (= (and b!8000737 (not c!1468944)) b!8000733))

(assert (= (and b!8000733 c!1468945) b!8000734))

(assert (= (and b!8000733 (not c!1468945)) b!8000736))

(assert (= (or b!8000734 b!8000736) bm!743276))

(assert (= (or b!8000732 bm!743276) bm!743277))

(assert (= (or b!8000738 b!8000734) bm!743275))

(assert (= (or b!8000738 bm!743277) bm!743274))

(declare-fun m!8368438 () Bool)

(assert (=> b!8000733 m!8368438))

(declare-fun m!8368440 () Bool)

(assert (=> bm!743274 m!8368440))

(declare-fun m!8368442 () Bool)

(assert (=> d!2386664 m!8368442))

(assert (=> d!2386664 m!8368400))

(declare-fun m!8368444 () Bool)

(assert (=> bm!743275 m!8368444))

(assert (=> b!8000569 d!2386664))

(declare-fun b!8000750 () Bool)

(declare-fun e!4713224 () Bool)

(assert (=> b!8000750 (= e!4713224 tp_is_empty!53717)))

(assert (=> b!8000571 (= tp!2393122 e!4713224)))

(declare-fun b!8000751 () Bool)

(declare-fun tp!2393172 () Bool)

(declare-fun tp!2393175 () Bool)

(assert (=> b!8000751 (= e!4713224 (and tp!2393172 tp!2393175))))

(declare-fun b!8000753 () Bool)

(declare-fun tp!2393174 () Bool)

(declare-fun tp!2393171 () Bool)

(assert (=> b!8000753 (= e!4713224 (and tp!2393174 tp!2393171))))

(declare-fun b!8000752 () Bool)

(declare-fun tp!2393173 () Bool)

(assert (=> b!8000752 (= e!4713224 tp!2393173)))

(assert (= (and b!8000571 ((_ is ElementMatch!21587) (reg!21916 r!24748))) b!8000750))

(assert (= (and b!8000571 ((_ is Concat!30586) (reg!21916 r!24748))) b!8000751))

(assert (= (and b!8000571 ((_ is Star!21587) (reg!21916 r!24748))) b!8000752))

(assert (= (and b!8000571 ((_ is Union!21587) (reg!21916 r!24748))) b!8000753))

(declare-fun b!8000758 () Bool)

(declare-fun e!4713227 () Bool)

(declare-fun tp!2393178 () Bool)

(assert (=> b!8000758 (= e!4713227 (and tp_is_empty!53717 tp!2393178))))

(assert (=> b!8000570 (= tp!2393121 e!4713227)))

(assert (= (and b!8000570 ((_ is Cons!74692) (t!390559 input!8006))) b!8000758))

(declare-fun b!8000759 () Bool)

(declare-fun e!4713228 () Bool)

(assert (=> b!8000759 (= e!4713228 tp_is_empty!53717)))

(assert (=> b!8000566 (= tp!2393117 e!4713228)))

(declare-fun b!8000760 () Bool)

(declare-fun tp!2393180 () Bool)

(declare-fun tp!2393183 () Bool)

(assert (=> b!8000760 (= e!4713228 (and tp!2393180 tp!2393183))))

(declare-fun b!8000762 () Bool)

(declare-fun tp!2393182 () Bool)

(declare-fun tp!2393179 () Bool)

(assert (=> b!8000762 (= e!4713228 (and tp!2393182 tp!2393179))))

(declare-fun b!8000761 () Bool)

(declare-fun tp!2393181 () Bool)

(assert (=> b!8000761 (= e!4713228 tp!2393181)))

(assert (= (and b!8000566 ((_ is ElementMatch!21587) (regOne!43687 r!24748))) b!8000759))

(assert (= (and b!8000566 ((_ is Concat!30586) (regOne!43687 r!24748))) b!8000760))

(assert (= (and b!8000566 ((_ is Star!21587) (regOne!43687 r!24748))) b!8000761))

(assert (= (and b!8000566 ((_ is Union!21587) (regOne!43687 r!24748))) b!8000762))

(declare-fun b!8000763 () Bool)

(declare-fun e!4713229 () Bool)

(assert (=> b!8000763 (= e!4713229 tp_is_empty!53717)))

(assert (=> b!8000566 (= tp!2393120 e!4713229)))

(declare-fun b!8000764 () Bool)

(declare-fun tp!2393185 () Bool)

(declare-fun tp!2393188 () Bool)

(assert (=> b!8000764 (= e!4713229 (and tp!2393185 tp!2393188))))

(declare-fun b!8000766 () Bool)

(declare-fun tp!2393187 () Bool)

(declare-fun tp!2393184 () Bool)

(assert (=> b!8000766 (= e!4713229 (and tp!2393187 tp!2393184))))

(declare-fun b!8000765 () Bool)

(declare-fun tp!2393186 () Bool)

(assert (=> b!8000765 (= e!4713229 tp!2393186)))

(assert (= (and b!8000566 ((_ is ElementMatch!21587) (regTwo!43687 r!24748))) b!8000763))

(assert (= (and b!8000566 ((_ is Concat!30586) (regTwo!43687 r!24748))) b!8000764))

(assert (= (and b!8000566 ((_ is Star!21587) (regTwo!43687 r!24748))) b!8000765))

(assert (= (and b!8000566 ((_ is Union!21587) (regTwo!43687 r!24748))) b!8000766))

(declare-fun b!8000767 () Bool)

(declare-fun e!4713230 () Bool)

(assert (=> b!8000767 (= e!4713230 tp_is_empty!53717)))

(assert (=> b!8000568 (= tp!2393119 e!4713230)))

(declare-fun b!8000768 () Bool)

(declare-fun tp!2393190 () Bool)

(declare-fun tp!2393193 () Bool)

(assert (=> b!8000768 (= e!4713230 (and tp!2393190 tp!2393193))))

(declare-fun b!8000770 () Bool)

(declare-fun tp!2393192 () Bool)

(declare-fun tp!2393189 () Bool)

(assert (=> b!8000770 (= e!4713230 (and tp!2393192 tp!2393189))))

(declare-fun b!8000769 () Bool)

(declare-fun tp!2393191 () Bool)

(assert (=> b!8000769 (= e!4713230 tp!2393191)))

(assert (= (and b!8000568 ((_ is ElementMatch!21587) (regOne!43686 r!24748))) b!8000767))

(assert (= (and b!8000568 ((_ is Concat!30586) (regOne!43686 r!24748))) b!8000768))

(assert (= (and b!8000568 ((_ is Star!21587) (regOne!43686 r!24748))) b!8000769))

(assert (= (and b!8000568 ((_ is Union!21587) (regOne!43686 r!24748))) b!8000770))

(declare-fun b!8000771 () Bool)

(declare-fun e!4713231 () Bool)

(assert (=> b!8000771 (= e!4713231 tp_is_empty!53717)))

(assert (=> b!8000568 (= tp!2393118 e!4713231)))

(declare-fun b!8000772 () Bool)

(declare-fun tp!2393195 () Bool)

(declare-fun tp!2393198 () Bool)

(assert (=> b!8000772 (= e!4713231 (and tp!2393195 tp!2393198))))

(declare-fun b!8000774 () Bool)

(declare-fun tp!2393197 () Bool)

(declare-fun tp!2393194 () Bool)

(assert (=> b!8000774 (= e!4713231 (and tp!2393197 tp!2393194))))

(declare-fun b!8000773 () Bool)

(declare-fun tp!2393196 () Bool)

(assert (=> b!8000773 (= e!4713231 tp!2393196)))

(assert (= (and b!8000568 ((_ is ElementMatch!21587) (regTwo!43686 r!24748))) b!8000771))

(assert (= (and b!8000568 ((_ is Concat!30586) (regTwo!43686 r!24748))) b!8000772))

(assert (= (and b!8000568 ((_ is Star!21587) (regTwo!43686 r!24748))) b!8000773))

(assert (= (and b!8000568 ((_ is Union!21587) (regTwo!43686 r!24748))) b!8000774))

(check-sat (not bm!743263) (not bm!743275) (not b!8000761) (not b!8000705) tp_is_empty!53717 (not b!8000764) (not b!8000758) (not b!8000753) (not bm!743264) (not d!2386664) (not b!8000772) (not bm!743274) (not bm!743261) (not b!8000766) (not b!8000733) (not b!8000760) (not b!8000762) (not b!8000770) (not b!8000768) (not bm!743260) (not b!8000774) (not b!8000765) (not b!8000696) (not b!8000752) (not b!8000751) (not b!8000773) (not b!8000769))
(check-sat)
