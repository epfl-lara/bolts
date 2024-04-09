; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39922 () Bool)

(assert start!39922)

(declare-fun b_free!10181 () Bool)

(declare-fun b_next!10181 () Bool)

(assert (=> start!39922 (= b_free!10181 (not b_next!10181))))

(declare-fun tp!36072 () Bool)

(declare-fun b_and!18039 () Bool)

(assert (=> start!39922 (= tp!36072 b_and!18039)))

(declare-fun b!432617 () Bool)

(declare-fun res!254606 () Bool)

(declare-fun e!255867 () Bool)

(assert (=> b!432617 (=> (not res!254606) (not e!255867))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!432617 (= res!254606 (validKeyInArray!0 k!794))))

(declare-fun mapIsEmpty!18621 () Bool)

(declare-fun mapRes!18621 () Bool)

(assert (=> mapIsEmpty!18621 mapRes!18621))

(declare-fun b!432618 () Bool)

(declare-fun e!255866 () Bool)

(declare-fun e!255872 () Bool)

(assert (=> b!432618 (= e!255866 (and e!255872 mapRes!18621))))

(declare-fun condMapEmpty!18621 () Bool)

(declare-datatypes ((V!16215 0))(
  ( (V!16216 (val!5711 Int)) )
))
(declare-datatypes ((ValueCell!5323 0))(
  ( (ValueCellFull!5323 (v!7954 V!16215)) (EmptyCell!5323) )
))
(declare-datatypes ((array!26477 0))(
  ( (array!26478 (arr!12685 (Array (_ BitVec 32) ValueCell!5323)) (size!13037 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26477)

(declare-fun mapDefault!18621 () ValueCell!5323)

