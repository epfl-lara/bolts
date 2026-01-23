; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667824 () Bool)

(assert start!667824)

(declare-fun b!6960084 () Bool)

(declare-fun e!4184846 () Bool)

(assert (=> b!6960084 (= e!4184846 true)))

(declare-fun b!6960085 () Bool)

(declare-fun res!2839975 () Bool)

(assert (=> b!6960085 (=> res!2839975 e!4184846)))

(declare-datatypes ((C!34426 0))(
  ( (C!34427 (val!26915 Int)) )
))
(declare-datatypes ((Regex!17078 0))(
  ( (ElementMatch!17078 (c!1290594 C!34426)) (Concat!25923 (regOne!34668 Regex!17078) (regTwo!34668 Regex!17078)) (EmptyExpr!17078) (Star!17078 (reg!17407 Regex!17078)) (EmptyLang!17078) (Union!17078 (regOne!34669 Regex!17078) (regTwo!34669 Regex!17078)) )
))
(declare-datatypes ((List!66841 0))(
  ( (Nil!66717) (Cons!66717 (h!73165 Regex!17078) (t!380584 List!66841)) )
))
(declare-fun lt!2478845 () List!66841)

(declare-fun generalisedUnion!2553 (List!66841) Regex!17078)

(assert (=> b!6960085 (= res!2839975 (not (= (generalisedUnion!2553 lt!2478845) EmptyLang!17078)))))

(declare-fun b!6960086 () Bool)

(declare-fun e!4184842 () Bool)

(assert (=> b!6960086 (= e!4184842 e!4184846)))

(declare-fun res!2839973 () Bool)

(assert (=> b!6960086 (=> res!2839973 e!4184846)))

(declare-fun isEmpty!38943 (List!66841) Bool)

(assert (=> b!6960086 (= res!2839973 (not (isEmpty!38943 lt!2478845)))))

(declare-fun l!9142 () List!66841)

(declare-fun tail!13024 (List!66841) List!66841)

(assert (=> b!6960086 (= lt!2478845 (tail!13024 l!9142))))

(declare-fun b!6960087 () Bool)

(declare-fun e!4184844 () Bool)

(assert (=> b!6960087 (= e!4184844 (not e!4184842))))

(declare-fun res!2839976 () Bool)

(assert (=> b!6960087 (=> res!2839976 e!4184842)))

(declare-fun r!13765 () Regex!17078)

(assert (=> b!6960087 (= res!2839976 (not (is-Union!17078 r!13765)))))

(declare-datatypes ((List!66842 0))(
  ( (Nil!66718) (Cons!66718 (h!73166 C!34426) (t!380585 List!66842)) )
))
(declare-fun s!9351 () List!66842)

(declare-fun matchR!9184 (Regex!17078 List!66842) Bool)

(declare-fun matchRSpec!4099 (Regex!17078 List!66842) Bool)

(assert (=> b!6960087 (= (matchR!9184 r!13765 s!9351) (matchRSpec!4099 r!13765 s!9351))))

(declare-datatypes ((Unit!160816 0))(
  ( (Unit!160817) )
))
(declare-fun lt!2478844 () Unit!160816)

(declare-fun mainMatchTheorem!4093 (Regex!17078 List!66842) Unit!160816)

(assert (=> b!6960087 (= lt!2478844 (mainMatchTheorem!4093 r!13765 s!9351))))

(declare-fun b!6960088 () Bool)

(declare-fun e!4184847 () Bool)

(declare-fun tp_is_empty!43381 () Bool)

(assert (=> b!6960088 (= e!4184847 tp_is_empty!43381)))

(declare-fun b!6960089 () Bool)

(declare-fun e!4184843 () Bool)

(declare-fun tp!1918857 () Bool)

(declare-fun tp!1918860 () Bool)

(assert (=> b!6960089 (= e!4184843 (and tp!1918857 tp!1918860))))

(declare-fun b!6960090 () Bool)

(declare-fun e!4184841 () Bool)

(declare-fun tp!1918864 () Bool)

(declare-fun tp!1918863 () Bool)

(assert (=> b!6960090 (= e!4184841 (and tp!1918864 tp!1918863))))

(declare-fun b!6960091 () Bool)

(declare-fun res!2839977 () Bool)

(assert (=> b!6960091 (=> (not res!2839977) (not e!4184844))))

(assert (=> b!6960091 (= res!2839977 (= r!13765 (generalisedUnion!2553 l!9142)))))

(declare-fun b!6960092 () Bool)

(declare-fun tp!1918855 () Bool)

(declare-fun tp!1918859 () Bool)

(assert (=> b!6960092 (= e!4184841 (and tp!1918855 tp!1918859))))

(declare-fun b!6960093 () Bool)

(declare-fun tp!1918854 () Bool)

(assert (=> b!6960093 (= e!4184841 tp!1918854)))

(declare-fun b!6960094 () Bool)

(declare-fun tp!1918861 () Bool)

(declare-fun tp!1918866 () Bool)

(assert (=> b!6960094 (= e!4184847 (and tp!1918861 tp!1918866))))

(declare-fun res!2839974 () Bool)

(assert (=> start!667824 (=> (not res!2839974) (not e!4184844))))

(declare-fun lambda!397099 () Int)

(declare-fun forall!15949 (List!66841 Int) Bool)

(assert (=> start!667824 (= res!2839974 (forall!15949 l!9142 lambda!397099))))

(assert (=> start!667824 e!4184844))

(assert (=> start!667824 e!4184843))

(assert (=> start!667824 e!4184847))

(declare-fun e!4184845 () Bool)

(assert (=> start!667824 e!4184845))

(assert (=> start!667824 e!4184841))

(declare-fun b!6960095 () Bool)

(declare-fun res!2839978 () Bool)

(assert (=> b!6960095 (=> res!2839978 e!4184842)))

(assert (=> b!6960095 (= res!2839978 (isEmpty!38943 l!9142))))

(declare-fun b!6960096 () Bool)

(assert (=> b!6960096 (= e!4184841 tp_is_empty!43381)))

(declare-fun b!6960097 () Bool)

(declare-fun tp!1918865 () Bool)

(assert (=> b!6960097 (= e!4184847 tp!1918865)))

(declare-fun b!6960098 () Bool)

(declare-fun tp!1918858 () Bool)

(assert (=> b!6960098 (= e!4184845 (and tp_is_empty!43381 tp!1918858))))

(declare-fun b!6960099 () Bool)

(declare-fun tp!1918856 () Bool)

(declare-fun tp!1918862 () Bool)

(assert (=> b!6960099 (= e!4184847 (and tp!1918856 tp!1918862))))

(assert (= (and start!667824 res!2839974) b!6960091))

(assert (= (and b!6960091 res!2839977) b!6960087))

(assert (= (and b!6960087 (not res!2839976)) b!6960095))

(assert (= (and b!6960095 (not res!2839978)) b!6960086))

(assert (= (and b!6960086 (not res!2839973)) b!6960085))

(assert (= (and b!6960085 (not res!2839975)) b!6960084))

(assert (= (and start!667824 (is-Cons!66717 l!9142)) b!6960089))

(assert (= (and start!667824 (is-ElementMatch!17078 r!13765)) b!6960088))

(assert (= (and start!667824 (is-Concat!25923 r!13765)) b!6960094))

(assert (= (and start!667824 (is-Star!17078 r!13765)) b!6960097))

(assert (= (and start!667824 (is-Union!17078 r!13765)) b!6960099))

(assert (= (and start!667824 (is-Cons!66718 s!9351)) b!6960098))

(declare-fun rr!36 () Regex!17078)

(assert (= (and start!667824 (is-ElementMatch!17078 rr!36)) b!6960096))

(assert (= (and start!667824 (is-Concat!25923 rr!36)) b!6960092))

(assert (= (and start!667824 (is-Star!17078 rr!36)) b!6960093))

(assert (= (and start!667824 (is-Union!17078 rr!36)) b!6960090))

(declare-fun m!7655796 () Bool)

(assert (=> b!6960091 m!7655796))

(declare-fun m!7655798 () Bool)

(assert (=> b!6960085 m!7655798))

(declare-fun m!7655800 () Bool)

(assert (=> b!6960087 m!7655800))

(declare-fun m!7655802 () Bool)

(assert (=> b!6960087 m!7655802))

(declare-fun m!7655804 () Bool)

(assert (=> b!6960087 m!7655804))

(declare-fun m!7655806 () Bool)

(assert (=> start!667824 m!7655806))

(declare-fun m!7655808 () Bool)

(assert (=> b!6960095 m!7655808))

(declare-fun m!7655810 () Bool)

(assert (=> b!6960086 m!7655810))

(declare-fun m!7655812 () Bool)

(assert (=> b!6960086 m!7655812))

(push 1)

(assert (not b!6960089))

(assert (not b!6960097))

(assert tp_is_empty!43381)

(assert (not b!6960092))

(assert (not b!6960085))

(assert (not b!6960087))

(assert (not b!6960090))

(assert (not start!667824))

(assert (not b!6960093))

(assert (not b!6960094))

(assert (not b!6960086))

(assert (not b!6960095))

(assert (not b!6960098))

(assert (not b!6960091))

(assert (not b!6960099))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

