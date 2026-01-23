; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!411218 () Bool)

(assert start!411218)

(declare-fun res!1757087 () Bool)

(declare-fun e!2657484 () Bool)

(assert (=> start!411218 (=> (not res!1757087) (not e!2657484))))

(declare-fun i!561 () Int)

(assert (=> start!411218 (= res!1757087 (<= 0 i!561))))

(assert (=> start!411218 e!2657484))

(assert (=> start!411218 true))

(declare-datatypes ((T!80128 0))(
  ( (T!80129 (val!15291 Int)) )
))
(declare-datatypes ((List!47500 0))(
  ( (Nil!47376) (Cons!47376 (h!52796 T!80128) (t!354087 List!47500)) )
))
(declare-datatypes ((IArray!28721 0))(
  ( (IArray!28722 (innerList!14418 List!47500)) )
))
(declare-fun arr!11 () IArray!28721)

(declare-fun e!2657486 () Bool)

(declare-fun inv!62779 (IArray!28721) Bool)

(assert (=> start!411218 (and (inv!62779 arr!11) e!2657486)))

(declare-fun e!2657485 () Bool)

(assert (=> start!411218 e!2657485))

(declare-fun b!4280678 () Bool)

(declare-fun tp_is_empty!22991 () Bool)

(declare-fun tp!1309330 () Bool)

(assert (=> b!4280678 (= e!2657485 (and tp_is_empty!22991 tp!1309330))))

(declare-fun b!4280679 () Bool)

(assert (=> b!4280679 (= e!2657484 (< i!561 0))))

(declare-fun b!4280680 () Bool)

(declare-fun res!1757088 () Bool)

(assert (=> b!4280680 (=> (not res!1757088) (not e!2657484))))

(declare-fun size!34704 (IArray!28721) Int)

(assert (=> b!4280680 (= res!1757088 (<= i!561 (size!34704 arr!11)))))

(declare-fun b!4280681 () Bool)

(declare-fun tp!1309329 () Bool)

(assert (=> b!4280681 (= e!2657486 tp!1309329)))

(declare-fun b!4280682 () Bool)

(declare-fun res!1757086 () Bool)

(assert (=> b!4280682 (=> (not res!1757086) (not e!2657484))))

(declare-fun acc!244 () List!47500)

(declare-fun drop!2158 (List!47500 Int) List!47500)

(declare-fun list!17298 (IArray!28721) List!47500)

(assert (=> b!4280682 (= res!1757086 (= acc!244 (drop!2158 (list!17298 arr!11) i!561)))))

(assert (= (and start!411218 res!1757087) b!4280680))

(assert (= (and b!4280680 res!1757088) b!4280682))

(assert (= (and b!4280682 res!1757086) b!4280679))

(assert (= start!411218 b!4280681))

(assert (= (and start!411218 (is-Cons!47376 acc!244)) b!4280678))

(declare-fun m!4878439 () Bool)

(assert (=> start!411218 m!4878439))

(declare-fun m!4878441 () Bool)

(assert (=> b!4280680 m!4878441))

(declare-fun m!4878443 () Bool)

(assert (=> b!4280682 m!4878443))

(assert (=> b!4280682 m!4878443))

(declare-fun m!4878445 () Bool)

(assert (=> b!4280682 m!4878445))

(push 1)

(assert (not b!4280678))

(assert tp_is_empty!22991)

(assert (not b!4280681))

(assert (not b!4280680))

(assert (not start!411218))

(assert (not b!4280682))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

