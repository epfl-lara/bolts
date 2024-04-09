; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83428 () Bool)

(assert start!83428)

(declare-fun b_free!19393 () Bool)

(declare-fun b_next!19393 () Bool)

(assert (=> start!83428 (= b_free!19393 (not b_next!19393))))

(declare-fun tp!67459 () Bool)

(declare-fun b_and!31013 () Bool)

(assert (=> start!83428 (= tp!67459 b_and!31013)))

(declare-fun b!973834 () Bool)

(declare-fun e!548947 () Bool)

(declare-fun tp_is_empty!22291 () Bool)

(assert (=> b!973834 (= e!548947 tp_is_empty!22291)))

(declare-fun b!973835 () Bool)

(declare-fun e!548945 () Bool)

(declare-fun mapRes!35446 () Bool)

(assert (=> b!973835 (= e!548945 (and e!548947 mapRes!35446))))

(declare-fun condMapEmpty!35446 () Bool)

(declare-datatypes ((V!34705 0))(
  ( (V!34706 (val!11196 Int)) )
))
(declare-datatypes ((ValueCell!10664 0))(
  ( (ValueCellFull!10664 (v!13755 V!34705)) (EmptyCell!10664) )
))
(declare-datatypes ((array!60605 0))(
  ( (array!60606 (arr!29162 (Array (_ BitVec 32) ValueCell!10664)) (size!29642 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60605)

(declare-fun mapDefault!35446 () ValueCell!10664)

