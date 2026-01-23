; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!723458 () Bool)

(assert start!723458)

(declare-fun b!7452420 () Bool)

(assert (=> b!7452420 true))

(assert (=> b!7452420 true))

(assert (=> b!7452420 true))

(declare-fun lambda!461001 () Int)

(declare-fun lambda!461000 () Int)

(assert (=> b!7452420 (not (= lambda!461001 lambda!461000))))

(assert (=> b!7452420 true))

(assert (=> b!7452420 true))

(assert (=> b!7452420 true))

(declare-fun b!7452417 () Bool)

(declare-fun e!4448357 () Bool)

(declare-fun tp_is_empty!49295 () Bool)

(assert (=> b!7452417 (= e!4448357 tp_is_empty!49295)))

(declare-fun b!7452418 () Bool)

(declare-fun e!4448360 () Bool)

(assert (=> b!7452418 (= e!4448360 true)))

(declare-datatypes ((C!39280 0))(
  ( (C!39281 (val!30038 Int)) )
))
(declare-datatypes ((Regex!19503 0))(
  ( (ElementMatch!19503 (c!1377938 C!39280)) (Concat!28348 (regOne!39518 Regex!19503) (regTwo!39518 Regex!19503)) (EmptyExpr!19503) (Star!19503 (reg!19832 Regex!19503)) (EmptyLang!19503) (Union!19503 (regOne!39519 Regex!19503) (regTwo!39519 Regex!19503)) )
))
(declare-fun r2!5783 () Regex!19503)

(declare-datatypes ((List!72219 0))(
  ( (Nil!72095) (Cons!72095 (h!78543 C!39280) (t!386788 List!72219)) )
))
(declare-datatypes ((tuple2!68460 0))(
  ( (tuple2!68461 (_1!37533 List!72219) (_2!37533 List!72219)) )
))
(declare-fun lt!2620671 () tuple2!68460)

(declare-fun matchR!9267 (Regex!19503 List!72219) Bool)

(declare-fun matchRSpec!4182 (Regex!19503 List!72219) Bool)

(assert (=> b!7452418 (= (matchR!9267 r2!5783 (_1!37533 lt!2620671)) (matchRSpec!4182 r2!5783 (_1!37533 lt!2620671)))))

(declare-datatypes ((Unit!165841 0))(
  ( (Unit!165842) )
))
(declare-fun lt!2620661 () Unit!165841)

(declare-fun mainMatchTheorem!4176 (Regex!19503 List!72219) Unit!165841)

(assert (=> b!7452418 (= lt!2620661 (mainMatchTheorem!4176 r2!5783 (_1!37533 lt!2620671)))))

(declare-fun r1!5845 () Regex!19503)

(assert (=> b!7452418 (= (matchR!9267 r1!5845 (_1!37533 lt!2620671)) (matchRSpec!4182 r1!5845 (_1!37533 lt!2620671)))))

(declare-fun lt!2620667 () Unit!165841)

(assert (=> b!7452418 (= lt!2620667 (mainMatchTheorem!4176 r1!5845 (_1!37533 lt!2620671)))))

(declare-fun rTail!78 () Regex!19503)

(assert (=> b!7452418 (matchRSpec!4182 rTail!78 (_2!37533 lt!2620671))))

(declare-fun lt!2620665 () Unit!165841)

(assert (=> b!7452418 (= lt!2620665 (mainMatchTheorem!4176 rTail!78 (_2!37533 lt!2620671)))))

(declare-fun lt!2620670 () Regex!19503)

(assert (=> b!7452418 (matchRSpec!4182 lt!2620670 (_1!37533 lt!2620671))))

(declare-fun lt!2620669 () Unit!165841)

(assert (=> b!7452418 (= lt!2620669 (mainMatchTheorem!4176 lt!2620670 (_1!37533 lt!2620671)))))

(declare-fun b!7452419 () Bool)

(declare-fun e!4448358 () Bool)

(declare-fun e!4448355 () Bool)

(assert (=> b!7452419 (= e!4448358 (not e!4448355))))

(declare-fun res!2989233 () Bool)

(assert (=> b!7452419 (=> res!2989233 e!4448355)))

(declare-fun lt!2620662 () Bool)

(assert (=> b!7452419 (= res!2989233 (not lt!2620662))))

(declare-fun lt!2620660 () Regex!19503)

(declare-fun s!13591 () List!72219)

(assert (=> b!7452419 (= (matchR!9267 lt!2620660 s!13591) (matchRSpec!4182 lt!2620660 s!13591))))

(declare-fun lt!2620664 () Unit!165841)

(assert (=> b!7452419 (= lt!2620664 (mainMatchTheorem!4176 lt!2620660 s!13591))))

(declare-fun lt!2620663 () Regex!19503)

(assert (=> b!7452419 (= lt!2620662 (matchRSpec!4182 lt!2620663 s!13591))))

(assert (=> b!7452419 (= lt!2620662 (matchR!9267 lt!2620663 s!13591))))

(declare-fun lt!2620668 () Unit!165841)

(assert (=> b!7452419 (= lt!2620668 (mainMatchTheorem!4176 lt!2620663 s!13591))))

(assert (=> b!7452419 (= lt!2620660 (Union!19503 (Concat!28348 r1!5845 rTail!78) (Concat!28348 r2!5783 rTail!78)))))

(assert (=> b!7452419 (= lt!2620663 (Concat!28348 lt!2620670 rTail!78))))

(assert (=> b!7452419 (= lt!2620670 (Union!19503 r1!5845 r2!5783))))

(declare-fun res!2989234 () Bool)

(assert (=> start!723458 (=> (not res!2989234) (not e!4448358))))

(declare-fun validRegex!10017 (Regex!19503) Bool)

(assert (=> start!723458 (= res!2989234 (validRegex!10017 r1!5845))))

(assert (=> start!723458 e!4448358))

(assert (=> start!723458 e!4448357))

(declare-fun e!4448354 () Bool)

(assert (=> start!723458 e!4448354))

(declare-fun e!4448356 () Bool)

(assert (=> start!723458 e!4448356))

(declare-fun e!4448359 () Bool)

(assert (=> start!723458 e!4448359))

(assert (=> b!7452420 (= e!4448355 e!4448360)))

(declare-fun res!2989231 () Bool)

(assert (=> b!7452420 (=> res!2989231 e!4448360)))

(assert (=> b!7452420 (= res!2989231 (not (matchR!9267 lt!2620670 (_1!37533 lt!2620671))))))

(declare-datatypes ((Option!17062 0))(
  ( (None!17061) (Some!17061 (v!54190 tuple2!68460)) )
))
(declare-fun lt!2620666 () Option!17062)

(declare-fun get!25138 (Option!17062) tuple2!68460)

(assert (=> b!7452420 (= lt!2620671 (get!25138 lt!2620666))))

(declare-fun Exists!4124 (Int) Bool)

(assert (=> b!7452420 (= (Exists!4124 lambda!461000) (Exists!4124 lambda!461001))))

(declare-fun lt!2620658 () Unit!165841)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2460 (Regex!19503 Regex!19503 List!72219) Unit!165841)

(assert (=> b!7452420 (= lt!2620658 (lemmaExistCutMatchRandMatchRSpecEquivalent!2460 lt!2620670 rTail!78 s!13591))))

(declare-fun isDefined!13751 (Option!17062) Bool)

(assert (=> b!7452420 (= (isDefined!13751 lt!2620666) (Exists!4124 lambda!461000))))

(declare-fun findConcatSeparation!3184 (Regex!19503 Regex!19503 List!72219 List!72219 List!72219) Option!17062)

(assert (=> b!7452420 (= lt!2620666 (findConcatSeparation!3184 lt!2620670 rTail!78 Nil!72095 s!13591 s!13591))))

(declare-fun lt!2620659 () Unit!165841)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2942 (Regex!19503 Regex!19503 List!72219) Unit!165841)

(assert (=> b!7452420 (= lt!2620659 (lemmaFindConcatSeparationEquivalentToExists!2942 lt!2620670 rTail!78 s!13591))))

(declare-fun b!7452421 () Bool)

(declare-fun tp!2159636 () Bool)

(declare-fun tp!2159632 () Bool)

(assert (=> b!7452421 (= e!4448354 (and tp!2159636 tp!2159632))))

(declare-fun b!7452422 () Bool)

(declare-fun tp!2159639 () Bool)

(declare-fun tp!2159641 () Bool)

(assert (=> b!7452422 (= e!4448357 (and tp!2159639 tp!2159641))))

(declare-fun b!7452423 () Bool)

(declare-fun res!2989232 () Bool)

(assert (=> b!7452423 (=> (not res!2989232) (not e!4448358))))

(assert (=> b!7452423 (= res!2989232 (validRegex!10017 r2!5783))))

(declare-fun b!7452424 () Bool)

(declare-fun tp!2159642 () Bool)

(assert (=> b!7452424 (= e!4448357 tp!2159642)))

(declare-fun b!7452425 () Bool)

(declare-fun res!2989235 () Bool)

(assert (=> b!7452425 (=> (not res!2989235) (not e!4448358))))

(assert (=> b!7452425 (= res!2989235 (validRegex!10017 rTail!78))))

(declare-fun b!7452426 () Bool)

(assert (=> b!7452426 (= e!4448354 tp_is_empty!49295)))

(declare-fun b!7452427 () Bool)

(declare-fun tp!2159633 () Bool)

(declare-fun tp!2159630 () Bool)

(assert (=> b!7452427 (= e!4448357 (and tp!2159633 tp!2159630))))

(declare-fun b!7452428 () Bool)

(declare-fun tp!2159640 () Bool)

(assert (=> b!7452428 (= e!4448359 (and tp_is_empty!49295 tp!2159640))))

(declare-fun b!7452429 () Bool)

(declare-fun tp!2159628 () Bool)

(assert (=> b!7452429 (= e!4448354 tp!2159628)))

(declare-fun b!7452430 () Bool)

(assert (=> b!7452430 (= e!4448356 tp_is_empty!49295)))

(declare-fun b!7452431 () Bool)

(declare-fun tp!2159631 () Bool)

(declare-fun tp!2159638 () Bool)

(assert (=> b!7452431 (= e!4448354 (and tp!2159631 tp!2159638))))

(declare-fun b!7452432 () Bool)

(declare-fun tp!2159634 () Bool)

(declare-fun tp!2159635 () Bool)

(assert (=> b!7452432 (= e!4448356 (and tp!2159634 tp!2159635))))

(declare-fun b!7452433 () Bool)

(declare-fun res!2989236 () Bool)

(assert (=> b!7452433 (=> res!2989236 e!4448360)))

(assert (=> b!7452433 (= res!2989236 (not (matchR!9267 rTail!78 (_2!37533 lt!2620671))))))

(declare-fun b!7452434 () Bool)

(declare-fun tp!2159643 () Bool)

(declare-fun tp!2159637 () Bool)

(assert (=> b!7452434 (= e!4448356 (and tp!2159643 tp!2159637))))

(declare-fun b!7452435 () Bool)

(declare-fun tp!2159629 () Bool)

(assert (=> b!7452435 (= e!4448356 tp!2159629)))

(assert (= (and start!723458 res!2989234) b!7452423))

(assert (= (and b!7452423 res!2989232) b!7452425))

(assert (= (and b!7452425 res!2989235) b!7452419))

(assert (= (and b!7452419 (not res!2989233)) b!7452420))

(assert (= (and b!7452420 (not res!2989231)) b!7452433))

(assert (= (and b!7452433 (not res!2989236)) b!7452418))

(get-info :version)

(assert (= (and start!723458 ((_ is ElementMatch!19503) r1!5845)) b!7452417))

(assert (= (and start!723458 ((_ is Concat!28348) r1!5845)) b!7452427))

(assert (= (and start!723458 ((_ is Star!19503) r1!5845)) b!7452424))

(assert (= (and start!723458 ((_ is Union!19503) r1!5845)) b!7452422))

(assert (= (and start!723458 ((_ is ElementMatch!19503) r2!5783)) b!7452426))

(assert (= (and start!723458 ((_ is Concat!28348) r2!5783)) b!7452431))

(assert (= (and start!723458 ((_ is Star!19503) r2!5783)) b!7452429))

(assert (= (and start!723458 ((_ is Union!19503) r2!5783)) b!7452421))

(assert (= (and start!723458 ((_ is ElementMatch!19503) rTail!78)) b!7452430))

(assert (= (and start!723458 ((_ is Concat!28348) rTail!78)) b!7452432))

(assert (= (and start!723458 ((_ is Star!19503) rTail!78)) b!7452435))

(assert (= (and start!723458 ((_ is Union!19503) rTail!78)) b!7452434))

(assert (= (and start!723458 ((_ is Cons!72095) s!13591)) b!7452428))

(declare-fun m!8057724 () Bool)

(assert (=> start!723458 m!8057724))

(declare-fun m!8057726 () Bool)

(assert (=> b!7452433 m!8057726))

(declare-fun m!8057728 () Bool)

(assert (=> b!7452420 m!8057728))

(declare-fun m!8057730 () Bool)

(assert (=> b!7452420 m!8057730))

(declare-fun m!8057732 () Bool)

(assert (=> b!7452420 m!8057732))

(declare-fun m!8057734 () Bool)

(assert (=> b!7452420 m!8057734))

(declare-fun m!8057736 () Bool)

(assert (=> b!7452420 m!8057736))

(declare-fun m!8057738 () Bool)

(assert (=> b!7452420 m!8057738))

(declare-fun m!8057740 () Bool)

(assert (=> b!7452420 m!8057740))

(assert (=> b!7452420 m!8057740))

(declare-fun m!8057742 () Bool)

(assert (=> b!7452420 m!8057742))

(declare-fun m!8057744 () Bool)

(assert (=> b!7452419 m!8057744))

(declare-fun m!8057746 () Bool)

(assert (=> b!7452419 m!8057746))

(declare-fun m!8057748 () Bool)

(assert (=> b!7452419 m!8057748))

(declare-fun m!8057750 () Bool)

(assert (=> b!7452419 m!8057750))

(declare-fun m!8057752 () Bool)

(assert (=> b!7452419 m!8057752))

(declare-fun m!8057754 () Bool)

(assert (=> b!7452419 m!8057754))

(declare-fun m!8057756 () Bool)

(assert (=> b!7452425 m!8057756))

(declare-fun m!8057758 () Bool)

(assert (=> b!7452418 m!8057758))

(declare-fun m!8057760 () Bool)

(assert (=> b!7452418 m!8057760))

(declare-fun m!8057762 () Bool)

(assert (=> b!7452418 m!8057762))

(declare-fun m!8057764 () Bool)

(assert (=> b!7452418 m!8057764))

(declare-fun m!8057766 () Bool)

(assert (=> b!7452418 m!8057766))

(declare-fun m!8057768 () Bool)

(assert (=> b!7452418 m!8057768))

(declare-fun m!8057770 () Bool)

(assert (=> b!7452418 m!8057770))

(declare-fun m!8057772 () Bool)

(assert (=> b!7452418 m!8057772))

(declare-fun m!8057774 () Bool)

(assert (=> b!7452418 m!8057774))

(declare-fun m!8057776 () Bool)

(assert (=> b!7452418 m!8057776))

(declare-fun m!8057778 () Bool)

(assert (=> b!7452423 m!8057778))

(check-sat (not b!7452434) (not b!7452420) (not b!7452422) (not b!7452425) (not b!7452428) (not b!7452429) (not b!7452435) (not b!7452427) (not b!7452432) tp_is_empty!49295 (not b!7452431) (not b!7452421) (not b!7452418) (not b!7452423) (not b!7452424) (not start!723458) (not b!7452419) (not b!7452433))
(check-sat)
