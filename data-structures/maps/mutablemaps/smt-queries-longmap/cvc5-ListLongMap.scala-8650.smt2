; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105254 () Bool)

(assert start!105254)

(declare-fun b_free!26935 () Bool)

(declare-fun b_next!26935 () Bool)

(assert (=> start!105254 (= b_free!26935 (not b_next!26935))))

(declare-fun tp!94310 () Bool)

(declare-fun b_and!44759 () Bool)

(assert (=> start!105254 (= tp!94310 b_and!44759)))

(declare-fun mapIsEmpty!49531 () Bool)

(declare-fun mapRes!49531 () Bool)

(assert (=> mapIsEmpty!49531 mapRes!49531))

(declare-fun b!1253749 () Bool)

(declare-fun e!712357 () Bool)

(declare-fun tp_is_empty!31837 () Bool)

(assert (=> b!1253749 (= e!712357 tp_is_empty!31837)))

(declare-fun b!1253750 () Bool)

(declare-fun e!712360 () Bool)

(assert (=> b!1253750 (= e!712360 (and e!712357 mapRes!49531))))

(declare-fun condMapEmpty!49531 () Bool)

(declare-datatypes ((V!47815 0))(
  ( (V!47816 (val!15981 Int)) )
))
(declare-datatypes ((ValueCell!15155 0))(
  ( (ValueCellFull!15155 (v!18679 V!47815)) (EmptyCell!15155) )
))
(declare-datatypes ((array!81313 0))(
  ( (array!81314 (arr!39214 (Array (_ BitVec 32) ValueCell!15155)) (size!39751 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81313)

(declare-fun mapDefault!49531 () ValueCell!15155)

