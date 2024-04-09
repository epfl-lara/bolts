; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108152 () Bool)

(assert start!108152)

(declare-fun b_free!27829 () Bool)

(declare-fun b_next!27829 () Bool)

(assert (=> start!108152 (= b_free!27829 (not b_next!27829))))

(declare-fun tp!98441 () Bool)

(declare-fun b_and!45895 () Bool)

(assert (=> start!108152 (= tp!98441 b_and!45895)))

(declare-fun b!1276677 () Bool)

(declare-fun e!729097 () Bool)

(declare-fun tp_is_empty!33379 () Bool)

(assert (=> b!1276677 (= e!729097 tp_is_empty!33379)))

(declare-fun b!1276678 () Bool)

(declare-fun e!729098 () Bool)

(declare-fun mapRes!51599 () Bool)

(assert (=> b!1276678 (= e!729098 (and e!729097 mapRes!51599))))

(declare-fun condMapEmpty!51599 () Bool)

(declare-datatypes ((V!49609 0))(
  ( (V!49610 (val!16764 Int)) )
))
(declare-datatypes ((ValueCell!15791 0))(
  ( (ValueCellFull!15791 (v!19359 V!49609)) (EmptyCell!15791) )
))
(declare-datatypes ((array!83803 0))(
  ( (array!83804 (arr!40408 (Array (_ BitVec 32) ValueCell!15791)) (size!40959 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83803)

(declare-fun mapDefault!51599 () ValueCell!15791)

