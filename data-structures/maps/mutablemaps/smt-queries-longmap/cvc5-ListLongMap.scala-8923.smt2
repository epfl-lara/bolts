; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108242 () Bool)

(assert start!108242)

(declare-fun b_free!27901 () Bool)

(declare-fun b_next!27901 () Bool)

(assert (=> start!108242 (= b_free!27901 (not b_next!27901))))

(declare-fun tp!98661 () Bool)

(declare-fun b_and!45969 () Bool)

(assert (=> start!108242 (= tp!98661 b_and!45969)))

(declare-fun b!1277664 () Bool)

(declare-fun e!729749 () Bool)

(declare-fun e!729747 () Bool)

(declare-fun mapRes!51710 () Bool)

(assert (=> b!1277664 (= e!729749 (and e!729747 mapRes!51710))))

(declare-fun condMapEmpty!51710 () Bool)

(declare-datatypes ((V!49705 0))(
  ( (V!49706 (val!16800 Int)) )
))
(declare-datatypes ((ValueCell!15827 0))(
  ( (ValueCellFull!15827 (v!19396 V!49705)) (EmptyCell!15827) )
))
(declare-datatypes ((array!83939 0))(
  ( (array!83940 (arr!40475 (Array (_ BitVec 32) ValueCell!15827)) (size!41026 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83939)

(declare-fun mapDefault!51710 () ValueCell!15827)

