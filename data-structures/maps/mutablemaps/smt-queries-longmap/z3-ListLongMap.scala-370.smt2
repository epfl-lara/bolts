; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7074 () Bool)

(assert start!7074)

(declare-fun res!26656 () Bool)

(declare-fun e!28942 () Bool)

(assert (=> start!7074 (=> (not res!26656) (not e!28942))))

(declare-datatypes ((array!3045 0))(
  ( (array!3046 (arr!1463 (Array (_ BitVec 32) (_ BitVec 64))) (size!1685 (_ BitVec 32))) )
))
(declare-fun a!4401 () array!3045)

(declare-fun i!1488 () (_ BitVec 32))

(declare-fun k0!2989 () (_ BitVec 64))

(assert (=> start!7074 (= res!26656 (and (bvslt (size!1685 a!4401) #b01111111111111111111111111111111) (bvsge i!1488 #b00000000000000000000000000000000) (bvslt i!1488 (size!1685 a!4401)) (= (select (arr!1463 a!4401) i!1488) k0!2989)))))

(assert (=> start!7074 e!28942))

(declare-fun array_inv!827 (array!3045) Bool)

(assert (=> start!7074 (array_inv!827 a!4401)))

(assert (=> start!7074 true))

(declare-fun b!45493 () Bool)

(declare-fun arrayContainsKey!0 (array!3045 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!45493 (= e!28942 (not (arrayContainsKey!0 a!4401 k0!2989 i!1488)))))

(assert (= (and start!7074 res!26656) b!45493))

(declare-fun m!40061 () Bool)

(assert (=> start!7074 m!40061))

(declare-fun m!40063 () Bool)

(assert (=> start!7074 m!40063))

(declare-fun m!40065 () Bool)

(assert (=> b!45493 m!40065))

(check-sat (not start!7074) (not b!45493))
(check-sat)
(get-model)

(declare-fun d!8887 () Bool)

(assert (=> d!8887 (= (array_inv!827 a!4401) (bvsge (size!1685 a!4401) #b00000000000000000000000000000000))))

(assert (=> start!7074 d!8887))

(declare-fun d!8889 () Bool)

(declare-fun res!26664 () Bool)

(declare-fun e!28954 () Bool)

(assert (=> d!8889 (=> res!26664 e!28954)))

(assert (=> d!8889 (= res!26664 (= (select (arr!1463 a!4401) i!1488) k0!2989))))

(assert (=> d!8889 (= (arrayContainsKey!0 a!4401 k0!2989 i!1488) e!28954)))

(declare-fun b!45501 () Bool)

(declare-fun e!28955 () Bool)

(assert (=> b!45501 (= e!28954 e!28955)))

(declare-fun res!26665 () Bool)

(assert (=> b!45501 (=> (not res!26665) (not e!28955))))

(assert (=> b!45501 (= res!26665 (bvslt (bvadd i!1488 #b00000000000000000000000000000001) (size!1685 a!4401)))))

(declare-fun b!45502 () Bool)

(assert (=> b!45502 (= e!28955 (arrayContainsKey!0 a!4401 k0!2989 (bvadd i!1488 #b00000000000000000000000000000001)))))

(assert (= (and d!8889 (not res!26664)) b!45501))

(assert (= (and b!45501 res!26665) b!45502))

(assert (=> d!8889 m!40061))

(declare-fun m!40073 () Bool)

(assert (=> b!45502 m!40073))

(assert (=> b!45493 d!8889))

(check-sat (not b!45502))
(check-sat)
