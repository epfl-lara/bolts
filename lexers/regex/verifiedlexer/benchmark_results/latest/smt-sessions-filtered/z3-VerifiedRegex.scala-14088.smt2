; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742282 () Bool)

(assert start!742282)

(declare-fun res!3115995 () Bool)

(declare-fun e!4632730 () Bool)

(assert (=> start!742282 (=> (not res!3115995) (not e!4632730))))

(declare-datatypes ((C!42268 0))(
  ( (C!42269 (val!31574 Int)) )
))
(declare-datatypes ((Regex!20971 0))(
  ( (ElementMatch!20971 (c!1440856 C!42268)) (Concat!29816 (regOne!42454 Regex!20971) (regTwo!42454 Regex!20971)) (EmptyExpr!20971) (Star!20971 (reg!21300 Regex!20971)) (EmptyLang!20971) (Union!20971 (regOne!42455 Regex!20971) (regTwo!42455 Regex!20971)) )
))
(declare-fun r1!6261 () Regex!20971)

(declare-fun validRegex!11385 (Regex!20971) Bool)

(assert (=> start!742282 (= res!3115995 (validRegex!11385 r1!6261))))

(assert (=> start!742282 e!4632730))

(declare-fun e!4632733 () Bool)

(assert (=> start!742282 e!4632733))

(declare-fun e!4632732 () Bool)

(assert (=> start!742282 e!4632732))

(declare-fun e!4632739 () Bool)

(assert (=> start!742282 e!4632739))

(declare-fun e!4632738 () Bool)

(assert (=> start!742282 e!4632738))

(declare-fun e!4632735 () Bool)

(assert (=> start!742282 e!4632735))

(declare-fun e!4632731 () Bool)

(assert (=> start!742282 e!4632731))

(declare-fun e!4632737 () Bool)

(assert (=> start!742282 e!4632737))

(declare-fun b!7834142 () Bool)

(declare-fun tp_is_empty!52297 () Bool)

(declare-fun tp!2317201 () Bool)

(assert (=> b!7834142 (= e!4632737 (and tp_is_empty!52297 tp!2317201))))

(declare-fun b!7834143 () Bool)

(declare-fun tp!2317190 () Bool)

(assert (=> b!7834143 (= e!4632732 (and tp_is_empty!52297 tp!2317190))))

(declare-fun b!7834144 () Bool)

(declare-fun tp!2317195 () Bool)

(declare-fun tp!2317191 () Bool)

(assert (=> b!7834144 (= e!4632731 (and tp!2317195 tp!2317191))))

(declare-fun b!7834145 () Bool)

(declare-fun tp!2317200 () Bool)

(assert (=> b!7834145 (= e!4632738 (and tp_is_empty!52297 tp!2317200))))

(declare-fun b!7834146 () Bool)

(declare-fun tp!2317193 () Bool)

(declare-fun tp!2317199 () Bool)

(assert (=> b!7834146 (= e!4632733 (and tp!2317193 tp!2317199))))

(declare-fun b!7834147 () Bool)

(assert (=> b!7834147 (= e!4632733 tp_is_empty!52297)))

(declare-fun b!7834148 () Bool)

(declare-fun tp!2317194 () Bool)

(assert (=> b!7834148 (= e!4632735 (and tp_is_empty!52297 tp!2317194))))

(declare-fun b!7834149 () Bool)

(declare-fun res!3115998 () Bool)

(declare-fun e!4632740 () Bool)

(assert (=> b!7834149 (=> (not res!3115998) (not e!4632740))))

(declare-datatypes ((List!73808 0))(
  ( (Nil!73684) (Cons!73684 (h!80132 C!42268) (t!388543 List!73808)) )
))
(declare-fun s1!4101 () List!73808)

(declare-fun matchR!10427 (Regex!20971 List!73808) Bool)

(assert (=> b!7834149 (= res!3115998 (matchR!10427 r1!6261 s1!4101))))

(declare-fun b!7834150 () Bool)

(declare-fun e!4632736 () Bool)

(assert (=> b!7834150 (= e!4632736 e!4632740)))

(declare-fun res!3115994 () Bool)

(assert (=> b!7834150 (=> (not res!3115994) (not e!4632740))))

(declare-fun lt!2677184 () List!73808)

(declare-fun s!14274 () List!73808)

(assert (=> b!7834150 (= res!3115994 (= lt!2677184 s!14274))))

(declare-fun s1Rec!453 () List!73808)

(declare-fun s2Rec!453 () List!73808)

(declare-fun ++!18005 (List!73808 List!73808) List!73808)

(assert (=> b!7834150 (= lt!2677184 (++!18005 s1Rec!453 s2Rec!453))))

(declare-fun b!7834151 () Bool)

(declare-fun tp!2317192 () Bool)

(assert (=> b!7834151 (= e!4632739 (and tp_is_empty!52297 tp!2317192))))

(declare-fun b!7834152 () Bool)

(declare-fun tp!2317196 () Bool)

(declare-fun tp!2317188 () Bool)

(assert (=> b!7834152 (= e!4632731 (and tp!2317196 tp!2317188))))

(declare-fun b!7834153 () Bool)

(declare-fun res!3115996 () Bool)

(assert (=> b!7834153 (=> (not res!3115996) (not e!4632730))))

(declare-fun r2!6199 () Regex!20971)

(assert (=> b!7834153 (= res!3115996 (validRegex!11385 r2!6199))))

(declare-fun b!7834154 () Bool)

(declare-fun tp!2317198 () Bool)

(assert (=> b!7834154 (= e!4632733 tp!2317198)))

(declare-fun b!7834155 () Bool)

(assert (=> b!7834155 (= e!4632731 tp_is_empty!52297)))

(declare-fun b!7834156 () Bool)

(declare-fun tp!2317197 () Bool)

(assert (=> b!7834156 (= e!4632731 tp!2317197)))

(declare-fun b!7834157 () Bool)

(declare-fun e!4632741 () Bool)

(assert (=> b!7834157 (= e!4632740 (not e!4632741))))

(declare-fun res!3115989 () Bool)

(assert (=> b!7834157 (=> res!3115989 e!4632741)))

(assert (=> b!7834157 (= res!3115989 (not (= s1Rec!453 s1!4101)))))

(declare-fun isPrefix!6321 (List!73808 List!73808) Bool)

(assert (=> b!7834157 (isPrefix!6321 s1Rec!453 lt!2677184)))

(declare-datatypes ((Unit!168712 0))(
  ( (Unit!168713) )
))
(declare-fun lt!2677180 () Unit!168712)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3767 (List!73808 List!73808) Unit!168712)

(assert (=> b!7834157 (= lt!2677180 (lemmaConcatTwoListThenFirstIsPrefix!3767 s1Rec!453 s2Rec!453))))

(declare-fun lt!2677182 () List!73808)

(assert (=> b!7834157 (isPrefix!6321 s1!4101 lt!2677182)))

(declare-fun lt!2677183 () Unit!168712)

(declare-fun s2!3721 () List!73808)

(assert (=> b!7834157 (= lt!2677183 (lemmaConcatTwoListThenFirstIsPrefix!3767 s1!4101 s2!3721))))

(declare-fun b!7834158 () Bool)

(declare-fun res!3115988 () Bool)

(assert (=> b!7834158 (=> (not res!3115988) (not e!4632740))))

(assert (=> b!7834158 (= res!3115988 (matchR!10427 r2!6199 s2!3721))))

(declare-fun b!7834159 () Bool)

(declare-fun tp!2317189 () Bool)

(declare-fun tp!2317187 () Bool)

(assert (=> b!7834159 (= e!4632733 (and tp!2317189 tp!2317187))))

(declare-fun b!7834160 () Bool)

(declare-fun e!4632734 () Bool)

(assert (=> b!7834160 (= e!4632734 (not (matchR!10427 r2!6199 s2Rec!453)))))

(declare-fun b!7834161 () Bool)

(declare-fun res!3115997 () Bool)

(assert (=> b!7834161 (=> (not res!3115997) (not e!4632740))))

(assert (=> b!7834161 (= res!3115997 e!4632734)))

(declare-fun res!3115990 () Bool)

(assert (=> b!7834161 (=> res!3115990 e!4632734)))

(assert (=> b!7834161 (= res!3115990 (not (matchR!10427 r1!6261 s1Rec!453)))))

(declare-fun b!7834162 () Bool)

(assert (=> b!7834162 (= e!4632730 e!4632736)))

(declare-fun res!3115991 () Bool)

(assert (=> b!7834162 (=> (not res!3115991) (not e!4632736))))

(assert (=> b!7834162 (= res!3115991 (= lt!2677182 s!14274))))

(assert (=> b!7834162 (= lt!2677182 (++!18005 s1!4101 s2!3721))))

(declare-fun b!7834163 () Bool)

(assert (=> b!7834163 (= e!4632741 false)))

(assert (=> b!7834163 (= s2!3721 s2Rec!453)))

(declare-fun lt!2677181 () Unit!168712)

(declare-fun lemmaSamePrefixThenSameSuffix!2905 (List!73808 List!73808 List!73808 List!73808 List!73808) Unit!168712)

(assert (=> b!7834163 (= lt!2677181 (lemmaSamePrefixThenSameSuffix!2905 s1!4101 s2!3721 s1Rec!453 s2Rec!453 s!14274))))

(declare-fun b!7834164 () Bool)

(declare-fun res!3115993 () Bool)

(assert (=> b!7834164 (=> (not res!3115993) (not e!4632740))))

(get-info :version)

(assert (=> b!7834164 (= res!3115993 (not ((_ is Nil!73684) s2Rec!453)))))

(declare-fun b!7834165 () Bool)

(declare-fun res!3115992 () Bool)

(assert (=> b!7834165 (=> (not res!3115992) (not e!4632736))))

(assert (=> b!7834165 (= res!3115992 (isPrefix!6321 s1Rec!453 s1!4101))))

(assert (= (and start!742282 res!3115995) b!7834153))

(assert (= (and b!7834153 res!3115996) b!7834162))

(assert (= (and b!7834162 res!3115991) b!7834165))

(assert (= (and b!7834165 res!3115992) b!7834150))

(assert (= (and b!7834150 res!3115994) b!7834149))

(assert (= (and b!7834149 res!3115998) b!7834158))

(assert (= (and b!7834158 res!3115988) b!7834161))

(assert (= (and b!7834161 (not res!3115990)) b!7834160))

(assert (= (and b!7834161 res!3115997) b!7834164))

(assert (= (and b!7834164 res!3115993) b!7834157))

(assert (= (and b!7834157 (not res!3115989)) b!7834163))

(assert (= (and start!742282 ((_ is ElementMatch!20971) r2!6199)) b!7834147))

(assert (= (and start!742282 ((_ is Concat!29816) r2!6199)) b!7834146))

(assert (= (and start!742282 ((_ is Star!20971) r2!6199)) b!7834154))

(assert (= (and start!742282 ((_ is Union!20971) r2!6199)) b!7834159))

(assert (= (and start!742282 ((_ is Cons!73684) s1!4101)) b!7834143))

(assert (= (and start!742282 ((_ is Cons!73684) s2!3721)) b!7834151))

(assert (= (and start!742282 ((_ is Cons!73684) s2Rec!453)) b!7834145))

(assert (= (and start!742282 ((_ is Cons!73684) s!14274)) b!7834148))

(assert (= (and start!742282 ((_ is ElementMatch!20971) r1!6261)) b!7834155))

(assert (= (and start!742282 ((_ is Concat!29816) r1!6261)) b!7834144))

(assert (= (and start!742282 ((_ is Star!20971) r1!6261)) b!7834156))

(assert (= (and start!742282 ((_ is Union!20971) r1!6261)) b!7834152))

(assert (= (and start!742282 ((_ is Cons!73684) s1Rec!453)) b!7834142))

(declare-fun m!8249922 () Bool)

(assert (=> b!7834157 m!8249922))

(declare-fun m!8249924 () Bool)

(assert (=> b!7834157 m!8249924))

(declare-fun m!8249926 () Bool)

(assert (=> b!7834157 m!8249926))

(declare-fun m!8249928 () Bool)

(assert (=> b!7834157 m!8249928))

(declare-fun m!8249930 () Bool)

(assert (=> b!7834161 m!8249930))

(declare-fun m!8249932 () Bool)

(assert (=> b!7834165 m!8249932))

(declare-fun m!8249934 () Bool)

(assert (=> start!742282 m!8249934))

(declare-fun m!8249936 () Bool)

(assert (=> b!7834160 m!8249936))

(declare-fun m!8249938 () Bool)

(assert (=> b!7834162 m!8249938))

(declare-fun m!8249940 () Bool)

(assert (=> b!7834158 m!8249940))

(declare-fun m!8249942 () Bool)

(assert (=> b!7834150 m!8249942))

(declare-fun m!8249944 () Bool)

(assert (=> b!7834163 m!8249944))

(declare-fun m!8249946 () Bool)

(assert (=> b!7834153 m!8249946))

(declare-fun m!8249948 () Bool)

(assert (=> b!7834149 m!8249948))

(check-sat (not b!7834163) (not b!7834149) (not b!7834146) (not b!7834157) (not b!7834156) (not b!7834159) (not start!742282) (not b!7834145) (not b!7834142) (not b!7834162) (not b!7834148) (not b!7834151) (not b!7834152) tp_is_empty!52297 (not b!7834143) (not b!7834160) (not b!7834144) (not b!7834150) (not b!7834153) (not b!7834158) (not b!7834165) (not b!7834161) (not b!7834154))
(check-sat)
