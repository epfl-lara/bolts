; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42632 () Bool)

(assert start!42632)

(declare-fun b_free!12047 () Bool)

(declare-fun b_next!12047 () Bool)

(assert (=> start!42632 (= b_free!12047 (not b_next!12047))))

(declare-fun tp!42183 () Bool)

(declare-fun b_and!20553 () Bool)

(assert (=> start!42632 (= tp!42183 b_and!20553)))

(declare-fun b!475280 () Bool)

(declare-fun res!283893 () Bool)

(declare-fun e!279093 () Bool)

(assert (=> b!475280 (=> (not res!283893) (not e!279093))))

(declare-datatypes ((array!30661 0))(
  ( (array!30662 (arr!14744 (Array (_ BitVec 32) (_ BitVec 64))) (size!15096 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30661)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30661 (_ BitVec 32)) Bool)

(assert (=> b!475280 (= res!283893 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!21934 () Bool)

(declare-fun mapRes!21934 () Bool)

(declare-fun tp!42184 () Bool)

(declare-fun e!279095 () Bool)

(assert (=> mapNonEmpty!21934 (= mapRes!21934 (and tp!42184 e!279095))))

(declare-datatypes ((V!19071 0))(
  ( (V!19072 (val!6782 Int)) )
))
(declare-datatypes ((ValueCell!6394 0))(
  ( (ValueCellFull!6394 (v!9071 V!19071)) (EmptyCell!6394) )
))
(declare-fun mapRest!21934 () (Array (_ BitVec 32) ValueCell!6394))

(declare-datatypes ((array!30663 0))(
  ( (array!30664 (arr!14745 (Array (_ BitVec 32) ValueCell!6394)) (size!15097 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30663)

(declare-fun mapValue!21934 () ValueCell!6394)

(declare-fun mapKey!21934 () (_ BitVec 32))

(assert (=> mapNonEmpty!21934 (= (arr!14745 _values!833) (store mapRest!21934 mapKey!21934 mapValue!21934))))

(declare-fun b!475281 () Bool)

(declare-fun e!279094 () Bool)

(declare-fun e!279091 () Bool)

(assert (=> b!475281 (= e!279094 (and e!279091 mapRes!21934))))

(declare-fun condMapEmpty!21934 () Bool)

(declare-fun mapDefault!21934 () ValueCell!6394)

