; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95400 () Bool)

(assert start!95400)

(declare-fun b!1077194 () Bool)

(declare-fun e!615932 () Bool)

(declare-datatypes ((List!23329 0))(
  ( (Nil!23326) (Cons!23325 (h!24534 (_ BitVec 64)) (t!32695 List!23329)) )
))
(declare-fun noDuplicate!1594 (List!23329) Bool)

(assert (=> b!1077194 (= e!615932 (not (noDuplicate!1594 Nil!23326)))))

(declare-fun mapNonEmpty!40885 () Bool)

(declare-fun mapRes!40885 () Bool)

(declare-fun tp!78348 () Bool)

(declare-fun e!615928 () Bool)

(assert (=> mapNonEmpty!40885 (= mapRes!40885 (and tp!78348 e!615928))))

(declare-datatypes ((V!39925 0))(
  ( (V!39926 (val!13106 Int)) )
))
(declare-datatypes ((ValueCell!12340 0))(
  ( (ValueCellFull!12340 (v!15726 V!39925)) (EmptyCell!12340) )
))
(declare-datatypes ((array!69110 0))(
  ( (array!69111 (arr!33231 (Array (_ BitVec 32) ValueCell!12340)) (size!33768 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69110)

(declare-fun mapRest!40885 () (Array (_ BitVec 32) ValueCell!12340))

(declare-fun mapValue!40885 () ValueCell!12340)

(declare-fun mapKey!40885 () (_ BitVec 32))

(assert (=> mapNonEmpty!40885 (= (arr!33231 _values!874) (store mapRest!40885 mapKey!40885 mapValue!40885))))

(declare-fun b!1077195 () Bool)

(declare-fun e!615929 () Bool)

(declare-fun e!615931 () Bool)

(assert (=> b!1077195 (= e!615929 (and e!615931 mapRes!40885))))

(declare-fun condMapEmpty!40885 () Bool)

(declare-fun mapDefault!40885 () ValueCell!12340)

