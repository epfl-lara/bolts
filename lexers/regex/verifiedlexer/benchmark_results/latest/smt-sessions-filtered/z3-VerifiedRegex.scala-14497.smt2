; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!753960 () Bool)

(assert start!753960)

(declare-fun b!8012185 () Bool)

(declare-fun e!4719765 () Bool)

(declare-fun e!4719763 () Bool)

(assert (=> b!8012185 (= e!4719765 e!4719763)))

(declare-fun res!3168152 () Bool)

(assert (=> b!8012185 (=> (not res!3168152) (not e!4719763))))

(declare-fun testedPSize!271 () Int)

(declare-fun lt!2717150 () Int)

(assert (=> b!8012185 (= res!3168152 (= testedPSize!271 lt!2717150))))

(declare-datatypes ((C!43688 0))(
  ( (C!43689 (val!32392 Int)) )
))
(declare-datatypes ((List!74904 0))(
  ( (Nil!74780) (Cons!74780 (h!81228 C!43688) (t!390647 List!74904)) )
))
(declare-fun testedP!353 () List!74904)

(declare-fun size!43577 (List!74904) Int)

(assert (=> b!8012185 (= lt!2717150 (size!43577 testedP!353))))

(declare-fun b!8012186 () Bool)

(declare-fun e!4719770 () Bool)

(assert (=> b!8012186 (= e!4719763 (not e!4719770))))

(declare-fun res!3168149 () Bool)

(assert (=> b!8012186 (=> res!3168149 e!4719770)))

(declare-fun totalInput!1349 () List!74904)

(declare-fun isPrefix!6727 (List!74904 List!74904) Bool)

(assert (=> b!8012186 (= res!3168149 (not (isPrefix!6727 testedP!353 totalInput!1349)))))

(declare-fun lt!2717147 () List!74904)

(assert (=> b!8012186 (isPrefix!6727 testedP!353 lt!2717147)))

(declare-datatypes ((Unit!170816 0))(
  ( (Unit!170817) )
))
(declare-fun lt!2717148 () Unit!170816)

(declare-fun testedSuffix!271 () List!74904)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3958 (List!74904 List!74904) Unit!170816)

(assert (=> b!8012186 (= lt!2717148 (lemmaConcatTwoListThenFirstIsPrefix!3958 testedP!353 testedSuffix!271))))

(declare-fun b!8012188 () Bool)

(declare-fun e!4719764 () Bool)

(assert (=> b!8012188 (= e!4719764 e!4719765)))

(declare-fun res!3168147 () Bool)

(assert (=> b!8012188 (=> (not res!3168147) (not e!4719765))))

(assert (=> b!8012188 (= res!3168147 (= lt!2717147 totalInput!1349))))

(declare-fun ++!18501 (List!74904 List!74904) List!74904)

(assert (=> b!8012188 (= lt!2717147 (++!18501 testedP!353 testedSuffix!271))))

(declare-fun b!8012189 () Bool)

(declare-fun e!4719762 () Bool)

(declare-fun tp!2397991 () Bool)

(assert (=> b!8012189 (= e!4719762 tp!2397991)))

(declare-fun b!8012190 () Bool)

(declare-fun e!4719771 () Bool)

(declare-fun e!4719766 () Bool)

(assert (=> b!8012190 (= e!4719771 e!4719766)))

(declare-fun res!3168148 () Bool)

(assert (=> b!8012190 (=> (not res!3168148) (not e!4719766))))

(assert (=> b!8012190 (= res!3168148 (= (++!18501 Nil!74780 totalInput!1349) totalInput!1349))))

(declare-fun b!8012191 () Bool)

(declare-fun e!4719769 () Bool)

(assert (=> b!8012191 (= e!4719766 e!4719769)))

(declare-fun res!3168146 () Bool)

(assert (=> b!8012191 (=> res!3168146 e!4719769)))

(assert (=> b!8012191 (= res!3168146 true)))

(declare-fun b!8012192 () Bool)

(declare-fun tp!2397992 () Bool)

(declare-fun tp!2397993 () Bool)

(assert (=> b!8012192 (= e!4719762 (and tp!2397992 tp!2397993))))

(declare-fun b!8012193 () Bool)

(declare-fun e!4719760 () Bool)

(declare-fun tp_is_empty!53893 () Bool)

(declare-fun tp!2397990 () Bool)

(assert (=> b!8012193 (= e!4719760 (and tp_is_empty!53893 tp!2397990))))

(declare-fun b!8012194 () Bool)

(declare-fun res!3168144 () Bool)

(assert (=> b!8012194 (=> (not res!3168144) (not e!4719763))))

(declare-fun totalInputSize!629 () Int)

(assert (=> b!8012194 (= res!3168144 (= totalInputSize!629 (size!43577 totalInput!1349)))))

(declare-fun b!8012195 () Bool)

(declare-fun e!4719767 () Bool)

(declare-fun tp!2397989 () Bool)

(assert (=> b!8012195 (= e!4719767 (and tp_is_empty!53893 tp!2397989))))

(declare-fun b!8012196 () Bool)

(declare-fun res!3168142 () Bool)

(assert (=> b!8012196 (=> res!3168142 e!4719771)))

(declare-datatypes ((Regex!21675 0))(
  ( (ElementMatch!21675 (c!1470584 C!43688)) (Concat!30674 (regOne!43862 Regex!21675) (regTwo!43862 Regex!21675)) (EmptyExpr!21675) (Star!21675 (reg!22004 Regex!21675)) (EmptyLang!21675) (Union!21675 (regOne!43863 Regex!21675) (regTwo!43863 Regex!21675)) )
))
(declare-fun r!15422 () Regex!21675)

(declare-fun nullable!9721 (Regex!21675) Bool)

(assert (=> b!8012196 (= res!3168142 (nullable!9721 r!15422))))

(declare-fun b!8012197 () Bool)

(declare-fun res!3168145 () Bool)

(declare-fun e!4719761 () Bool)

(assert (=> b!8012197 (=> res!3168145 e!4719761)))

(assert (=> b!8012197 (= res!3168145 (not (= testedPSize!271 totalInputSize!629)))))

(declare-fun b!8012198 () Bool)

(assert (=> b!8012198 (= e!4719762 tp_is_empty!53893)))

(declare-fun b!8012187 () Bool)

(assert (=> b!8012187 (= e!4719769 (>= (size!43577 Nil!74780) lt!2717150))))

(declare-fun res!3168151 () Bool)

(assert (=> start!753960 (=> (not res!3168151) (not e!4719764))))

(declare-fun validRegex!11979 (Regex!21675) Bool)

(assert (=> start!753960 (= res!3168151 (validRegex!11979 r!15422))))

(assert (=> start!753960 e!4719764))

(assert (=> start!753960 e!4719767))

(assert (=> start!753960 true))

(assert (=> start!753960 e!4719760))

(assert (=> start!753960 e!4719762))

(declare-fun e!4719768 () Bool)

(assert (=> start!753960 e!4719768))

(declare-fun b!8012199 () Bool)

(declare-fun tp!2397994 () Bool)

(declare-fun tp!2397988 () Bool)

(assert (=> b!8012199 (= e!4719762 (and tp!2397994 tp!2397988))))

(declare-fun b!8012200 () Bool)

(assert (=> b!8012200 (= e!4719761 e!4719771)))

(declare-fun res!3168150 () Bool)

(assert (=> b!8012200 (=> res!3168150 e!4719771)))

(assert (=> b!8012200 (= res!3168150 (not (= testedP!353 totalInput!1349)))))

(assert (=> b!8012200 (= totalInput!1349 testedP!353)))

(declare-fun lt!2717153 () Unit!170816)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1741 (List!74904 List!74904 List!74904) Unit!170816)

(assert (=> b!8012200 (= lt!2717153 (lemmaIsPrefixSameLengthThenSameList!1741 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> b!8012200 (isPrefix!6727 totalInput!1349 totalInput!1349)))

(declare-fun lt!2717152 () Unit!170816)

(declare-fun lemmaIsPrefixRefl!4169 (List!74904 List!74904) Unit!170816)

(assert (=> b!8012200 (= lt!2717152 (lemmaIsPrefixRefl!4169 totalInput!1349 totalInput!1349))))

(declare-fun b!8012201 () Bool)

(declare-fun tp!2397987 () Bool)

(assert (=> b!8012201 (= e!4719768 (and tp_is_empty!53893 tp!2397987))))

(declare-fun b!8012202 () Bool)

(assert (=> b!8012202 (= e!4719770 e!4719761)))

(declare-fun res!3168143 () Bool)

(assert (=> b!8012202 (=> res!3168143 e!4719761)))

(declare-fun lostCause!2062 (Regex!21675) Bool)

(assert (=> b!8012202 (= res!3168143 (lostCause!2062 r!15422))))

(declare-fun lt!2717151 () List!74904)

(assert (=> b!8012202 (and (= testedSuffix!271 lt!2717151) (= lt!2717151 testedSuffix!271))))

(declare-fun lt!2717149 () Unit!170816)

(declare-fun lemmaSamePrefixThenSameSuffix!3084 (List!74904 List!74904 List!74904 List!74904 List!74904) Unit!170816)

(assert (=> b!8012202 (= lt!2717149 (lemmaSamePrefixThenSameSuffix!3084 testedP!353 testedSuffix!271 testedP!353 lt!2717151 totalInput!1349))))

(declare-fun getSuffix!3922 (List!74904 List!74904) List!74904)

(assert (=> b!8012202 (= lt!2717151 (getSuffix!3922 totalInput!1349 testedP!353))))

(assert (= (and start!753960 res!3168151) b!8012188))

(assert (= (and b!8012188 res!3168147) b!8012185))

(assert (= (and b!8012185 res!3168152) b!8012194))

(assert (= (and b!8012194 res!3168144) b!8012186))

(assert (= (and b!8012186 (not res!3168149)) b!8012202))

(assert (= (and b!8012202 (not res!3168143)) b!8012197))

(assert (= (and b!8012197 (not res!3168145)) b!8012200))

(assert (= (and b!8012200 (not res!3168150)) b!8012196))

(assert (= (and b!8012196 (not res!3168142)) b!8012190))

(assert (= (and b!8012190 res!3168148) b!8012191))

(assert (= (and b!8012191 (not res!3168146)) b!8012187))

(get-info :version)

(assert (= (and start!753960 ((_ is Cons!74780) totalInput!1349)) b!8012195))

(assert (= (and start!753960 ((_ is Cons!74780) testedSuffix!271)) b!8012193))

(assert (= (and start!753960 ((_ is ElementMatch!21675) r!15422)) b!8012198))

(assert (= (and start!753960 ((_ is Concat!30674) r!15422)) b!8012199))

(assert (= (and start!753960 ((_ is Star!21675) r!15422)) b!8012189))

(assert (= (and start!753960 ((_ is Union!21675) r!15422)) b!8012192))

(assert (= (and start!753960 ((_ is Cons!74780) testedP!353)) b!8012201))

(declare-fun m!8375798 () Bool)

(assert (=> b!8012196 m!8375798))

(declare-fun m!8375800 () Bool)

(assert (=> b!8012185 m!8375800))

(declare-fun m!8375802 () Bool)

(assert (=> b!8012186 m!8375802))

(declare-fun m!8375804 () Bool)

(assert (=> b!8012186 m!8375804))

(declare-fun m!8375806 () Bool)

(assert (=> b!8012186 m!8375806))

(declare-fun m!8375808 () Bool)

(assert (=> start!753960 m!8375808))

(declare-fun m!8375810 () Bool)

(assert (=> b!8012194 m!8375810))

(declare-fun m!8375812 () Bool)

(assert (=> b!8012187 m!8375812))

(declare-fun m!8375814 () Bool)

(assert (=> b!8012202 m!8375814))

(declare-fun m!8375816 () Bool)

(assert (=> b!8012202 m!8375816))

(declare-fun m!8375818 () Bool)

(assert (=> b!8012202 m!8375818))

(declare-fun m!8375820 () Bool)

(assert (=> b!8012188 m!8375820))

(declare-fun m!8375822 () Bool)

(assert (=> b!8012190 m!8375822))

(declare-fun m!8375824 () Bool)

(assert (=> b!8012200 m!8375824))

(declare-fun m!8375826 () Bool)

(assert (=> b!8012200 m!8375826))

(declare-fun m!8375828 () Bool)

(assert (=> b!8012200 m!8375828))

(check-sat (not b!8012187) (not b!8012190) (not b!8012189) (not b!8012194) (not start!753960) (not b!8012193) (not b!8012195) (not b!8012185) (not b!8012201) (not b!8012202) (not b!8012192) (not b!8012200) (not b!8012188) tp_is_empty!53893 (not b!8012186) (not b!8012196) (not b!8012199))
(check-sat)
(get-model)

(declare-fun d!2388742 () Bool)

(declare-fun e!4719779 () Bool)

(assert (=> d!2388742 e!4719779))

(declare-fun res!3168161 () Bool)

(assert (=> d!2388742 (=> res!3168161 e!4719779)))

(declare-fun lt!2717156 () Bool)

(assert (=> d!2388742 (= res!3168161 (not lt!2717156))))

(declare-fun e!4719778 () Bool)

(assert (=> d!2388742 (= lt!2717156 e!4719778)))

(declare-fun res!3168163 () Bool)

(assert (=> d!2388742 (=> res!3168163 e!4719778)))

(assert (=> d!2388742 (= res!3168163 ((_ is Nil!74780) testedP!353))))

(assert (=> d!2388742 (= (isPrefix!6727 testedP!353 totalInput!1349) lt!2717156)))

(declare-fun b!8012212 () Bool)

(declare-fun res!3168164 () Bool)

(declare-fun e!4719780 () Bool)

(assert (=> b!8012212 (=> (not res!3168164) (not e!4719780))))

(declare-fun head!16352 (List!74904) C!43688)

(assert (=> b!8012212 (= res!3168164 (= (head!16352 testedP!353) (head!16352 totalInput!1349)))))

(declare-fun b!8012211 () Bool)

(assert (=> b!8012211 (= e!4719778 e!4719780)))

(declare-fun res!3168162 () Bool)

(assert (=> b!8012211 (=> (not res!3168162) (not e!4719780))))

(assert (=> b!8012211 (= res!3168162 (not ((_ is Nil!74780) totalInput!1349)))))

(declare-fun b!8012213 () Bool)

(declare-fun tail!15875 (List!74904) List!74904)

(assert (=> b!8012213 (= e!4719780 (isPrefix!6727 (tail!15875 testedP!353) (tail!15875 totalInput!1349)))))

(declare-fun b!8012214 () Bool)

(assert (=> b!8012214 (= e!4719779 (>= (size!43577 totalInput!1349) (size!43577 testedP!353)))))

(assert (= (and d!2388742 (not res!3168163)) b!8012211))

(assert (= (and b!8012211 res!3168162) b!8012212))

(assert (= (and b!8012212 res!3168164) b!8012213))

(assert (= (and d!2388742 (not res!3168161)) b!8012214))

(declare-fun m!8375830 () Bool)

(assert (=> b!8012212 m!8375830))

(declare-fun m!8375832 () Bool)

(assert (=> b!8012212 m!8375832))

(declare-fun m!8375834 () Bool)

(assert (=> b!8012213 m!8375834))

(declare-fun m!8375836 () Bool)

(assert (=> b!8012213 m!8375836))

(assert (=> b!8012213 m!8375834))

(assert (=> b!8012213 m!8375836))

(declare-fun m!8375838 () Bool)

(assert (=> b!8012213 m!8375838))

(assert (=> b!8012214 m!8375810))

(assert (=> b!8012214 m!8375800))

(assert (=> b!8012186 d!2388742))

(declare-fun d!2388744 () Bool)

(declare-fun e!4719782 () Bool)

(assert (=> d!2388744 e!4719782))

(declare-fun res!3168165 () Bool)

(assert (=> d!2388744 (=> res!3168165 e!4719782)))

(declare-fun lt!2717157 () Bool)

(assert (=> d!2388744 (= res!3168165 (not lt!2717157))))

(declare-fun e!4719781 () Bool)

(assert (=> d!2388744 (= lt!2717157 e!4719781)))

(declare-fun res!3168167 () Bool)

(assert (=> d!2388744 (=> res!3168167 e!4719781)))

(assert (=> d!2388744 (= res!3168167 ((_ is Nil!74780) testedP!353))))

(assert (=> d!2388744 (= (isPrefix!6727 testedP!353 lt!2717147) lt!2717157)))

(declare-fun b!8012216 () Bool)

(declare-fun res!3168168 () Bool)

(declare-fun e!4719783 () Bool)

(assert (=> b!8012216 (=> (not res!3168168) (not e!4719783))))

(assert (=> b!8012216 (= res!3168168 (= (head!16352 testedP!353) (head!16352 lt!2717147)))))

(declare-fun b!8012215 () Bool)

(assert (=> b!8012215 (= e!4719781 e!4719783)))

(declare-fun res!3168166 () Bool)

(assert (=> b!8012215 (=> (not res!3168166) (not e!4719783))))

(assert (=> b!8012215 (= res!3168166 (not ((_ is Nil!74780) lt!2717147)))))

(declare-fun b!8012217 () Bool)

(assert (=> b!8012217 (= e!4719783 (isPrefix!6727 (tail!15875 testedP!353) (tail!15875 lt!2717147)))))

(declare-fun b!8012218 () Bool)

(assert (=> b!8012218 (= e!4719782 (>= (size!43577 lt!2717147) (size!43577 testedP!353)))))

(assert (= (and d!2388744 (not res!3168167)) b!8012215))

(assert (= (and b!8012215 res!3168166) b!8012216))

(assert (= (and b!8012216 res!3168168) b!8012217))

(assert (= (and d!2388744 (not res!3168165)) b!8012218))

(assert (=> b!8012216 m!8375830))

(declare-fun m!8375840 () Bool)

(assert (=> b!8012216 m!8375840))

(assert (=> b!8012217 m!8375834))

(declare-fun m!8375842 () Bool)

(assert (=> b!8012217 m!8375842))

(assert (=> b!8012217 m!8375834))

(assert (=> b!8012217 m!8375842))

(declare-fun m!8375844 () Bool)

(assert (=> b!8012217 m!8375844))

(declare-fun m!8375846 () Bool)

(assert (=> b!8012218 m!8375846))

(assert (=> b!8012218 m!8375800))

(assert (=> b!8012186 d!2388744))

(declare-fun d!2388748 () Bool)

(assert (=> d!2388748 (isPrefix!6727 testedP!353 (++!18501 testedP!353 testedSuffix!271))))

(declare-fun lt!2717160 () Unit!170816)

(declare-fun choose!60355 (List!74904 List!74904) Unit!170816)

(assert (=> d!2388748 (= lt!2717160 (choose!60355 testedP!353 testedSuffix!271))))

(assert (=> d!2388748 (= (lemmaConcatTwoListThenFirstIsPrefix!3958 testedP!353 testedSuffix!271) lt!2717160)))

(declare-fun bs!1970889 () Bool)

(assert (= bs!1970889 d!2388748))

(assert (=> bs!1970889 m!8375820))

(assert (=> bs!1970889 m!8375820))

(declare-fun m!8375848 () Bool)

(assert (=> bs!1970889 m!8375848))

(declare-fun m!8375850 () Bool)

(assert (=> bs!1970889 m!8375850))

(assert (=> b!8012186 d!2388748))

(declare-fun d!2388750 () Bool)

(declare-fun lostCauseFct!609 (Regex!21675) Bool)

(assert (=> d!2388750 (= (lostCause!2062 r!15422) (lostCauseFct!609 r!15422))))

(declare-fun bs!1970890 () Bool)

(assert (= bs!1970890 d!2388750))

(declare-fun m!8375852 () Bool)

(assert (=> bs!1970890 m!8375852))

(assert (=> b!8012202 d!2388750))

(declare-fun d!2388752 () Bool)

(assert (=> d!2388752 (= testedSuffix!271 lt!2717151)))

(declare-fun lt!2717166 () Unit!170816)

(declare-fun choose!60356 (List!74904 List!74904 List!74904 List!74904 List!74904) Unit!170816)

(assert (=> d!2388752 (= lt!2717166 (choose!60356 testedP!353 testedSuffix!271 testedP!353 lt!2717151 totalInput!1349))))

(assert (=> d!2388752 (isPrefix!6727 testedP!353 totalInput!1349)))

(assert (=> d!2388752 (= (lemmaSamePrefixThenSameSuffix!3084 testedP!353 testedSuffix!271 testedP!353 lt!2717151 totalInput!1349) lt!2717166)))

(declare-fun bs!1970891 () Bool)

(assert (= bs!1970891 d!2388752))

(declare-fun m!8375860 () Bool)

(assert (=> bs!1970891 m!8375860))

(assert (=> bs!1970891 m!8375802))

(assert (=> b!8012202 d!2388752))

(declare-fun d!2388756 () Bool)

(declare-fun lt!2717172 () List!74904)

(assert (=> d!2388756 (= (++!18501 testedP!353 lt!2717172) totalInput!1349)))

(declare-fun e!4719792 () List!74904)

(assert (=> d!2388756 (= lt!2717172 e!4719792)))

(declare-fun c!1470590 () Bool)

(assert (=> d!2388756 (= c!1470590 ((_ is Cons!74780) testedP!353))))

(assert (=> d!2388756 (>= (size!43577 totalInput!1349) (size!43577 testedP!353))))

(assert (=> d!2388756 (= (getSuffix!3922 totalInput!1349 testedP!353) lt!2717172)))

(declare-fun b!8012235 () Bool)

(assert (=> b!8012235 (= e!4719792 (getSuffix!3922 (tail!15875 totalInput!1349) (t!390647 testedP!353)))))

(declare-fun b!8012236 () Bool)

(assert (=> b!8012236 (= e!4719792 totalInput!1349)))

(assert (= (and d!2388756 c!1470590) b!8012235))

(assert (= (and d!2388756 (not c!1470590)) b!8012236))

(declare-fun m!8375868 () Bool)

(assert (=> d!2388756 m!8375868))

(assert (=> d!2388756 m!8375810))

(assert (=> d!2388756 m!8375800))

(assert (=> b!8012235 m!8375836))

(assert (=> b!8012235 m!8375836))

(declare-fun m!8375870 () Bool)

(assert (=> b!8012235 m!8375870))

(assert (=> b!8012202 d!2388756))

(declare-fun bm!744232 () Bool)

(declare-fun call!744238 () Bool)

(declare-fun call!744237 () Bool)

(assert (=> bm!744232 (= call!744238 call!744237)))

(declare-fun b!8012271 () Bool)

(declare-fun res!3168197 () Bool)

(declare-fun e!4719820 () Bool)

(assert (=> b!8012271 (=> (not res!3168197) (not e!4719820))))

(assert (=> b!8012271 (= res!3168197 call!744238)))

(declare-fun e!4719818 () Bool)

(assert (=> b!8012271 (= e!4719818 e!4719820)))

(declare-fun b!8012272 () Bool)

(declare-fun e!4719819 () Bool)

(assert (=> b!8012272 (= e!4719819 e!4719818)))

(declare-fun c!1470598 () Bool)

(assert (=> b!8012272 (= c!1470598 ((_ is Union!21675) r!15422))))

(declare-fun b!8012273 () Bool)

(declare-fun res!3168200 () Bool)

(declare-fun e!4719822 () Bool)

(assert (=> b!8012273 (=> res!3168200 e!4719822)))

(assert (=> b!8012273 (= res!3168200 (not ((_ is Concat!30674) r!15422)))))

(assert (=> b!8012273 (= e!4719818 e!4719822)))

(declare-fun d!2388760 () Bool)

(declare-fun res!3168199 () Bool)

(declare-fun e!4719824 () Bool)

(assert (=> d!2388760 (=> res!3168199 e!4719824)))

(assert (=> d!2388760 (= res!3168199 ((_ is ElementMatch!21675) r!15422))))

(assert (=> d!2388760 (= (validRegex!11979 r!15422) e!4719824)))

(declare-fun b!8012274 () Bool)

(declare-fun e!4719821 () Bool)

(declare-fun call!744239 () Bool)

(assert (=> b!8012274 (= e!4719821 call!744239)))

(declare-fun b!8012275 () Bool)

(declare-fun e!4719823 () Bool)

(assert (=> b!8012275 (= e!4719819 e!4719823)))

(declare-fun res!3168201 () Bool)

(assert (=> b!8012275 (= res!3168201 (not (nullable!9721 (reg!22004 r!15422))))))

(assert (=> b!8012275 (=> (not res!3168201) (not e!4719823))))

(declare-fun b!8012276 () Bool)

(assert (=> b!8012276 (= e!4719823 call!744237)))

(declare-fun b!8012277 () Bool)

(assert (=> b!8012277 (= e!4719824 e!4719819)))

(declare-fun c!1470597 () Bool)

(assert (=> b!8012277 (= c!1470597 ((_ is Star!21675) r!15422))))

(declare-fun bm!744233 () Bool)

(assert (=> bm!744233 (= call!744239 (validRegex!11979 (ite c!1470598 (regTwo!43863 r!15422) (regTwo!43862 r!15422))))))

(declare-fun b!8012278 () Bool)

(assert (=> b!8012278 (= e!4719820 call!744239)))

(declare-fun bm!744234 () Bool)

(assert (=> bm!744234 (= call!744237 (validRegex!11979 (ite c!1470597 (reg!22004 r!15422) (ite c!1470598 (regOne!43863 r!15422) (regOne!43862 r!15422)))))))

(declare-fun b!8012279 () Bool)

(assert (=> b!8012279 (= e!4719822 e!4719821)))

(declare-fun res!3168198 () Bool)

(assert (=> b!8012279 (=> (not res!3168198) (not e!4719821))))

(assert (=> b!8012279 (= res!3168198 call!744238)))

(assert (= (and d!2388760 (not res!3168199)) b!8012277))

(assert (= (and b!8012277 c!1470597) b!8012275))

(assert (= (and b!8012277 (not c!1470597)) b!8012272))

(assert (= (and b!8012275 res!3168201) b!8012276))

(assert (= (and b!8012272 c!1470598) b!8012271))

(assert (= (and b!8012272 (not c!1470598)) b!8012273))

(assert (= (and b!8012271 res!3168197) b!8012278))

(assert (= (and b!8012273 (not res!3168200)) b!8012279))

(assert (= (and b!8012279 res!3168198) b!8012274))

(assert (= (or b!8012278 b!8012274) bm!744233))

(assert (= (or b!8012271 b!8012279) bm!744232))

(assert (= (or b!8012276 bm!744232) bm!744234))

(declare-fun m!8375882 () Bool)

(assert (=> b!8012275 m!8375882))

(declare-fun m!8375884 () Bool)

(assert (=> bm!744233 m!8375884))

(declare-fun m!8375886 () Bool)

(assert (=> bm!744234 m!8375886))

(assert (=> start!753960 d!2388760))

(declare-fun d!2388768 () Bool)

(declare-fun lt!2717186 () Int)

(assert (=> d!2388768 (>= lt!2717186 0)))

(declare-fun e!4719834 () Int)

(assert (=> d!2388768 (= lt!2717186 e!4719834)))

(declare-fun c!1470602 () Bool)

(assert (=> d!2388768 (= c!1470602 ((_ is Nil!74780) Nil!74780))))

(assert (=> d!2388768 (= (size!43577 Nil!74780) lt!2717186)))

(declare-fun b!8012294 () Bool)

(assert (=> b!8012294 (= e!4719834 0)))

(declare-fun b!8012295 () Bool)

(assert (=> b!8012295 (= e!4719834 (+ 1 (size!43577 (t!390647 Nil!74780))))))

(assert (= (and d!2388768 c!1470602) b!8012294))

(assert (= (and d!2388768 (not c!1470602)) b!8012295))

(declare-fun m!8375902 () Bool)

(assert (=> b!8012295 m!8375902))

(assert (=> b!8012187 d!2388768))

(declare-fun b!8012326 () Bool)

(declare-fun e!4719856 () List!74904)

(assert (=> b!8012326 (= e!4719856 testedSuffix!271)))

(declare-fun d!2388774 () Bool)

(declare-fun e!4719855 () Bool)

(assert (=> d!2388774 e!4719855))

(declare-fun res!3168225 () Bool)

(assert (=> d!2388774 (=> (not res!3168225) (not e!4719855))))

(declare-fun lt!2717194 () List!74904)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15912 (List!74904) (InoxSet C!43688))

(assert (=> d!2388774 (= res!3168225 (= (content!15912 lt!2717194) ((_ map or) (content!15912 testedP!353) (content!15912 testedSuffix!271))))))

(assert (=> d!2388774 (= lt!2717194 e!4719856)))

(declare-fun c!1470611 () Bool)

(assert (=> d!2388774 (= c!1470611 ((_ is Nil!74780) testedP!353))))

(assert (=> d!2388774 (= (++!18501 testedP!353 testedSuffix!271) lt!2717194)))

(declare-fun b!8012328 () Bool)

(declare-fun res!3168224 () Bool)

(assert (=> b!8012328 (=> (not res!3168224) (not e!4719855))))

(assert (=> b!8012328 (= res!3168224 (= (size!43577 lt!2717194) (+ (size!43577 testedP!353) (size!43577 testedSuffix!271))))))

(declare-fun b!8012327 () Bool)

(assert (=> b!8012327 (= e!4719856 (Cons!74780 (h!81228 testedP!353) (++!18501 (t!390647 testedP!353) testedSuffix!271)))))

(declare-fun b!8012329 () Bool)

(assert (=> b!8012329 (= e!4719855 (or (not (= testedSuffix!271 Nil!74780)) (= lt!2717194 testedP!353)))))

(assert (= (and d!2388774 c!1470611) b!8012326))

(assert (= (and d!2388774 (not c!1470611)) b!8012327))

(assert (= (and d!2388774 res!3168225) b!8012328))

(assert (= (and b!8012328 res!3168224) b!8012329))

(declare-fun m!8375914 () Bool)

(assert (=> d!2388774 m!8375914))

(declare-fun m!8375916 () Bool)

(assert (=> d!2388774 m!8375916))

(declare-fun m!8375918 () Bool)

(assert (=> d!2388774 m!8375918))

(declare-fun m!8375920 () Bool)

(assert (=> b!8012328 m!8375920))

(assert (=> b!8012328 m!8375800))

(declare-fun m!8375922 () Bool)

(assert (=> b!8012328 m!8375922))

(declare-fun m!8375924 () Bool)

(assert (=> b!8012327 m!8375924))

(assert (=> b!8012188 d!2388774))

(declare-fun d!2388784 () Bool)

(declare-fun lt!2717195 () Int)

(assert (=> d!2388784 (>= lt!2717195 0)))

(declare-fun e!4719857 () Int)

(assert (=> d!2388784 (= lt!2717195 e!4719857)))

(declare-fun c!1470612 () Bool)

(assert (=> d!2388784 (= c!1470612 ((_ is Nil!74780) totalInput!1349))))

(assert (=> d!2388784 (= (size!43577 totalInput!1349) lt!2717195)))

(declare-fun b!8012330 () Bool)

(assert (=> b!8012330 (= e!4719857 0)))

(declare-fun b!8012331 () Bool)

(assert (=> b!8012331 (= e!4719857 (+ 1 (size!43577 (t!390647 totalInput!1349))))))

(assert (= (and d!2388784 c!1470612) b!8012330))

(assert (= (and d!2388784 (not c!1470612)) b!8012331))

(declare-fun m!8375926 () Bool)

(assert (=> b!8012331 m!8375926))

(assert (=> b!8012194 d!2388784))

(declare-fun d!2388786 () Bool)

(assert (=> d!2388786 (= totalInput!1349 testedP!353)))

(declare-fun lt!2717198 () Unit!170816)

(declare-fun choose!60359 (List!74904 List!74904 List!74904) Unit!170816)

(assert (=> d!2388786 (= lt!2717198 (choose!60359 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> d!2388786 (isPrefix!6727 totalInput!1349 totalInput!1349)))

(assert (=> d!2388786 (= (lemmaIsPrefixSameLengthThenSameList!1741 totalInput!1349 testedP!353 totalInput!1349) lt!2717198)))

(declare-fun bs!1970896 () Bool)

(assert (= bs!1970896 d!2388786))

(declare-fun m!8375932 () Bool)

(assert (=> bs!1970896 m!8375932))

(assert (=> bs!1970896 m!8375826))

(assert (=> b!8012200 d!2388786))

(declare-fun d!2388790 () Bool)

(declare-fun e!4719866 () Bool)

(assert (=> d!2388790 e!4719866))

(declare-fun res!3168231 () Bool)

(assert (=> d!2388790 (=> res!3168231 e!4719866)))

(declare-fun lt!2717199 () Bool)

(assert (=> d!2388790 (= res!3168231 (not lt!2717199))))

(declare-fun e!4719865 () Bool)

(assert (=> d!2388790 (= lt!2717199 e!4719865)))

(declare-fun res!3168233 () Bool)

(assert (=> d!2388790 (=> res!3168233 e!4719865)))

(assert (=> d!2388790 (= res!3168233 ((_ is Nil!74780) totalInput!1349))))

(assert (=> d!2388790 (= (isPrefix!6727 totalInput!1349 totalInput!1349) lt!2717199)))

(declare-fun b!8012342 () Bool)

(declare-fun res!3168234 () Bool)

(declare-fun e!4719867 () Bool)

(assert (=> b!8012342 (=> (not res!3168234) (not e!4719867))))

(assert (=> b!8012342 (= res!3168234 (= (head!16352 totalInput!1349) (head!16352 totalInput!1349)))))

(declare-fun b!8012341 () Bool)

(assert (=> b!8012341 (= e!4719865 e!4719867)))

(declare-fun res!3168232 () Bool)

(assert (=> b!8012341 (=> (not res!3168232) (not e!4719867))))

(assert (=> b!8012341 (= res!3168232 (not ((_ is Nil!74780) totalInput!1349)))))

(declare-fun b!8012343 () Bool)

(assert (=> b!8012343 (= e!4719867 (isPrefix!6727 (tail!15875 totalInput!1349) (tail!15875 totalInput!1349)))))

(declare-fun b!8012344 () Bool)

(assert (=> b!8012344 (= e!4719866 (>= (size!43577 totalInput!1349) (size!43577 totalInput!1349)))))

(assert (= (and d!2388790 (not res!3168233)) b!8012341))

(assert (= (and b!8012341 res!3168232) b!8012342))

(assert (= (and b!8012342 res!3168234) b!8012343))

(assert (= (and d!2388790 (not res!3168231)) b!8012344))

(assert (=> b!8012342 m!8375832))

(assert (=> b!8012342 m!8375832))

(assert (=> b!8012343 m!8375836))

(assert (=> b!8012343 m!8375836))

(assert (=> b!8012343 m!8375836))

(assert (=> b!8012343 m!8375836))

(declare-fun m!8375936 () Bool)

(assert (=> b!8012343 m!8375936))

(assert (=> b!8012344 m!8375810))

(assert (=> b!8012344 m!8375810))

(assert (=> b!8012200 d!2388790))

(declare-fun d!2388792 () Bool)

(assert (=> d!2388792 (isPrefix!6727 totalInput!1349 totalInput!1349)))

(declare-fun lt!2717202 () Unit!170816)

(declare-fun choose!60360 (List!74904 List!74904) Unit!170816)

(assert (=> d!2388792 (= lt!2717202 (choose!60360 totalInput!1349 totalInput!1349))))

(assert (=> d!2388792 (= (lemmaIsPrefixRefl!4169 totalInput!1349 totalInput!1349) lt!2717202)))

(declare-fun bs!1970898 () Bool)

(assert (= bs!1970898 d!2388792))

(assert (=> bs!1970898 m!8375826))

(declare-fun m!8375940 () Bool)

(assert (=> bs!1970898 m!8375940))

(assert (=> b!8012200 d!2388792))

(declare-fun b!8012345 () Bool)

(declare-fun e!4719869 () List!74904)

(assert (=> b!8012345 (= e!4719869 totalInput!1349)))

(declare-fun d!2388796 () Bool)

(declare-fun e!4719868 () Bool)

(assert (=> d!2388796 e!4719868))

(declare-fun res!3168236 () Bool)

(assert (=> d!2388796 (=> (not res!3168236) (not e!4719868))))

(declare-fun lt!2717203 () List!74904)

(assert (=> d!2388796 (= res!3168236 (= (content!15912 lt!2717203) ((_ map or) (content!15912 Nil!74780) (content!15912 totalInput!1349))))))

(assert (=> d!2388796 (= lt!2717203 e!4719869)))

(declare-fun c!1470615 () Bool)

(assert (=> d!2388796 (= c!1470615 ((_ is Nil!74780) Nil!74780))))

(assert (=> d!2388796 (= (++!18501 Nil!74780 totalInput!1349) lt!2717203)))

(declare-fun b!8012347 () Bool)

(declare-fun res!3168235 () Bool)

(assert (=> b!8012347 (=> (not res!3168235) (not e!4719868))))

(assert (=> b!8012347 (= res!3168235 (= (size!43577 lt!2717203) (+ (size!43577 Nil!74780) (size!43577 totalInput!1349))))))

(declare-fun b!8012346 () Bool)

(assert (=> b!8012346 (= e!4719869 (Cons!74780 (h!81228 Nil!74780) (++!18501 (t!390647 Nil!74780) totalInput!1349)))))

(declare-fun b!8012348 () Bool)

(assert (=> b!8012348 (= e!4719868 (or (not (= totalInput!1349 Nil!74780)) (= lt!2717203 Nil!74780)))))

(assert (= (and d!2388796 c!1470615) b!8012345))

(assert (= (and d!2388796 (not c!1470615)) b!8012346))

(assert (= (and d!2388796 res!3168236) b!8012347))

(assert (= (and b!8012347 res!3168235) b!8012348))

(declare-fun m!8375942 () Bool)

(assert (=> d!2388796 m!8375942))

(declare-fun m!8375944 () Bool)

(assert (=> d!2388796 m!8375944))

(declare-fun m!8375946 () Bool)

(assert (=> d!2388796 m!8375946))

(declare-fun m!8375948 () Bool)

(assert (=> b!8012347 m!8375948))

(assert (=> b!8012347 m!8375812))

(assert (=> b!8012347 m!8375810))

(declare-fun m!8375950 () Bool)

(assert (=> b!8012346 m!8375950))

(assert (=> b!8012190 d!2388796))

(declare-fun d!2388798 () Bool)

(declare-fun lt!2717206 () Int)

(assert (=> d!2388798 (>= lt!2717206 0)))

(declare-fun e!4719870 () Int)

(assert (=> d!2388798 (= lt!2717206 e!4719870)))

(declare-fun c!1470616 () Bool)

(assert (=> d!2388798 (= c!1470616 ((_ is Nil!74780) testedP!353))))

(assert (=> d!2388798 (= (size!43577 testedP!353) lt!2717206)))

(declare-fun b!8012349 () Bool)

(assert (=> b!8012349 (= e!4719870 0)))

(declare-fun b!8012350 () Bool)

(assert (=> b!8012350 (= e!4719870 (+ 1 (size!43577 (t!390647 testedP!353))))))

(assert (= (and d!2388798 c!1470616) b!8012349))

(assert (= (and d!2388798 (not c!1470616)) b!8012350))

(declare-fun m!8375952 () Bool)

(assert (=> b!8012350 m!8375952))

(assert (=> b!8012185 d!2388798))

(declare-fun d!2388800 () Bool)

(declare-fun nullableFct!3841 (Regex!21675) Bool)

(assert (=> d!2388800 (= (nullable!9721 r!15422) (nullableFct!3841 r!15422))))

(declare-fun bs!1970900 () Bool)

(assert (= bs!1970900 d!2388800))

(declare-fun m!8375956 () Bool)

(assert (=> bs!1970900 m!8375956))

(assert (=> b!8012196 d!2388800))

(declare-fun b!8012365 () Bool)

(declare-fun e!4719875 () Bool)

(assert (=> b!8012365 (= e!4719875 tp_is_empty!53893)))

(declare-fun b!8012367 () Bool)

(declare-fun tp!2398007 () Bool)

(assert (=> b!8012367 (= e!4719875 tp!2398007)))

(declare-fun b!8012368 () Bool)

(declare-fun tp!2398005 () Bool)

(declare-fun tp!2398008 () Bool)

(assert (=> b!8012368 (= e!4719875 (and tp!2398005 tp!2398008))))

(declare-fun b!8012366 () Bool)

(declare-fun tp!2398006 () Bool)

(declare-fun tp!2398009 () Bool)

(assert (=> b!8012366 (= e!4719875 (and tp!2398006 tp!2398009))))

(assert (=> b!8012192 (= tp!2397992 e!4719875)))

(assert (= (and b!8012192 ((_ is ElementMatch!21675) (regOne!43863 r!15422))) b!8012365))

(assert (= (and b!8012192 ((_ is Concat!30674) (regOne!43863 r!15422))) b!8012366))

(assert (= (and b!8012192 ((_ is Star!21675) (regOne!43863 r!15422))) b!8012367))

(assert (= (and b!8012192 ((_ is Union!21675) (regOne!43863 r!15422))) b!8012368))

(declare-fun b!8012369 () Bool)

(declare-fun e!4719876 () Bool)

(assert (=> b!8012369 (= e!4719876 tp_is_empty!53893)))

(declare-fun b!8012371 () Bool)

(declare-fun tp!2398012 () Bool)

(assert (=> b!8012371 (= e!4719876 tp!2398012)))

(declare-fun b!8012372 () Bool)

(declare-fun tp!2398010 () Bool)

(declare-fun tp!2398013 () Bool)

(assert (=> b!8012372 (= e!4719876 (and tp!2398010 tp!2398013))))

(declare-fun b!8012370 () Bool)

(declare-fun tp!2398011 () Bool)

(declare-fun tp!2398014 () Bool)

(assert (=> b!8012370 (= e!4719876 (and tp!2398011 tp!2398014))))

(assert (=> b!8012192 (= tp!2397993 e!4719876)))

(assert (= (and b!8012192 ((_ is ElementMatch!21675) (regTwo!43863 r!15422))) b!8012369))

(assert (= (and b!8012192 ((_ is Concat!30674) (regTwo!43863 r!15422))) b!8012370))

(assert (= (and b!8012192 ((_ is Star!21675) (regTwo!43863 r!15422))) b!8012371))

(assert (= (and b!8012192 ((_ is Union!21675) (regTwo!43863 r!15422))) b!8012372))

(declare-fun b!8012377 () Bool)

(declare-fun e!4719879 () Bool)

(declare-fun tp!2398017 () Bool)

(assert (=> b!8012377 (= e!4719879 (and tp_is_empty!53893 tp!2398017))))

(assert (=> b!8012193 (= tp!2397990 e!4719879)))

(assert (= (and b!8012193 ((_ is Cons!74780) (t!390647 testedSuffix!271))) b!8012377))

(declare-fun b!8012378 () Bool)

(declare-fun e!4719880 () Bool)

(assert (=> b!8012378 (= e!4719880 tp_is_empty!53893)))

(declare-fun b!8012380 () Bool)

(declare-fun tp!2398020 () Bool)

(assert (=> b!8012380 (= e!4719880 tp!2398020)))

(declare-fun b!8012381 () Bool)

(declare-fun tp!2398018 () Bool)

(declare-fun tp!2398021 () Bool)

(assert (=> b!8012381 (= e!4719880 (and tp!2398018 tp!2398021))))

(declare-fun b!8012379 () Bool)

(declare-fun tp!2398019 () Bool)

(declare-fun tp!2398022 () Bool)

(assert (=> b!8012379 (= e!4719880 (and tp!2398019 tp!2398022))))

(assert (=> b!8012199 (= tp!2397994 e!4719880)))

(assert (= (and b!8012199 ((_ is ElementMatch!21675) (regOne!43862 r!15422))) b!8012378))

(assert (= (and b!8012199 ((_ is Concat!30674) (regOne!43862 r!15422))) b!8012379))

(assert (= (and b!8012199 ((_ is Star!21675) (regOne!43862 r!15422))) b!8012380))

(assert (= (and b!8012199 ((_ is Union!21675) (regOne!43862 r!15422))) b!8012381))

(declare-fun b!8012384 () Bool)

(declare-fun e!4719882 () Bool)

(assert (=> b!8012384 (= e!4719882 tp_is_empty!53893)))

(declare-fun b!8012386 () Bool)

(declare-fun tp!2398025 () Bool)

(assert (=> b!8012386 (= e!4719882 tp!2398025)))

(declare-fun b!8012387 () Bool)

(declare-fun tp!2398023 () Bool)

(declare-fun tp!2398026 () Bool)

(assert (=> b!8012387 (= e!4719882 (and tp!2398023 tp!2398026))))

(declare-fun b!8012385 () Bool)

(declare-fun tp!2398024 () Bool)

(declare-fun tp!2398027 () Bool)

(assert (=> b!8012385 (= e!4719882 (and tp!2398024 tp!2398027))))

(assert (=> b!8012199 (= tp!2397988 e!4719882)))

(assert (= (and b!8012199 ((_ is ElementMatch!21675) (regTwo!43862 r!15422))) b!8012384))

(assert (= (and b!8012199 ((_ is Concat!30674) (regTwo!43862 r!15422))) b!8012385))

(assert (= (and b!8012199 ((_ is Star!21675) (regTwo!43862 r!15422))) b!8012386))

(assert (= (and b!8012199 ((_ is Union!21675) (regTwo!43862 r!15422))) b!8012387))

(declare-fun b!8012392 () Bool)

(declare-fun e!4719885 () Bool)

(assert (=> b!8012392 (= e!4719885 tp_is_empty!53893)))

(declare-fun b!8012394 () Bool)

(declare-fun tp!2398030 () Bool)

(assert (=> b!8012394 (= e!4719885 tp!2398030)))

(declare-fun b!8012395 () Bool)

(declare-fun tp!2398028 () Bool)

(declare-fun tp!2398031 () Bool)

(assert (=> b!8012395 (= e!4719885 (and tp!2398028 tp!2398031))))

(declare-fun b!8012393 () Bool)

(declare-fun tp!2398029 () Bool)

(declare-fun tp!2398032 () Bool)

(assert (=> b!8012393 (= e!4719885 (and tp!2398029 tp!2398032))))

(assert (=> b!8012189 (= tp!2397991 e!4719885)))

(assert (= (and b!8012189 ((_ is ElementMatch!21675) (reg!22004 r!15422))) b!8012392))

(assert (= (and b!8012189 ((_ is Concat!30674) (reg!22004 r!15422))) b!8012393))

(assert (= (and b!8012189 ((_ is Star!21675) (reg!22004 r!15422))) b!8012394))

(assert (= (and b!8012189 ((_ is Union!21675) (reg!22004 r!15422))) b!8012395))

(declare-fun b!8012396 () Bool)

(declare-fun e!4719886 () Bool)

(declare-fun tp!2398033 () Bool)

(assert (=> b!8012396 (= e!4719886 (and tp_is_empty!53893 tp!2398033))))

(assert (=> b!8012195 (= tp!2397989 e!4719886)))

(assert (= (and b!8012195 ((_ is Cons!74780) (t!390647 totalInput!1349))) b!8012396))

(declare-fun b!8012397 () Bool)

(declare-fun e!4719887 () Bool)

(declare-fun tp!2398034 () Bool)

(assert (=> b!8012397 (= e!4719887 (and tp_is_empty!53893 tp!2398034))))

(assert (=> b!8012201 (= tp!2397987 e!4719887)))

(assert (= (and b!8012201 ((_ is Cons!74780) (t!390647 testedP!353))) b!8012397))

(check-sat (not b!8012396) (not b!8012397) (not b!8012213) (not b!8012343) (not b!8012372) (not b!8012214) (not d!2388792) (not b!8012346) (not b!8012350) (not b!8012295) (not b!8012218) tp_is_empty!53893 (not b!8012217) (not b!8012212) (not b!8012385) (not b!8012386) (not b!8012395) (not d!2388748) (not b!8012387) (not b!8012328) (not b!8012331) (not b!8012381) (not b!8012216) (not d!2388752) (not b!8012366) (not b!8012347) (not b!8012327) (not b!8012344) (not b!8012380) (not b!8012377) (not bm!744234) (not b!8012379) (not b!8012235) (not d!2388756) (not d!2388796) (not d!2388786) (not d!2388800) (not d!2388750) (not b!8012371) (not b!8012393) (not bm!744233) (not b!8012368) (not b!8012367) (not b!8012394) (not d!2388774) (not b!8012370) (not b!8012275) (not b!8012342))
(check-sat)
