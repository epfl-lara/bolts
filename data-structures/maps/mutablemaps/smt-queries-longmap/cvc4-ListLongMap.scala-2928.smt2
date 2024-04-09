; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41768 () Bool)

(assert start!41768)

(declare-fun b_free!11381 () Bool)

(declare-fun b_next!11381 () Bool)

(assert (=> start!41768 (= b_free!11381 (not b_next!11381))))

(declare-fun tp!40149 () Bool)

(declare-fun b_and!19767 () Bool)

(assert (=> start!41768 (= tp!40149 b_and!19767)))

(declare-fun b!466095 () Bool)

(declare-fun e!272510 () Bool)

(declare-fun e!272509 () Bool)

(declare-fun mapRes!20899 () Bool)

(assert (=> b!466095 (= e!272510 (and e!272509 mapRes!20899))))

(declare-fun condMapEmpty!20899 () Bool)

(declare-datatypes ((V!18183 0))(
  ( (V!18184 (val!6449 Int)) )
))
(declare-datatypes ((ValueCell!6061 0))(
  ( (ValueCellFull!6061 (v!8733 V!18183)) (EmptyCell!6061) )
))
(declare-datatypes ((array!29357 0))(
  ( (array!29358 (arr!14104 (Array (_ BitVec 32) ValueCell!6061)) (size!14456 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29357)

(declare-fun mapDefault!20899 () ValueCell!6061)

