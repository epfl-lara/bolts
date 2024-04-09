; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40886 () Bool)

(assert start!40886)

(declare-fun b_free!10813 () Bool)

(declare-fun b_next!10813 () Bool)

(assert (=> start!40886 (= b_free!10813 (not b_next!10813))))

(declare-fun tp!38265 () Bool)

(declare-fun b_and!18973 () Bool)

(assert (=> start!40886 (= tp!38265 b_and!18973)))

(declare-fun b!453722 () Bool)

(declare-fun res!270314 () Bool)

(declare-fun e!265567 () Bool)

(assert (=> b!453722 (=> (not res!270314) (not e!265567))))

(declare-datatypes ((array!28071 0))(
  ( (array!28072 (arr!13476 (Array (_ BitVec 32) (_ BitVec 64))) (size!13828 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28071)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17307 0))(
  ( (V!17308 (val!6120 Int)) )
))
(declare-datatypes ((ValueCell!5732 0))(
  ( (ValueCellFull!5732 (v!8382 V!17307)) (EmptyCell!5732) )
))
(declare-datatypes ((array!28073 0))(
  ( (array!28074 (arr!13477 (Array (_ BitVec 32) ValueCell!5732)) (size!13829 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28073)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!453722 (= res!270314 (and (= (size!13829 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13828 _keys!709) (size!13829 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!453723 () Bool)

(declare-fun e!265566 () Bool)

(declare-fun tp_is_empty!12151 () Bool)

(assert (=> b!453723 (= e!265566 tp_is_empty!12151)))

(declare-fun b!453724 () Bool)

(declare-fun res!270308 () Bool)

(assert (=> b!453724 (=> (not res!270308) (not e!265567))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28071 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!453724 (= res!270308 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!453725 () Bool)

(declare-fun e!265565 () Bool)

(declare-fun mapRes!19867 () Bool)

(assert (=> b!453725 (= e!265565 (and e!265566 mapRes!19867))))

(declare-fun condMapEmpty!19867 () Bool)

(declare-fun mapDefault!19867 () ValueCell!5732)

