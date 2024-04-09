; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35836 () Bool)

(assert start!35836)

(declare-fun b!359782 () Bool)

(declare-fun res!200079 () Bool)

(declare-fun e!220373 () Bool)

(assert (=> b!359782 (=> (not res!200079) (not e!220373))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((array!20083 0))(
  ( (array!20084 (arr!9532 (Array (_ BitVec 32) (_ BitVec 64))) (size!9884 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20083)

(assert (=> b!359782 (= res!200079 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9884 _keys!1456))))))

(declare-fun b!359783 () Bool)

(declare-fun e!220374 () Bool)

(declare-fun tp_is_empty!8281 () Bool)

(assert (=> b!359783 (= e!220374 tp_is_empty!8281)))

(declare-fun mapNonEmpty!13929 () Bool)

(declare-fun mapRes!13929 () Bool)

(declare-fun tp!27996 () Bool)

(assert (=> mapNonEmpty!13929 (= mapRes!13929 (and tp!27996 e!220374))))

(declare-fun mapKey!13929 () (_ BitVec 32))

(declare-datatypes ((V!12019 0))(
  ( (V!12020 (val!4185 Int)) )
))
(declare-datatypes ((ValueCell!3797 0))(
  ( (ValueCellFull!3797 (v!6375 V!12019)) (EmptyCell!3797) )
))
(declare-fun mapRest!13929 () (Array (_ BitVec 32) ValueCell!3797))

(declare-datatypes ((array!20085 0))(
  ( (array!20086 (arr!9533 (Array (_ BitVec 32) ValueCell!3797)) (size!9885 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20085)

(declare-fun mapValue!13929 () ValueCell!3797)

(assert (=> mapNonEmpty!13929 (= (arr!9533 _values!1208) (store mapRest!13929 mapKey!13929 mapValue!13929))))

(declare-fun b!359784 () Bool)

(declare-fun e!220376 () Bool)

(declare-fun e!220372 () Bool)

(assert (=> b!359784 (= e!220376 (and e!220372 mapRes!13929))))

(declare-fun condMapEmpty!13929 () Bool)

(declare-fun mapDefault!13929 () ValueCell!3797)

