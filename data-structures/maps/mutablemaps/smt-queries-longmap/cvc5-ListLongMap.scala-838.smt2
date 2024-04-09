; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20136 () Bool)

(assert start!20136)

(declare-fun b_free!4783 () Bool)

(declare-fun b_next!4783 () Bool)

(assert (=> start!20136 (= b_free!4783 (not b_next!4783))))

(declare-fun tp!17381 () Bool)

(declare-fun b_and!11547 () Bool)

(assert (=> start!20136 (= tp!17381 b_and!11547)))

(declare-fun b!197250 () Bool)

(declare-fun res!93281 () Bool)

(declare-fun e!129835 () Bool)

(assert (=> b!197250 (=> (not res!93281) (not e!129835))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!5833 0))(
  ( (V!5834 (val!2364 Int)) )
))
(declare-datatypes ((ValueCell!1976 0))(
  ( (ValueCellFull!1976 (v!4330 V!5833)) (EmptyCell!1976) )
))
(declare-datatypes ((array!8530 0))(
  ( (array!8531 (arr!4015 (Array (_ BitVec 32) ValueCell!1976)) (size!4340 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8530)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((array!8532 0))(
  ( (array!8533 (arr!4016 (Array (_ BitVec 32) (_ BitVec 64))) (size!4341 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8532)

(assert (=> b!197250 (= res!93281 (and (= (size!4340 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4341 _keys!825) (size!4340 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!197251 () Bool)

(declare-fun e!129834 () Bool)

(declare-fun e!129832 () Bool)

(declare-fun mapRes!8027 () Bool)

(assert (=> b!197251 (= e!129834 (and e!129832 mapRes!8027))))

(declare-fun condMapEmpty!8027 () Bool)

(declare-fun mapDefault!8027 () ValueCell!1976)

