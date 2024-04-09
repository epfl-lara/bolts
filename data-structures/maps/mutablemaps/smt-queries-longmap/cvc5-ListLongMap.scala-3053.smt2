; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43130 () Bool)

(assert start!43130)

(declare-fun mapNonEmpty!22006 () Bool)

(declare-fun mapRes!22006 () Bool)

(declare-fun tp!42481 () Bool)

(declare-fun e!281068 () Bool)

(assert (=> mapNonEmpty!22006 (= mapRes!22006 (and tp!42481 e!281068))))

(declare-fun mapKey!22006 () (_ BitVec 32))

(declare-datatypes ((V!19137 0))(
  ( (V!19138 (val!6822 Int)) )
))
(declare-datatypes ((ValueCell!6413 0))(
  ( (ValueCellFull!6413 (v!9106 V!19137)) (EmptyCell!6413) )
))
(declare-fun mapRest!22006 () (Array (_ BitVec 32) ValueCell!6413))

(declare-fun mapValue!22006 () ValueCell!6413)

(declare-datatypes ((array!30739 0))(
  ( (array!30740 (arr!14778 (Array (_ BitVec 32) ValueCell!6413)) (size!15136 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30739)

(assert (=> mapNonEmpty!22006 (= (arr!14778 _values!1516) (store mapRest!22006 mapKey!22006 mapValue!22006))))

(declare-fun b!478095 () Bool)

(declare-fun e!281072 () Bool)

(declare-fun tp_is_empty!13549 () Bool)

(assert (=> b!478095 (= e!281072 tp_is_empty!13549)))

(declare-fun b!478096 () Bool)

(declare-fun e!281069 () Bool)

(assert (=> b!478096 (= e!281069 (and e!281072 mapRes!22006))))

(declare-fun condMapEmpty!22006 () Bool)

(declare-fun mapDefault!22006 () ValueCell!6413)

