; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!751780 () Bool)

(assert start!751780)

(declare-fun b!7970902 () Bool)

(declare-fun e!4699815 () Bool)

(declare-fun e!4699811 () Bool)

(assert (=> b!7970902 (= e!4699815 e!4699811)))

(declare-fun res!3158012 () Bool)

(assert (=> b!7970902 (=> (not res!3158012) (not e!4699811))))

(declare-fun lt!2708102 () Int)

(declare-datatypes ((C!43404 0))(
  ( (C!43405 (val!32250 Int)) )
))
(declare-datatypes ((List!74762 0))(
  ( (Nil!74638) (Cons!74638 (h!81086 C!43404) (t!390505 List!74762)) )
))
(declare-fun testedP!447 () List!74762)

(declare-datatypes ((Regex!21533 0))(
  ( (ElementMatch!21533 (c!1463848 C!43404)) (Concat!30532 (regOne!43578 Regex!21533) (regTwo!43578 Regex!21533)) (EmptyExpr!21533) (Star!21533 (reg!21862 Regex!21533)) (EmptyLang!21533) (Union!21533 (regOne!43579 Regex!21533) (regTwo!43579 Regex!21533)) )
))
(declare-fun r!24602 () Regex!21533)

(declare-fun input!7927 () List!74762)

(declare-fun lt!2708101 () List!74762)

(declare-fun lt!2708107 () Int)

(declare-fun isEmpty!42939 (List!74762) Bool)

(declare-datatypes ((tuple2!70728 0))(
  ( (tuple2!70729 (_1!38667 List!74762) (_2!38667 List!74762)) )
))
(declare-fun findLongestMatchInner!2314 (Regex!21533 List!74762 Int List!74762 List!74762 Int) tuple2!70728)

(assert (=> b!7970902 (= res!3158012 (not (isEmpty!42939 (_1!38667 (findLongestMatchInner!2314 r!24602 testedP!447 lt!2708102 lt!2708101 input!7927 lt!2708107)))))))

(declare-fun size!43469 (List!74762) Int)

(assert (=> b!7970902 (= lt!2708107 (size!43469 input!7927))))

(declare-fun getSuffix!3836 (List!74762 List!74762) List!74762)

(assert (=> b!7970902 (= lt!2708101 (getSuffix!3836 input!7927 testedP!447))))

(assert (=> b!7970902 (= lt!2708102 (size!43469 testedP!447))))

(declare-fun b!7970903 () Bool)

(declare-fun e!4699809 () Bool)

(declare-fun tp!2376227 () Bool)

(declare-fun tp!2376235 () Bool)

(assert (=> b!7970903 (= e!4699809 (and tp!2376227 tp!2376235))))

(declare-fun b!7970904 () Bool)

(declare-fun res!3158011 () Bool)

(assert (=> b!7970904 (=> (not res!3158011) (not e!4699811))))

(assert (=> b!7970904 (= res!3158011 (not (= testedP!447 input!7927)))))

(declare-fun b!7970906 () Bool)

(declare-fun res!3158013 () Bool)

(assert (=> b!7970906 (=> (not res!3158013) (not e!4699815))))

(declare-fun baseR!116 () Regex!21533)

(declare-fun derivative!719 (Regex!21533 List!74762) Regex!21533)

(assert (=> b!7970906 (= res!3158013 (= (derivative!719 baseR!116 testedP!447) r!24602))))

(declare-fun b!7970907 () Bool)

(declare-fun res!3158014 () Bool)

(assert (=> b!7970907 (=> (not res!3158014) (not e!4699815))))

(declare-fun isPrefix!6633 (List!74762 List!74762) Bool)

(assert (=> b!7970907 (= res!3158014 (isPrefix!6633 testedP!447 input!7927))))

(declare-fun b!7970908 () Bool)

(declare-fun e!4699810 () Bool)

(declare-fun tp_is_empty!53609 () Bool)

(assert (=> b!7970908 (= e!4699810 tp_is_empty!53609)))

(declare-fun b!7970909 () Bool)

(declare-fun tp!2376229 () Bool)

(assert (=> b!7970909 (= e!4699810 tp!2376229)))

(declare-fun b!7970910 () Bool)

(declare-fun e!4699813 () Bool)

(declare-fun tp!2376230 () Bool)

(assert (=> b!7970910 (= e!4699813 (and tp_is_empty!53609 tp!2376230))))

(declare-fun b!7970911 () Bool)

(assert (=> b!7970911 (= e!4699809 tp_is_empty!53609)))

(declare-fun b!7970912 () Bool)

(declare-fun tp!2376232 () Bool)

(declare-fun tp!2376228 () Bool)

(assert (=> b!7970912 (= e!4699809 (and tp!2376232 tp!2376228))))

(declare-fun b!7970913 () Bool)

(declare-fun e!4699812 () Bool)

(declare-fun tp!2376233 () Bool)

(assert (=> b!7970913 (= e!4699812 (and tp_is_empty!53609 tp!2376233))))

(declare-fun b!7970914 () Bool)

(declare-datatypes ((Unit!170312 0))(
  ( (Unit!170313) )
))
(declare-fun e!4699814 () Unit!170312)

(declare-fun Unit!170314 () Unit!170312)

(assert (=> b!7970914 (= e!4699814 Unit!170314)))

(declare-fun b!7970915 () Bool)

(declare-fun tp!2376236 () Bool)

(assert (=> b!7970915 (= e!4699809 tp!2376236)))

(declare-fun b!7970916 () Bool)

(declare-fun tp!2376231 () Bool)

(declare-fun tp!2376234 () Bool)

(assert (=> b!7970916 (= e!4699810 (and tp!2376231 tp!2376234))))

(declare-fun b!7970917 () Bool)

(assert (=> b!7970917 (= e!4699811 (not (< lt!2708102 lt!2708107)))))

(declare-fun lt!2708106 () Unit!170312)

(assert (=> b!7970917 (= lt!2708106 e!4699814)))

(declare-fun c!1463847 () Bool)

(assert (=> b!7970917 (= c!1463847 (= lt!2708102 lt!2708107))))

(assert (=> b!7970917 (<= lt!2708102 lt!2708107)))

(declare-fun lt!2708104 () Unit!170312)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1150 (List!74762 List!74762) Unit!170312)

(assert (=> b!7970917 (= lt!2708104 (lemmaIsPrefixThenSmallerEqSize!1150 testedP!447 input!7927))))

(declare-fun b!7970918 () Bool)

(declare-fun tp!2376237 () Bool)

(declare-fun tp!2376238 () Bool)

(assert (=> b!7970918 (= e!4699810 (and tp!2376237 tp!2376238))))

(declare-fun res!3158010 () Bool)

(assert (=> start!751780 (=> (not res!3158010) (not e!4699815))))

(declare-fun validRegex!11837 (Regex!21533) Bool)

(assert (=> start!751780 (= res!3158010 (validRegex!11837 baseR!116))))

(assert (=> start!751780 e!4699815))

(assert (=> start!751780 e!4699810))

(assert (=> start!751780 e!4699813))

(assert (=> start!751780 e!4699812))

(assert (=> start!751780 e!4699809))

(declare-fun b!7970905 () Bool)

(declare-fun Unit!170315 () Unit!170312)

(assert (=> b!7970905 (= e!4699814 Unit!170315)))

(declare-fun lt!2708105 () Unit!170312)

(declare-fun lemmaIsPrefixRefl!4101 (List!74762 List!74762) Unit!170312)

(assert (=> b!7970905 (= lt!2708105 (lemmaIsPrefixRefl!4101 input!7927 input!7927))))

(assert (=> b!7970905 (isPrefix!6633 input!7927 input!7927)))

(declare-fun lt!2708103 () Unit!170312)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1681 (List!74762 List!74762 List!74762) Unit!170312)

(assert (=> b!7970905 (= lt!2708103 (lemmaIsPrefixSameLengthThenSameList!1681 input!7927 testedP!447 input!7927))))

(assert (=> b!7970905 false))

(assert (= (and start!751780 res!3158010) b!7970907))

(assert (= (and b!7970907 res!3158014) b!7970906))

(assert (= (and b!7970906 res!3158013) b!7970902))

(assert (= (and b!7970902 res!3158012) b!7970904))

(assert (= (and b!7970904 res!3158011) b!7970917))

(assert (= (and b!7970917 c!1463847) b!7970905))

(assert (= (and b!7970917 (not c!1463847)) b!7970914))

(get-info :version)

(assert (= (and start!751780 ((_ is ElementMatch!21533) baseR!116)) b!7970908))

(assert (= (and start!751780 ((_ is Concat!30532) baseR!116)) b!7970918))

(assert (= (and start!751780 ((_ is Star!21533) baseR!116)) b!7970909))

(assert (= (and start!751780 ((_ is Union!21533) baseR!116)) b!7970916))

(assert (= (and start!751780 ((_ is Cons!74638) testedP!447)) b!7970910))

(assert (= (and start!751780 ((_ is Cons!74638) input!7927)) b!7970913))

(assert (= (and start!751780 ((_ is ElementMatch!21533) r!24602)) b!7970911))

(assert (= (and start!751780 ((_ is Concat!30532) r!24602)) b!7970903))

(assert (= (and start!751780 ((_ is Star!21533) r!24602)) b!7970915))

(assert (= (and start!751780 ((_ is Union!21533) r!24602)) b!7970912))

(declare-fun m!8349094 () Bool)

(assert (=> b!7970905 m!8349094))

(declare-fun m!8349096 () Bool)

(assert (=> b!7970905 m!8349096))

(declare-fun m!8349098 () Bool)

(assert (=> b!7970905 m!8349098))

(declare-fun m!8349100 () Bool)

(assert (=> b!7970902 m!8349100))

(declare-fun m!8349102 () Bool)

(assert (=> b!7970902 m!8349102))

(declare-fun m!8349104 () Bool)

(assert (=> b!7970902 m!8349104))

(declare-fun m!8349106 () Bool)

(assert (=> b!7970902 m!8349106))

(declare-fun m!8349108 () Bool)

(assert (=> b!7970902 m!8349108))

(declare-fun m!8349110 () Bool)

(assert (=> b!7970917 m!8349110))

(declare-fun m!8349112 () Bool)

(assert (=> b!7970906 m!8349112))

(declare-fun m!8349114 () Bool)

(assert (=> start!751780 m!8349114))

(declare-fun m!8349116 () Bool)

(assert (=> b!7970907 m!8349116))

(check-sat (not b!7970913) (not start!751780) (not b!7970907) (not b!7970910) (not b!7970916) (not b!7970903) (not b!7970906) (not b!7970912) tp_is_empty!53609 (not b!7970917) (not b!7970918) (not b!7970915) (not b!7970905) (not b!7970909) (not b!7970902))
(check-sat)
