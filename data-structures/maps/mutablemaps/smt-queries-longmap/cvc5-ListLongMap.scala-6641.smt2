; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83846 () Bool)

(assert start!83846)

(declare-fun b_free!19627 () Bool)

(declare-fun b_next!19627 () Bool)

(assert (=> start!83846 (= b_free!19627 (not b_next!19627))))

(declare-fun tp!68324 () Bool)

(declare-fun b_and!31361 () Bool)

(assert (=> start!83846 (= tp!68324 b_and!31361)))

(declare-fun mapNonEmpty!35960 () Bool)

(declare-fun mapRes!35960 () Bool)

(declare-fun tp!68323 () Bool)

(declare-fun e!551843 () Bool)

(assert (=> mapNonEmpty!35960 (= mapRes!35960 (and tp!68323 e!551843))))

(declare-fun mapKey!35960 () (_ BitVec 32))

(declare-datatypes ((V!35145 0))(
  ( (V!35146 (val!11361 Int)) )
))
(declare-datatypes ((ValueCell!10829 0))(
  ( (ValueCellFull!10829 (v!13923 V!35145)) (EmptyCell!10829) )
))
(declare-fun mapRest!35960 () (Array (_ BitVec 32) ValueCell!10829))

(declare-datatypes ((array!61257 0))(
  ( (array!61258 (arr!29482 (Array (_ BitVec 32) ValueCell!10829)) (size!29962 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61257)

(declare-fun mapValue!35960 () ValueCell!10829)

(assert (=> mapNonEmpty!35960 (= (arr!29482 _values!1278) (store mapRest!35960 mapKey!35960 mapValue!35960))))

(declare-fun b!978866 () Bool)

(declare-fun e!551844 () Bool)

(declare-fun tp_is_empty!22621 () Bool)

(assert (=> b!978866 (= e!551844 tp_is_empty!22621)))

(declare-fun b!978867 () Bool)

(declare-fun e!551846 () Bool)

(assert (=> b!978867 (= e!551846 (and e!551844 mapRes!35960))))

(declare-fun condMapEmpty!35960 () Bool)

(declare-fun mapDefault!35960 () ValueCell!10829)

