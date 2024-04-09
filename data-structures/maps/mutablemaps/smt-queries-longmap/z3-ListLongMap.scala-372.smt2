; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7098 () Bool)

(assert start!7098)

(declare-fun res!26701 () Bool)

(declare-fun e!28996 () Bool)

(assert (=> start!7098 (=> (not res!26701) (not e!28996))))

(declare-datatypes ((V!2365 0))(
  ( (V!2366 (val!994 Int)) )
))
(declare-datatypes ((ValueCell!708 0))(
  ( (ValueCellFull!708 (v!2095 V!2365)) (EmptyCell!708) )
))
(declare-fun c!12 () ValueCell!708)

(declare-fun isFull!2 (ValueCell!708) Bool)

(assert (=> start!7098 (= res!26701 (isFull!2 c!12))))

(assert (=> start!7098 e!28996))

(declare-fun e!28997 () Bool)

(assert (=> start!7098 e!28997))

(declare-fun b!45543 () Bool)

(get-info :version)

(assert (=> b!45543 (= e!28996 (not ((_ is ValueCellFull!708) c!12)))))

(declare-fun b!45544 () Bool)

(declare-fun tp_is_empty!1911 () Bool)

(assert (=> b!45544 (= e!28997 tp_is_empty!1911)))

(assert (= (and start!7098 res!26701) b!45543))

(assert (= (and start!7098 ((_ is ValueCellFull!708) c!12)) b!45544))

(declare-fun m!40109 () Bool)

(assert (=> start!7098 m!40109))

(check-sat (not start!7098) tp_is_empty!1911)
(check-sat)
(get-model)

(declare-fun d!8905 () Bool)

(assert (=> d!8905 (= (isFull!2 c!12) ((_ is ValueCellFull!708) c!12))))

(assert (=> start!7098 d!8905))

(check-sat tp_is_empty!1911)
