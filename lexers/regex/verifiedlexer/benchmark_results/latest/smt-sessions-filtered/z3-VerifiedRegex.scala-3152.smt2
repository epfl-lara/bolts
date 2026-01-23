; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!185270 () Bool)

(assert start!185270)

(declare-fun res!831927 () Bool)

(declare-fun e!1185610 () Bool)

(assert (=> start!185270 (=> (not res!831927) (not e!1185610))))

(declare-datatypes ((C!10244 0))(
  ( (C!10245 (val!5858 Int)) )
))
(declare-datatypes ((Regex!5047 0))(
  ( (ElementMatch!5047 (c!302383 C!10244)) (Concat!8846 (regOne!10606 Regex!5047) (regTwo!10606 Regex!5047)) (EmptyExpr!5047) (Star!5047 (reg!5376 Regex!5047)) (EmptyLang!5047) (Union!5047 (regOne!10607 Regex!5047) (regTwo!10607 Regex!5047)) )
))
(declare-fun r!19073 () Regex!5047)

(declare-fun validRegex!2069 (Regex!5047) Bool)

(assert (=> start!185270 (= res!831927 (validRegex!2069 r!19073))))

(assert (=> start!185270 e!1185610))

(declare-fun e!1185611 () Bool)

(assert (=> start!185270 e!1185611))

(declare-fun e!1185609 () Bool)

(assert (=> start!185270 e!1185609))

(declare-fun e!1185612 () Bool)

(assert (=> start!185270 e!1185612))

(declare-fun b!1855856 () Bool)

(declare-fun tp_is_empty!8515 () Bool)

(assert (=> b!1855856 (= e!1185611 tp_is_empty!8515)))

(declare-fun b!1855857 () Bool)

(declare-fun tp!527819 () Bool)

(assert (=> b!1855857 (= e!1185612 (and tp_is_empty!8515 tp!527819))))

(declare-fun b!1855858 () Bool)

(declare-fun tp!527815 () Bool)

(declare-fun tp!527814 () Bool)

(assert (=> b!1855858 (= e!1185611 (and tp!527815 tp!527814))))

(declare-fun b!1855859 () Bool)

(declare-fun tp!527817 () Bool)

(declare-fun tp!527818 () Bool)

(assert (=> b!1855859 (= e!1185611 (and tp!527817 tp!527818))))

(declare-fun b!1855860 () Bool)

(declare-fun tp!527816 () Bool)

(assert (=> b!1855860 (= e!1185611 tp!527816)))

(declare-fun b!1855861 () Bool)

(declare-fun tp!527820 () Bool)

(assert (=> b!1855861 (= e!1185609 (and tp_is_empty!8515 tp!527820))))

(declare-fun b!1855862 () Bool)

(assert (=> b!1855862 (= e!1185610 false)))

(declare-fun lt!716894 () Bool)

(declare-datatypes ((List!20661 0))(
  ( (Nil!20583) (Cons!20583 (h!25984 C!10244) (t!172528 List!20661)) )
))
(declare-fun prefix!1439 () List!20661)

(declare-fun s!13412 () List!20661)

(declare-fun isPrefix!1897 (List!20661 List!20661) Bool)

(assert (=> b!1855862 (= lt!716894 (isPrefix!1897 prefix!1439 s!13412))))

(assert (= (and start!185270 res!831927) b!1855862))

(get-info :version)

(assert (= (and start!185270 ((_ is ElementMatch!5047) r!19073)) b!1855856))

(assert (= (and start!185270 ((_ is Concat!8846) r!19073)) b!1855859))

(assert (= (and start!185270 ((_ is Star!5047) r!19073)) b!1855860))

(assert (= (and start!185270 ((_ is Union!5047) r!19073)) b!1855858))

(assert (= (and start!185270 ((_ is Cons!20583) prefix!1439)) b!1855861))

(assert (= (and start!185270 ((_ is Cons!20583) s!13412)) b!1855857))

(declare-fun m!2281267 () Bool)

(assert (=> start!185270 m!2281267))

(declare-fun m!2281269 () Bool)

(assert (=> b!1855862 m!2281269))

(check-sat (not start!185270) (not b!1855861) (not b!1855862) (not b!1855859) (not b!1855857) tp_is_empty!8515 (not b!1855860) (not b!1855858))
(check-sat)
