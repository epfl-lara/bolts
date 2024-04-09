; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73254 () Bool)

(assert start!73254)

(declare-fun b_free!14141 () Bool)

(declare-fun b_next!14141 () Bool)

(assert (=> start!73254 (= b_free!14141 (not b_next!14141))))

(declare-fun tp!49928 () Bool)

(declare-fun b_and!23459 () Bool)

(assert (=> start!73254 (= tp!49928 b_and!23459)))

(declare-fun b!853318 () Bool)

(declare-fun res!579660 () Bool)

(declare-fun e!475904 () Bool)

(assert (=> b!853318 (=> (not res!579660) (not e!475904))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48738 0))(
  ( (array!48739 (arr!23396 (Array (_ BitVec 32) (_ BitVec 64))) (size!23837 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48738)

(assert (=> b!853318 (= res!579660 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23837 _keys!868))))))

(declare-fun b!853320 () Bool)

(declare-fun e!475903 () Bool)

(declare-fun e!475906 () Bool)

(declare-fun mapRes!26015 () Bool)

(assert (=> b!853320 (= e!475903 (and e!475906 mapRes!26015))))

(declare-fun condMapEmpty!26015 () Bool)

(declare-datatypes ((V!26749 0))(
  ( (V!26750 (val!8186 Int)) )
))
(declare-datatypes ((ValueCell!7699 0))(
  ( (ValueCellFull!7699 (v!10607 V!26749)) (EmptyCell!7699) )
))
(declare-datatypes ((array!48740 0))(
  ( (array!48741 (arr!23397 (Array (_ BitVec 32) ValueCell!7699)) (size!23838 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48740)

(declare-fun mapDefault!26015 () ValueCell!7699)

