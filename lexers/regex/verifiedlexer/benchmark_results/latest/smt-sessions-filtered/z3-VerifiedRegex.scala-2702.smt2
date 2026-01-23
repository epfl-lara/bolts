; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!145288 () Bool)

(assert start!145288)

(declare-fun res!697017 () Bool)

(declare-fun e!1004175 () Bool)

(assert (=> start!145288 (=> (not res!697017) (not e!1004175))))

(declare-datatypes ((B!1425 0))(
  ( (B!1426 (val!4976 Int)) )
))
(declare-datatypes ((List!17043 0))(
  ( (Nil!16973) (Cons!16973 (h!22374 B!1425) (t!141622 List!17043)) )
))
(declare-fun l!3627 () List!17043)

(declare-fun noDuplicate!236 (List!17043) Bool)

(assert (=> start!145288 (= res!697017 (noDuplicate!236 l!3627))))

(assert (=> start!145288 e!1004175))

(declare-fun e!1004176 () Bool)

(assert (=> start!145288 e!1004176))

(declare-fun tp_is_empty!7121 () Bool)

(assert (=> start!145288 tp_is_empty!7121))

(declare-fun b!1563656 () Bool)

(declare-fun res!697015 () Bool)

(assert (=> b!1563656 (=> (not res!697015) (not e!1004175))))

(assert (=> b!1563656 (= res!697015 (noDuplicate!236 (t!141622 l!3627)))))

(declare-fun b!1563657 () Bool)

(declare-fun tp!460600 () Bool)

(assert (=> b!1563657 (= e!1004176 (and tp_is_empty!7121 tp!460600))))

(declare-fun b!1563658 () Bool)

(declare-fun lt!541416 () List!17043)

(declare-fun ++!4426 (List!17043 List!17043) List!17043)

(assert (=> b!1563658 (= e!1004175 (not (noDuplicate!236 (++!4426 l!3627 lt!541416))))))

(assert (=> b!1563658 (noDuplicate!236 (++!4426 (t!141622 l!3627) lt!541416))))

(declare-fun elmt!170 () B!1425)

(assert (=> b!1563658 (= lt!541416 (Cons!16973 elmt!170 Nil!16973))))

(declare-datatypes ((Unit!26169 0))(
  ( (Unit!26170) )
))
(declare-fun lt!541415 () Unit!26169)

(declare-fun lemmaAppendNewElementElementPreserves!24 (List!17043 B!1425) Unit!26169)

(assert (=> b!1563658 (= lt!541415 (lemmaAppendNewElementElementPreserves!24 (t!141622 l!3627) elmt!170))))

(declare-fun b!1563659 () Bool)

(declare-fun res!697019 () Bool)

(assert (=> b!1563659 (=> (not res!697019) (not e!1004175))))

(get-info :version)

(assert (=> b!1563659 (= res!697019 ((_ is Cons!16973) l!3627))))

(declare-fun b!1563660 () Bool)

(declare-fun res!697016 () Bool)

(assert (=> b!1563660 (=> (not res!697016) (not e!1004175))))

(declare-fun contains!2994 (List!17043 B!1425) Bool)

(assert (=> b!1563660 (= res!697016 (not (contains!2994 l!3627 elmt!170)))))

(declare-fun b!1563661 () Bool)

(declare-fun res!697018 () Bool)

(assert (=> b!1563661 (=> (not res!697018) (not e!1004175))))

(assert (=> b!1563661 (= res!697018 (not (contains!2994 (t!141622 l!3627) elmt!170)))))

(assert (= (and start!145288 res!697017) b!1563660))

(assert (= (and b!1563660 res!697016) b!1563659))

(assert (= (and b!1563659 res!697019) b!1563656))

(assert (= (and b!1563656 res!697015) b!1563661))

(assert (= (and b!1563661 res!697018) b!1563658))

(assert (= (and start!145288 ((_ is Cons!16973) l!3627)) b!1563657))

(declare-fun m!1834941 () Bool)

(assert (=> b!1563661 m!1834941))

(declare-fun m!1834943 () Bool)

(assert (=> start!145288 m!1834943))

(declare-fun m!1834945 () Bool)

(assert (=> b!1563658 m!1834945))

(assert (=> b!1563658 m!1834945))

(declare-fun m!1834947 () Bool)

(assert (=> b!1563658 m!1834947))

(declare-fun m!1834949 () Bool)

(assert (=> b!1563658 m!1834949))

(declare-fun m!1834951 () Bool)

(assert (=> b!1563658 m!1834951))

(assert (=> b!1563658 m!1834951))

(declare-fun m!1834953 () Bool)

(assert (=> b!1563658 m!1834953))

(declare-fun m!1834955 () Bool)

(assert (=> b!1563660 m!1834955))

(declare-fun m!1834957 () Bool)

(assert (=> b!1563656 m!1834957))

(check-sat (not b!1563657) tp_is_empty!7121 (not b!1563658) (not b!1563660) (not start!145288) (not b!1563656) (not b!1563661))
(check-sat)
(get-model)

(declare-fun d!463013 () Bool)

(declare-fun res!697030 () Bool)

(declare-fun e!1004187 () Bool)

(assert (=> d!463013 (=> res!697030 e!1004187)))

(assert (=> d!463013 (= res!697030 ((_ is Nil!16973) (++!4426 (t!141622 l!3627) lt!541416)))))

(assert (=> d!463013 (= (noDuplicate!236 (++!4426 (t!141622 l!3627) lt!541416)) e!1004187)))

(declare-fun b!1563672 () Bool)

(declare-fun e!1004188 () Bool)

(assert (=> b!1563672 (= e!1004187 e!1004188)))

(declare-fun res!697031 () Bool)

(assert (=> b!1563672 (=> (not res!697031) (not e!1004188))))

(assert (=> b!1563672 (= res!697031 (not (contains!2994 (t!141622 (++!4426 (t!141622 l!3627) lt!541416)) (h!22374 (++!4426 (t!141622 l!3627) lt!541416)))))))

(declare-fun b!1563673 () Bool)

(assert (=> b!1563673 (= e!1004188 (noDuplicate!236 (t!141622 (++!4426 (t!141622 l!3627) lt!541416))))))

(assert (= (and d!463013 (not res!697030)) b!1563672))

(assert (= (and b!1563672 res!697031) b!1563673))

(declare-fun m!1834961 () Bool)

(assert (=> b!1563672 m!1834961))

(declare-fun m!1834963 () Bool)

(assert (=> b!1563673 m!1834963))

(assert (=> b!1563658 d!463013))

(declare-fun b!1563702 () Bool)

(declare-fun e!1004206 () List!17043)

(assert (=> b!1563702 (= e!1004206 lt!541416)))

(declare-fun b!1563704 () Bool)

(declare-fun res!697049 () Bool)

(declare-fun e!1004205 () Bool)

(assert (=> b!1563704 (=> (not res!697049) (not e!1004205))))

(declare-fun lt!541423 () List!17043)

(declare-fun size!13768 (List!17043) Int)

(assert (=> b!1563704 (= res!697049 (= (size!13768 lt!541423) (+ (size!13768 (t!141622 l!3627)) (size!13768 lt!541416))))))

(declare-fun b!1563703 () Bool)

(assert (=> b!1563703 (= e!1004206 (Cons!16973 (h!22374 (t!141622 l!3627)) (++!4426 (t!141622 (t!141622 l!3627)) lt!541416)))))

(declare-fun d!463017 () Bool)

(assert (=> d!463017 e!1004205))

(declare-fun res!697048 () Bool)

(assert (=> d!463017 (=> (not res!697048) (not e!1004205))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2354 (List!17043) (InoxSet B!1425))

(assert (=> d!463017 (= res!697048 (= (content!2354 lt!541423) ((_ map or) (content!2354 (t!141622 l!3627)) (content!2354 lt!541416))))))

(assert (=> d!463017 (= lt!541423 e!1004206)))

(declare-fun c!253437 () Bool)

(assert (=> d!463017 (= c!253437 ((_ is Nil!16973) (t!141622 l!3627)))))

(assert (=> d!463017 (= (++!4426 (t!141622 l!3627) lt!541416) lt!541423)))

(declare-fun b!1563705 () Bool)

(assert (=> b!1563705 (= e!1004205 (or (not (= lt!541416 Nil!16973)) (= lt!541423 (t!141622 l!3627))))))

(assert (= (and d!463017 c!253437) b!1563702))

(assert (= (and d!463017 (not c!253437)) b!1563703))

(assert (= (and d!463017 res!697048) b!1563704))

(assert (= (and b!1563704 res!697049) b!1563705))

(declare-fun m!1834995 () Bool)

(assert (=> b!1563704 m!1834995))

(declare-fun m!1834997 () Bool)

(assert (=> b!1563704 m!1834997))

(declare-fun m!1834999 () Bool)

(assert (=> b!1563704 m!1834999))

(declare-fun m!1835001 () Bool)

(assert (=> b!1563703 m!1835001))

(declare-fun m!1835003 () Bool)

(assert (=> d!463017 m!1835003))

(declare-fun m!1835005 () Bool)

(assert (=> d!463017 m!1835005))

(declare-fun m!1835007 () Bool)

(assert (=> d!463017 m!1835007))

(assert (=> b!1563658 d!463017))

(declare-fun b!1563706 () Bool)

(declare-fun e!1004208 () List!17043)

(assert (=> b!1563706 (= e!1004208 lt!541416)))

(declare-fun b!1563708 () Bool)

(declare-fun res!697051 () Bool)

(declare-fun e!1004207 () Bool)

(assert (=> b!1563708 (=> (not res!697051) (not e!1004207))))

(declare-fun lt!541424 () List!17043)

(assert (=> b!1563708 (= res!697051 (= (size!13768 lt!541424) (+ (size!13768 l!3627) (size!13768 lt!541416))))))

(declare-fun b!1563707 () Bool)

(assert (=> b!1563707 (= e!1004208 (Cons!16973 (h!22374 l!3627) (++!4426 (t!141622 l!3627) lt!541416)))))

(declare-fun d!463027 () Bool)

(assert (=> d!463027 e!1004207))

(declare-fun res!697050 () Bool)

(assert (=> d!463027 (=> (not res!697050) (not e!1004207))))

(assert (=> d!463027 (= res!697050 (= (content!2354 lt!541424) ((_ map or) (content!2354 l!3627) (content!2354 lt!541416))))))

(assert (=> d!463027 (= lt!541424 e!1004208)))

(declare-fun c!253438 () Bool)

(assert (=> d!463027 (= c!253438 ((_ is Nil!16973) l!3627))))

(assert (=> d!463027 (= (++!4426 l!3627 lt!541416) lt!541424)))

(declare-fun b!1563709 () Bool)

(assert (=> b!1563709 (= e!1004207 (or (not (= lt!541416 Nil!16973)) (= lt!541424 l!3627)))))

(assert (= (and d!463027 c!253438) b!1563706))

(assert (= (and d!463027 (not c!253438)) b!1563707))

(assert (= (and d!463027 res!697050) b!1563708))

(assert (= (and b!1563708 res!697051) b!1563709))

(declare-fun m!1835009 () Bool)

(assert (=> b!1563708 m!1835009))

(declare-fun m!1835011 () Bool)

(assert (=> b!1563708 m!1835011))

(assert (=> b!1563708 m!1834999))

(assert (=> b!1563707 m!1834945))

(declare-fun m!1835013 () Bool)

(assert (=> d!463027 m!1835013))

(declare-fun m!1835015 () Bool)

(assert (=> d!463027 m!1835015))

(assert (=> d!463027 m!1835007))

(assert (=> b!1563658 d!463027))

(declare-fun d!463029 () Bool)

(declare-fun res!697052 () Bool)

(declare-fun e!1004209 () Bool)

(assert (=> d!463029 (=> res!697052 e!1004209)))

(assert (=> d!463029 (= res!697052 ((_ is Nil!16973) (++!4426 l!3627 lt!541416)))))

(assert (=> d!463029 (= (noDuplicate!236 (++!4426 l!3627 lt!541416)) e!1004209)))

(declare-fun b!1563710 () Bool)

(declare-fun e!1004210 () Bool)

(assert (=> b!1563710 (= e!1004209 e!1004210)))

(declare-fun res!697053 () Bool)

(assert (=> b!1563710 (=> (not res!697053) (not e!1004210))))

(assert (=> b!1563710 (= res!697053 (not (contains!2994 (t!141622 (++!4426 l!3627 lt!541416)) (h!22374 (++!4426 l!3627 lt!541416)))))))

(declare-fun b!1563711 () Bool)

(assert (=> b!1563711 (= e!1004210 (noDuplicate!236 (t!141622 (++!4426 l!3627 lt!541416))))))

(assert (= (and d!463029 (not res!697052)) b!1563710))

(assert (= (and b!1563710 res!697053) b!1563711))

(declare-fun m!1835017 () Bool)

(assert (=> b!1563710 m!1835017))

(declare-fun m!1835019 () Bool)

(assert (=> b!1563711 m!1835019))

(assert (=> b!1563658 d!463029))

(declare-fun d!463031 () Bool)

(assert (=> d!463031 (noDuplicate!236 (++!4426 (t!141622 l!3627) (Cons!16973 elmt!170 Nil!16973)))))

(declare-fun lt!541430 () Unit!26169)

(declare-fun choose!9340 (List!17043 B!1425) Unit!26169)

(assert (=> d!463031 (= lt!541430 (choose!9340 (t!141622 l!3627) elmt!170))))

(assert (=> d!463031 (noDuplicate!236 (t!141622 l!3627))))

(assert (=> d!463031 (= (lemmaAppendNewElementElementPreserves!24 (t!141622 l!3627) elmt!170) lt!541430)))

(declare-fun bs!389489 () Bool)

(assert (= bs!389489 d!463031))

(declare-fun m!1835031 () Bool)

(assert (=> bs!389489 m!1835031))

(assert (=> bs!389489 m!1835031))

(declare-fun m!1835033 () Bool)

(assert (=> bs!389489 m!1835033))

(declare-fun m!1835035 () Bool)

(assert (=> bs!389489 m!1835035))

(assert (=> bs!389489 m!1834957))

(assert (=> b!1563658 d!463031))

(declare-fun d!463037 () Bool)

(declare-fun res!697056 () Bool)

(declare-fun e!1004213 () Bool)

(assert (=> d!463037 (=> res!697056 e!1004213)))

(assert (=> d!463037 (= res!697056 ((_ is Nil!16973) l!3627))))

(assert (=> d!463037 (= (noDuplicate!236 l!3627) e!1004213)))

(declare-fun b!1563714 () Bool)

(declare-fun e!1004214 () Bool)

(assert (=> b!1563714 (= e!1004213 e!1004214)))

(declare-fun res!697057 () Bool)

(assert (=> b!1563714 (=> (not res!697057) (not e!1004214))))

(assert (=> b!1563714 (= res!697057 (not (contains!2994 (t!141622 l!3627) (h!22374 l!3627))))))

(declare-fun b!1563715 () Bool)

(assert (=> b!1563715 (= e!1004214 (noDuplicate!236 (t!141622 l!3627)))))

(assert (= (and d!463037 (not res!697056)) b!1563714))

(assert (= (and b!1563714 res!697057) b!1563715))

(declare-fun m!1835037 () Bool)

(assert (=> b!1563714 m!1835037))

(assert (=> b!1563715 m!1834957))

(assert (=> start!145288 d!463037))

(declare-fun d!463039 () Bool)

(declare-fun lt!541437 () Bool)

(assert (=> d!463039 (= lt!541437 (select (content!2354 l!3627) elmt!170))))

(declare-fun e!1004230 () Bool)

(assert (=> d!463039 (= lt!541437 e!1004230)))

(declare-fun res!697070 () Bool)

(assert (=> d!463039 (=> (not res!697070) (not e!1004230))))

(assert (=> d!463039 (= res!697070 ((_ is Cons!16973) l!3627))))

(assert (=> d!463039 (= (contains!2994 l!3627 elmt!170) lt!541437)))

(declare-fun b!1563733 () Bool)

(declare-fun e!1004231 () Bool)

(assert (=> b!1563733 (= e!1004230 e!1004231)))

(declare-fun res!697071 () Bool)

(assert (=> b!1563733 (=> res!697071 e!1004231)))

(assert (=> b!1563733 (= res!697071 (= (h!22374 l!3627) elmt!170))))

(declare-fun b!1563734 () Bool)

(assert (=> b!1563734 (= e!1004231 (contains!2994 (t!141622 l!3627) elmt!170))))

(assert (= (and d!463039 res!697070) b!1563733))

(assert (= (and b!1563733 (not res!697071)) b!1563734))

(assert (=> d!463039 m!1835015))

(declare-fun m!1835045 () Bool)

(assert (=> d!463039 m!1835045))

(assert (=> b!1563734 m!1834941))

(assert (=> b!1563660 d!463039))

(declare-fun d!463043 () Bool)

(declare-fun lt!541438 () Bool)

(assert (=> d!463043 (= lt!541438 (select (content!2354 (t!141622 l!3627)) elmt!170))))

(declare-fun e!1004232 () Bool)

(assert (=> d!463043 (= lt!541438 e!1004232)))

(declare-fun res!697072 () Bool)

(assert (=> d!463043 (=> (not res!697072) (not e!1004232))))

(assert (=> d!463043 (= res!697072 ((_ is Cons!16973) (t!141622 l!3627)))))

(assert (=> d!463043 (= (contains!2994 (t!141622 l!3627) elmt!170) lt!541438)))

(declare-fun b!1563735 () Bool)

(declare-fun e!1004233 () Bool)

(assert (=> b!1563735 (= e!1004232 e!1004233)))

(declare-fun res!697073 () Bool)

(assert (=> b!1563735 (=> res!697073 e!1004233)))

(assert (=> b!1563735 (= res!697073 (= (h!22374 (t!141622 l!3627)) elmt!170))))

(declare-fun b!1563736 () Bool)

(assert (=> b!1563736 (= e!1004233 (contains!2994 (t!141622 (t!141622 l!3627)) elmt!170))))

(assert (= (and d!463043 res!697072) b!1563735))

(assert (= (and b!1563735 (not res!697073)) b!1563736))

(assert (=> d!463043 m!1835005))

(declare-fun m!1835047 () Bool)

(assert (=> d!463043 m!1835047))

(declare-fun m!1835049 () Bool)

(assert (=> b!1563736 m!1835049))

(assert (=> b!1563661 d!463043))

(declare-fun d!463045 () Bool)

(declare-fun res!697074 () Bool)

(declare-fun e!1004234 () Bool)

(assert (=> d!463045 (=> res!697074 e!1004234)))

(assert (=> d!463045 (= res!697074 ((_ is Nil!16973) (t!141622 l!3627)))))

(assert (=> d!463045 (= (noDuplicate!236 (t!141622 l!3627)) e!1004234)))

(declare-fun b!1563737 () Bool)

(declare-fun e!1004235 () Bool)

(assert (=> b!1563737 (= e!1004234 e!1004235)))

(declare-fun res!697075 () Bool)

(assert (=> b!1563737 (=> (not res!697075) (not e!1004235))))

(assert (=> b!1563737 (= res!697075 (not (contains!2994 (t!141622 (t!141622 l!3627)) (h!22374 (t!141622 l!3627)))))))

(declare-fun b!1563738 () Bool)

(assert (=> b!1563738 (= e!1004235 (noDuplicate!236 (t!141622 (t!141622 l!3627))))))

(assert (= (and d!463045 (not res!697074)) b!1563737))

(assert (= (and b!1563737 res!697075) b!1563738))

(declare-fun m!1835051 () Bool)

(assert (=> b!1563737 m!1835051))

(declare-fun m!1835053 () Bool)

(assert (=> b!1563738 m!1835053))

(assert (=> b!1563656 d!463045))

(declare-fun b!1563743 () Bool)

(declare-fun e!1004238 () Bool)

(declare-fun tp!460606 () Bool)

(assert (=> b!1563743 (= e!1004238 (and tp_is_empty!7121 tp!460606))))

(assert (=> b!1563657 (= tp!460600 e!1004238)))

(assert (= (and b!1563657 ((_ is Cons!16973) (t!141622 l!3627))) b!1563743))

(check-sat tp_is_empty!7121 (not d!463039) (not b!1563715) (not b!1563714) (not d!463043) (not b!1563708) (not b!1563743) (not d!463031) (not b!1563734) (not b!1563711) (not b!1563704) (not b!1563738) (not b!1563672) (not b!1563673) (not b!1563710) (not b!1563703) (not d!463027) (not b!1563707) (not d!463017) (not b!1563736) (not b!1563737))
(check-sat)
(get-model)

(declare-fun d!463047 () Bool)

(declare-fun c!253441 () Bool)

(assert (=> d!463047 (= c!253441 ((_ is Nil!16973) lt!541423))))

(declare-fun e!1004241 () (InoxSet B!1425))

(assert (=> d!463047 (= (content!2354 lt!541423) e!1004241)))

(declare-fun b!1563748 () Bool)

(assert (=> b!1563748 (= e!1004241 ((as const (Array B!1425 Bool)) false))))

(declare-fun b!1563749 () Bool)

(assert (=> b!1563749 (= e!1004241 ((_ map or) (store ((as const (Array B!1425 Bool)) false) (h!22374 lt!541423) true) (content!2354 (t!141622 lt!541423))))))

(assert (= (and d!463047 c!253441) b!1563748))

(assert (= (and d!463047 (not c!253441)) b!1563749))

(declare-fun m!1835055 () Bool)

(assert (=> b!1563749 m!1835055))

(declare-fun m!1835057 () Bool)

(assert (=> b!1563749 m!1835057))

(assert (=> d!463017 d!463047))

(declare-fun d!463049 () Bool)

(declare-fun c!253442 () Bool)

(assert (=> d!463049 (= c!253442 ((_ is Nil!16973) (t!141622 l!3627)))))

(declare-fun e!1004242 () (InoxSet B!1425))

(assert (=> d!463049 (= (content!2354 (t!141622 l!3627)) e!1004242)))

(declare-fun b!1563750 () Bool)

(assert (=> b!1563750 (= e!1004242 ((as const (Array B!1425 Bool)) false))))

(declare-fun b!1563751 () Bool)

(assert (=> b!1563751 (= e!1004242 ((_ map or) (store ((as const (Array B!1425 Bool)) false) (h!22374 (t!141622 l!3627)) true) (content!2354 (t!141622 (t!141622 l!3627)))))))

(assert (= (and d!463049 c!253442) b!1563750))

(assert (= (and d!463049 (not c!253442)) b!1563751))

(declare-fun m!1835059 () Bool)

(assert (=> b!1563751 m!1835059))

(declare-fun m!1835061 () Bool)

(assert (=> b!1563751 m!1835061))

(assert (=> d!463017 d!463049))

(declare-fun d!463051 () Bool)

(declare-fun c!253443 () Bool)

(assert (=> d!463051 (= c!253443 ((_ is Nil!16973) lt!541416))))

(declare-fun e!1004243 () (InoxSet B!1425))

(assert (=> d!463051 (= (content!2354 lt!541416) e!1004243)))

(declare-fun b!1563752 () Bool)

(assert (=> b!1563752 (= e!1004243 ((as const (Array B!1425 Bool)) false))))

(declare-fun b!1563753 () Bool)

(assert (=> b!1563753 (= e!1004243 ((_ map or) (store ((as const (Array B!1425 Bool)) false) (h!22374 lt!541416) true) (content!2354 (t!141622 lt!541416))))))

(assert (= (and d!463051 c!253443) b!1563752))

(assert (= (and d!463051 (not c!253443)) b!1563753))

(declare-fun m!1835063 () Bool)

(assert (=> b!1563753 m!1835063))

(declare-fun m!1835065 () Bool)

(assert (=> b!1563753 m!1835065))

(assert (=> d!463017 d!463051))

(assert (=> b!1563734 d!463043))

(declare-fun d!463053 () Bool)

(declare-fun lt!541439 () Bool)

(assert (=> d!463053 (= lt!541439 (select (content!2354 (t!141622 (t!141622 l!3627))) (h!22374 (t!141622 l!3627))))))

(declare-fun e!1004244 () Bool)

(assert (=> d!463053 (= lt!541439 e!1004244)))

(declare-fun res!697076 () Bool)

(assert (=> d!463053 (=> (not res!697076) (not e!1004244))))

(assert (=> d!463053 (= res!697076 ((_ is Cons!16973) (t!141622 (t!141622 l!3627))))))

(assert (=> d!463053 (= (contains!2994 (t!141622 (t!141622 l!3627)) (h!22374 (t!141622 l!3627))) lt!541439)))

(declare-fun b!1563754 () Bool)

(declare-fun e!1004245 () Bool)

(assert (=> b!1563754 (= e!1004244 e!1004245)))

(declare-fun res!697077 () Bool)

(assert (=> b!1563754 (=> res!697077 e!1004245)))

(assert (=> b!1563754 (= res!697077 (= (h!22374 (t!141622 (t!141622 l!3627))) (h!22374 (t!141622 l!3627))))))

(declare-fun b!1563755 () Bool)

(assert (=> b!1563755 (= e!1004245 (contains!2994 (t!141622 (t!141622 (t!141622 l!3627))) (h!22374 (t!141622 l!3627))))))

(assert (= (and d!463053 res!697076) b!1563754))

(assert (= (and b!1563754 (not res!697077)) b!1563755))

(assert (=> d!463053 m!1835061))

(declare-fun m!1835067 () Bool)

(assert (=> d!463053 m!1835067))

(declare-fun m!1835069 () Bool)

(assert (=> b!1563755 m!1835069))

(assert (=> b!1563737 d!463053))

(declare-fun d!463055 () Bool)

(declare-fun lt!541440 () Bool)

(assert (=> d!463055 (= lt!541440 (select (content!2354 (t!141622 (t!141622 l!3627))) elmt!170))))

(declare-fun e!1004246 () Bool)

(assert (=> d!463055 (= lt!541440 e!1004246)))

(declare-fun res!697078 () Bool)

(assert (=> d!463055 (=> (not res!697078) (not e!1004246))))

(assert (=> d!463055 (= res!697078 ((_ is Cons!16973) (t!141622 (t!141622 l!3627))))))

(assert (=> d!463055 (= (contains!2994 (t!141622 (t!141622 l!3627)) elmt!170) lt!541440)))

(declare-fun b!1563756 () Bool)

(declare-fun e!1004247 () Bool)

(assert (=> b!1563756 (= e!1004246 e!1004247)))

(declare-fun res!697079 () Bool)

(assert (=> b!1563756 (=> res!697079 e!1004247)))

(assert (=> b!1563756 (= res!697079 (= (h!22374 (t!141622 (t!141622 l!3627))) elmt!170))))

(declare-fun b!1563757 () Bool)

(assert (=> b!1563757 (= e!1004247 (contains!2994 (t!141622 (t!141622 (t!141622 l!3627))) elmt!170))))

(assert (= (and d!463055 res!697078) b!1563756))

(assert (= (and b!1563756 (not res!697079)) b!1563757))

(assert (=> d!463055 m!1835061))

(declare-fun m!1835071 () Bool)

(assert (=> d!463055 m!1835071))

(declare-fun m!1835073 () Bool)

(assert (=> b!1563757 m!1835073))

(assert (=> b!1563736 d!463055))

(assert (=> b!1563707 d!463017))

(declare-fun d!463057 () Bool)

(declare-fun c!253444 () Bool)

(assert (=> d!463057 (= c!253444 ((_ is Nil!16973) l!3627))))

(declare-fun e!1004248 () (InoxSet B!1425))

(assert (=> d!463057 (= (content!2354 l!3627) e!1004248)))

(declare-fun b!1563758 () Bool)

(assert (=> b!1563758 (= e!1004248 ((as const (Array B!1425 Bool)) false))))

(declare-fun b!1563759 () Bool)

(assert (=> b!1563759 (= e!1004248 ((_ map or) (store ((as const (Array B!1425 Bool)) false) (h!22374 l!3627) true) (content!2354 (t!141622 l!3627))))))

(assert (= (and d!463057 c!253444) b!1563758))

(assert (= (and d!463057 (not c!253444)) b!1563759))

(declare-fun m!1835075 () Bool)

(assert (=> b!1563759 m!1835075))

(assert (=> b!1563759 m!1835005))

(assert (=> d!463039 d!463057))

(declare-fun d!463059 () Bool)

(declare-fun res!697080 () Bool)

(declare-fun e!1004249 () Bool)

(assert (=> d!463059 (=> res!697080 e!1004249)))

(assert (=> d!463059 (= res!697080 ((_ is Nil!16973) (t!141622 (t!141622 l!3627))))))

(assert (=> d!463059 (= (noDuplicate!236 (t!141622 (t!141622 l!3627))) e!1004249)))

(declare-fun b!1563760 () Bool)

(declare-fun e!1004250 () Bool)

(assert (=> b!1563760 (= e!1004249 e!1004250)))

(declare-fun res!697081 () Bool)

(assert (=> b!1563760 (=> (not res!697081) (not e!1004250))))

(assert (=> b!1563760 (= res!697081 (not (contains!2994 (t!141622 (t!141622 (t!141622 l!3627))) (h!22374 (t!141622 (t!141622 l!3627))))))))

(declare-fun b!1563761 () Bool)

(assert (=> b!1563761 (= e!1004250 (noDuplicate!236 (t!141622 (t!141622 (t!141622 l!3627)))))))

(assert (= (and d!463059 (not res!697080)) b!1563760))

(assert (= (and b!1563760 res!697081) b!1563761))

(declare-fun m!1835077 () Bool)

(assert (=> b!1563760 m!1835077))

(declare-fun m!1835079 () Bool)

(assert (=> b!1563761 m!1835079))

(assert (=> b!1563738 d!463059))

(declare-fun d!463061 () Bool)

(declare-fun lt!541441 () Bool)

(assert (=> d!463061 (= lt!541441 (select (content!2354 (t!141622 (++!4426 (t!141622 l!3627) lt!541416))) (h!22374 (++!4426 (t!141622 l!3627) lt!541416))))))

(declare-fun e!1004251 () Bool)

(assert (=> d!463061 (= lt!541441 e!1004251)))

(declare-fun res!697082 () Bool)

(assert (=> d!463061 (=> (not res!697082) (not e!1004251))))

(assert (=> d!463061 (= res!697082 ((_ is Cons!16973) (t!141622 (++!4426 (t!141622 l!3627) lt!541416))))))

(assert (=> d!463061 (= (contains!2994 (t!141622 (++!4426 (t!141622 l!3627) lt!541416)) (h!22374 (++!4426 (t!141622 l!3627) lt!541416))) lt!541441)))

(declare-fun b!1563762 () Bool)

(declare-fun e!1004252 () Bool)

(assert (=> b!1563762 (= e!1004251 e!1004252)))

(declare-fun res!697083 () Bool)

(assert (=> b!1563762 (=> res!697083 e!1004252)))

(assert (=> b!1563762 (= res!697083 (= (h!22374 (t!141622 (++!4426 (t!141622 l!3627) lt!541416))) (h!22374 (++!4426 (t!141622 l!3627) lt!541416))))))

(declare-fun b!1563763 () Bool)

(assert (=> b!1563763 (= e!1004252 (contains!2994 (t!141622 (t!141622 (++!4426 (t!141622 l!3627) lt!541416))) (h!22374 (++!4426 (t!141622 l!3627) lt!541416))))))

(assert (= (and d!463061 res!697082) b!1563762))

(assert (= (and b!1563762 (not res!697083)) b!1563763))

(declare-fun m!1835081 () Bool)

(assert (=> d!463061 m!1835081))

(declare-fun m!1835083 () Bool)

(assert (=> d!463061 m!1835083))

(declare-fun m!1835085 () Bool)

(assert (=> b!1563763 m!1835085))

(assert (=> b!1563672 d!463061))

(declare-fun d!463063 () Bool)

(declare-fun lt!541444 () Int)

(assert (=> d!463063 (>= lt!541444 0)))

(declare-fun e!1004255 () Int)

(assert (=> d!463063 (= lt!541444 e!1004255)))

(declare-fun c!253447 () Bool)

(assert (=> d!463063 (= c!253447 ((_ is Nil!16973) lt!541424))))

(assert (=> d!463063 (= (size!13768 lt!541424) lt!541444)))

(declare-fun b!1563768 () Bool)

(assert (=> b!1563768 (= e!1004255 0)))

(declare-fun b!1563769 () Bool)

(assert (=> b!1563769 (= e!1004255 (+ 1 (size!13768 (t!141622 lt!541424))))))

(assert (= (and d!463063 c!253447) b!1563768))

(assert (= (and d!463063 (not c!253447)) b!1563769))

(declare-fun m!1835087 () Bool)

(assert (=> b!1563769 m!1835087))

(assert (=> b!1563708 d!463063))

(declare-fun d!463065 () Bool)

(declare-fun lt!541445 () Int)

(assert (=> d!463065 (>= lt!541445 0)))

(declare-fun e!1004256 () Int)

(assert (=> d!463065 (= lt!541445 e!1004256)))

(declare-fun c!253448 () Bool)

(assert (=> d!463065 (= c!253448 ((_ is Nil!16973) l!3627))))

(assert (=> d!463065 (= (size!13768 l!3627) lt!541445)))

(declare-fun b!1563770 () Bool)

(assert (=> b!1563770 (= e!1004256 0)))

(declare-fun b!1563771 () Bool)

(assert (=> b!1563771 (= e!1004256 (+ 1 (size!13768 (t!141622 l!3627))))))

(assert (= (and d!463065 c!253448) b!1563770))

(assert (= (and d!463065 (not c!253448)) b!1563771))

(assert (=> b!1563771 m!1834997))

(assert (=> b!1563708 d!463065))

(declare-fun d!463067 () Bool)

(declare-fun lt!541446 () Int)

(assert (=> d!463067 (>= lt!541446 0)))

(declare-fun e!1004257 () Int)

(assert (=> d!463067 (= lt!541446 e!1004257)))

(declare-fun c!253449 () Bool)

(assert (=> d!463067 (= c!253449 ((_ is Nil!16973) lt!541416))))

(assert (=> d!463067 (= (size!13768 lt!541416) lt!541446)))

(declare-fun b!1563772 () Bool)

(assert (=> b!1563772 (= e!1004257 0)))

(declare-fun b!1563773 () Bool)

(assert (=> b!1563773 (= e!1004257 (+ 1 (size!13768 (t!141622 lt!541416))))))

(assert (= (and d!463067 c!253449) b!1563772))

(assert (= (and d!463067 (not c!253449)) b!1563773))

(declare-fun m!1835089 () Bool)

(assert (=> b!1563773 m!1835089))

(assert (=> b!1563708 d!463067))

(declare-fun d!463069 () Bool)

(declare-fun res!697084 () Bool)

(declare-fun e!1004258 () Bool)

(assert (=> d!463069 (=> res!697084 e!1004258)))

(assert (=> d!463069 (= res!697084 ((_ is Nil!16973) (t!141622 (++!4426 (t!141622 l!3627) lt!541416))))))

(assert (=> d!463069 (= (noDuplicate!236 (t!141622 (++!4426 (t!141622 l!3627) lt!541416))) e!1004258)))

(declare-fun b!1563774 () Bool)

(declare-fun e!1004259 () Bool)

(assert (=> b!1563774 (= e!1004258 e!1004259)))

(declare-fun res!697085 () Bool)

(assert (=> b!1563774 (=> (not res!697085) (not e!1004259))))

(assert (=> b!1563774 (= res!697085 (not (contains!2994 (t!141622 (t!141622 (++!4426 (t!141622 l!3627) lt!541416))) (h!22374 (t!141622 (++!4426 (t!141622 l!3627) lt!541416))))))))

(declare-fun b!1563775 () Bool)

(assert (=> b!1563775 (= e!1004259 (noDuplicate!236 (t!141622 (t!141622 (++!4426 (t!141622 l!3627) lt!541416)))))))

(assert (= (and d!463069 (not res!697084)) b!1563774))

(assert (= (and b!1563774 res!697085) b!1563775))

(declare-fun m!1835091 () Bool)

(assert (=> b!1563774 m!1835091))

(declare-fun m!1835093 () Bool)

(assert (=> b!1563775 m!1835093))

(assert (=> b!1563673 d!463069))

(assert (=> d!463043 d!463049))

(declare-fun d!463071 () Bool)

(declare-fun c!253450 () Bool)

(assert (=> d!463071 (= c!253450 ((_ is Nil!16973) lt!541424))))

(declare-fun e!1004260 () (InoxSet B!1425))

(assert (=> d!463071 (= (content!2354 lt!541424) e!1004260)))

(declare-fun b!1563776 () Bool)

(assert (=> b!1563776 (= e!1004260 ((as const (Array B!1425 Bool)) false))))

(declare-fun b!1563777 () Bool)

(assert (=> b!1563777 (= e!1004260 ((_ map or) (store ((as const (Array B!1425 Bool)) false) (h!22374 lt!541424) true) (content!2354 (t!141622 lt!541424))))))

(assert (= (and d!463071 c!253450) b!1563776))

(assert (= (and d!463071 (not c!253450)) b!1563777))

(declare-fun m!1835095 () Bool)

(assert (=> b!1563777 m!1835095))

(declare-fun m!1835097 () Bool)

(assert (=> b!1563777 m!1835097))

(assert (=> d!463027 d!463071))

(assert (=> d!463027 d!463057))

(assert (=> d!463027 d!463051))

(declare-fun d!463073 () Bool)

(declare-fun res!697086 () Bool)

(declare-fun e!1004261 () Bool)

(assert (=> d!463073 (=> res!697086 e!1004261)))

(assert (=> d!463073 (= res!697086 ((_ is Nil!16973) (++!4426 (t!141622 l!3627) (Cons!16973 elmt!170 Nil!16973))))))

(assert (=> d!463073 (= (noDuplicate!236 (++!4426 (t!141622 l!3627) (Cons!16973 elmt!170 Nil!16973))) e!1004261)))

(declare-fun b!1563778 () Bool)

(declare-fun e!1004262 () Bool)

(assert (=> b!1563778 (= e!1004261 e!1004262)))

(declare-fun res!697087 () Bool)

(assert (=> b!1563778 (=> (not res!697087) (not e!1004262))))

(assert (=> b!1563778 (= res!697087 (not (contains!2994 (t!141622 (++!4426 (t!141622 l!3627) (Cons!16973 elmt!170 Nil!16973))) (h!22374 (++!4426 (t!141622 l!3627) (Cons!16973 elmt!170 Nil!16973))))))))

(declare-fun b!1563779 () Bool)

(assert (=> b!1563779 (= e!1004262 (noDuplicate!236 (t!141622 (++!4426 (t!141622 l!3627) (Cons!16973 elmt!170 Nil!16973)))))))

(assert (= (and d!463073 (not res!697086)) b!1563778))

(assert (= (and b!1563778 res!697087) b!1563779))

(declare-fun m!1835099 () Bool)

(assert (=> b!1563778 m!1835099))

(declare-fun m!1835101 () Bool)

(assert (=> b!1563779 m!1835101))

(assert (=> d!463031 d!463073))

(declare-fun b!1563780 () Bool)

(declare-fun e!1004264 () List!17043)

(assert (=> b!1563780 (= e!1004264 (Cons!16973 elmt!170 Nil!16973))))

(declare-fun b!1563782 () Bool)

(declare-fun res!697089 () Bool)

(declare-fun e!1004263 () Bool)

(assert (=> b!1563782 (=> (not res!697089) (not e!1004263))))

(declare-fun lt!541447 () List!17043)

(assert (=> b!1563782 (= res!697089 (= (size!13768 lt!541447) (+ (size!13768 (t!141622 l!3627)) (size!13768 (Cons!16973 elmt!170 Nil!16973)))))))

(declare-fun b!1563781 () Bool)

(assert (=> b!1563781 (= e!1004264 (Cons!16973 (h!22374 (t!141622 l!3627)) (++!4426 (t!141622 (t!141622 l!3627)) (Cons!16973 elmt!170 Nil!16973))))))

(declare-fun d!463075 () Bool)

(assert (=> d!463075 e!1004263))

(declare-fun res!697088 () Bool)

(assert (=> d!463075 (=> (not res!697088) (not e!1004263))))

(assert (=> d!463075 (= res!697088 (= (content!2354 lt!541447) ((_ map or) (content!2354 (t!141622 l!3627)) (content!2354 (Cons!16973 elmt!170 Nil!16973)))))))

(assert (=> d!463075 (= lt!541447 e!1004264)))

(declare-fun c!253451 () Bool)

(assert (=> d!463075 (= c!253451 ((_ is Nil!16973) (t!141622 l!3627)))))

(assert (=> d!463075 (= (++!4426 (t!141622 l!3627) (Cons!16973 elmt!170 Nil!16973)) lt!541447)))

(declare-fun b!1563783 () Bool)

(assert (=> b!1563783 (= e!1004263 (or (not (= (Cons!16973 elmt!170 Nil!16973) Nil!16973)) (= lt!541447 (t!141622 l!3627))))))

(assert (= (and d!463075 c!253451) b!1563780))

(assert (= (and d!463075 (not c!253451)) b!1563781))

(assert (= (and d!463075 res!697088) b!1563782))

(assert (= (and b!1563782 res!697089) b!1563783))

(declare-fun m!1835103 () Bool)

(assert (=> b!1563782 m!1835103))

(assert (=> b!1563782 m!1834997))

(declare-fun m!1835105 () Bool)

(assert (=> b!1563782 m!1835105))

(declare-fun m!1835107 () Bool)

(assert (=> b!1563781 m!1835107))

(declare-fun m!1835109 () Bool)

(assert (=> d!463075 m!1835109))

(assert (=> d!463075 m!1835005))

(declare-fun m!1835111 () Bool)

(assert (=> d!463075 m!1835111))

(assert (=> d!463031 d!463075))

(declare-fun d!463077 () Bool)

(assert (=> d!463077 (noDuplicate!236 (++!4426 (t!141622 l!3627) (Cons!16973 elmt!170 Nil!16973)))))

(assert (=> d!463077 true))

(declare-fun _$70!89 () Unit!26169)

(assert (=> d!463077 (= (choose!9340 (t!141622 l!3627) elmt!170) _$70!89)))

(declare-fun bs!389490 () Bool)

(assert (= bs!389490 d!463077))

(assert (=> bs!389490 m!1835031))

(assert (=> bs!389490 m!1835031))

(assert (=> bs!389490 m!1835033))

(assert (=> d!463031 d!463077))

(assert (=> d!463031 d!463045))

(declare-fun d!463079 () Bool)

(declare-fun lt!541448 () Bool)

(assert (=> d!463079 (= lt!541448 (select (content!2354 (t!141622 l!3627)) (h!22374 l!3627)))))

(declare-fun e!1004265 () Bool)

(assert (=> d!463079 (= lt!541448 e!1004265)))

(declare-fun res!697090 () Bool)

(assert (=> d!463079 (=> (not res!697090) (not e!1004265))))

(assert (=> d!463079 (= res!697090 ((_ is Cons!16973) (t!141622 l!3627)))))

(assert (=> d!463079 (= (contains!2994 (t!141622 l!3627) (h!22374 l!3627)) lt!541448)))

(declare-fun b!1563784 () Bool)

(declare-fun e!1004266 () Bool)

(assert (=> b!1563784 (= e!1004265 e!1004266)))

(declare-fun res!697091 () Bool)

(assert (=> b!1563784 (=> res!697091 e!1004266)))

(assert (=> b!1563784 (= res!697091 (= (h!22374 (t!141622 l!3627)) (h!22374 l!3627)))))

(declare-fun b!1563785 () Bool)

(assert (=> b!1563785 (= e!1004266 (contains!2994 (t!141622 (t!141622 l!3627)) (h!22374 l!3627)))))

(assert (= (and d!463079 res!697090) b!1563784))

(assert (= (and b!1563784 (not res!697091)) b!1563785))

(assert (=> d!463079 m!1835005))

(declare-fun m!1835113 () Bool)

(assert (=> d!463079 m!1835113))

(declare-fun m!1835115 () Bool)

(assert (=> b!1563785 m!1835115))

(assert (=> b!1563714 d!463079))

(assert (=> b!1563715 d!463045))

(declare-fun b!1563786 () Bool)

(declare-fun e!1004268 () List!17043)

(assert (=> b!1563786 (= e!1004268 lt!541416)))

(declare-fun b!1563788 () Bool)

(declare-fun res!697093 () Bool)

(declare-fun e!1004267 () Bool)

(assert (=> b!1563788 (=> (not res!697093) (not e!1004267))))

(declare-fun lt!541449 () List!17043)

(assert (=> b!1563788 (= res!697093 (= (size!13768 lt!541449) (+ (size!13768 (t!141622 (t!141622 l!3627))) (size!13768 lt!541416))))))

(declare-fun b!1563787 () Bool)

(assert (=> b!1563787 (= e!1004268 (Cons!16973 (h!22374 (t!141622 (t!141622 l!3627))) (++!4426 (t!141622 (t!141622 (t!141622 l!3627))) lt!541416)))))

(declare-fun d!463081 () Bool)

(assert (=> d!463081 e!1004267))

(declare-fun res!697092 () Bool)

(assert (=> d!463081 (=> (not res!697092) (not e!1004267))))

(assert (=> d!463081 (= res!697092 (= (content!2354 lt!541449) ((_ map or) (content!2354 (t!141622 (t!141622 l!3627))) (content!2354 lt!541416))))))

(assert (=> d!463081 (= lt!541449 e!1004268)))

(declare-fun c!253452 () Bool)

(assert (=> d!463081 (= c!253452 ((_ is Nil!16973) (t!141622 (t!141622 l!3627))))))

(assert (=> d!463081 (= (++!4426 (t!141622 (t!141622 l!3627)) lt!541416) lt!541449)))

(declare-fun b!1563789 () Bool)

(assert (=> b!1563789 (= e!1004267 (or (not (= lt!541416 Nil!16973)) (= lt!541449 (t!141622 (t!141622 l!3627)))))))

(assert (= (and d!463081 c!253452) b!1563786))

(assert (= (and d!463081 (not c!253452)) b!1563787))

(assert (= (and d!463081 res!697092) b!1563788))

(assert (= (and b!1563788 res!697093) b!1563789))

(declare-fun m!1835117 () Bool)

(assert (=> b!1563788 m!1835117))

(declare-fun m!1835119 () Bool)

(assert (=> b!1563788 m!1835119))

(assert (=> b!1563788 m!1834999))

(declare-fun m!1835121 () Bool)

(assert (=> b!1563787 m!1835121))

(declare-fun m!1835123 () Bool)

(assert (=> d!463081 m!1835123))

(assert (=> d!463081 m!1835061))

(assert (=> d!463081 m!1835007))

(assert (=> b!1563703 d!463081))

(declare-fun d!463083 () Bool)

(declare-fun lt!541450 () Bool)

(assert (=> d!463083 (= lt!541450 (select (content!2354 (t!141622 (++!4426 l!3627 lt!541416))) (h!22374 (++!4426 l!3627 lt!541416))))))

(declare-fun e!1004269 () Bool)

(assert (=> d!463083 (= lt!541450 e!1004269)))

(declare-fun res!697094 () Bool)

(assert (=> d!463083 (=> (not res!697094) (not e!1004269))))

(assert (=> d!463083 (= res!697094 ((_ is Cons!16973) (t!141622 (++!4426 l!3627 lt!541416))))))

(assert (=> d!463083 (= (contains!2994 (t!141622 (++!4426 l!3627 lt!541416)) (h!22374 (++!4426 l!3627 lt!541416))) lt!541450)))

(declare-fun b!1563790 () Bool)

(declare-fun e!1004270 () Bool)

(assert (=> b!1563790 (= e!1004269 e!1004270)))

(declare-fun res!697095 () Bool)

(assert (=> b!1563790 (=> res!697095 e!1004270)))

(assert (=> b!1563790 (= res!697095 (= (h!22374 (t!141622 (++!4426 l!3627 lt!541416))) (h!22374 (++!4426 l!3627 lt!541416))))))

(declare-fun b!1563791 () Bool)

(assert (=> b!1563791 (= e!1004270 (contains!2994 (t!141622 (t!141622 (++!4426 l!3627 lt!541416))) (h!22374 (++!4426 l!3627 lt!541416))))))

(assert (= (and d!463083 res!697094) b!1563790))

(assert (= (and b!1563790 (not res!697095)) b!1563791))

(declare-fun m!1835125 () Bool)

(assert (=> d!463083 m!1835125))

(declare-fun m!1835127 () Bool)

(assert (=> d!463083 m!1835127))

(declare-fun m!1835129 () Bool)

(assert (=> b!1563791 m!1835129))

(assert (=> b!1563710 d!463083))

(declare-fun d!463085 () Bool)

(declare-fun res!697096 () Bool)

(declare-fun e!1004271 () Bool)

(assert (=> d!463085 (=> res!697096 e!1004271)))

(assert (=> d!463085 (= res!697096 ((_ is Nil!16973) (t!141622 (++!4426 l!3627 lt!541416))))))

(assert (=> d!463085 (= (noDuplicate!236 (t!141622 (++!4426 l!3627 lt!541416))) e!1004271)))

(declare-fun b!1563792 () Bool)

(declare-fun e!1004272 () Bool)

(assert (=> b!1563792 (= e!1004271 e!1004272)))

(declare-fun res!697097 () Bool)

(assert (=> b!1563792 (=> (not res!697097) (not e!1004272))))

(assert (=> b!1563792 (= res!697097 (not (contains!2994 (t!141622 (t!141622 (++!4426 l!3627 lt!541416))) (h!22374 (t!141622 (++!4426 l!3627 lt!541416))))))))

(declare-fun b!1563793 () Bool)

(assert (=> b!1563793 (= e!1004272 (noDuplicate!236 (t!141622 (t!141622 (++!4426 l!3627 lt!541416)))))))

(assert (= (and d!463085 (not res!697096)) b!1563792))

(assert (= (and b!1563792 res!697097) b!1563793))

(declare-fun m!1835131 () Bool)

(assert (=> b!1563792 m!1835131))

(declare-fun m!1835133 () Bool)

(assert (=> b!1563793 m!1835133))

(assert (=> b!1563711 d!463085))

(declare-fun d!463087 () Bool)

(declare-fun lt!541451 () Int)

(assert (=> d!463087 (>= lt!541451 0)))

(declare-fun e!1004273 () Int)

(assert (=> d!463087 (= lt!541451 e!1004273)))

(declare-fun c!253453 () Bool)

(assert (=> d!463087 (= c!253453 ((_ is Nil!16973) lt!541423))))

(assert (=> d!463087 (= (size!13768 lt!541423) lt!541451)))

(declare-fun b!1563794 () Bool)

(assert (=> b!1563794 (= e!1004273 0)))

(declare-fun b!1563795 () Bool)

(assert (=> b!1563795 (= e!1004273 (+ 1 (size!13768 (t!141622 lt!541423))))))

(assert (= (and d!463087 c!253453) b!1563794))

(assert (= (and d!463087 (not c!253453)) b!1563795))

(declare-fun m!1835135 () Bool)

(assert (=> b!1563795 m!1835135))

(assert (=> b!1563704 d!463087))

(declare-fun d!463089 () Bool)

(declare-fun lt!541452 () Int)

(assert (=> d!463089 (>= lt!541452 0)))

(declare-fun e!1004274 () Int)

(assert (=> d!463089 (= lt!541452 e!1004274)))

(declare-fun c!253454 () Bool)

(assert (=> d!463089 (= c!253454 ((_ is Nil!16973) (t!141622 l!3627)))))

(assert (=> d!463089 (= (size!13768 (t!141622 l!3627)) lt!541452)))

(declare-fun b!1563796 () Bool)

(assert (=> b!1563796 (= e!1004274 0)))

(declare-fun b!1563797 () Bool)

(assert (=> b!1563797 (= e!1004274 (+ 1 (size!13768 (t!141622 (t!141622 l!3627)))))))

(assert (= (and d!463089 c!253454) b!1563796))

(assert (= (and d!463089 (not c!253454)) b!1563797))

(assert (=> b!1563797 m!1835119))

(assert (=> b!1563704 d!463089))

(assert (=> b!1563704 d!463067))

(declare-fun b!1563798 () Bool)

(declare-fun e!1004275 () Bool)

(declare-fun tp!460607 () Bool)

(assert (=> b!1563798 (= e!1004275 (and tp_is_empty!7121 tp!460607))))

(assert (=> b!1563743 (= tp!460606 e!1004275)))

(assert (= (and b!1563743 ((_ is Cons!16973) (t!141622 (t!141622 l!3627)))) b!1563798))

(check-sat (not b!1563757) (not b!1563775) (not d!463077) (not d!463081) (not b!1563759) (not b!1563781) (not d!463075) (not b!1563785) (not b!1563751) (not b!1563761) (not b!1563755) (not b!1563774) (not d!463079) (not b!1563760) (not b!1563753) (not b!1563791) (not b!1563792) (not b!1563779) (not d!463061) (not d!463083) (not b!1563769) (not d!463053) (not b!1563771) (not b!1563777) (not b!1563795) tp_is_empty!7121 (not b!1563797) (not b!1563787) (not b!1563788) (not b!1563782) (not b!1563798) (not b!1563793) (not b!1563778) (not d!463055) (not b!1563773) (not b!1563763) (not b!1563749))
(check-sat)
(get-model)

(declare-fun d!463135 () Bool)

(declare-fun lt!541467 () Int)

(assert (=> d!463135 (>= lt!541467 0)))

(declare-fun e!1004313 () Int)

(assert (=> d!463135 (= lt!541467 e!1004313)))

(declare-fun c!253471 () Bool)

(assert (=> d!463135 (= c!253471 ((_ is Nil!16973) (t!141622 (t!141622 l!3627))))))

(assert (=> d!463135 (= (size!13768 (t!141622 (t!141622 l!3627))) lt!541467)))

(declare-fun b!1563854 () Bool)

(assert (=> b!1563854 (= e!1004313 0)))

(declare-fun b!1563855 () Bool)

(assert (=> b!1563855 (= e!1004313 (+ 1 (size!13768 (t!141622 (t!141622 (t!141622 l!3627))))))))

(assert (= (and d!463135 c!253471) b!1563854))

(assert (= (and d!463135 (not c!253471)) b!1563855))

(declare-fun m!1835219 () Bool)

(assert (=> b!1563855 m!1835219))

(assert (=> b!1563797 d!463135))

(declare-fun d!463137 () Bool)

(declare-fun c!253472 () Bool)

(assert (=> d!463137 (= c!253472 ((_ is Nil!16973) lt!541447))))

(declare-fun e!1004314 () (InoxSet B!1425))

(assert (=> d!463137 (= (content!2354 lt!541447) e!1004314)))

(declare-fun b!1563856 () Bool)

(assert (=> b!1563856 (= e!1004314 ((as const (Array B!1425 Bool)) false))))

(declare-fun b!1563857 () Bool)

(assert (=> b!1563857 (= e!1004314 ((_ map or) (store ((as const (Array B!1425 Bool)) false) (h!22374 lt!541447) true) (content!2354 (t!141622 lt!541447))))))

(assert (= (and d!463137 c!253472) b!1563856))

(assert (= (and d!463137 (not c!253472)) b!1563857))

(declare-fun m!1835221 () Bool)

(assert (=> b!1563857 m!1835221))

(declare-fun m!1835223 () Bool)

(assert (=> b!1563857 m!1835223))

(assert (=> d!463075 d!463137))

(assert (=> d!463075 d!463049))

(declare-fun d!463139 () Bool)

(declare-fun c!253473 () Bool)

(assert (=> d!463139 (= c!253473 ((_ is Nil!16973) (Cons!16973 elmt!170 Nil!16973)))))

(declare-fun e!1004315 () (InoxSet B!1425))

(assert (=> d!463139 (= (content!2354 (Cons!16973 elmt!170 Nil!16973)) e!1004315)))

(declare-fun b!1563858 () Bool)

(assert (=> b!1563858 (= e!1004315 ((as const (Array B!1425 Bool)) false))))

(declare-fun b!1563859 () Bool)

(assert (=> b!1563859 (= e!1004315 ((_ map or) (store ((as const (Array B!1425 Bool)) false) (h!22374 (Cons!16973 elmt!170 Nil!16973)) true) (content!2354 (t!141622 (Cons!16973 elmt!170 Nil!16973)))))))

(assert (= (and d!463139 c!253473) b!1563858))

(assert (= (and d!463139 (not c!253473)) b!1563859))

(declare-fun m!1835225 () Bool)

(assert (=> b!1563859 m!1835225))

(declare-fun m!1835227 () Bool)

(assert (=> b!1563859 m!1835227))

(assert (=> d!463075 d!463139))

(declare-fun d!463141 () Bool)

(declare-fun lt!541468 () Bool)

(assert (=> d!463141 (= lt!541468 (select (content!2354 (t!141622 (t!141622 (++!4426 l!3627 lt!541416)))) (h!22374 (t!141622 (++!4426 l!3627 lt!541416)))))))

(declare-fun e!1004316 () Bool)

(assert (=> d!463141 (= lt!541468 e!1004316)))

(declare-fun res!697120 () Bool)

(assert (=> d!463141 (=> (not res!697120) (not e!1004316))))

(assert (=> d!463141 (= res!697120 ((_ is Cons!16973) (t!141622 (t!141622 (++!4426 l!3627 lt!541416)))))))

(assert (=> d!463141 (= (contains!2994 (t!141622 (t!141622 (++!4426 l!3627 lt!541416))) (h!22374 (t!141622 (++!4426 l!3627 lt!541416)))) lt!541468)))

(declare-fun b!1563860 () Bool)

(declare-fun e!1004317 () Bool)

(assert (=> b!1563860 (= e!1004316 e!1004317)))

(declare-fun res!697121 () Bool)

(assert (=> b!1563860 (=> res!697121 e!1004317)))

(assert (=> b!1563860 (= res!697121 (= (h!22374 (t!141622 (t!141622 (++!4426 l!3627 lt!541416)))) (h!22374 (t!141622 (++!4426 l!3627 lt!541416)))))))

(declare-fun b!1563861 () Bool)

(assert (=> b!1563861 (= e!1004317 (contains!2994 (t!141622 (t!141622 (t!141622 (++!4426 l!3627 lt!541416)))) (h!22374 (t!141622 (++!4426 l!3627 lt!541416)))))))

(assert (= (and d!463141 res!697120) b!1563860))

(assert (= (and b!1563860 (not res!697121)) b!1563861))

(declare-fun m!1835229 () Bool)

(assert (=> d!463141 m!1835229))

(declare-fun m!1835231 () Bool)

(assert (=> d!463141 m!1835231))

(declare-fun m!1835233 () Bool)

(assert (=> b!1563861 m!1835233))

(assert (=> b!1563792 d!463141))

(assert (=> d!463077 d!463073))

(assert (=> d!463077 d!463075))

(declare-fun d!463143 () Bool)

(declare-fun res!697122 () Bool)

(declare-fun e!1004318 () Bool)

(assert (=> d!463143 (=> res!697122 e!1004318)))

(assert (=> d!463143 (= res!697122 ((_ is Nil!16973) (t!141622 (t!141622 (++!4426 l!3627 lt!541416)))))))

(assert (=> d!463143 (= (noDuplicate!236 (t!141622 (t!141622 (++!4426 l!3627 lt!541416)))) e!1004318)))

(declare-fun b!1563862 () Bool)

(declare-fun e!1004319 () Bool)

(assert (=> b!1563862 (= e!1004318 e!1004319)))

(declare-fun res!697123 () Bool)

(assert (=> b!1563862 (=> (not res!697123) (not e!1004319))))

(assert (=> b!1563862 (= res!697123 (not (contains!2994 (t!141622 (t!141622 (t!141622 (++!4426 l!3627 lt!541416)))) (h!22374 (t!141622 (t!141622 (++!4426 l!3627 lt!541416)))))))))

(declare-fun b!1563863 () Bool)

(assert (=> b!1563863 (= e!1004319 (noDuplicate!236 (t!141622 (t!141622 (t!141622 (++!4426 l!3627 lt!541416))))))))

(assert (= (and d!463143 (not res!697122)) b!1563862))

(assert (= (and b!1563862 res!697123) b!1563863))

(declare-fun m!1835235 () Bool)

(assert (=> b!1563862 m!1835235))

(declare-fun m!1835237 () Bool)

(assert (=> b!1563863 m!1835237))

(assert (=> b!1563793 d!463143))

(declare-fun d!463145 () Bool)

(declare-fun c!253474 () Bool)

(assert (=> d!463145 (= c!253474 ((_ is Nil!16973) (t!141622 (t!141622 l!3627))))))

(declare-fun e!1004320 () (InoxSet B!1425))

(assert (=> d!463145 (= (content!2354 (t!141622 (t!141622 l!3627))) e!1004320)))

(declare-fun b!1563864 () Bool)

(assert (=> b!1563864 (= e!1004320 ((as const (Array B!1425 Bool)) false))))

(declare-fun b!1563865 () Bool)

(assert (=> b!1563865 (= e!1004320 ((_ map or) (store ((as const (Array B!1425 Bool)) false) (h!22374 (t!141622 (t!141622 l!3627))) true) (content!2354 (t!141622 (t!141622 (t!141622 l!3627))))))))

(assert (= (and d!463145 c!253474) b!1563864))

(assert (= (and d!463145 (not c!253474)) b!1563865))

(declare-fun m!1835239 () Bool)

(assert (=> b!1563865 m!1835239))

(declare-fun m!1835241 () Bool)

(assert (=> b!1563865 m!1835241))

(assert (=> b!1563751 d!463145))

(declare-fun d!463147 () Bool)

(declare-fun c!253475 () Bool)

(assert (=> d!463147 (= c!253475 ((_ is Nil!16973) (t!141622 (++!4426 l!3627 lt!541416))))))

(declare-fun e!1004321 () (InoxSet B!1425))

(assert (=> d!463147 (= (content!2354 (t!141622 (++!4426 l!3627 lt!541416))) e!1004321)))

(declare-fun b!1563866 () Bool)

(assert (=> b!1563866 (= e!1004321 ((as const (Array B!1425 Bool)) false))))

(declare-fun b!1563867 () Bool)

(assert (=> b!1563867 (= e!1004321 ((_ map or) (store ((as const (Array B!1425 Bool)) false) (h!22374 (t!141622 (++!4426 l!3627 lt!541416))) true) (content!2354 (t!141622 (t!141622 (++!4426 l!3627 lt!541416))))))))

(assert (= (and d!463147 c!253475) b!1563866))

(assert (= (and d!463147 (not c!253475)) b!1563867))

(declare-fun m!1835243 () Bool)

(assert (=> b!1563867 m!1835243))

(assert (=> b!1563867 m!1835229))

(assert (=> d!463083 d!463147))

(declare-fun d!463149 () Bool)

(declare-fun lt!541469 () Bool)

(assert (=> d!463149 (= lt!541469 (select (content!2354 (t!141622 (t!141622 (t!141622 l!3627)))) (h!22374 (t!141622 l!3627))))))

(declare-fun e!1004322 () Bool)

(assert (=> d!463149 (= lt!541469 e!1004322)))

(declare-fun res!697124 () Bool)

(assert (=> d!463149 (=> (not res!697124) (not e!1004322))))

(assert (=> d!463149 (= res!697124 ((_ is Cons!16973) (t!141622 (t!141622 (t!141622 l!3627)))))))

(assert (=> d!463149 (= (contains!2994 (t!141622 (t!141622 (t!141622 l!3627))) (h!22374 (t!141622 l!3627))) lt!541469)))

(declare-fun b!1563868 () Bool)

(declare-fun e!1004323 () Bool)

(assert (=> b!1563868 (= e!1004322 e!1004323)))

(declare-fun res!697125 () Bool)

(assert (=> b!1563868 (=> res!697125 e!1004323)))

(assert (=> b!1563868 (= res!697125 (= (h!22374 (t!141622 (t!141622 (t!141622 l!3627)))) (h!22374 (t!141622 l!3627))))))

(declare-fun b!1563869 () Bool)

(assert (=> b!1563869 (= e!1004323 (contains!2994 (t!141622 (t!141622 (t!141622 (t!141622 l!3627)))) (h!22374 (t!141622 l!3627))))))

(assert (= (and d!463149 res!697124) b!1563868))

(assert (= (and b!1563868 (not res!697125)) b!1563869))

(assert (=> d!463149 m!1835241))

(declare-fun m!1835245 () Bool)

(assert (=> d!463149 m!1835245))

(declare-fun m!1835247 () Bool)

(assert (=> b!1563869 m!1835247))

(assert (=> b!1563755 d!463149))

(declare-fun d!463151 () Bool)

(declare-fun c!253476 () Bool)

(assert (=> d!463151 (= c!253476 ((_ is Nil!16973) lt!541449))))

(declare-fun e!1004324 () (InoxSet B!1425))

(assert (=> d!463151 (= (content!2354 lt!541449) e!1004324)))

(declare-fun b!1563870 () Bool)

(assert (=> b!1563870 (= e!1004324 ((as const (Array B!1425 Bool)) false))))

(declare-fun b!1563871 () Bool)

(assert (=> b!1563871 (= e!1004324 ((_ map or) (store ((as const (Array B!1425 Bool)) false) (h!22374 lt!541449) true) (content!2354 (t!141622 lt!541449))))))

(assert (= (and d!463151 c!253476) b!1563870))

(assert (= (and d!463151 (not c!253476)) b!1563871))

(declare-fun m!1835249 () Bool)

(assert (=> b!1563871 m!1835249))

(declare-fun m!1835251 () Bool)

(assert (=> b!1563871 m!1835251))

(assert (=> d!463081 d!463151))

(assert (=> d!463081 d!463145))

(assert (=> d!463081 d!463051))

(declare-fun d!463153 () Bool)

(declare-fun c!253477 () Bool)

(assert (=> d!463153 (= c!253477 ((_ is Nil!16973) (t!141622 lt!541424)))))

(declare-fun e!1004325 () (InoxSet B!1425))

(assert (=> d!463153 (= (content!2354 (t!141622 lt!541424)) e!1004325)))

(declare-fun b!1563872 () Bool)

(assert (=> b!1563872 (= e!1004325 ((as const (Array B!1425 Bool)) false))))

(declare-fun b!1563873 () Bool)

(assert (=> b!1563873 (= e!1004325 ((_ map or) (store ((as const (Array B!1425 Bool)) false) (h!22374 (t!141622 lt!541424)) true) (content!2354 (t!141622 (t!141622 lt!541424)))))))

(assert (= (and d!463153 c!253477) b!1563872))

(assert (= (and d!463153 (not c!253477)) b!1563873))

(declare-fun m!1835253 () Bool)

(assert (=> b!1563873 m!1835253))

(declare-fun m!1835255 () Bool)

(assert (=> b!1563873 m!1835255))

(assert (=> b!1563777 d!463153))

(assert (=> b!1563759 d!463049))

(declare-fun d!463155 () Bool)

(declare-fun res!697126 () Bool)

(declare-fun e!1004326 () Bool)

(assert (=> d!463155 (=> res!697126 e!1004326)))

(assert (=> d!463155 (= res!697126 ((_ is Nil!16973) (t!141622 (++!4426 (t!141622 l!3627) (Cons!16973 elmt!170 Nil!16973)))))))

(assert (=> d!463155 (= (noDuplicate!236 (t!141622 (++!4426 (t!141622 l!3627) (Cons!16973 elmt!170 Nil!16973)))) e!1004326)))

(declare-fun b!1563874 () Bool)

(declare-fun e!1004327 () Bool)

(assert (=> b!1563874 (= e!1004326 e!1004327)))

(declare-fun res!697127 () Bool)

(assert (=> b!1563874 (=> (not res!697127) (not e!1004327))))

(assert (=> b!1563874 (= res!697127 (not (contains!2994 (t!141622 (t!141622 (++!4426 (t!141622 l!3627) (Cons!16973 elmt!170 Nil!16973)))) (h!22374 (t!141622 (++!4426 (t!141622 l!3627) (Cons!16973 elmt!170 Nil!16973)))))))))

(declare-fun b!1563875 () Bool)

(assert (=> b!1563875 (= e!1004327 (noDuplicate!236 (t!141622 (t!141622 (++!4426 (t!141622 l!3627) (Cons!16973 elmt!170 Nil!16973))))))))

(assert (= (and d!463155 (not res!697126)) b!1563874))

(assert (= (and b!1563874 res!697127) b!1563875))

(declare-fun m!1835257 () Bool)

(assert (=> b!1563874 m!1835257))

(declare-fun m!1835259 () Bool)

(assert (=> b!1563875 m!1835259))

(assert (=> b!1563779 d!463155))

(declare-fun d!463157 () Bool)

(declare-fun lt!541470 () Bool)

(assert (=> d!463157 (= lt!541470 (select (content!2354 (t!141622 (t!141622 (t!141622 l!3627)))) elmt!170))))

(declare-fun e!1004328 () Bool)

(assert (=> d!463157 (= lt!541470 e!1004328)))

(declare-fun res!697128 () Bool)

(assert (=> d!463157 (=> (not res!697128) (not e!1004328))))

(assert (=> d!463157 (= res!697128 ((_ is Cons!16973) (t!141622 (t!141622 (t!141622 l!3627)))))))

(assert (=> d!463157 (= (contains!2994 (t!141622 (t!141622 (t!141622 l!3627))) elmt!170) lt!541470)))

(declare-fun b!1563876 () Bool)

(declare-fun e!1004329 () Bool)

(assert (=> b!1563876 (= e!1004328 e!1004329)))

(declare-fun res!697129 () Bool)

(assert (=> b!1563876 (=> res!697129 e!1004329)))

(assert (=> b!1563876 (= res!697129 (= (h!22374 (t!141622 (t!141622 (t!141622 l!3627)))) elmt!170))))

(declare-fun b!1563877 () Bool)

(assert (=> b!1563877 (= e!1004329 (contains!2994 (t!141622 (t!141622 (t!141622 (t!141622 l!3627)))) elmt!170))))

(assert (= (and d!463157 res!697128) b!1563876))

(assert (= (and b!1563876 (not res!697129)) b!1563877))

(assert (=> d!463157 m!1835241))

(declare-fun m!1835261 () Bool)

(assert (=> d!463157 m!1835261))

(declare-fun m!1835263 () Bool)

(assert (=> b!1563877 m!1835263))

(assert (=> b!1563757 d!463157))

(assert (=> d!463053 d!463145))

(declare-fun d!463159 () Bool)

(declare-fun lt!541471 () Bool)

(assert (=> d!463159 (= lt!541471 (select (content!2354 (t!141622 (t!141622 l!3627))) (h!22374 l!3627)))))

(declare-fun e!1004330 () Bool)

(assert (=> d!463159 (= lt!541471 e!1004330)))

(declare-fun res!697130 () Bool)

(assert (=> d!463159 (=> (not res!697130) (not e!1004330))))

(assert (=> d!463159 (= res!697130 ((_ is Cons!16973) (t!141622 (t!141622 l!3627))))))

(assert (=> d!463159 (= (contains!2994 (t!141622 (t!141622 l!3627)) (h!22374 l!3627)) lt!541471)))

(declare-fun b!1563878 () Bool)

(declare-fun e!1004331 () Bool)

(assert (=> b!1563878 (= e!1004330 e!1004331)))

(declare-fun res!697131 () Bool)

(assert (=> b!1563878 (=> res!697131 e!1004331)))

(assert (=> b!1563878 (= res!697131 (= (h!22374 (t!141622 (t!141622 l!3627))) (h!22374 l!3627)))))

(declare-fun b!1563879 () Bool)

(assert (=> b!1563879 (= e!1004331 (contains!2994 (t!141622 (t!141622 (t!141622 l!3627))) (h!22374 l!3627)))))

(assert (= (and d!463159 res!697130) b!1563878))

(assert (= (and b!1563878 (not res!697131)) b!1563879))

(assert (=> d!463159 m!1835061))

(declare-fun m!1835265 () Bool)

(assert (=> d!463159 m!1835265))

(declare-fun m!1835267 () Bool)

(assert (=> b!1563879 m!1835267))

(assert (=> b!1563785 d!463159))

(assert (=> b!1563771 d!463089))

(declare-fun d!463161 () Bool)

(declare-fun c!253478 () Bool)

(assert (=> d!463161 (= c!253478 ((_ is Nil!16973) (t!141622 (++!4426 (t!141622 l!3627) lt!541416))))))

(declare-fun e!1004332 () (InoxSet B!1425))

(assert (=> d!463161 (= (content!2354 (t!141622 (++!4426 (t!141622 l!3627) lt!541416))) e!1004332)))

(declare-fun b!1563880 () Bool)

(assert (=> b!1563880 (= e!1004332 ((as const (Array B!1425 Bool)) false))))

(declare-fun b!1563881 () Bool)

(assert (=> b!1563881 (= e!1004332 ((_ map or) (store ((as const (Array B!1425 Bool)) false) (h!22374 (t!141622 (++!4426 (t!141622 l!3627) lt!541416))) true) (content!2354 (t!141622 (t!141622 (++!4426 (t!141622 l!3627) lt!541416))))))))

(assert (= (and d!463161 c!253478) b!1563880))

(assert (= (and d!463161 (not c!253478)) b!1563881))

(declare-fun m!1835269 () Bool)

(assert (=> b!1563881 m!1835269))

(declare-fun m!1835271 () Bool)

(assert (=> b!1563881 m!1835271))

(assert (=> d!463061 d!463161))

(declare-fun d!463163 () Bool)

(declare-fun lt!541472 () Int)

(assert (=> d!463163 (>= lt!541472 0)))

(declare-fun e!1004333 () Int)

(assert (=> d!463163 (= lt!541472 e!1004333)))

(declare-fun c!253479 () Bool)

(assert (=> d!463163 (= c!253479 ((_ is Nil!16973) (t!141622 lt!541424)))))

(assert (=> d!463163 (= (size!13768 (t!141622 lt!541424)) lt!541472)))

(declare-fun b!1563882 () Bool)

(assert (=> b!1563882 (= e!1004333 0)))

(declare-fun b!1563883 () Bool)

(assert (=> b!1563883 (= e!1004333 (+ 1 (size!13768 (t!141622 (t!141622 lt!541424)))))))

(assert (= (and d!463163 c!253479) b!1563882))

(assert (= (and d!463163 (not c!253479)) b!1563883))

(declare-fun m!1835273 () Bool)

(assert (=> b!1563883 m!1835273))

(assert (=> b!1563769 d!463163))

(assert (=> d!463079 d!463049))

(declare-fun d!463165 () Bool)

(declare-fun c!253480 () Bool)

(assert (=> d!463165 (= c!253480 ((_ is Nil!16973) (t!141622 lt!541416)))))

(declare-fun e!1004334 () (InoxSet B!1425))

(assert (=> d!463165 (= (content!2354 (t!141622 lt!541416)) e!1004334)))

(declare-fun b!1563884 () Bool)

(assert (=> b!1563884 (= e!1004334 ((as const (Array B!1425 Bool)) false))))

(declare-fun b!1563885 () Bool)

(assert (=> b!1563885 (= e!1004334 ((_ map or) (store ((as const (Array B!1425 Bool)) false) (h!22374 (t!141622 lt!541416)) true) (content!2354 (t!141622 (t!141622 lt!541416)))))))

(assert (= (and d!463165 c!253480) b!1563884))

(assert (= (and d!463165 (not c!253480)) b!1563885))

(declare-fun m!1835275 () Bool)

(assert (=> b!1563885 m!1835275))

(declare-fun m!1835277 () Bool)

(assert (=> b!1563885 m!1835277))

(assert (=> b!1563753 d!463165))

(declare-fun b!1563886 () Bool)

(declare-fun e!1004336 () List!17043)

(assert (=> b!1563886 (= e!1004336 lt!541416)))

(declare-fun b!1563888 () Bool)

(declare-fun res!697133 () Bool)

(declare-fun e!1004335 () Bool)

(assert (=> b!1563888 (=> (not res!697133) (not e!1004335))))

(declare-fun lt!541473 () List!17043)

(assert (=> b!1563888 (= res!697133 (= (size!13768 lt!541473) (+ (size!13768 (t!141622 (t!141622 (t!141622 l!3627)))) (size!13768 lt!541416))))))

(declare-fun b!1563887 () Bool)

(assert (=> b!1563887 (= e!1004336 (Cons!16973 (h!22374 (t!141622 (t!141622 (t!141622 l!3627)))) (++!4426 (t!141622 (t!141622 (t!141622 (t!141622 l!3627)))) lt!541416)))))

(declare-fun d!463167 () Bool)

(assert (=> d!463167 e!1004335))

(declare-fun res!697132 () Bool)

(assert (=> d!463167 (=> (not res!697132) (not e!1004335))))

(assert (=> d!463167 (= res!697132 (= (content!2354 lt!541473) ((_ map or) (content!2354 (t!141622 (t!141622 (t!141622 l!3627)))) (content!2354 lt!541416))))))

(assert (=> d!463167 (= lt!541473 e!1004336)))

(declare-fun c!253481 () Bool)

(assert (=> d!463167 (= c!253481 ((_ is Nil!16973) (t!141622 (t!141622 (t!141622 l!3627)))))))

(assert (=> d!463167 (= (++!4426 (t!141622 (t!141622 (t!141622 l!3627))) lt!541416) lt!541473)))

(declare-fun b!1563889 () Bool)

(assert (=> b!1563889 (= e!1004335 (or (not (= lt!541416 Nil!16973)) (= lt!541473 (t!141622 (t!141622 (t!141622 l!3627))))))))

(assert (= (and d!463167 c!253481) b!1563886))

(assert (= (and d!463167 (not c!253481)) b!1563887))

(assert (= (and d!463167 res!697132) b!1563888))

(assert (= (and b!1563888 res!697133) b!1563889))

(declare-fun m!1835279 () Bool)

(assert (=> b!1563888 m!1835279))

(assert (=> b!1563888 m!1835219))

(assert (=> b!1563888 m!1834999))

(declare-fun m!1835281 () Bool)

(assert (=> b!1563887 m!1835281))

(declare-fun m!1835283 () Bool)

(assert (=> d!463167 m!1835283))

(assert (=> d!463167 m!1835241))

(assert (=> d!463167 m!1835007))

(assert (=> b!1563787 d!463167))

(declare-fun d!463169 () Bool)

(declare-fun lt!541474 () Int)

(assert (=> d!463169 (>= lt!541474 0)))

(declare-fun e!1004337 () Int)

(assert (=> d!463169 (= lt!541474 e!1004337)))

(declare-fun c!253482 () Bool)

(assert (=> d!463169 (= c!253482 ((_ is Nil!16973) lt!541449))))

(assert (=> d!463169 (= (size!13768 lt!541449) lt!541474)))

(declare-fun b!1563890 () Bool)

(assert (=> b!1563890 (= e!1004337 0)))

(declare-fun b!1563891 () Bool)

(assert (=> b!1563891 (= e!1004337 (+ 1 (size!13768 (t!141622 lt!541449))))))

(assert (= (and d!463169 c!253482) b!1563890))

(assert (= (and d!463169 (not c!253482)) b!1563891))

(declare-fun m!1835285 () Bool)

(assert (=> b!1563891 m!1835285))

(assert (=> b!1563788 d!463169))

(assert (=> b!1563788 d!463135))

(assert (=> b!1563788 d!463067))

(declare-fun d!463171 () Bool)

(declare-fun c!253483 () Bool)

(assert (=> d!463171 (= c!253483 ((_ is Nil!16973) (t!141622 lt!541423)))))

(declare-fun e!1004338 () (InoxSet B!1425))

(assert (=> d!463171 (= (content!2354 (t!141622 lt!541423)) e!1004338)))

(declare-fun b!1563892 () Bool)

(assert (=> b!1563892 (= e!1004338 ((as const (Array B!1425 Bool)) false))))

(declare-fun b!1563893 () Bool)

(assert (=> b!1563893 (= e!1004338 ((_ map or) (store ((as const (Array B!1425 Bool)) false) (h!22374 (t!141622 lt!541423)) true) (content!2354 (t!141622 (t!141622 lt!541423)))))))

(assert (= (and d!463171 c!253483) b!1563892))

(assert (= (and d!463171 (not c!253483)) b!1563893))

(declare-fun m!1835287 () Bool)

(assert (=> b!1563893 m!1835287))

(declare-fun m!1835289 () Bool)

(assert (=> b!1563893 m!1835289))

(assert (=> b!1563749 d!463171))

(declare-fun d!463173 () Bool)

(declare-fun lt!541475 () Int)

(assert (=> d!463173 (>= lt!541475 0)))

(declare-fun e!1004339 () Int)

(assert (=> d!463173 (= lt!541475 e!1004339)))

(declare-fun c!253484 () Bool)

(assert (=> d!463173 (= c!253484 ((_ is Nil!16973) (t!141622 lt!541423)))))

(assert (=> d!463173 (= (size!13768 (t!141622 lt!541423)) lt!541475)))

(declare-fun b!1563894 () Bool)

(assert (=> b!1563894 (= e!1004339 0)))

(declare-fun b!1563895 () Bool)

(assert (=> b!1563895 (= e!1004339 (+ 1 (size!13768 (t!141622 (t!141622 lt!541423)))))))

(assert (= (and d!463173 c!253484) b!1563894))

(assert (= (and d!463173 (not c!253484)) b!1563895))

(declare-fun m!1835291 () Bool)

(assert (=> b!1563895 m!1835291))

(assert (=> b!1563795 d!463173))

(declare-fun d!463175 () Bool)

(declare-fun lt!541476 () Bool)

(assert (=> d!463175 (= lt!541476 (select (content!2354 (t!141622 (t!141622 (t!141622 l!3627)))) (h!22374 (t!141622 (t!141622 l!3627)))))))

(declare-fun e!1004340 () Bool)

(assert (=> d!463175 (= lt!541476 e!1004340)))

(declare-fun res!697134 () Bool)

(assert (=> d!463175 (=> (not res!697134) (not e!1004340))))

(assert (=> d!463175 (= res!697134 ((_ is Cons!16973) (t!141622 (t!141622 (t!141622 l!3627)))))))

(assert (=> d!463175 (= (contains!2994 (t!141622 (t!141622 (t!141622 l!3627))) (h!22374 (t!141622 (t!141622 l!3627)))) lt!541476)))

(declare-fun b!1563896 () Bool)

(declare-fun e!1004341 () Bool)

(assert (=> b!1563896 (= e!1004340 e!1004341)))

(declare-fun res!697135 () Bool)

(assert (=> b!1563896 (=> res!697135 e!1004341)))

(assert (=> b!1563896 (= res!697135 (= (h!22374 (t!141622 (t!141622 (t!141622 l!3627)))) (h!22374 (t!141622 (t!141622 l!3627)))))))

(declare-fun b!1563897 () Bool)

(assert (=> b!1563897 (= e!1004341 (contains!2994 (t!141622 (t!141622 (t!141622 (t!141622 l!3627)))) (h!22374 (t!141622 (t!141622 l!3627)))))))

(assert (= (and d!463175 res!697134) b!1563896))

(assert (= (and b!1563896 (not res!697135)) b!1563897))

(assert (=> d!463175 m!1835241))

(declare-fun m!1835293 () Bool)

(assert (=> d!463175 m!1835293))

(declare-fun m!1835295 () Bool)

(assert (=> b!1563897 m!1835295))

(assert (=> b!1563760 d!463175))

(declare-fun d!463177 () Bool)

(declare-fun res!697136 () Bool)

(declare-fun e!1004342 () Bool)

(assert (=> d!463177 (=> res!697136 e!1004342)))

(assert (=> d!463177 (= res!697136 ((_ is Nil!16973) (t!141622 (t!141622 (t!141622 l!3627)))))))

(assert (=> d!463177 (= (noDuplicate!236 (t!141622 (t!141622 (t!141622 l!3627)))) e!1004342)))

(declare-fun b!1563898 () Bool)

(declare-fun e!1004343 () Bool)

(assert (=> b!1563898 (= e!1004342 e!1004343)))

(declare-fun res!697137 () Bool)

(assert (=> b!1563898 (=> (not res!697137) (not e!1004343))))

(assert (=> b!1563898 (= res!697137 (not (contains!2994 (t!141622 (t!141622 (t!141622 (t!141622 l!3627)))) (h!22374 (t!141622 (t!141622 (t!141622 l!3627)))))))))

(declare-fun b!1563899 () Bool)

(assert (=> b!1563899 (= e!1004343 (noDuplicate!236 (t!141622 (t!141622 (t!141622 (t!141622 l!3627))))))))

(assert (= (and d!463177 (not res!697136)) b!1563898))

(assert (= (and b!1563898 res!697137) b!1563899))

(declare-fun m!1835297 () Bool)

(assert (=> b!1563898 m!1835297))

(declare-fun m!1835299 () Bool)

(assert (=> b!1563899 m!1835299))

(assert (=> b!1563761 d!463177))

(declare-fun d!463179 () Bool)

(declare-fun lt!541477 () Bool)

(assert (=> d!463179 (= lt!541477 (select (content!2354 (t!141622 (t!141622 (++!4426 (t!141622 l!3627) lt!541416)))) (h!22374 (t!141622 (++!4426 (t!141622 l!3627) lt!541416)))))))

(declare-fun e!1004344 () Bool)

(assert (=> d!463179 (= lt!541477 e!1004344)))

(declare-fun res!697138 () Bool)

(assert (=> d!463179 (=> (not res!697138) (not e!1004344))))

(assert (=> d!463179 (= res!697138 ((_ is Cons!16973) (t!141622 (t!141622 (++!4426 (t!141622 l!3627) lt!541416)))))))

(assert (=> d!463179 (= (contains!2994 (t!141622 (t!141622 (++!4426 (t!141622 l!3627) lt!541416))) (h!22374 (t!141622 (++!4426 (t!141622 l!3627) lt!541416)))) lt!541477)))

(declare-fun b!1563900 () Bool)

(declare-fun e!1004345 () Bool)

(assert (=> b!1563900 (= e!1004344 e!1004345)))

(declare-fun res!697139 () Bool)

(assert (=> b!1563900 (=> res!697139 e!1004345)))

(assert (=> b!1563900 (= res!697139 (= (h!22374 (t!141622 (t!141622 (++!4426 (t!141622 l!3627) lt!541416)))) (h!22374 (t!141622 (++!4426 (t!141622 l!3627) lt!541416)))))))

(declare-fun b!1563901 () Bool)

(assert (=> b!1563901 (= e!1004345 (contains!2994 (t!141622 (t!141622 (t!141622 (++!4426 (t!141622 l!3627) lt!541416)))) (h!22374 (t!141622 (++!4426 (t!141622 l!3627) lt!541416)))))))

(assert (= (and d!463179 res!697138) b!1563900))

(assert (= (and b!1563900 (not res!697139)) b!1563901))

(assert (=> d!463179 m!1835271))

(declare-fun m!1835301 () Bool)

(assert (=> d!463179 m!1835301))

(declare-fun m!1835303 () Bool)

(assert (=> b!1563901 m!1835303))

(assert (=> b!1563774 d!463179))

(declare-fun d!463181 () Bool)

(declare-fun res!697140 () Bool)

(declare-fun e!1004346 () Bool)

(assert (=> d!463181 (=> res!697140 e!1004346)))

(assert (=> d!463181 (= res!697140 ((_ is Nil!16973) (t!141622 (t!141622 (++!4426 (t!141622 l!3627) lt!541416)))))))

(assert (=> d!463181 (= (noDuplicate!236 (t!141622 (t!141622 (++!4426 (t!141622 l!3627) lt!541416)))) e!1004346)))

(declare-fun b!1563902 () Bool)

(declare-fun e!1004347 () Bool)

(assert (=> b!1563902 (= e!1004346 e!1004347)))

(declare-fun res!697141 () Bool)

(assert (=> b!1563902 (=> (not res!697141) (not e!1004347))))

(assert (=> b!1563902 (= res!697141 (not (contains!2994 (t!141622 (t!141622 (t!141622 (++!4426 (t!141622 l!3627) lt!541416)))) (h!22374 (t!141622 (t!141622 (++!4426 (t!141622 l!3627) lt!541416)))))))))

(declare-fun b!1563903 () Bool)

(assert (=> b!1563903 (= e!1004347 (noDuplicate!236 (t!141622 (t!141622 (t!141622 (++!4426 (t!141622 l!3627) lt!541416))))))))

(assert (= (and d!463181 (not res!697140)) b!1563902))

(assert (= (and b!1563902 res!697141) b!1563903))

(declare-fun m!1835305 () Bool)

(assert (=> b!1563902 m!1835305))

(declare-fun m!1835307 () Bool)

(assert (=> b!1563903 m!1835307))

(assert (=> b!1563775 d!463181))

(declare-fun d!463183 () Bool)

(declare-fun lt!541478 () Bool)

(assert (=> d!463183 (= lt!541478 (select (content!2354 (t!141622 (++!4426 (t!141622 l!3627) (Cons!16973 elmt!170 Nil!16973)))) (h!22374 (++!4426 (t!141622 l!3627) (Cons!16973 elmt!170 Nil!16973)))))))

(declare-fun e!1004348 () Bool)

(assert (=> d!463183 (= lt!541478 e!1004348)))

(declare-fun res!697142 () Bool)

(assert (=> d!463183 (=> (not res!697142) (not e!1004348))))

(assert (=> d!463183 (= res!697142 ((_ is Cons!16973) (t!141622 (++!4426 (t!141622 l!3627) (Cons!16973 elmt!170 Nil!16973)))))))

(assert (=> d!463183 (= (contains!2994 (t!141622 (++!4426 (t!141622 l!3627) (Cons!16973 elmt!170 Nil!16973))) (h!22374 (++!4426 (t!141622 l!3627) (Cons!16973 elmt!170 Nil!16973)))) lt!541478)))

(declare-fun b!1563904 () Bool)

(declare-fun e!1004349 () Bool)

(assert (=> b!1563904 (= e!1004348 e!1004349)))

(declare-fun res!697143 () Bool)

(assert (=> b!1563904 (=> res!697143 e!1004349)))

(assert (=> b!1563904 (= res!697143 (= (h!22374 (t!141622 (++!4426 (t!141622 l!3627) (Cons!16973 elmt!170 Nil!16973)))) (h!22374 (++!4426 (t!141622 l!3627) (Cons!16973 elmt!170 Nil!16973)))))))

(declare-fun b!1563905 () Bool)

(assert (=> b!1563905 (= e!1004349 (contains!2994 (t!141622 (t!141622 (++!4426 (t!141622 l!3627) (Cons!16973 elmt!170 Nil!16973)))) (h!22374 (++!4426 (t!141622 l!3627) (Cons!16973 elmt!170 Nil!16973)))))))

(assert (= (and d!463183 res!697142) b!1563904))

(assert (= (and b!1563904 (not res!697143)) b!1563905))

(declare-fun m!1835309 () Bool)

(assert (=> d!463183 m!1835309))

(declare-fun m!1835311 () Bool)

(assert (=> d!463183 m!1835311))

(declare-fun m!1835313 () Bool)

(assert (=> b!1563905 m!1835313))

(assert (=> b!1563778 d!463183))

(declare-fun d!463185 () Bool)

(declare-fun lt!541479 () Int)

(assert (=> d!463185 (>= lt!541479 0)))

(declare-fun e!1004350 () Int)

(assert (=> d!463185 (= lt!541479 e!1004350)))

(declare-fun c!253485 () Bool)

(assert (=> d!463185 (= c!253485 ((_ is Nil!16973) (t!141622 lt!541416)))))

(assert (=> d!463185 (= (size!13768 (t!141622 lt!541416)) lt!541479)))

(declare-fun b!1563906 () Bool)

(assert (=> b!1563906 (= e!1004350 0)))

(declare-fun b!1563907 () Bool)

(assert (=> b!1563907 (= e!1004350 (+ 1 (size!13768 (t!141622 (t!141622 lt!541416)))))))

(assert (= (and d!463185 c!253485) b!1563906))

(assert (= (and d!463185 (not c!253485)) b!1563907))

(declare-fun m!1835315 () Bool)

(assert (=> b!1563907 m!1835315))

(assert (=> b!1563773 d!463185))

(declare-fun d!463187 () Bool)

(declare-fun lt!541480 () Bool)

(assert (=> d!463187 (= lt!541480 (select (content!2354 (t!141622 (t!141622 (++!4426 (t!141622 l!3627) lt!541416)))) (h!22374 (++!4426 (t!141622 l!3627) lt!541416))))))

(declare-fun e!1004351 () Bool)

(assert (=> d!463187 (= lt!541480 e!1004351)))

(declare-fun res!697144 () Bool)

(assert (=> d!463187 (=> (not res!697144) (not e!1004351))))

(assert (=> d!463187 (= res!697144 ((_ is Cons!16973) (t!141622 (t!141622 (++!4426 (t!141622 l!3627) lt!541416)))))))

(assert (=> d!463187 (= (contains!2994 (t!141622 (t!141622 (++!4426 (t!141622 l!3627) lt!541416))) (h!22374 (++!4426 (t!141622 l!3627) lt!541416))) lt!541480)))

(declare-fun b!1563908 () Bool)

(declare-fun e!1004352 () Bool)

(assert (=> b!1563908 (= e!1004351 e!1004352)))

(declare-fun res!697145 () Bool)

(assert (=> b!1563908 (=> res!697145 e!1004352)))

(assert (=> b!1563908 (= res!697145 (= (h!22374 (t!141622 (t!141622 (++!4426 (t!141622 l!3627) lt!541416)))) (h!22374 (++!4426 (t!141622 l!3627) lt!541416))))))

(declare-fun b!1563909 () Bool)

(assert (=> b!1563909 (= e!1004352 (contains!2994 (t!141622 (t!141622 (t!141622 (++!4426 (t!141622 l!3627) lt!541416)))) (h!22374 (++!4426 (t!141622 l!3627) lt!541416))))))

(assert (= (and d!463187 res!697144) b!1563908))

(assert (= (and b!1563908 (not res!697145)) b!1563909))

(assert (=> d!463187 m!1835271))

(declare-fun m!1835317 () Bool)

(assert (=> d!463187 m!1835317))

(declare-fun m!1835319 () Bool)

(assert (=> b!1563909 m!1835319))

(assert (=> b!1563763 d!463187))

(assert (=> d!463055 d!463145))

(declare-fun b!1563910 () Bool)

(declare-fun e!1004354 () List!17043)

(assert (=> b!1563910 (= e!1004354 (Cons!16973 elmt!170 Nil!16973))))

(declare-fun b!1563912 () Bool)

(declare-fun res!697147 () Bool)

(declare-fun e!1004353 () Bool)

(assert (=> b!1563912 (=> (not res!697147) (not e!1004353))))

(declare-fun lt!541481 () List!17043)

(assert (=> b!1563912 (= res!697147 (= (size!13768 lt!541481) (+ (size!13768 (t!141622 (t!141622 l!3627))) (size!13768 (Cons!16973 elmt!170 Nil!16973)))))))

(declare-fun b!1563911 () Bool)

(assert (=> b!1563911 (= e!1004354 (Cons!16973 (h!22374 (t!141622 (t!141622 l!3627))) (++!4426 (t!141622 (t!141622 (t!141622 l!3627))) (Cons!16973 elmt!170 Nil!16973))))))

(declare-fun d!463189 () Bool)

(assert (=> d!463189 e!1004353))

(declare-fun res!697146 () Bool)

(assert (=> d!463189 (=> (not res!697146) (not e!1004353))))

(assert (=> d!463189 (= res!697146 (= (content!2354 lt!541481) ((_ map or) (content!2354 (t!141622 (t!141622 l!3627))) (content!2354 (Cons!16973 elmt!170 Nil!16973)))))))

(assert (=> d!463189 (= lt!541481 e!1004354)))

(declare-fun c!253486 () Bool)

(assert (=> d!463189 (= c!253486 ((_ is Nil!16973) (t!141622 (t!141622 l!3627))))))

(assert (=> d!463189 (= (++!4426 (t!141622 (t!141622 l!3627)) (Cons!16973 elmt!170 Nil!16973)) lt!541481)))

(declare-fun b!1563913 () Bool)

(assert (=> b!1563913 (= e!1004353 (or (not (= (Cons!16973 elmt!170 Nil!16973) Nil!16973)) (= lt!541481 (t!141622 (t!141622 l!3627)))))))

(assert (= (and d!463189 c!253486) b!1563910))

(assert (= (and d!463189 (not c!253486)) b!1563911))

(assert (= (and d!463189 res!697146) b!1563912))

(assert (= (and b!1563912 res!697147) b!1563913))

(declare-fun m!1835321 () Bool)

(assert (=> b!1563912 m!1835321))

(assert (=> b!1563912 m!1835119))

(assert (=> b!1563912 m!1835105))

(declare-fun m!1835323 () Bool)

(assert (=> b!1563911 m!1835323))

(declare-fun m!1835325 () Bool)

(assert (=> d!463189 m!1835325))

(assert (=> d!463189 m!1835061))

(assert (=> d!463189 m!1835111))

(assert (=> b!1563781 d!463189))

(declare-fun d!463191 () Bool)

(declare-fun lt!541482 () Bool)

(assert (=> d!463191 (= lt!541482 (select (content!2354 (t!141622 (t!141622 (++!4426 l!3627 lt!541416)))) (h!22374 (++!4426 l!3627 lt!541416))))))

(declare-fun e!1004355 () Bool)

(assert (=> d!463191 (= lt!541482 e!1004355)))

(declare-fun res!697148 () Bool)

(assert (=> d!463191 (=> (not res!697148) (not e!1004355))))

(assert (=> d!463191 (= res!697148 ((_ is Cons!16973) (t!141622 (t!141622 (++!4426 l!3627 lt!541416)))))))

(assert (=> d!463191 (= (contains!2994 (t!141622 (t!141622 (++!4426 l!3627 lt!541416))) (h!22374 (++!4426 l!3627 lt!541416))) lt!541482)))

(declare-fun b!1563914 () Bool)

(declare-fun e!1004356 () Bool)

(assert (=> b!1563914 (= e!1004355 e!1004356)))

(declare-fun res!697149 () Bool)

(assert (=> b!1563914 (=> res!697149 e!1004356)))

(assert (=> b!1563914 (= res!697149 (= (h!22374 (t!141622 (t!141622 (++!4426 l!3627 lt!541416)))) (h!22374 (++!4426 l!3627 lt!541416))))))

(declare-fun b!1563915 () Bool)

(assert (=> b!1563915 (= e!1004356 (contains!2994 (t!141622 (t!141622 (t!141622 (++!4426 l!3627 lt!541416)))) (h!22374 (++!4426 l!3627 lt!541416))))))

(assert (= (and d!463191 res!697148) b!1563914))

(assert (= (and b!1563914 (not res!697149)) b!1563915))

(assert (=> d!463191 m!1835229))

(declare-fun m!1835327 () Bool)

(assert (=> d!463191 m!1835327))

(declare-fun m!1835329 () Bool)

(assert (=> b!1563915 m!1835329))

(assert (=> b!1563791 d!463191))

(declare-fun d!463193 () Bool)

(declare-fun lt!541483 () Int)

(assert (=> d!463193 (>= lt!541483 0)))

(declare-fun e!1004357 () Int)

(assert (=> d!463193 (= lt!541483 e!1004357)))

(declare-fun c!253487 () Bool)

(assert (=> d!463193 (= c!253487 ((_ is Nil!16973) lt!541447))))

(assert (=> d!463193 (= (size!13768 lt!541447) lt!541483)))

(declare-fun b!1563916 () Bool)

(assert (=> b!1563916 (= e!1004357 0)))

(declare-fun b!1563917 () Bool)

(assert (=> b!1563917 (= e!1004357 (+ 1 (size!13768 (t!141622 lt!541447))))))

(assert (= (and d!463193 c!253487) b!1563916))

(assert (= (and d!463193 (not c!253487)) b!1563917))

(declare-fun m!1835331 () Bool)

(assert (=> b!1563917 m!1835331))

(assert (=> b!1563782 d!463193))

(assert (=> b!1563782 d!463089))

(declare-fun d!463195 () Bool)

(declare-fun lt!541484 () Int)

(assert (=> d!463195 (>= lt!541484 0)))

(declare-fun e!1004358 () Int)

(assert (=> d!463195 (= lt!541484 e!1004358)))

(declare-fun c!253488 () Bool)

(assert (=> d!463195 (= c!253488 ((_ is Nil!16973) (Cons!16973 elmt!170 Nil!16973)))))

(assert (=> d!463195 (= (size!13768 (Cons!16973 elmt!170 Nil!16973)) lt!541484)))

(declare-fun b!1563918 () Bool)

(assert (=> b!1563918 (= e!1004358 0)))

(declare-fun b!1563919 () Bool)

(assert (=> b!1563919 (= e!1004358 (+ 1 (size!13768 (t!141622 (Cons!16973 elmt!170 Nil!16973)))))))

(assert (= (and d!463195 c!253488) b!1563918))

(assert (= (and d!463195 (not c!253488)) b!1563919))

(declare-fun m!1835333 () Bool)

(assert (=> b!1563919 m!1835333))

(assert (=> b!1563782 d!463195))

(declare-fun b!1563920 () Bool)

(declare-fun e!1004359 () Bool)

(declare-fun tp!460609 () Bool)

(assert (=> b!1563920 (= e!1004359 (and tp_is_empty!7121 tp!460609))))

(assert (=> b!1563798 (= tp!460607 e!1004359)))

(assert (= (and b!1563798 ((_ is Cons!16973) (t!141622 (t!141622 (t!141622 l!3627))))) b!1563920))

(check-sat (not b!1563920) tp_is_empty!7121 (not b!1563862) (not d!463167) (not d!463149) (not b!1563869) (not b!1563881) (not b!1563917) (not b!1563861) (not b!1563899) (not b!1563907) (not d!463175) (not b!1563873) (not b!1563898) (not b!1563911) (not b!1563859) (not b!1563905) (not d!463187) (not b!1563855) (not b!1563912) (not b!1563915) (not d!463157) (not b!1563885) (not b!1563909) (not d!463191) (not d!463159) (not b!1563871) (not b!1563879) (not b!1563888) (not b!1563895) (not b!1563887) (not b!1563903) (not b!1563919) (not b!1563865) (not b!1563901) (not b!1563863) (not d!463189) (not b!1563902) (not b!1563877) (not d!463179) (not b!1563874) (not b!1563891) (not b!1563897) (not b!1563883) (not b!1563867) (not d!463183) (not b!1563857) (not b!1563893) (not b!1563875) (not d!463141))
(check-sat)
