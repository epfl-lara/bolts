; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!250924 () Bool)

(assert start!250924)

(declare-fun b!2590631 () Bool)

(declare-fun res!1089255 () Bool)

(declare-fun e!1634216 () Bool)

(assert (=> b!2590631 (=> res!1089255 e!1634216)))

(declare-datatypes ((B!2001 0))(
  ( (B!2002 (val!9468 Int)) )
))
(declare-datatypes ((List!29901 0))(
  ( (Nil!29801) (Cons!29801 (h!35221 B!2001) (t!212914 List!29901)) )
))
(declare-fun l!3230 () List!29901)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!910993 () (InoxSet B!2001))

(assert (=> b!2590631 (= res!1089255 (select lt!910993 (h!35221 l!3230)))))

(declare-fun res!1089253 () Bool)

(declare-fun e!1634217 () Bool)

(assert (=> start!250924 (=> (not res!1089253) (not e!1634217))))

(declare-fun noDuplicate!349 (List!29901) Bool)

(assert (=> start!250924 (= res!1089253 (noDuplicate!349 l!3230))))

(assert (=> start!250924 e!1634217))

(declare-fun e!1634215 () Bool)

(assert (=> start!250924 e!1634215))

(declare-fun b!2590632 () Bool)

(declare-fun tp_is_empty!13281 () Bool)

(declare-fun tp!822632 () Bool)

(assert (=> b!2590632 (= e!1634215 (and tp_is_empty!13281 tp!822632))))

(declare-fun b!2590633 () Bool)

(declare-fun res!1089252 () Bool)

(assert (=> b!2590633 (=> (not res!1089252) (not e!1634217))))

(get-info :version)

(assert (=> b!2590633 (= res!1089252 ((_ is Cons!29801) l!3230))))

(declare-fun b!2590634 () Bool)

(declare-fun contains!5351 (List!29901 B!2001) Bool)

(assert (=> b!2590634 (= e!1634216 (not (contains!5351 (t!212914 l!3230) (h!35221 l!3230))))))

(declare-fun b!2590635 () Bool)

(assert (=> b!2590635 (= e!1634217 (not e!1634216))))

(declare-fun res!1089254 () Bool)

(assert (=> b!2590635 (=> res!1089254 e!1634216)))

(declare-fun lt!910992 () Int)

(declare-fun size!23114 (List!29901) Int)

(assert (=> b!2590635 (= res!1089254 (>= lt!910992 (size!23114 l!3230)))))

(assert (=> b!2590635 (= lt!910992 (size!23114 (t!212914 l!3230)))))

(declare-fun toList!1752 ((InoxSet B!2001)) List!29901)

(assert (=> b!2590635 (= lt!910992 (size!23114 (toList!1752 lt!910993)))))

(declare-fun content!4142 (List!29901) (InoxSet B!2001))

(assert (=> b!2590635 (= lt!910993 (content!4142 (t!212914 l!3230)))))

(declare-datatypes ((Unit!43708 0))(
  ( (Unit!43709) )
))
(declare-fun lt!910991 () Unit!43708)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!42 (List!29901) Unit!43708)

(assert (=> b!2590635 (= lt!910991 (lemmaNoDuplicateThenContentToListSameSize!42 (t!212914 l!3230)))))

(assert (= (and start!250924 res!1089253) b!2590633))

(assert (= (and b!2590633 res!1089252) b!2590635))

(assert (= (and b!2590635 (not res!1089254)) b!2590631))

(assert (= (and b!2590631 (not res!1089255)) b!2590634))

(assert (= (and start!250924 ((_ is Cons!29801) l!3230)) b!2590632))

(declare-fun m!2926723 () Bool)

(assert (=> b!2590631 m!2926723))

(declare-fun m!2926725 () Bool)

(assert (=> start!250924 m!2926725))

(declare-fun m!2926727 () Bool)

(assert (=> b!2590634 m!2926727))

(declare-fun m!2926729 () Bool)

(assert (=> b!2590635 m!2926729))

(declare-fun m!2926731 () Bool)

(assert (=> b!2590635 m!2926731))

(declare-fun m!2926733 () Bool)

(assert (=> b!2590635 m!2926733))

(declare-fun m!2926735 () Bool)

(assert (=> b!2590635 m!2926735))

(declare-fun m!2926737 () Bool)

(assert (=> b!2590635 m!2926737))

(declare-fun m!2926739 () Bool)

(assert (=> b!2590635 m!2926739))

(assert (=> b!2590635 m!2926737))

(check-sat (not b!2590632) (not start!250924) (not b!2590634) tp_is_empty!13281 (not b!2590635))
(check-sat)
(get-model)

(declare-fun d!733890 () Bool)

(declare-fun lt!910999 () Int)

(assert (=> d!733890 (>= lt!910999 0)))

(declare-fun e!1634226 () Int)

(assert (=> d!733890 (= lt!910999 e!1634226)))

(declare-fun c!417655 () Bool)

(assert (=> d!733890 (= c!417655 ((_ is Nil!29801) l!3230))))

(assert (=> d!733890 (= (size!23114 l!3230) lt!910999)))

(declare-fun b!2590646 () Bool)

(assert (=> b!2590646 (= e!1634226 0)))

(declare-fun b!2590647 () Bool)

(assert (=> b!2590647 (= e!1634226 (+ 1 (size!23114 (t!212914 l!3230))))))

(assert (= (and d!733890 c!417655) b!2590646))

(assert (= (and d!733890 (not c!417655)) b!2590647))

(assert (=> b!2590647 m!2926731))

(assert (=> b!2590635 d!733890))

(declare-fun d!733894 () Bool)

(declare-fun lt!911000 () Int)

(assert (=> d!733894 (>= lt!911000 0)))

(declare-fun e!1634227 () Int)

(assert (=> d!733894 (= lt!911000 e!1634227)))

(declare-fun c!417656 () Bool)

(assert (=> d!733894 (= c!417656 ((_ is Nil!29801) (toList!1752 lt!910993)))))

(assert (=> d!733894 (= (size!23114 (toList!1752 lt!910993)) lt!911000)))

(declare-fun b!2590648 () Bool)

(assert (=> b!2590648 (= e!1634227 0)))

(declare-fun b!2590649 () Bool)

(assert (=> b!2590649 (= e!1634227 (+ 1 (size!23114 (t!212914 (toList!1752 lt!910993)))))))

(assert (= (and d!733894 c!417656) b!2590648))

(assert (= (and d!733894 (not c!417656)) b!2590649))

(declare-fun m!2926745 () Bool)

(assert (=> b!2590649 m!2926745))

(assert (=> b!2590635 d!733894))

(declare-fun d!733896 () Bool)

(declare-fun lt!911001 () Int)

(assert (=> d!733896 (>= lt!911001 0)))

(declare-fun e!1634228 () Int)

(assert (=> d!733896 (= lt!911001 e!1634228)))

(declare-fun c!417657 () Bool)

(assert (=> d!733896 (= c!417657 ((_ is Nil!29801) (t!212914 l!3230)))))

(assert (=> d!733896 (= (size!23114 (t!212914 l!3230)) lt!911001)))

(declare-fun b!2590650 () Bool)

(assert (=> b!2590650 (= e!1634228 0)))

(declare-fun b!2590651 () Bool)

(assert (=> b!2590651 (= e!1634228 (+ 1 (size!23114 (t!212914 (t!212914 l!3230)))))))

(assert (= (and d!733896 c!417657) b!2590650))

(assert (= (and d!733896 (not c!417657)) b!2590651))

(declare-fun m!2926747 () Bool)

(assert (=> b!2590651 m!2926747))

(assert (=> b!2590635 d!733896))

(declare-fun d!733898 () Bool)

(declare-fun c!417664 () Bool)

(assert (=> d!733898 (= c!417664 ((_ is Nil!29801) (t!212914 l!3230)))))

(declare-fun e!1634235 () (InoxSet B!2001))

(assert (=> d!733898 (= (content!4142 (t!212914 l!3230)) e!1634235)))

(declare-fun b!2590664 () Bool)

(assert (=> b!2590664 (= e!1634235 ((as const (Array B!2001 Bool)) false))))

(declare-fun b!2590665 () Bool)

(assert (=> b!2590665 (= e!1634235 ((_ map or) (store ((as const (Array B!2001 Bool)) false) (h!35221 (t!212914 l!3230)) true) (content!4142 (t!212914 (t!212914 l!3230)))))))

(assert (= (and d!733898 c!417664) b!2590664))

(assert (= (and d!733898 (not c!417664)) b!2590665))

(declare-fun m!2926751 () Bool)

(assert (=> b!2590665 m!2926751))

(declare-fun m!2926753 () Bool)

(assert (=> b!2590665 m!2926753))

(assert (=> b!2590635 d!733898))

(declare-fun d!733904 () Bool)

(declare-fun e!1634242 () Bool)

(assert (=> d!733904 e!1634242))

(declare-fun res!1089264 () Bool)

(assert (=> d!733904 (=> (not res!1089264) (not e!1634242))))

(declare-fun lt!911009 () List!29901)

(assert (=> d!733904 (= res!1089264 (noDuplicate!349 lt!911009))))

(declare-fun choose!15288 ((InoxSet B!2001)) List!29901)

(assert (=> d!733904 (= lt!911009 (choose!15288 lt!910993))))

(assert (=> d!733904 (= (toList!1752 lt!910993) lt!911009)))

(declare-fun b!2590676 () Bool)

(assert (=> b!2590676 (= e!1634242 (= (content!4142 lt!911009) lt!910993))))

(assert (= (and d!733904 res!1089264) b!2590676))

(declare-fun m!2926761 () Bool)

(assert (=> d!733904 m!2926761))

(declare-fun m!2926763 () Bool)

(assert (=> d!733904 m!2926763))

(declare-fun m!2926765 () Bool)

(assert (=> b!2590676 m!2926765))

(assert (=> b!2590635 d!733904))

(declare-fun d!733910 () Bool)

(assert (=> d!733910 (= (size!23114 (toList!1752 (content!4142 (t!212914 l!3230)))) (size!23114 (t!212914 l!3230)))))

(declare-fun lt!911015 () Unit!43708)

(declare-fun choose!15290 (List!29901) Unit!43708)

(assert (=> d!733910 (= lt!911015 (choose!15290 (t!212914 l!3230)))))

(assert (=> d!733910 (noDuplicate!349 (t!212914 l!3230))))

(assert (=> d!733910 (= (lemmaNoDuplicateThenContentToListSameSize!42 (t!212914 l!3230)) lt!911015)))

(declare-fun bs!472128 () Bool)

(assert (= bs!472128 d!733910))

(assert (=> bs!472128 m!2926731))

(assert (=> bs!472128 m!2926733))

(declare-fun m!2926775 () Bool)

(assert (=> bs!472128 m!2926775))

(assert (=> bs!472128 m!2926775))

(declare-fun m!2926777 () Bool)

(assert (=> bs!472128 m!2926777))

(assert (=> bs!472128 m!2926733))

(declare-fun m!2926779 () Bool)

(assert (=> bs!472128 m!2926779))

(declare-fun m!2926781 () Bool)

(assert (=> bs!472128 m!2926781))

(assert (=> b!2590635 d!733910))

(declare-fun d!733914 () Bool)

(declare-fun lt!911021 () Bool)

(assert (=> d!733914 (= lt!911021 (select (content!4142 (t!212914 l!3230)) (h!35221 l!3230)))))

(declare-fun e!1634255 () Bool)

(assert (=> d!733914 (= lt!911021 e!1634255)))

(declare-fun res!1089277 () Bool)

(assert (=> d!733914 (=> (not res!1089277) (not e!1634255))))

(assert (=> d!733914 (= res!1089277 ((_ is Cons!29801) (t!212914 l!3230)))))

(assert (=> d!733914 (= (contains!5351 (t!212914 l!3230) (h!35221 l!3230)) lt!911021)))

(declare-fun b!2590688 () Bool)

(declare-fun e!1634254 () Bool)

(assert (=> b!2590688 (= e!1634255 e!1634254)))

(declare-fun res!1089276 () Bool)

(assert (=> b!2590688 (=> res!1089276 e!1634254)))

(assert (=> b!2590688 (= res!1089276 (= (h!35221 (t!212914 l!3230)) (h!35221 l!3230)))))

(declare-fun b!2590689 () Bool)

(assert (=> b!2590689 (= e!1634254 (contains!5351 (t!212914 (t!212914 l!3230)) (h!35221 l!3230)))))

(assert (= (and d!733914 res!1089277) b!2590688))

(assert (= (and b!2590688 (not res!1089276)) b!2590689))

(assert (=> d!733914 m!2926733))

(declare-fun m!2926789 () Bool)

(assert (=> d!733914 m!2926789))

(declare-fun m!2926791 () Bool)

(assert (=> b!2590689 m!2926791))

(assert (=> b!2590634 d!733914))

(declare-fun d!733918 () Bool)

(declare-fun res!1089284 () Bool)

(declare-fun e!1634265 () Bool)

(assert (=> d!733918 (=> res!1089284 e!1634265)))

(assert (=> d!733918 (= res!1089284 ((_ is Nil!29801) l!3230))))

(assert (=> d!733918 (= (noDuplicate!349 l!3230) e!1634265)))

(declare-fun b!2590701 () Bool)

(declare-fun e!1634266 () Bool)

(assert (=> b!2590701 (= e!1634265 e!1634266)))

(declare-fun res!1089285 () Bool)

(assert (=> b!2590701 (=> (not res!1089285) (not e!1634266))))

(assert (=> b!2590701 (= res!1089285 (not (contains!5351 (t!212914 l!3230) (h!35221 l!3230))))))

(declare-fun b!2590702 () Bool)

(assert (=> b!2590702 (= e!1634266 (noDuplicate!349 (t!212914 l!3230)))))

(assert (= (and d!733918 (not res!1089284)) b!2590701))

(assert (= (and b!2590701 res!1089285) b!2590702))

(assert (=> b!2590701 m!2926727))

(assert (=> b!2590702 m!2926781))

(assert (=> start!250924 d!733918))

(declare-fun b!2590707 () Bool)

(declare-fun e!1634269 () Bool)

(declare-fun tp!822638 () Bool)

(assert (=> b!2590707 (= e!1634269 (and tp_is_empty!13281 tp!822638))))

(assert (=> b!2590632 (= tp!822632 e!1634269)))

(assert (= (and b!2590632 ((_ is Cons!29801) (t!212914 l!3230))) b!2590707))

(check-sat (not b!2590647) (not d!733904) (not b!2590689) (not b!2590676) (not d!733914) (not b!2590701) (not b!2590665) (not b!2590649) tp_is_empty!13281 (not b!2590707) (not b!2590702) (not d!733910) (not b!2590651))
(check-sat)
