; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98682 () Bool)

(assert start!98682)

(declare-fun b_free!24251 () Bool)

(declare-fun b_next!24251 () Bool)

(assert (=> start!98682 (= b_free!24251 (not b_next!24251))))

(declare-fun tp!85465 () Bool)

(declare-fun b_and!39365 () Bool)

(assert (=> start!98682 (= tp!85465 b_and!39365)))

(declare-fun b!1146494 () Bool)

(declare-fun e!652200 () Bool)

(declare-fun e!652198 () Bool)

(declare-fun mapRes!44996 () Bool)

(assert (=> b!1146494 (= e!652200 (and e!652198 mapRes!44996))))

(declare-fun condMapEmpty!44996 () Bool)

(declare-datatypes ((V!43501 0))(
  ( (V!43502 (val!14447 Int)) )
))
(declare-datatypes ((ValueCell!13681 0))(
  ( (ValueCellFull!13681 (v!17085 V!43501)) (EmptyCell!13681) )
))
(declare-datatypes ((array!74368 0))(
  ( (array!74369 (arr!35831 (Array (_ BitVec 32) ValueCell!13681)) (size!36368 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74368)

(declare-fun mapDefault!44996 () ValueCell!13681)

