; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74982 () Bool)

(assert start!74982)

(declare-fun b_free!15473 () Bool)

(declare-fun b_next!15473 () Bool)

(assert (=> start!74982 (= b_free!15473 (not b_next!15473))))

(declare-fun tp!54123 () Bool)

(declare-fun b_and!25663 () Bool)

(assert (=> start!74982 (= tp!54123 b_and!25663)))

(declare-fun b!884183 () Bool)

(declare-fun res!600790 () Bool)

(declare-fun e!492082 () Bool)

(assert (=> b!884183 (=> (not res!600790) (not e!492082))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!884183 (= res!600790 (validKeyInArray!0 k!854))))

(declare-fun b!884184 () Bool)

(declare-fun e!492086 () Bool)

(declare-fun e!492084 () Bool)

(declare-fun mapRes!28212 () Bool)

(assert (=> b!884184 (= e!492086 (and e!492084 mapRes!28212))))

(declare-fun condMapEmpty!28212 () Bool)

(declare-datatypes ((V!28669 0))(
  ( (V!28670 (val!8906 Int)) )
))
(declare-datatypes ((ValueCell!8419 0))(
  ( (ValueCellFull!8419 (v!11371 V!28669)) (EmptyCell!8419) )
))
(declare-datatypes ((array!51544 0))(
  ( (array!51545 (arr!24787 (Array (_ BitVec 32) ValueCell!8419)) (size!25228 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51544)

(declare-fun mapDefault!28212 () ValueCell!8419)

