; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83096 () Bool)

(assert start!83096)

(declare-fun mapNonEmpty!34948 () Bool)

(declare-fun mapRes!34948 () Bool)

(declare-fun tp!66517 () Bool)

(declare-fun e!546203 () Bool)

(assert (=> mapNonEmpty!34948 (= mapRes!34948 (and tp!66517 e!546203))))

(declare-datatypes ((V!34261 0))(
  ( (V!34262 (val!11030 Int)) )
))
(declare-datatypes ((ValueCell!10498 0))(
  ( (ValueCellFull!10498 (v!13589 V!34261)) (EmptyCell!10498) )
))
(declare-fun mapRest!34948 () (Array (_ BitVec 32) ValueCell!10498))

(declare-fun mapKey!34948 () (_ BitVec 32))

(declare-datatypes ((array!59969 0))(
  ( (array!59970 (arr!28844 (Array (_ BitVec 32) ValueCell!10498)) (size!29324 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59969)

(declare-fun mapValue!34948 () ValueCell!10498)

(assert (=> mapNonEmpty!34948 (= (arr!28844 _values!1425) (store mapRest!34948 mapKey!34948 mapValue!34948))))

(declare-fun b!968906 () Bool)

(declare-fun tp_is_empty!21959 () Bool)

(assert (=> b!968906 (= e!546203 tp_is_empty!21959)))

(declare-fun b!968907 () Bool)

(declare-fun e!546204 () Bool)

(declare-fun e!546207 () Bool)

(assert (=> b!968907 (= e!546204 (and e!546207 mapRes!34948))))

(declare-fun condMapEmpty!34948 () Bool)

(declare-fun mapDefault!34948 () ValueCell!10498)

