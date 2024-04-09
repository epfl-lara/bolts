; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83224 () Bool)

(assert start!83224)

(declare-fun b_free!19189 () Bool)

(declare-fun b_next!19189 () Bool)

(assert (=> start!83224 (= b_free!19189 (not b_next!19189))))

(declare-fun tp!66847 () Bool)

(declare-fun b_and!30695 () Bool)

(assert (=> start!83224 (= tp!66847 b_and!30695)))

(declare-fun b!970505 () Bool)

(declare-fun e!547165 () Bool)

(declare-fun tp_is_empty!22087 () Bool)

(assert (=> b!970505 (= e!547165 tp_is_empty!22087)))

(declare-fun mapNonEmpty!35140 () Bool)

(declare-fun mapRes!35140 () Bool)

(declare-fun tp!66846 () Bool)

(declare-fun e!547163 () Bool)

(assert (=> mapNonEmpty!35140 (= mapRes!35140 (and tp!66846 e!547163))))

(declare-datatypes ((V!34433 0))(
  ( (V!34434 (val!11094 Int)) )
))
(declare-datatypes ((ValueCell!10562 0))(
  ( (ValueCellFull!10562 (v!13653 V!34433)) (EmptyCell!10562) )
))
(declare-datatypes ((array!60213 0))(
  ( (array!60214 (arr!28966 (Array (_ BitVec 32) ValueCell!10562)) (size!29446 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60213)

(declare-fun mapKey!35140 () (_ BitVec 32))

(declare-fun mapValue!35140 () ValueCell!10562)

(declare-fun mapRest!35140 () (Array (_ BitVec 32) ValueCell!10562))

(assert (=> mapNonEmpty!35140 (= (arr!28966 _values!1425) (store mapRest!35140 mapKey!35140 mapValue!35140))))

(declare-fun b!970506 () Bool)

(declare-fun e!547166 () Bool)

(assert (=> b!970506 (= e!547166 (and e!547165 mapRes!35140))))

(declare-fun condMapEmpty!35140 () Bool)

(declare-fun mapDefault!35140 () ValueCell!10562)

