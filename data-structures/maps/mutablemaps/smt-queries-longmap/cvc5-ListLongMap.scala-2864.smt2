; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41248 () Bool)

(assert start!41248)

(declare-fun b_free!11083 () Bool)

(declare-fun b_next!11083 () Bool)

(assert (=> start!41248 (= b_free!11083 (not b_next!11083))))

(declare-fun tp!39087 () Bool)

(declare-fun b_and!19421 () Bool)

(assert (=> start!41248 (= tp!39087 b_and!19421)))

(declare-fun b!461194 () Bool)

(declare-fun res!275934 () Bool)

(declare-fun e!268984 () Bool)

(assert (=> b!461194 (=> (not res!275934) (not e!268984))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!28605 0))(
  ( (array!28606 (arr!13739 (Array (_ BitVec 32) (_ BitVec 64))) (size!14091 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28605)

(assert (=> b!461194 (= res!275934 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14091 _keys!709))))))

(declare-fun b!461195 () Bool)

(declare-fun e!268986 () Bool)

(declare-fun e!268985 () Bool)

(declare-fun mapRes!20284 () Bool)

(assert (=> b!461195 (= e!268986 (and e!268985 mapRes!20284))))

(declare-fun condMapEmpty!20284 () Bool)

(declare-datatypes ((V!17667 0))(
  ( (V!17668 (val!6255 Int)) )
))
(declare-datatypes ((ValueCell!5867 0))(
  ( (ValueCellFull!5867 (v!8533 V!17667)) (EmptyCell!5867) )
))
(declare-datatypes ((array!28607 0))(
  ( (array!28608 (arr!13740 (Array (_ BitVec 32) ValueCell!5867)) (size!14092 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28607)

(declare-fun mapDefault!20284 () ValueCell!5867)

