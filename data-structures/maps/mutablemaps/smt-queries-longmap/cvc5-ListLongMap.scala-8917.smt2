; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108206 () Bool)

(assert start!108206)

(declare-fun b_free!27865 () Bool)

(declare-fun b_next!27865 () Bool)

(assert (=> start!108206 (= b_free!27865 (not b_next!27865))))

(declare-fun tp!98553 () Bool)

(declare-fun b_and!45933 () Bool)

(assert (=> start!108206 (= tp!98553 b_and!45933)))

(declare-fun b!1277284 () Bool)

(declare-fun e!729477 () Bool)

(declare-fun tp_is_empty!33415 () Bool)

(assert (=> b!1277284 (= e!729477 tp_is_empty!33415)))

(declare-fun b!1277285 () Bool)

(declare-fun e!729478 () Bool)

(declare-fun e!729476 () Bool)

(declare-fun mapRes!51656 () Bool)

(assert (=> b!1277285 (= e!729478 (and e!729476 mapRes!51656))))

(declare-fun condMapEmpty!51656 () Bool)

(declare-datatypes ((V!49657 0))(
  ( (V!49658 (val!16782 Int)) )
))
(declare-datatypes ((ValueCell!15809 0))(
  ( (ValueCellFull!15809 (v!19378 V!49657)) (EmptyCell!15809) )
))
(declare-datatypes ((array!83871 0))(
  ( (array!83872 (arr!40441 (Array (_ BitVec 32) ValueCell!15809)) (size!40992 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83871)

(declare-fun mapDefault!51656 () ValueCell!15809)

