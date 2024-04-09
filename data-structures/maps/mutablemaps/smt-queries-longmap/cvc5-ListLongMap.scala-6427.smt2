; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82386 () Bool)

(assert start!82386)

(declare-fun b_free!18625 () Bool)

(declare-fun b_next!18625 () Bool)

(assert (=> start!82386 (= b_free!18625 (not b_next!18625))))

(declare-fun tp!64846 () Bool)

(declare-fun b_and!30131 () Bool)

(assert (=> start!82386 (= tp!64846 b_and!30131)))

(declare-fun b!960110 () Bool)

(declare-fun res!642795 () Bool)

(declare-fun e!541250 () Bool)

(assert (=> b!960110 (=> (not res!642795) (not e!541250))))

(declare-datatypes ((array!58777 0))(
  ( (array!58778 (arr!28258 (Array (_ BitVec 32) (_ BitVec 64))) (size!28738 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58777)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!960110 (= res!642795 (validKeyInArray!0 (select (arr!28258 _keys!1668) i!793)))))

(declare-fun b!960111 () Bool)

(declare-fun e!541253 () Bool)

(declare-fun e!541249 () Bool)

(declare-fun mapRes!33985 () Bool)

(assert (=> b!960111 (= e!541253 (and e!541249 mapRes!33985))))

(declare-fun condMapEmpty!33985 () Bool)

(declare-datatypes ((V!33433 0))(
  ( (V!33434 (val!10719 Int)) )
))
(declare-datatypes ((ValueCell!10187 0))(
  ( (ValueCellFull!10187 (v!13276 V!33433)) (EmptyCell!10187) )
))
(declare-datatypes ((array!58779 0))(
  ( (array!58780 (arr!28259 (Array (_ BitVec 32) ValueCell!10187)) (size!28739 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58779)

(declare-fun mapDefault!33985 () ValueCell!10187)

