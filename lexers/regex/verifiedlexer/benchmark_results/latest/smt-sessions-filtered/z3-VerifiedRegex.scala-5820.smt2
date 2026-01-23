; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!286864 () Bool)

(assert start!286864)

(declare-fun b!2960519 () Bool)

(declare-fun e!1863595 () Bool)

(declare-fun tp_is_empty!15945 () Bool)

(declare-fun tp!944861 () Bool)

(assert (=> b!2960519 (= e!1863595 (and tp_is_empty!15945 tp!944861))))

(declare-fun res!1221525 () Bool)

(declare-fun e!1863596 () Bool)

(assert (=> start!286864 (=> (not res!1221525) (not e!1863596))))

(declare-datatypes ((C!18568 0))(
  ( (C!18569 (val!11320 Int)) )
))
(declare-datatypes ((Regex!9191 0))(
  ( (ElementMatch!9191 (c!485139 C!18568)) (Concat!14512 (regOne!18894 Regex!9191) (regTwo!18894 Regex!9191)) (EmptyExpr!9191) (Star!9191 (reg!9520 Regex!9191)) (EmptyLang!9191) (Union!9191 (regOne!18895 Regex!9191) (regTwo!18895 Regex!9191)) )
))
(declare-fun r!17423 () Regex!9191)

(declare-fun validRegex!3924 (Regex!9191) Bool)

(assert (=> start!286864 (= res!1221525 (validRegex!3924 r!17423))))

(assert (=> start!286864 e!1863596))

(declare-fun e!1863597 () Bool)

(assert (=> start!286864 e!1863597))

(assert (=> start!286864 e!1863595))

(declare-fun b!2960520 () Bool)

(assert (=> b!2960520 (= e!1863597 tp_is_empty!15945)))

(declare-fun b!2960521 () Bool)

(declare-fun e!1863594 () Bool)

(assert (=> b!2960521 (= e!1863594 (validRegex!3924 (regTwo!18895 r!17423)))))

(declare-fun lt!1034032 () Regex!9191)

(declare-fun simplify!194 (Regex!9191) Regex!9191)

(assert (=> b!2960521 (= lt!1034032 (simplify!194 (regOne!18895 r!17423)))))

(declare-fun b!2960522 () Bool)

(declare-fun tp!944863 () Bool)

(declare-fun tp!944865 () Bool)

(assert (=> b!2960522 (= e!1863597 (and tp!944863 tp!944865))))

(declare-fun b!2960523 () Bool)

(declare-fun tp!944860 () Bool)

(declare-fun tp!944864 () Bool)

(assert (=> b!2960523 (= e!1863597 (and tp!944860 tp!944864))))

(declare-fun b!2960524 () Bool)

(declare-fun tp!944862 () Bool)

(assert (=> b!2960524 (= e!1863597 tp!944862)))

(declare-fun b!2960525 () Bool)

(assert (=> b!2960525 (= e!1863596 (not e!1863594))))

(declare-fun res!1221526 () Bool)

(assert (=> b!2960525 (=> res!1221526 e!1863594)))

(declare-fun lt!1034031 () Bool)

(get-info :version)

(assert (=> b!2960525 (= res!1221526 (or lt!1034031 ((_ is Concat!14512) r!17423) (not ((_ is Union!9191) r!17423))))))

(declare-datatypes ((List!35056 0))(
  ( (Nil!34932) (Cons!34932 (h!40352 C!18568) (t!234121 List!35056)) )
))
(declare-fun s!11993 () List!35056)

(declare-fun matchRSpec!1328 (Regex!9191 List!35056) Bool)

(assert (=> b!2960525 (= lt!1034031 (matchRSpec!1328 r!17423 s!11993))))

(declare-fun matchR!4073 (Regex!9191 List!35056) Bool)

(assert (=> b!2960525 (= lt!1034031 (matchR!4073 r!17423 s!11993))))

(declare-datatypes ((Unit!48761 0))(
  ( (Unit!48762) )
))
(declare-fun lt!1034030 () Unit!48761)

(declare-fun mainMatchTheorem!1328 (Regex!9191 List!35056) Unit!48761)

(assert (=> b!2960525 (= lt!1034030 (mainMatchTheorem!1328 r!17423 s!11993))))

(assert (= (and start!286864 res!1221525) b!2960525))

(assert (= (and b!2960525 (not res!1221526)) b!2960521))

(assert (= (and start!286864 ((_ is ElementMatch!9191) r!17423)) b!2960520))

(assert (= (and start!286864 ((_ is Concat!14512) r!17423)) b!2960523))

(assert (= (and start!286864 ((_ is Star!9191) r!17423)) b!2960524))

(assert (= (and start!286864 ((_ is Union!9191) r!17423)) b!2960522))

(assert (= (and start!286864 ((_ is Cons!34932) s!11993)) b!2960519))

(declare-fun m!3334139 () Bool)

(assert (=> start!286864 m!3334139))

(declare-fun m!3334141 () Bool)

(assert (=> b!2960521 m!3334141))

(declare-fun m!3334143 () Bool)

(assert (=> b!2960521 m!3334143))

(declare-fun m!3334145 () Bool)

(assert (=> b!2960525 m!3334145))

(declare-fun m!3334147 () Bool)

(assert (=> b!2960525 m!3334147))

(declare-fun m!3334149 () Bool)

(assert (=> b!2960525 m!3334149))

(check-sat (not b!2960524) (not start!286864) (not b!2960523) (not b!2960521) (not b!2960519) (not b!2960522) (not b!2960525) tp_is_empty!15945)
(check-sat)
(get-model)

(declare-fun b!2960566 () Bool)

(declare-fun res!1221545 () Bool)

(declare-fun e!1863626 () Bool)

(assert (=> b!2960566 (=> (not res!1221545) (not e!1863626))))

(declare-fun call!196300 () Bool)

(assert (=> b!2960566 (= res!1221545 call!196300)))

(declare-fun e!1863630 () Bool)

(assert (=> b!2960566 (= e!1863630 e!1863626)))

(declare-fun b!2960567 () Bool)

(declare-fun e!1863631 () Bool)

(assert (=> b!2960567 (= e!1863631 call!196300)))

(declare-fun c!485153 () Bool)

(declare-fun bm!196294 () Bool)

(declare-fun c!485152 () Bool)

(declare-fun call!196301 () Bool)

(assert (=> bm!196294 (= call!196301 (validRegex!3924 (ite c!485152 (reg!9520 (regTwo!18895 r!17423)) (ite c!485153 (regOne!18895 (regTwo!18895 r!17423)) (regTwo!18894 (regTwo!18895 r!17423))))))))

(declare-fun b!2960568 () Bool)

(declare-fun e!1863632 () Bool)

(assert (=> b!2960568 (= e!1863632 e!1863630)))

(assert (=> b!2960568 (= c!485153 ((_ is Union!9191) (regTwo!18895 r!17423)))))

(declare-fun b!2960569 () Bool)

(declare-fun call!196299 () Bool)

(assert (=> b!2960569 (= e!1863626 call!196299)))

(declare-fun bm!196295 () Bool)

(assert (=> bm!196295 (= call!196299 (validRegex!3924 (ite c!485153 (regTwo!18895 (regTwo!18895 r!17423)) (regOne!18894 (regTwo!18895 r!17423)))))))

(declare-fun bm!196296 () Bool)

(assert (=> bm!196296 (= call!196300 call!196301)))

(declare-fun b!2960571 () Bool)

(declare-fun res!1221547 () Bool)

(declare-fun e!1863629 () Bool)

(assert (=> b!2960571 (=> res!1221547 e!1863629)))

(assert (=> b!2960571 (= res!1221547 (not ((_ is Concat!14512) (regTwo!18895 r!17423))))))

(assert (=> b!2960571 (= e!1863630 e!1863629)))

(declare-fun b!2960570 () Bool)

(declare-fun e!1863627 () Bool)

(assert (=> b!2960570 (= e!1863632 e!1863627)))

(declare-fun res!1221544 () Bool)

(declare-fun nullable!2934 (Regex!9191) Bool)

(assert (=> b!2960570 (= res!1221544 (not (nullable!2934 (reg!9520 (regTwo!18895 r!17423)))))))

(assert (=> b!2960570 (=> (not res!1221544) (not e!1863627))))

(declare-fun d!841993 () Bool)

(declare-fun res!1221546 () Bool)

(declare-fun e!1863628 () Bool)

(assert (=> d!841993 (=> res!1221546 e!1863628)))

(assert (=> d!841993 (= res!1221546 ((_ is ElementMatch!9191) (regTwo!18895 r!17423)))))

(assert (=> d!841993 (= (validRegex!3924 (regTwo!18895 r!17423)) e!1863628)))

(declare-fun b!2960572 () Bool)

(assert (=> b!2960572 (= e!1863627 call!196301)))

(declare-fun b!2960573 () Bool)

(assert (=> b!2960573 (= e!1863629 e!1863631)))

(declare-fun res!1221543 () Bool)

(assert (=> b!2960573 (=> (not res!1221543) (not e!1863631))))

(assert (=> b!2960573 (= res!1221543 call!196299)))

(declare-fun b!2960574 () Bool)

(assert (=> b!2960574 (= e!1863628 e!1863632)))

(assert (=> b!2960574 (= c!485152 ((_ is Star!9191) (regTwo!18895 r!17423)))))

(assert (= (and d!841993 (not res!1221546)) b!2960574))

(assert (= (and b!2960574 c!485152) b!2960570))

(assert (= (and b!2960574 (not c!485152)) b!2960568))

(assert (= (and b!2960570 res!1221544) b!2960572))

(assert (= (and b!2960568 c!485153) b!2960566))

(assert (= (and b!2960568 (not c!485153)) b!2960571))

(assert (= (and b!2960566 res!1221545) b!2960569))

(assert (= (and b!2960571 (not res!1221547)) b!2960573))

(assert (= (and b!2960573 res!1221543) b!2960567))

(assert (= (or b!2960566 b!2960567) bm!196296))

(assert (= (or b!2960569 b!2960573) bm!196295))

(assert (= (or b!2960572 bm!196296) bm!196294))

(declare-fun m!3334151 () Bool)

(assert (=> bm!196294 m!3334151))

(declare-fun m!3334153 () Bool)

(assert (=> bm!196295 m!3334153))

(declare-fun m!3334155 () Bool)

(assert (=> b!2960570 m!3334155))

(assert (=> b!2960521 d!841993))

(declare-fun bm!196311 () Bool)

(declare-fun call!196316 () Bool)

(declare-fun call!196317 () Bool)

(assert (=> bm!196311 (= call!196316 call!196317)))

(declare-fun lt!1034047 () Regex!9191)

(declare-fun lt!1034050 () Regex!9191)

(declare-fun c!485183 () Bool)

(declare-fun lt!1034045 () Regex!9191)

(declare-fun bm!196312 () Bool)

(declare-fun c!485182 () Bool)

(declare-fun isEmptyLang!310 (Regex!9191) Bool)

(assert (=> bm!196312 (= call!196317 (isEmptyLang!310 (ite c!485183 lt!1034047 (ite c!485182 lt!1034050 lt!1034045))))))

(declare-fun b!2960625 () Bool)

(assert (=> b!2960625 (= c!485182 ((_ is Union!9191) (regOne!18895 r!17423)))))

(declare-fun e!1863662 () Regex!9191)

(declare-fun e!1863671 () Regex!9191)

(assert (=> b!2960625 (= e!1863662 e!1863671)))

(declare-fun b!2960626 () Bool)

(declare-fun e!1863661 () Regex!9191)

(assert (=> b!2960626 (= e!1863661 EmptyExpr!9191)))

(declare-fun b!2960627 () Bool)

(declare-fun c!485185 () Bool)

(assert (=> b!2960627 (= c!485185 call!196316)))

(declare-fun e!1863672 () Regex!9191)

(declare-fun e!1863670 () Regex!9191)

(assert (=> b!2960627 (= e!1863672 e!1863670)))

(declare-fun b!2960628 () Bool)

(declare-fun e!1863665 () Regex!9191)

(declare-fun lt!1034049 () Regex!9191)

(assert (=> b!2960628 (= e!1863665 lt!1034049)))

(declare-fun b!2960629 () Bool)

(declare-fun e!1863666 () Regex!9191)

(assert (=> b!2960629 (= e!1863666 EmptyLang!9191)))

(declare-fun bm!196313 () Bool)

(declare-fun call!196320 () Regex!9191)

(assert (=> bm!196313 (= call!196320 (simplify!194 (ite c!485182 (regOne!18895 (regOne!18895 r!17423)) (regTwo!18894 (regOne!18895 r!17423)))))))

(declare-fun b!2960630 () Bool)

(declare-fun e!1863674 () Regex!9191)

(assert (=> b!2960630 (= e!1863674 EmptyLang!9191)))

(declare-fun b!2960631 () Bool)

(declare-fun e!1863673 () Bool)

(declare-fun lt!1034048 () Regex!9191)

(assert (=> b!2960631 (= e!1863673 (= (nullable!2934 lt!1034048) (nullable!2934 (regOne!18895 r!17423))))))

(declare-fun b!2960632 () Bool)

(assert (=> b!2960632 (= e!1863672 lt!1034050)))

(declare-fun d!841995 () Bool)

(assert (=> d!841995 e!1863673))

(declare-fun res!1221556 () Bool)

(assert (=> d!841995 (=> (not res!1221556) (not e!1863673))))

(assert (=> d!841995 (= res!1221556 (validRegex!3924 lt!1034048))))

(assert (=> d!841995 (= lt!1034048 e!1863666)))

(declare-fun c!485184 () Bool)

(assert (=> d!841995 (= c!485184 ((_ is EmptyLang!9191) (regOne!18895 r!17423)))))

(assert (=> d!841995 (validRegex!3924 (regOne!18895 r!17423))))

(assert (=> d!841995 (= (simplify!194 (regOne!18895 r!17423)) lt!1034048)))

(declare-fun b!2960633 () Bool)

(declare-fun e!1863664 () Bool)

(assert (=> b!2960633 (= e!1863664 call!196316)))

(declare-fun b!2960634 () Bool)

(declare-fun e!1863668 () Regex!9191)

(assert (=> b!2960634 (= e!1863668 EmptyExpr!9191)))

(declare-fun bm!196314 () Bool)

(declare-fun call!196318 () Regex!9191)

(declare-fun call!196321 () Regex!9191)

(assert (=> bm!196314 (= call!196318 call!196321)))

(declare-fun b!2960635 () Bool)

(assert (=> b!2960635 (= e!1863671 e!1863672)))

(declare-fun lt!1034046 () Regex!9191)

(assert (=> b!2960635 (= lt!1034046 call!196320)))

(assert (=> b!2960635 (= lt!1034050 call!196318)))

(declare-fun c!485181 () Bool)

(declare-fun call!196319 () Bool)

(assert (=> b!2960635 (= c!485181 call!196319)))

(declare-fun bm!196315 () Bool)

(assert (=> bm!196315 (= call!196319 (isEmptyLang!310 (ite c!485182 lt!1034046 lt!1034049)))))

(declare-fun b!2960636 () Bool)

(declare-fun e!1863667 () Regex!9191)

(assert (=> b!2960636 (= e!1863667 lt!1034045)))

(declare-fun b!2960637 () Bool)

(assert (=> b!2960637 (= e!1863667 e!1863665)))

(declare-fun c!485177 () Bool)

(declare-fun isEmptyExpr!391 (Regex!9191) Bool)

(assert (=> b!2960637 (= c!485177 (isEmptyExpr!391 lt!1034045))))

(declare-fun b!2960638 () Bool)

(declare-fun c!485186 () Bool)

(declare-fun call!196322 () Bool)

(assert (=> b!2960638 (= c!485186 call!196322)))

(assert (=> b!2960638 (= e!1863674 e!1863667)))

(declare-fun b!2960639 () Bool)

(declare-fun c!485180 () Bool)

(declare-fun e!1863669 () Bool)

(assert (=> b!2960639 (= c!485180 e!1863669)))

(declare-fun res!1221555 () Bool)

(assert (=> b!2960639 (=> res!1221555 e!1863669)))

(assert (=> b!2960639 (= res!1221555 call!196317)))

(assert (=> b!2960639 (= lt!1034047 call!196321)))

(assert (=> b!2960639 (= e!1863662 e!1863668)))

(declare-fun b!2960640 () Bool)

(assert (=> b!2960640 (= e!1863670 lt!1034046)))

(declare-fun b!2960641 () Bool)

(assert (=> b!2960641 (= e!1863668 (Star!9191 lt!1034047))))

(declare-fun b!2960642 () Bool)

(assert (=> b!2960642 (= e!1863671 e!1863674)))

(assert (=> b!2960642 (= lt!1034049 call!196318)))

(assert (=> b!2960642 (= lt!1034045 call!196320)))

(declare-fun res!1221554 () Bool)

(assert (=> b!2960642 (= res!1221554 call!196319)))

(assert (=> b!2960642 (=> res!1221554 e!1863664)))

(declare-fun c!485178 () Bool)

(assert (=> b!2960642 (= c!485178 e!1863664)))

(declare-fun bm!196316 () Bool)

(assert (=> bm!196316 (= call!196322 (isEmptyExpr!391 (ite c!485183 lt!1034047 lt!1034049)))))

(declare-fun b!2960643 () Bool)

(declare-fun e!1863663 () Regex!9191)

(assert (=> b!2960643 (= e!1863663 (regOne!18895 r!17423))))

(declare-fun b!2960644 () Bool)

(assert (=> b!2960644 (= e!1863666 e!1863663)))

(declare-fun c!485176 () Bool)

(assert (=> b!2960644 (= c!485176 ((_ is ElementMatch!9191) (regOne!18895 r!17423)))))

(declare-fun b!2960645 () Bool)

(assert (=> b!2960645 (= e!1863670 (Union!9191 lt!1034046 lt!1034050))))

(declare-fun bm!196317 () Bool)

(assert (=> bm!196317 (= call!196321 (simplify!194 (ite c!485183 (reg!9520 (regOne!18895 r!17423)) (ite c!485182 (regTwo!18895 (regOne!18895 r!17423)) (regOne!18894 (regOne!18895 r!17423))))))))

(declare-fun b!2960646 () Bool)

(assert (=> b!2960646 (= e!1863665 (Concat!14512 lt!1034049 lt!1034045))))

(declare-fun b!2960647 () Bool)

(assert (=> b!2960647 (= e!1863661 e!1863662)))

(assert (=> b!2960647 (= c!485183 ((_ is Star!9191) (regOne!18895 r!17423)))))

(declare-fun b!2960648 () Bool)

(assert (=> b!2960648 (= e!1863669 call!196322)))

(declare-fun b!2960649 () Bool)

(declare-fun c!485179 () Bool)

(assert (=> b!2960649 (= c!485179 ((_ is EmptyExpr!9191) (regOne!18895 r!17423)))))

(assert (=> b!2960649 (= e!1863663 e!1863661)))

(assert (= (and d!841995 c!485184) b!2960629))

(assert (= (and d!841995 (not c!485184)) b!2960644))

(assert (= (and b!2960644 c!485176) b!2960643))

(assert (= (and b!2960644 (not c!485176)) b!2960649))

(assert (= (and b!2960649 c!485179) b!2960626))

(assert (= (and b!2960649 (not c!485179)) b!2960647))

(assert (= (and b!2960647 c!485183) b!2960639))

(assert (= (and b!2960647 (not c!485183)) b!2960625))

(assert (= (and b!2960639 (not res!1221555)) b!2960648))

(assert (= (and b!2960639 c!485180) b!2960634))

(assert (= (and b!2960639 (not c!485180)) b!2960641))

(assert (= (and b!2960625 c!485182) b!2960635))

(assert (= (and b!2960625 (not c!485182)) b!2960642))

(assert (= (and b!2960635 c!485181) b!2960632))

(assert (= (and b!2960635 (not c!485181)) b!2960627))

(assert (= (and b!2960627 c!485185) b!2960640))

(assert (= (and b!2960627 (not c!485185)) b!2960645))

(assert (= (and b!2960642 (not res!1221554)) b!2960633))

(assert (= (and b!2960642 c!485178) b!2960630))

(assert (= (and b!2960642 (not c!485178)) b!2960638))

(assert (= (and b!2960638 c!485186) b!2960636))

(assert (= (and b!2960638 (not c!485186)) b!2960637))

(assert (= (and b!2960637 c!485177) b!2960628))

(assert (= (and b!2960637 (not c!485177)) b!2960646))

(assert (= (or b!2960635 b!2960642) bm!196313))

(assert (= (or b!2960635 b!2960642) bm!196314))

(assert (= (or b!2960627 b!2960633) bm!196311))

(assert (= (or b!2960635 b!2960642) bm!196315))

(assert (= (or b!2960648 b!2960638) bm!196316))

(assert (= (or b!2960639 bm!196314) bm!196317))

(assert (= (or b!2960639 bm!196311) bm!196312))

(assert (= (and d!841995 res!1221556) b!2960631))

(declare-fun m!3334157 () Bool)

(assert (=> d!841995 m!3334157))

(declare-fun m!3334159 () Bool)

(assert (=> d!841995 m!3334159))

(declare-fun m!3334161 () Bool)

(assert (=> b!2960637 m!3334161))

(declare-fun m!3334163 () Bool)

(assert (=> bm!196316 m!3334163))

(declare-fun m!3334165 () Bool)

(assert (=> bm!196313 m!3334165))

(declare-fun m!3334167 () Bool)

(assert (=> bm!196317 m!3334167))

(declare-fun m!3334169 () Bool)

(assert (=> bm!196315 m!3334169))

(declare-fun m!3334171 () Bool)

(assert (=> bm!196312 m!3334171))

(declare-fun m!3334173 () Bool)

(assert (=> b!2960631 m!3334173))

(declare-fun m!3334175 () Bool)

(assert (=> b!2960631 m!3334175))

(assert (=> b!2960521 d!841995))

(declare-fun b!2960650 () Bool)

(declare-fun res!1221559 () Bool)

(declare-fun e!1863675 () Bool)

(assert (=> b!2960650 (=> (not res!1221559) (not e!1863675))))

(declare-fun call!196324 () Bool)

(assert (=> b!2960650 (= res!1221559 call!196324)))

(declare-fun e!1863679 () Bool)

(assert (=> b!2960650 (= e!1863679 e!1863675)))

(declare-fun b!2960651 () Bool)

(declare-fun e!1863680 () Bool)

(assert (=> b!2960651 (= e!1863680 call!196324)))

(declare-fun c!485188 () Bool)

(declare-fun bm!196318 () Bool)

(declare-fun c!485187 () Bool)

(declare-fun call!196325 () Bool)

(assert (=> bm!196318 (= call!196325 (validRegex!3924 (ite c!485187 (reg!9520 r!17423) (ite c!485188 (regOne!18895 r!17423) (regTwo!18894 r!17423)))))))

(declare-fun b!2960652 () Bool)

(declare-fun e!1863681 () Bool)

(assert (=> b!2960652 (= e!1863681 e!1863679)))

(assert (=> b!2960652 (= c!485188 ((_ is Union!9191) r!17423))))

(declare-fun b!2960653 () Bool)

(declare-fun call!196323 () Bool)

(assert (=> b!2960653 (= e!1863675 call!196323)))

(declare-fun bm!196319 () Bool)

(assert (=> bm!196319 (= call!196323 (validRegex!3924 (ite c!485188 (regTwo!18895 r!17423) (regOne!18894 r!17423))))))

(declare-fun bm!196320 () Bool)

(assert (=> bm!196320 (= call!196324 call!196325)))

(declare-fun b!2960655 () Bool)

(declare-fun res!1221561 () Bool)

(declare-fun e!1863678 () Bool)

(assert (=> b!2960655 (=> res!1221561 e!1863678)))

(assert (=> b!2960655 (= res!1221561 (not ((_ is Concat!14512) r!17423)))))

(assert (=> b!2960655 (= e!1863679 e!1863678)))

(declare-fun b!2960654 () Bool)

(declare-fun e!1863676 () Bool)

(assert (=> b!2960654 (= e!1863681 e!1863676)))

(declare-fun res!1221558 () Bool)

(assert (=> b!2960654 (= res!1221558 (not (nullable!2934 (reg!9520 r!17423))))))

(assert (=> b!2960654 (=> (not res!1221558) (not e!1863676))))

(declare-fun d!841997 () Bool)

(declare-fun res!1221560 () Bool)

(declare-fun e!1863677 () Bool)

(assert (=> d!841997 (=> res!1221560 e!1863677)))

(assert (=> d!841997 (= res!1221560 ((_ is ElementMatch!9191) r!17423))))

(assert (=> d!841997 (= (validRegex!3924 r!17423) e!1863677)))

(declare-fun b!2960656 () Bool)

(assert (=> b!2960656 (= e!1863676 call!196325)))

(declare-fun b!2960657 () Bool)

(assert (=> b!2960657 (= e!1863678 e!1863680)))

(declare-fun res!1221557 () Bool)

(assert (=> b!2960657 (=> (not res!1221557) (not e!1863680))))

(assert (=> b!2960657 (= res!1221557 call!196323)))

(declare-fun b!2960658 () Bool)

(assert (=> b!2960658 (= e!1863677 e!1863681)))

(assert (=> b!2960658 (= c!485187 ((_ is Star!9191) r!17423))))

(assert (= (and d!841997 (not res!1221560)) b!2960658))

(assert (= (and b!2960658 c!485187) b!2960654))

(assert (= (and b!2960658 (not c!485187)) b!2960652))

(assert (= (and b!2960654 res!1221558) b!2960656))

(assert (= (and b!2960652 c!485188) b!2960650))

(assert (= (and b!2960652 (not c!485188)) b!2960655))

(assert (= (and b!2960650 res!1221559) b!2960653))

(assert (= (and b!2960655 (not res!1221561)) b!2960657))

(assert (= (and b!2960657 res!1221557) b!2960651))

(assert (= (or b!2960650 b!2960651) bm!196320))

(assert (= (or b!2960653 b!2960657) bm!196319))

(assert (= (or b!2960656 bm!196320) bm!196318))

(declare-fun m!3334177 () Bool)

(assert (=> bm!196318 m!3334177))

(declare-fun m!3334179 () Bool)

(assert (=> bm!196319 m!3334179))

(declare-fun m!3334181 () Bool)

(assert (=> b!2960654 m!3334181))

(assert (=> start!286864 d!841997))

(declare-fun b!2960835 () Bool)

(assert (=> b!2960835 true))

(assert (=> b!2960835 true))

(declare-fun bs!526334 () Bool)

(declare-fun b!2960838 () Bool)

(assert (= bs!526334 (and b!2960838 b!2960835)))

(declare-fun lambda!110374 () Int)

(declare-fun lambda!110373 () Int)

(assert (=> bs!526334 (not (= lambda!110374 lambda!110373))))

(assert (=> b!2960838 true))

(assert (=> b!2960838 true))

(declare-fun e!1863783 () Bool)

(declare-fun call!196363 () Bool)

(assert (=> b!2960835 (= e!1863783 call!196363)))

(declare-fun b!2960836 () Bool)

(declare-fun res!1221637 () Bool)

(assert (=> b!2960836 (=> res!1221637 e!1863783)))

(declare-fun call!196362 () Bool)

(assert (=> b!2960836 (= res!1221637 call!196362)))

(declare-fun e!1863781 () Bool)

(assert (=> b!2960836 (= e!1863781 e!1863783)))

(declare-fun b!2960837 () Bool)

(declare-fun e!1863784 () Bool)

(declare-fun e!1863785 () Bool)

(assert (=> b!2960837 (= e!1863784 e!1863785)))

(declare-fun res!1221638 () Bool)

(assert (=> b!2960837 (= res!1221638 (not ((_ is EmptyLang!9191) r!17423)))))

(assert (=> b!2960837 (=> (not res!1221638) (not e!1863785))))

(assert (=> b!2960838 (= e!1863781 call!196363)))

(declare-fun c!485239 () Bool)

(declare-fun bm!196357 () Bool)

(declare-fun Exists!1520 (Int) Bool)

(assert (=> bm!196357 (= call!196363 (Exists!1520 (ite c!485239 lambda!110373 lambda!110374)))))

(declare-fun b!2960839 () Bool)

(declare-fun e!1863786 () Bool)

(assert (=> b!2960839 (= e!1863786 (= s!11993 (Cons!34932 (c!485139 r!17423) Nil!34932)))))

(declare-fun b!2960840 () Bool)

(assert (=> b!2960840 (= e!1863784 call!196362)))

(declare-fun b!2960841 () Bool)

(declare-fun e!1863782 () Bool)

(assert (=> b!2960841 (= e!1863782 (matchRSpec!1328 (regTwo!18895 r!17423) s!11993))))

(declare-fun b!2960842 () Bool)

(declare-fun e!1863787 () Bool)

(assert (=> b!2960842 (= e!1863787 e!1863782)))

(declare-fun res!1221636 () Bool)

(assert (=> b!2960842 (= res!1221636 (matchRSpec!1328 (regOne!18895 r!17423) s!11993))))

(assert (=> b!2960842 (=> res!1221636 e!1863782)))

(declare-fun b!2960843 () Bool)

(assert (=> b!2960843 (= e!1863787 e!1863781)))

(assert (=> b!2960843 (= c!485239 ((_ is Star!9191) r!17423))))

(declare-fun b!2960844 () Bool)

(declare-fun c!485238 () Bool)

(assert (=> b!2960844 (= c!485238 ((_ is Union!9191) r!17423))))

(assert (=> b!2960844 (= e!1863786 e!1863787)))

(declare-fun d!841999 () Bool)

(declare-fun c!485240 () Bool)

(assert (=> d!841999 (= c!485240 ((_ is EmptyExpr!9191) r!17423))))

(assert (=> d!841999 (= (matchRSpec!1328 r!17423 s!11993) e!1863784)))

(declare-fun bm!196358 () Bool)

(declare-fun isEmpty!19215 (List!35056) Bool)

(assert (=> bm!196358 (= call!196362 (isEmpty!19215 s!11993))))

(declare-fun b!2960845 () Bool)

(declare-fun c!485241 () Bool)

(assert (=> b!2960845 (= c!485241 ((_ is ElementMatch!9191) r!17423))))

(assert (=> b!2960845 (= e!1863785 e!1863786)))

(assert (= (and d!841999 c!485240) b!2960840))

(assert (= (and d!841999 (not c!485240)) b!2960837))

(assert (= (and b!2960837 res!1221638) b!2960845))

(assert (= (and b!2960845 c!485241) b!2960839))

(assert (= (and b!2960845 (not c!485241)) b!2960844))

(assert (= (and b!2960844 c!485238) b!2960842))

(assert (= (and b!2960844 (not c!485238)) b!2960843))

(assert (= (and b!2960842 (not res!1221636)) b!2960841))

(assert (= (and b!2960843 c!485239) b!2960836))

(assert (= (and b!2960843 (not c!485239)) b!2960838))

(assert (= (and b!2960836 (not res!1221637)) b!2960835))

(assert (= (or b!2960835 b!2960838) bm!196357))

(assert (= (or b!2960840 b!2960836) bm!196358))

(declare-fun m!3334211 () Bool)

(assert (=> bm!196357 m!3334211))

(declare-fun m!3334213 () Bool)

(assert (=> b!2960841 m!3334213))

(declare-fun m!3334215 () Bool)

(assert (=> b!2960842 m!3334215))

(declare-fun m!3334217 () Bool)

(assert (=> bm!196358 m!3334217))

(assert (=> b!2960525 d!841999))

(declare-fun b!2960947 () Bool)

(declare-fun e!1863833 () Bool)

(declare-fun e!1863835 () Bool)

(assert (=> b!2960947 (= e!1863833 e!1863835)))

(declare-fun res!1221669 () Bool)

(assert (=> b!2960947 (=> (not res!1221669) (not e!1863835))))

(declare-fun lt!1034077 () Bool)

(assert (=> b!2960947 (= res!1221669 (not lt!1034077))))

(declare-fun b!2960948 () Bool)

(declare-fun e!1863839 () Bool)

(assert (=> b!2960948 (= e!1863839 (nullable!2934 r!17423))))

(declare-fun b!2960949 () Bool)

(declare-fun e!1863837 () Bool)

(declare-fun e!1863838 () Bool)

(assert (=> b!2960949 (= e!1863837 e!1863838)))

(declare-fun c!485261 () Bool)

(assert (=> b!2960949 (= c!485261 ((_ is EmptyLang!9191) r!17423))))

(declare-fun b!2960950 () Bool)

(declare-fun e!1863834 () Bool)

(declare-fun head!6595 (List!35056) C!18568)

(assert (=> b!2960950 (= e!1863834 (= (head!6595 s!11993) (c!485139 r!17423)))))

(declare-fun b!2960951 () Bool)

(declare-fun res!1221666 () Bool)

(declare-fun e!1863836 () Bool)

(assert (=> b!2960951 (=> res!1221666 e!1863836)))

(declare-fun tail!4821 (List!35056) List!35056)

(assert (=> b!2960951 (= res!1221666 (not (isEmpty!19215 (tail!4821 s!11993))))))

(declare-fun b!2960952 () Bool)

(assert (=> b!2960952 (= e!1863836 (not (= (head!6595 s!11993) (c!485139 r!17423))))))

(declare-fun b!2960953 () Bool)

(declare-fun call!196376 () Bool)

(assert (=> b!2960953 (= e!1863837 (= lt!1034077 call!196376))))

(declare-fun b!2960954 () Bool)

(assert (=> b!2960954 (= e!1863835 e!1863836)))

(declare-fun res!1221663 () Bool)

(assert (=> b!2960954 (=> res!1221663 e!1863836)))

(assert (=> b!2960954 (= res!1221663 call!196376)))

(declare-fun b!2960955 () Bool)

(declare-fun derivativeStep!2536 (Regex!9191 C!18568) Regex!9191)

(assert (=> b!2960955 (= e!1863839 (matchR!4073 (derivativeStep!2536 r!17423 (head!6595 s!11993)) (tail!4821 s!11993)))))

(declare-fun b!2960956 () Bool)

(declare-fun res!1221664 () Bool)

(assert (=> b!2960956 (=> res!1221664 e!1863833)))

(assert (=> b!2960956 (= res!1221664 (not ((_ is ElementMatch!9191) r!17423)))))

(assert (=> b!2960956 (= e!1863838 e!1863833)))

(declare-fun b!2960957 () Bool)

(assert (=> b!2960957 (= e!1863838 (not lt!1034077))))

(declare-fun b!2960958 () Bool)

(declare-fun res!1221665 () Bool)

(assert (=> b!2960958 (=> res!1221665 e!1863833)))

(assert (=> b!2960958 (= res!1221665 e!1863834)))

(declare-fun res!1221667 () Bool)

(assert (=> b!2960958 (=> (not res!1221667) (not e!1863834))))

(assert (=> b!2960958 (= res!1221667 lt!1034077)))

(declare-fun d!842009 () Bool)

(assert (=> d!842009 e!1863837))

(declare-fun c!485262 () Bool)

(assert (=> d!842009 (= c!485262 ((_ is EmptyExpr!9191) r!17423))))

(assert (=> d!842009 (= lt!1034077 e!1863839)))

(declare-fun c!485263 () Bool)

(assert (=> d!842009 (= c!485263 (isEmpty!19215 s!11993))))

(assert (=> d!842009 (validRegex!3924 r!17423)))

(assert (=> d!842009 (= (matchR!4073 r!17423 s!11993) lt!1034077)))

(declare-fun b!2960959 () Bool)

(declare-fun res!1221668 () Bool)

(assert (=> b!2960959 (=> (not res!1221668) (not e!1863834))))

(assert (=> b!2960959 (= res!1221668 (isEmpty!19215 (tail!4821 s!11993)))))

(declare-fun b!2960960 () Bool)

(declare-fun res!1221670 () Bool)

(assert (=> b!2960960 (=> (not res!1221670) (not e!1863834))))

(assert (=> b!2960960 (= res!1221670 (not call!196376))))

(declare-fun bm!196371 () Bool)

(assert (=> bm!196371 (= call!196376 (isEmpty!19215 s!11993))))

(assert (= (and d!842009 c!485263) b!2960948))

(assert (= (and d!842009 (not c!485263)) b!2960955))

(assert (= (and d!842009 c!485262) b!2960953))

(assert (= (and d!842009 (not c!485262)) b!2960949))

(assert (= (and b!2960949 c!485261) b!2960957))

(assert (= (and b!2960949 (not c!485261)) b!2960956))

(assert (= (and b!2960956 (not res!1221664)) b!2960958))

(assert (= (and b!2960958 res!1221667) b!2960960))

(assert (= (and b!2960960 res!1221670) b!2960959))

(assert (= (and b!2960959 res!1221668) b!2960950))

(assert (= (and b!2960958 (not res!1221665)) b!2960947))

(assert (= (and b!2960947 res!1221669) b!2960954))

(assert (= (and b!2960954 (not res!1221663)) b!2960951))

(assert (= (and b!2960951 (not res!1221666)) b!2960952))

(assert (= (or b!2960953 b!2960960 b!2960954) bm!196371))

(declare-fun m!3334245 () Bool)

(assert (=> b!2960952 m!3334245))

(assert (=> bm!196371 m!3334217))

(assert (=> d!842009 m!3334217))

(assert (=> d!842009 m!3334139))

(declare-fun m!3334247 () Bool)

(assert (=> b!2960951 m!3334247))

(assert (=> b!2960951 m!3334247))

(declare-fun m!3334249 () Bool)

(assert (=> b!2960951 m!3334249))

(assert (=> b!2960950 m!3334245))

(declare-fun m!3334251 () Bool)

(assert (=> b!2960948 m!3334251))

(assert (=> b!2960959 m!3334247))

(assert (=> b!2960959 m!3334247))

(assert (=> b!2960959 m!3334249))

(assert (=> b!2960955 m!3334245))

(assert (=> b!2960955 m!3334245))

(declare-fun m!3334253 () Bool)

(assert (=> b!2960955 m!3334253))

(assert (=> b!2960955 m!3334247))

(assert (=> b!2960955 m!3334253))

(assert (=> b!2960955 m!3334247))

(declare-fun m!3334255 () Bool)

(assert (=> b!2960955 m!3334255))

(assert (=> b!2960525 d!842009))

(declare-fun d!842013 () Bool)

(assert (=> d!842013 (= (matchR!4073 r!17423 s!11993) (matchRSpec!1328 r!17423 s!11993))))

(declare-fun lt!1034080 () Unit!48761)

(declare-fun choose!17517 (Regex!9191 List!35056) Unit!48761)

(assert (=> d!842013 (= lt!1034080 (choose!17517 r!17423 s!11993))))

(assert (=> d!842013 (validRegex!3924 r!17423)))

(assert (=> d!842013 (= (mainMatchTheorem!1328 r!17423 s!11993) lt!1034080)))

(declare-fun bs!526335 () Bool)

(assert (= bs!526335 d!842013))

(assert (=> bs!526335 m!3334147))

(assert (=> bs!526335 m!3334145))

(declare-fun m!3334257 () Bool)

(assert (=> bs!526335 m!3334257))

(assert (=> bs!526335 m!3334139))

(assert (=> b!2960525 d!842013))

(declare-fun b!2960971 () Bool)

(declare-fun e!1863842 () Bool)

(assert (=> b!2960971 (= e!1863842 tp_is_empty!15945)))

(declare-fun b!2960974 () Bool)

(declare-fun tp!944915 () Bool)

(declare-fun tp!944917 () Bool)

(assert (=> b!2960974 (= e!1863842 (and tp!944915 tp!944917))))

(declare-fun b!2960973 () Bool)

(declare-fun tp!944918 () Bool)

(assert (=> b!2960973 (= e!1863842 tp!944918)))

(assert (=> b!2960522 (= tp!944863 e!1863842)))

(declare-fun b!2960972 () Bool)

(declare-fun tp!944916 () Bool)

(declare-fun tp!944914 () Bool)

(assert (=> b!2960972 (= e!1863842 (and tp!944916 tp!944914))))

(assert (= (and b!2960522 ((_ is ElementMatch!9191) (regOne!18895 r!17423))) b!2960971))

(assert (= (and b!2960522 ((_ is Concat!14512) (regOne!18895 r!17423))) b!2960972))

(assert (= (and b!2960522 ((_ is Star!9191) (regOne!18895 r!17423))) b!2960973))

(assert (= (and b!2960522 ((_ is Union!9191) (regOne!18895 r!17423))) b!2960974))

(declare-fun b!2960975 () Bool)

(declare-fun e!1863843 () Bool)

(assert (=> b!2960975 (= e!1863843 tp_is_empty!15945)))

(declare-fun b!2960978 () Bool)

(declare-fun tp!944920 () Bool)

(declare-fun tp!944922 () Bool)

(assert (=> b!2960978 (= e!1863843 (and tp!944920 tp!944922))))

(declare-fun b!2960977 () Bool)

(declare-fun tp!944923 () Bool)

(assert (=> b!2960977 (= e!1863843 tp!944923)))

(assert (=> b!2960522 (= tp!944865 e!1863843)))

(declare-fun b!2960976 () Bool)

(declare-fun tp!944921 () Bool)

(declare-fun tp!944919 () Bool)

(assert (=> b!2960976 (= e!1863843 (and tp!944921 tp!944919))))

(assert (= (and b!2960522 ((_ is ElementMatch!9191) (regTwo!18895 r!17423))) b!2960975))

(assert (= (and b!2960522 ((_ is Concat!14512) (regTwo!18895 r!17423))) b!2960976))

(assert (= (and b!2960522 ((_ is Star!9191) (regTwo!18895 r!17423))) b!2960977))

(assert (= (and b!2960522 ((_ is Union!9191) (regTwo!18895 r!17423))) b!2960978))

(declare-fun b!2960979 () Bool)

(declare-fun e!1863844 () Bool)

(assert (=> b!2960979 (= e!1863844 tp_is_empty!15945)))

(declare-fun b!2960982 () Bool)

(declare-fun tp!944925 () Bool)

(declare-fun tp!944927 () Bool)

(assert (=> b!2960982 (= e!1863844 (and tp!944925 tp!944927))))

(declare-fun b!2960981 () Bool)

(declare-fun tp!944928 () Bool)

(assert (=> b!2960981 (= e!1863844 tp!944928)))

(assert (=> b!2960523 (= tp!944860 e!1863844)))

(declare-fun b!2960980 () Bool)

(declare-fun tp!944926 () Bool)

(declare-fun tp!944924 () Bool)

(assert (=> b!2960980 (= e!1863844 (and tp!944926 tp!944924))))

(assert (= (and b!2960523 ((_ is ElementMatch!9191) (regOne!18894 r!17423))) b!2960979))

(assert (= (and b!2960523 ((_ is Concat!14512) (regOne!18894 r!17423))) b!2960980))

(assert (= (and b!2960523 ((_ is Star!9191) (regOne!18894 r!17423))) b!2960981))

(assert (= (and b!2960523 ((_ is Union!9191) (regOne!18894 r!17423))) b!2960982))

(declare-fun b!2960983 () Bool)

(declare-fun e!1863845 () Bool)

(assert (=> b!2960983 (= e!1863845 tp_is_empty!15945)))

(declare-fun b!2960986 () Bool)

(declare-fun tp!944930 () Bool)

(declare-fun tp!944932 () Bool)

(assert (=> b!2960986 (= e!1863845 (and tp!944930 tp!944932))))

(declare-fun b!2960985 () Bool)

(declare-fun tp!944933 () Bool)

(assert (=> b!2960985 (= e!1863845 tp!944933)))

(assert (=> b!2960523 (= tp!944864 e!1863845)))

(declare-fun b!2960984 () Bool)

(declare-fun tp!944931 () Bool)

(declare-fun tp!944929 () Bool)

(assert (=> b!2960984 (= e!1863845 (and tp!944931 tp!944929))))

(assert (= (and b!2960523 ((_ is ElementMatch!9191) (regTwo!18894 r!17423))) b!2960983))

(assert (= (and b!2960523 ((_ is Concat!14512) (regTwo!18894 r!17423))) b!2960984))

(assert (= (and b!2960523 ((_ is Star!9191) (regTwo!18894 r!17423))) b!2960985))

(assert (= (and b!2960523 ((_ is Union!9191) (regTwo!18894 r!17423))) b!2960986))

(declare-fun b!2960987 () Bool)

(declare-fun e!1863846 () Bool)

(assert (=> b!2960987 (= e!1863846 tp_is_empty!15945)))

(declare-fun b!2960990 () Bool)

(declare-fun tp!944935 () Bool)

(declare-fun tp!944937 () Bool)

(assert (=> b!2960990 (= e!1863846 (and tp!944935 tp!944937))))

(declare-fun b!2960989 () Bool)

(declare-fun tp!944938 () Bool)

(assert (=> b!2960989 (= e!1863846 tp!944938)))

(assert (=> b!2960524 (= tp!944862 e!1863846)))

(declare-fun b!2960988 () Bool)

(declare-fun tp!944936 () Bool)

(declare-fun tp!944934 () Bool)

(assert (=> b!2960988 (= e!1863846 (and tp!944936 tp!944934))))

(assert (= (and b!2960524 ((_ is ElementMatch!9191) (reg!9520 r!17423))) b!2960987))

(assert (= (and b!2960524 ((_ is Concat!14512) (reg!9520 r!17423))) b!2960988))

(assert (= (and b!2960524 ((_ is Star!9191) (reg!9520 r!17423))) b!2960989))

(assert (= (and b!2960524 ((_ is Union!9191) (reg!9520 r!17423))) b!2960990))

(declare-fun b!2960995 () Bool)

(declare-fun e!1863849 () Bool)

(declare-fun tp!944941 () Bool)

(assert (=> b!2960995 (= e!1863849 (and tp_is_empty!15945 tp!944941))))

(assert (=> b!2960519 (= tp!944861 e!1863849)))

(assert (= (and b!2960519 ((_ is Cons!34932) (t!234121 s!11993))) b!2960995))

(check-sat (not bm!196358) (not b!2960951) (not b!2960985) (not d!842009) (not b!2960842) (not b!2960841) (not bm!196318) (not b!2960990) (not bm!196316) (not bm!196295) (not bm!196319) (not b!2960986) (not b!2960977) (not bm!196313) (not b!2960950) (not d!842013) (not bm!196312) (not b!2960974) (not b!2960654) (not b!2960982) (not b!2960978) (not bm!196371) (not b!2960984) (not b!2960973) (not b!2960989) (not bm!196315) (not b!2960988) (not b!2960959) (not b!2960972) (not b!2960631) (not b!2960637) (not b!2960981) (not b!2960948) (not b!2960976) (not bm!196357) (not b!2960995) (not bm!196294) (not bm!196317) (not b!2960955) (not b!2960980) (not d!841995) tp_is_empty!15945 (not b!2960952) (not b!2960570))
(check-sat)
