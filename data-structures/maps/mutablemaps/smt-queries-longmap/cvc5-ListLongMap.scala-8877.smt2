; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107822 () Bool)

(assert start!107822)

(declare-fun res!847335 () Bool)

(declare-fun e!727392 () Bool)

(assert (=> start!107822 (=> (not res!847335) (not e!727392))))

(declare-datatypes ((B!2132 0))(
  ( (B!2133 (val!16662 Int)) )
))
(declare-datatypes ((tuple2!21552 0))(
  ( (tuple2!21553 (_1!10786 (_ BitVec 64)) (_2!10786 B!2132)) )
))
(declare-datatypes ((List!28746 0))(
  ( (Nil!28743) (Cons!28742 (h!29951 tuple2!21552) (t!42286 List!28746)) )
))
(declare-fun l!595 () List!28746)

(declare-fun isStrictlySorted!843 (List!28746) Bool)

(assert (=> start!107822 (= res!847335 (isStrictlySorted!843 l!595))))

(assert (=> start!107822 e!727392))

(declare-fun e!727391 () Bool)

(assert (=> start!107822 e!727391))

(assert (=> start!107822 true))

(declare-fun b!1274513 () Bool)

(declare-fun res!847336 () Bool)

(assert (=> b!1274513 (=> (not res!847336) (not e!727392))))

(declare-fun key!173 () (_ BitVec 64))

(assert (=> b!1274513 (= res!847336 (and (not (= (_1!10786 (h!29951 l!595)) key!173)) (is-Cons!28742 l!595)))))

(declare-fun b!1274514 () Bool)

(assert (=> b!1274514 (= e!727392 false)))

(declare-fun lt!575210 () Bool)

(declare-fun $colon$colon!663 (List!28746 tuple2!21552) List!28746)

(declare-fun removeStrictlySorted!180 (List!28746 (_ BitVec 64)) List!28746)

(assert (=> b!1274514 (= lt!575210 (isStrictlySorted!843 ($colon$colon!663 (removeStrictlySorted!180 (t!42286 l!595) key!173) (h!29951 l!595))))))

(declare-fun b!1274515 () Bool)

(declare-fun tp_is_empty!33175 () Bool)

(declare-fun tp!97977 () Bool)

(assert (=> b!1274515 (= e!727391 (and tp_is_empty!33175 tp!97977))))

(assert (= (and start!107822 res!847335) b!1274513))

(assert (= (and b!1274513 res!847336) b!1274514))

(assert (= (and start!107822 (is-Cons!28742 l!595)) b!1274515))

(declare-fun m!1171231 () Bool)

(assert (=> start!107822 m!1171231))

(declare-fun m!1171233 () Bool)

(assert (=> b!1274514 m!1171233))

(assert (=> b!1274514 m!1171233))

(declare-fun m!1171235 () Bool)

(assert (=> b!1274514 m!1171235))

(assert (=> b!1274514 m!1171235))

(declare-fun m!1171237 () Bool)

(assert (=> b!1274514 m!1171237))

(push 1)

(assert (not b!1274514))

(assert (not start!107822))

(assert (not b!1274515))

(assert tp_is_empty!33175)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

