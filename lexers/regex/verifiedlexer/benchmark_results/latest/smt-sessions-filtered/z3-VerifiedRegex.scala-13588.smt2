; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!730480 () Bool)

(assert start!730480)

(declare-fun b!7559932 () Bool)

(declare-fun e!4501920 () Bool)

(declare-fun e!4501921 () Bool)

(assert (=> b!7559932 (= e!4501920 e!4501921)))

(declare-fun res!3029014 () Bool)

(assert (=> b!7559932 (=> res!3029014 e!4501921)))

(declare-datatypes ((C!40268 0))(
  ( (C!40269 (val!30574 Int)) )
))
(declare-datatypes ((List!72854 0))(
  ( (Nil!72730) (Cons!72730 (h!79178 C!40268) (t!387579 List!72854)) )
))
(declare-fun lt!2648247 () List!72854)

(declare-fun knownP!30 () List!72854)

(assert (=> b!7559932 (= res!3029014 (not (= lt!2648247 knownP!30)))))

(declare-fun lt!2648244 () List!72854)

(declare-fun lt!2648253 () List!72854)

(declare-fun ++!17475 (List!72854 List!72854) List!72854)

(assert (=> b!7559932 (= lt!2648247 (++!17475 lt!2648244 lt!2648253))))

(declare-fun b!7559933 () Bool)

(declare-fun res!3029021 () Bool)

(declare-fun e!4501923 () Bool)

(assert (=> b!7559933 (=> (not res!3029021) (not e!4501923))))

(declare-fun testedP!423 () List!72854)

(declare-fun input!7874 () List!72854)

(declare-fun isPrefix!6177 (List!72854 List!72854) Bool)

(assert (=> b!7559933 (= res!3029021 (isPrefix!6177 testedP!423 input!7874))))

(declare-fun b!7559934 () Bool)

(declare-fun res!3029029 () Bool)

(declare-fun e!4501913 () Bool)

(assert (=> b!7559934 (=> res!3029029 e!4501913)))

(declare-fun lt!2648252 () Int)

(declare-fun size!42467 (List!72854) Int)

(assert (=> b!7559934 (= res!3029029 (>= lt!2648252 (size!42467 input!7874)))))

(declare-fun b!7559935 () Bool)

(declare-fun lt!2648246 () List!72854)

(assert (=> b!7559935 (= e!4501921 (= lt!2648246 knownP!30))))

(assert (=> b!7559935 (= lt!2648247 lt!2648246)))

(declare-fun lt!2648249 () List!72854)

(assert (=> b!7559935 (= lt!2648246 (++!17475 testedP!423 (++!17475 lt!2648249 lt!2648253)))))

(declare-datatypes ((Unit!166876 0))(
  ( (Unit!166877) )
))
(declare-fun lt!2648262 () Unit!166876)

(declare-fun lemmaConcatAssociativity!3110 (List!72854 List!72854 List!72854) Unit!166876)

(assert (=> b!7559935 (= lt!2648262 (lemmaConcatAssociativity!3110 testedP!423 lt!2648249 lt!2648253))))

(declare-fun b!7559936 () Bool)

(declare-fun res!3029023 () Bool)

(assert (=> b!7559936 (=> res!3029023 e!4501913)))

(declare-datatypes ((Regex!19971 0))(
  ( (ElementMatch!19971 (c!1394990 C!40268)) (Concat!28816 (regOne!40454 Regex!19971) (regTwo!40454 Regex!19971)) (EmptyExpr!19971) (Star!19971 (reg!20300 Regex!19971)) (EmptyLang!19971) (Union!19971 (regOne!40455 Regex!19971) (regTwo!40455 Regex!19971)) )
))
(declare-fun r!24333 () Regex!19971)

(declare-fun lostCause!1759 (Regex!19971) Bool)

(assert (=> b!7559936 (= res!3029023 (lostCause!1759 r!24333))))

(declare-fun b!7559937 () Bool)

(declare-fun res!3029027 () Bool)

(assert (=> b!7559937 (=> res!3029027 e!4501913)))

(declare-fun baseR!101 () Regex!19971)

(declare-fun derivative!501 (Regex!19971 List!72854) Regex!19971)

(assert (=> b!7559937 (= res!3029027 (not (= (derivative!501 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7559938 () Bool)

(declare-fun e!4501918 () Bool)

(declare-fun tp_is_empty!50297 () Bool)

(declare-fun tp!2201605 () Bool)

(assert (=> b!7559938 (= e!4501918 (and tp_is_empty!50297 tp!2201605))))

(declare-fun b!7559939 () Bool)

(declare-fun res!3029024 () Bool)

(declare-fun e!4501925 () Bool)

(assert (=> b!7559939 (=> (not res!3029024) (not e!4501925))))

(declare-fun matchR!9573 (Regex!19971 List!72854) Bool)

(assert (=> b!7559939 (= res!3029024 (matchR!9573 baseR!101 knownP!30))))

(declare-fun b!7559940 () Bool)

(declare-fun e!4501914 () Bool)

(declare-fun tp!2201601 () Bool)

(assert (=> b!7559940 (= e!4501914 (and tp_is_empty!50297 tp!2201601))))

(declare-fun b!7559941 () Bool)

(declare-fun e!4501922 () Bool)

(declare-fun e!4501919 () Bool)

(assert (=> b!7559941 (= e!4501922 e!4501919)))

(declare-fun res!3029012 () Bool)

(assert (=> b!7559941 (=> res!3029012 e!4501919)))

(declare-fun lt!2648259 () List!72854)

(assert (=> b!7559941 (= res!3029012 (not (= lt!2648259 input!7874)))))

(declare-fun lt!2648248 () List!72854)

(declare-fun lt!2648250 () List!72854)

(assert (=> b!7559941 (= lt!2648259 (++!17475 lt!2648248 lt!2648250))))

(declare-fun lt!2648251 () List!72854)

(assert (=> b!7559941 (= lt!2648248 (++!17475 testedP!423 lt!2648251))))

(declare-fun b!7559942 () Bool)

(declare-fun res!3029026 () Bool)

(assert (=> b!7559942 (=> (not res!3029026) (not e!4501923))))

(declare-fun validRegex!10399 (Regex!19971) Bool)

(assert (=> b!7559942 (= res!3029026 (validRegex!10399 r!24333))))

(declare-fun b!7559943 () Bool)

(declare-fun e!4501917 () Bool)

(declare-fun tp!2201606 () Bool)

(declare-fun tp!2201608 () Bool)

(assert (=> b!7559943 (= e!4501917 (and tp!2201606 tp!2201608))))

(declare-fun b!7559944 () Bool)

(assert (=> b!7559944 (= e!4501925 (not e!4501913))))

(declare-fun res!3029013 () Bool)

(assert (=> b!7559944 (=> res!3029013 e!4501913)))

(assert (=> b!7559944 (= res!3029013 (not (matchR!9573 r!24333 lt!2648251)))))

(declare-fun getSuffix!3655 (List!72854 List!72854) List!72854)

(assert (=> b!7559944 (= lt!2648251 (getSuffix!3655 knownP!30 testedP!423))))

(assert (=> b!7559944 (isPrefix!6177 testedP!423 knownP!30)))

(declare-fun lt!2648258 () Unit!166876)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!925 (List!72854 List!72854 List!72854) Unit!166876)

(assert (=> b!7559944 (= lt!2648258 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!925 knownP!30 testedP!423 input!7874))))

(declare-fun b!7559945 () Bool)

(assert (=> b!7559945 (= e!4501913 e!4501922)))

(declare-fun res!3029019 () Bool)

(assert (=> b!7559945 (=> res!3029019 e!4501922)))

(assert (=> b!7559945 (= res!3029019 (not (= (++!17475 knownP!30 lt!2648250) input!7874)))))

(assert (=> b!7559945 (= lt!2648250 (getSuffix!3655 input!7874 knownP!30))))

(assert (=> b!7559945 (= lt!2648253 (getSuffix!3655 knownP!30 lt!2648244))))

(assert (=> b!7559945 (isPrefix!6177 lt!2648244 knownP!30)))

(declare-fun lt!2648256 () Unit!166876)

(assert (=> b!7559945 (= lt!2648256 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!925 knownP!30 lt!2648244 input!7874))))

(declare-fun lt!2648254 () C!40268)

(declare-fun derivativeStep!5749 (Regex!19971 C!40268) Regex!19971)

(assert (=> b!7559945 (= (derivative!501 baseR!101 lt!2648244) (derivativeStep!5749 r!24333 lt!2648254))))

(declare-fun lt!2648260 () Unit!166876)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!193 (Regex!19971 Regex!19971 List!72854 C!40268) Unit!166876)

(assert (=> b!7559945 (= lt!2648260 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!193 baseR!101 r!24333 testedP!423 lt!2648254))))

(assert (=> b!7559945 (isPrefix!6177 lt!2648244 input!7874)))

(declare-fun lt!2648245 () Unit!166876)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1226 (List!72854 List!72854) Unit!166876)

(assert (=> b!7559945 (= lt!2648245 (lemmaAddHeadSuffixToPrefixStillPrefix!1226 testedP!423 input!7874))))

(assert (=> b!7559945 (= lt!2648244 (++!17475 testedP!423 lt!2648249))))

(assert (=> b!7559945 (= lt!2648249 (Cons!72730 lt!2648254 Nil!72730))))

(declare-fun lt!2648257 () List!72854)

(declare-fun head!15549 (List!72854) C!40268)

(assert (=> b!7559945 (= lt!2648254 (head!15549 lt!2648257))))

(assert (=> b!7559945 (= lt!2648257 (getSuffix!3655 input!7874 testedP!423))))

(declare-fun b!7559946 () Bool)

(declare-fun tp!2201599 () Bool)

(declare-fun tp!2201611 () Bool)

(assert (=> b!7559946 (= e!4501917 (and tp!2201599 tp!2201611))))

(declare-fun b!7559947 () Bool)

(declare-fun e!4501915 () Bool)

(declare-fun tp!2201603 () Bool)

(declare-fun tp!2201607 () Bool)

(assert (=> b!7559947 (= e!4501915 (and tp!2201603 tp!2201607))))

(declare-fun b!7559948 () Bool)

(declare-fun res!3029020 () Bool)

(assert (=> b!7559948 (=> res!3029020 e!4501920)))

(assert (=> b!7559948 (= res!3029020 (not (= lt!2648248 knownP!30)))))

(declare-fun b!7559949 () Bool)

(declare-fun e!4501916 () Bool)

(declare-fun tp!2201610 () Bool)

(assert (=> b!7559949 (= e!4501916 (and tp_is_empty!50297 tp!2201610))))

(declare-fun res!3029025 () Bool)

(assert (=> start!730480 (=> (not res!3029025) (not e!4501923))))

(assert (=> start!730480 (= res!3029025 (validRegex!10399 baseR!101))))

(assert (=> start!730480 e!4501923))

(assert (=> start!730480 e!4501915))

(assert (=> start!730480 e!4501918))

(assert (=> start!730480 e!4501916))

(assert (=> start!730480 e!4501914))

(assert (=> start!730480 e!4501917))

(declare-fun b!7559950 () Bool)

(declare-fun res!3029022 () Bool)

(assert (=> b!7559950 (=> (not res!3029022) (not e!4501923))))

(assert (=> b!7559950 (= res!3029022 (isPrefix!6177 knownP!30 input!7874))))

(declare-fun b!7559951 () Bool)

(assert (=> b!7559951 (= e!4501915 tp_is_empty!50297)))

(declare-fun b!7559952 () Bool)

(declare-fun e!4501924 () Bool)

(assert (=> b!7559952 (= e!4501919 e!4501924)))

(declare-fun res!3029028 () Bool)

(assert (=> b!7559952 (=> res!3029028 e!4501924)))

(declare-fun lt!2648263 () List!72854)

(assert (=> b!7559952 (= res!3029028 (not (= lt!2648263 input!7874)))))

(assert (=> b!7559952 (= lt!2648259 lt!2648263)))

(declare-fun lt!2648264 () List!72854)

(assert (=> b!7559952 (= lt!2648263 (++!17475 testedP!423 lt!2648264))))

(assert (=> b!7559952 (= lt!2648264 (++!17475 lt!2648251 lt!2648250))))

(declare-fun lt!2648255 () Unit!166876)

(assert (=> b!7559952 (= lt!2648255 (lemmaConcatAssociativity!3110 testedP!423 lt!2648251 lt!2648250))))

(declare-fun b!7559953 () Bool)

(assert (=> b!7559953 (= e!4501924 e!4501920)))

(declare-fun res!3029017 () Bool)

(assert (=> b!7559953 (=> res!3029017 e!4501920)))

(assert (=> b!7559953 (= res!3029017 (not (= (head!15549 lt!2648251) lt!2648254)))))

(assert (=> b!7559953 (= lt!2648264 lt!2648257)))

(declare-fun lt!2648261 () Unit!166876)

(declare-fun lemmaSamePrefixThenSameSuffix!2877 (List!72854 List!72854 List!72854 List!72854 List!72854) Unit!166876)

(assert (=> b!7559953 (= lt!2648261 (lemmaSamePrefixThenSameSuffix!2877 testedP!423 lt!2648264 testedP!423 lt!2648257 input!7874))))

(declare-fun b!7559954 () Bool)

(declare-fun tp!2201600 () Bool)

(assert (=> b!7559954 (= e!4501917 tp!2201600)))

(declare-fun b!7559955 () Bool)

(declare-fun tp!2201604 () Bool)

(declare-fun tp!2201609 () Bool)

(assert (=> b!7559955 (= e!4501915 (and tp!2201604 tp!2201609))))

(declare-fun b!7559956 () Bool)

(declare-fun res!3029018 () Bool)

(assert (=> b!7559956 (=> res!3029018 e!4501920)))

(declare-fun $colon$colon!3399 (List!72854 C!40268) List!72854)

(declare-fun tail!15089 (List!72854) List!72854)

(assert (=> b!7559956 (= res!3029018 (not (= lt!2648251 ($colon$colon!3399 (tail!15089 lt!2648251) lt!2648254))))))

(declare-fun b!7559957 () Bool)

(declare-fun res!3029015 () Bool)

(assert (=> b!7559957 (=> res!3029015 e!4501913)))

(declare-fun lt!2648243 () Int)

(assert (=> b!7559957 (= res!3029015 (= lt!2648252 lt!2648243))))

(declare-fun b!7559958 () Bool)

(assert (=> b!7559958 (= e!4501923 e!4501925)))

(declare-fun res!3029016 () Bool)

(assert (=> b!7559958 (=> (not res!3029016) (not e!4501925))))

(assert (=> b!7559958 (= res!3029016 (>= lt!2648243 lt!2648252))))

(assert (=> b!7559958 (= lt!2648252 (size!42467 testedP!423))))

(assert (=> b!7559958 (= lt!2648243 (size!42467 knownP!30))))

(declare-fun b!7559959 () Bool)

(declare-fun res!3029030 () Bool)

(assert (=> b!7559959 (=> res!3029030 e!4501919)))

(assert (=> b!7559959 (= res!3029030 (not (= (++!17475 testedP!423 lt!2648257) input!7874)))))

(declare-fun b!7559960 () Bool)

(declare-fun tp!2201602 () Bool)

(assert (=> b!7559960 (= e!4501915 tp!2201602)))

(declare-fun b!7559961 () Bool)

(assert (=> b!7559961 (= e!4501917 tp_is_empty!50297)))

(assert (= (and start!730480 res!3029025) b!7559942))

(assert (= (and b!7559942 res!3029026) b!7559933))

(assert (= (and b!7559933 res!3029021) b!7559950))

(assert (= (and b!7559950 res!3029022) b!7559958))

(assert (= (and b!7559958 res!3029016) b!7559939))

(assert (= (and b!7559939 res!3029024) b!7559944))

(assert (= (and b!7559944 (not res!3029013)) b!7559937))

(assert (= (and b!7559937 (not res!3029027)) b!7559936))

(assert (= (and b!7559936 (not res!3029023)) b!7559957))

(assert (= (and b!7559957 (not res!3029015)) b!7559934))

(assert (= (and b!7559934 (not res!3029029)) b!7559945))

(assert (= (and b!7559945 (not res!3029019)) b!7559941))

(assert (= (and b!7559941 (not res!3029012)) b!7559959))

(assert (= (and b!7559959 (not res!3029030)) b!7559952))

(assert (= (and b!7559952 (not res!3029028)) b!7559953))

(assert (= (and b!7559953 (not res!3029017)) b!7559956))

(assert (= (and b!7559956 (not res!3029018)) b!7559948))

(assert (= (and b!7559948 (not res!3029020)) b!7559932))

(assert (= (and b!7559932 (not res!3029014)) b!7559935))

(get-info :version)

(assert (= (and start!730480 ((_ is ElementMatch!19971) baseR!101)) b!7559951))

(assert (= (and start!730480 ((_ is Concat!28816) baseR!101)) b!7559947))

(assert (= (and start!730480 ((_ is Star!19971) baseR!101)) b!7559960))

(assert (= (and start!730480 ((_ is Union!19971) baseR!101)) b!7559955))

(assert (= (and start!730480 ((_ is Cons!72730) input!7874)) b!7559938))

(assert (= (and start!730480 ((_ is Cons!72730) knownP!30)) b!7559949))

(assert (= (and start!730480 ((_ is Cons!72730) testedP!423)) b!7559940))

(assert (= (and start!730480 ((_ is ElementMatch!19971) r!24333)) b!7559961))

(assert (= (and start!730480 ((_ is Concat!28816) r!24333)) b!7559943))

(assert (= (and start!730480 ((_ is Star!19971) r!24333)) b!7559954))

(assert (= (and start!730480 ((_ is Union!19971) r!24333)) b!7559946))

(declare-fun m!8123104 () Bool)

(assert (=> b!7559942 m!8123104))

(declare-fun m!8123106 () Bool)

(assert (=> b!7559939 m!8123106))

(declare-fun m!8123108 () Bool)

(assert (=> b!7559956 m!8123108))

(assert (=> b!7559956 m!8123108))

(declare-fun m!8123110 () Bool)

(assert (=> b!7559956 m!8123110))

(declare-fun m!8123112 () Bool)

(assert (=> b!7559936 m!8123112))

(declare-fun m!8123114 () Bool)

(assert (=> b!7559944 m!8123114))

(declare-fun m!8123116 () Bool)

(assert (=> b!7559944 m!8123116))

(declare-fun m!8123118 () Bool)

(assert (=> b!7559944 m!8123118))

(declare-fun m!8123120 () Bool)

(assert (=> b!7559944 m!8123120))

(declare-fun m!8123122 () Bool)

(assert (=> b!7559959 m!8123122))

(declare-fun m!8123124 () Bool)

(assert (=> b!7559935 m!8123124))

(assert (=> b!7559935 m!8123124))

(declare-fun m!8123126 () Bool)

(assert (=> b!7559935 m!8123126))

(declare-fun m!8123128 () Bool)

(assert (=> b!7559935 m!8123128))

(declare-fun m!8123130 () Bool)

(assert (=> b!7559937 m!8123130))

(declare-fun m!8123132 () Bool)

(assert (=> b!7559958 m!8123132))

(declare-fun m!8123134 () Bool)

(assert (=> b!7559958 m!8123134))

(declare-fun m!8123136 () Bool)

(assert (=> b!7559952 m!8123136))

(declare-fun m!8123138 () Bool)

(assert (=> b!7559952 m!8123138))

(declare-fun m!8123140 () Bool)

(assert (=> b!7559952 m!8123140))

(declare-fun m!8123142 () Bool)

(assert (=> b!7559932 m!8123142))

(declare-fun m!8123144 () Bool)

(assert (=> b!7559934 m!8123144))

(declare-fun m!8123146 () Bool)

(assert (=> b!7559950 m!8123146))

(declare-fun m!8123148 () Bool)

(assert (=> b!7559933 m!8123148))

(declare-fun m!8123150 () Bool)

(assert (=> start!730480 m!8123150))

(declare-fun m!8123152 () Bool)

(assert (=> b!7559953 m!8123152))

(declare-fun m!8123154 () Bool)

(assert (=> b!7559953 m!8123154))

(declare-fun m!8123156 () Bool)

(assert (=> b!7559941 m!8123156))

(declare-fun m!8123158 () Bool)

(assert (=> b!7559941 m!8123158))

(declare-fun m!8123160 () Bool)

(assert (=> b!7559945 m!8123160))

(declare-fun m!8123162 () Bool)

(assert (=> b!7559945 m!8123162))

(declare-fun m!8123164 () Bool)

(assert (=> b!7559945 m!8123164))

(declare-fun m!8123166 () Bool)

(assert (=> b!7559945 m!8123166))

(declare-fun m!8123168 () Bool)

(assert (=> b!7559945 m!8123168))

(declare-fun m!8123170 () Bool)

(assert (=> b!7559945 m!8123170))

(declare-fun m!8123172 () Bool)

(assert (=> b!7559945 m!8123172))

(declare-fun m!8123174 () Bool)

(assert (=> b!7559945 m!8123174))

(declare-fun m!8123176 () Bool)

(assert (=> b!7559945 m!8123176))

(declare-fun m!8123178 () Bool)

(assert (=> b!7559945 m!8123178))

(declare-fun m!8123180 () Bool)

(assert (=> b!7559945 m!8123180))

(declare-fun m!8123182 () Bool)

(assert (=> b!7559945 m!8123182))

(declare-fun m!8123184 () Bool)

(assert (=> b!7559945 m!8123184))

(check-sat (not b!7559939) tp_is_empty!50297 (not b!7559958) (not start!730480) (not b!7559953) (not b!7559952) (not b!7559960) (not b!7559935) (not b!7559946) (not b!7559947) (not b!7559936) (not b!7559933) (not b!7559938) (not b!7559940) (not b!7559956) (not b!7559949) (not b!7559954) (not b!7559950) (not b!7559945) (not b!7559959) (not b!7559932) (not b!7559943) (not b!7559942) (not b!7559937) (not b!7559955) (not b!7559934) (not b!7559941) (not b!7559944))
(check-sat)
