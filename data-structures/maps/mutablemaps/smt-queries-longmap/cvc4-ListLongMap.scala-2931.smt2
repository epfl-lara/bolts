; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41786 () Bool)

(assert start!41786)

(declare-fun b_free!11399 () Bool)

(declare-fun b_next!11399 () Bool)

(assert (=> start!41786 (= b_free!11399 (not b_next!11399))))

(declare-fun tp!40203 () Bool)

(declare-fun b_and!19785 () Bool)

(assert (=> start!41786 (= tp!40203 b_and!19785)))

(declare-fun mapNonEmpty!20926 () Bool)

(declare-fun mapRes!20926 () Bool)

(declare-fun tp!40204 () Bool)

(declare-fun e!272671 () Bool)

(assert (=> mapNonEmpty!20926 (= mapRes!20926 (and tp!40204 e!272671))))

(declare-datatypes ((V!18207 0))(
  ( (V!18208 (val!6458 Int)) )
))
(declare-datatypes ((ValueCell!6070 0))(
  ( (ValueCellFull!6070 (v!8742 V!18207)) (EmptyCell!6070) )
))
(declare-datatypes ((array!29391 0))(
  ( (array!29392 (arr!14121 (Array (_ BitVec 32) ValueCell!6070)) (size!14473 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29391)

(declare-fun mapRest!20926 () (Array (_ BitVec 32) ValueCell!6070))

(declare-fun mapValue!20926 () ValueCell!6070)

(declare-fun mapKey!20926 () (_ BitVec 32))

(assert (=> mapNonEmpty!20926 (= (arr!14121 _values!833) (store mapRest!20926 mapKey!20926 mapValue!20926))))

(declare-fun b!466311 () Bool)

(declare-fun e!272667 () Bool)

(declare-fun e!272672 () Bool)

(assert (=> b!466311 (= e!272667 (and e!272672 mapRes!20926))))

(declare-fun condMapEmpty!20926 () Bool)

(declare-fun mapDefault!20926 () ValueCell!6070)

