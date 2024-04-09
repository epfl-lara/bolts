; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104792 () Bool)

(assert start!104792)

(declare-fun b_free!26561 () Bool)

(declare-fun b_next!26561 () Bool)

(assert (=> start!104792 (= b_free!26561 (not b_next!26561))))

(declare-fun tp!93174 () Bool)

(declare-fun b_and!44339 () Bool)

(assert (=> start!104792 (= tp!93174 b_and!44339)))

(declare-fun mapNonEmpty!48955 () Bool)

(declare-fun mapRes!48955 () Bool)

(declare-fun tp!93173 () Bool)

(declare-fun e!708639 () Bool)

(assert (=> mapNonEmpty!48955 (= mapRes!48955 (and tp!93173 e!708639))))

(declare-datatypes ((V!47315 0))(
  ( (V!47316 (val!15794 Int)) )
))
(declare-datatypes ((ValueCell!14968 0))(
  ( (ValueCellFull!14968 (v!18490 V!47315)) (EmptyCell!14968) )
))
(declare-fun mapValue!48955 () ValueCell!14968)

(declare-fun mapKey!48955 () (_ BitVec 32))

(declare-datatypes ((array!80595 0))(
  ( (array!80596 (arr!38860 (Array (_ BitVec 32) ValueCell!14968)) (size!39397 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80595)

(declare-fun mapRest!48955 () (Array (_ BitVec 32) ValueCell!14968))

(assert (=> mapNonEmpty!48955 (= (arr!38860 _values!914) (store mapRest!48955 mapKey!48955 mapValue!48955))))

(declare-fun b!1248682 () Bool)

(declare-fun tp_is_empty!31463 () Bool)

(assert (=> b!1248682 (= e!708639 tp_is_empty!31463)))

(declare-fun mapIsEmpty!48955 () Bool)

(assert (=> mapIsEmpty!48955 mapRes!48955))

(declare-fun b!1248683 () Bool)

(declare-fun e!708642 () Bool)

(assert (=> b!1248683 (= e!708642 tp_is_empty!31463)))

(declare-fun b!1248684 () Bool)

(declare-fun e!708641 () Bool)

(assert (=> b!1248684 (= e!708641 (and e!708642 mapRes!48955))))

(declare-fun condMapEmpty!48955 () Bool)

(declare-fun mapDefault!48955 () ValueCell!14968)

