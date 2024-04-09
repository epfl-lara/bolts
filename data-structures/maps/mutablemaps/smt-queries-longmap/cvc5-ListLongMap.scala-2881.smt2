; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41424 () Bool)

(assert start!41424)

(declare-fun b_free!11095 () Bool)

(declare-fun b_next!11095 () Bool)

(assert (=> start!41424 (= b_free!11095 (not b_next!11095))))

(declare-fun tp!39279 () Bool)

(declare-fun b_and!19449 () Bool)

(assert (=> start!41424 (= tp!39279 b_and!19449)))

(declare-fun b!462576 () Bool)

(declare-fun e!270005 () Bool)

(declare-fun e!270007 () Bool)

(declare-fun mapRes!20458 () Bool)

(assert (=> b!462576 (= e!270005 (and e!270007 mapRes!20458))))

(declare-fun condMapEmpty!20458 () Bool)

(declare-datatypes ((V!17803 0))(
  ( (V!17804 (val!6306 Int)) )
))
(declare-datatypes ((ValueCell!5918 0))(
  ( (ValueCellFull!5918 (v!8589 V!17803)) (EmptyCell!5918) )
))
(declare-datatypes ((array!28813 0))(
  ( (array!28814 (arr!13836 (Array (_ BitVec 32) ValueCell!5918)) (size!14188 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28813)

(declare-fun mapDefault!20458 () ValueCell!5918)

