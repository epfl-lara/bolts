; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41110 () Bool)

(assert start!41110)

(declare-fun b_free!10993 () Bool)

(declare-fun b_next!10993 () Bool)

(assert (=> start!41110 (= b_free!10993 (not b_next!10993))))

(declare-fun tp!38811 () Bool)

(declare-fun b_and!19227 () Bool)

(assert (=> start!41110 (= tp!38811 b_and!19227)))

(declare-fun b!458308 () Bool)

(declare-fun e!267580 () Bool)

(declare-fun e!267581 () Bool)

(declare-fun mapRes!20143 () Bool)

(assert (=> b!458308 (= e!267580 (and e!267581 mapRes!20143))))

(declare-fun condMapEmpty!20143 () Bool)

(declare-datatypes ((V!17547 0))(
  ( (V!17548 (val!6210 Int)) )
))
(declare-datatypes ((ValueCell!5822 0))(
  ( (ValueCellFull!5822 (v!8480 V!17547)) (EmptyCell!5822) )
))
(declare-datatypes ((array!28431 0))(
  ( (array!28432 (arr!13654 (Array (_ BitVec 32) ValueCell!5822)) (size!14006 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28431)

(declare-fun mapDefault!20143 () ValueCell!5822)

