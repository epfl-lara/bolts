; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83922 () Bool)

(assert start!83922)

(declare-fun b_free!19703 () Bool)

(declare-fun b_next!19703 () Bool)

(assert (=> start!83922 (= b_free!19703 (not b_next!19703))))

(declare-fun tp!68552 () Bool)

(declare-fun b_and!31513 () Bool)

(assert (=> start!83922 (= tp!68552 b_and!31513)))

(declare-fun b!980196 () Bool)

(declare-fun e!552529 () Bool)

(declare-fun e!552526 () Bool)

(declare-fun mapRes!36074 () Bool)

(assert (=> b!980196 (= e!552529 (and e!552526 mapRes!36074))))

(declare-fun condMapEmpty!36074 () Bool)

(declare-datatypes ((V!35245 0))(
  ( (V!35246 (val!11399 Int)) )
))
(declare-datatypes ((ValueCell!10867 0))(
  ( (ValueCellFull!10867 (v!13961 V!35245)) (EmptyCell!10867) )
))
(declare-datatypes ((array!61403 0))(
  ( (array!61404 (arr!29555 (Array (_ BitVec 32) ValueCell!10867)) (size!30035 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61403)

(declare-fun mapDefault!36074 () ValueCell!10867)

