; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104674 () Bool)

(assert start!104674)

(declare-fun b!1247585 () Bool)

(declare-fun e!707843 () Bool)

(declare-fun tp_is_empty!31367 () Bool)

(assert (=> b!1247585 (= e!707843 tp_is_empty!31367)))

(declare-fun mapIsEmpty!48805 () Bool)

(declare-fun mapRes!48805 () Bool)

(assert (=> mapIsEmpty!48805 mapRes!48805))

(declare-fun b!1247586 () Bool)

(declare-fun e!707846 () Bool)

(declare-fun e!707845 () Bool)

(assert (=> b!1247586 (= e!707846 (and e!707845 mapRes!48805))))

(declare-fun condMapEmpty!48805 () Bool)

(declare-datatypes ((V!47187 0))(
  ( (V!47188 (val!15746 Int)) )
))
(declare-datatypes ((ValueCell!14920 0))(
  ( (ValueCellFull!14920 (v!18442 V!47187)) (EmptyCell!14920) )
))
(declare-datatypes ((array!80407 0))(
  ( (array!80408 (arr!38768 (Array (_ BitVec 32) ValueCell!14920)) (size!39305 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80407)

(declare-fun mapDefault!48805 () ValueCell!14920)

