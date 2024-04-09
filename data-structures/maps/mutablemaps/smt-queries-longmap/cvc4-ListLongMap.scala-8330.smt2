; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101420 () Bool)

(assert start!101420)

(declare-fun b_free!26255 () Bool)

(declare-fun b_next!26255 () Bool)

(assert (=> start!101420 (= b_free!26255 (not b_next!26255))))

(declare-fun tp!91794 () Bool)

(declare-fun b_and!43673 () Bool)

(assert (=> start!101420 (= tp!91794 b_and!43673)))

(declare-fun b!1218371 () Bool)

(declare-fun e!691779 () Bool)

(declare-fun e!691776 () Bool)

(declare-fun mapRes!48319 () Bool)

(assert (=> b!1218371 (= e!691779 (and e!691776 mapRes!48319))))

(declare-fun condMapEmpty!48319 () Bool)

(declare-datatypes ((V!46405 0))(
  ( (V!46406 (val!15536 Int)) )
))
(declare-datatypes ((ValueCell!14770 0))(
  ( (ValueCellFull!14770 (v!18192 V!46405)) (EmptyCell!14770) )
))
(declare-datatypes ((array!78668 0))(
  ( (array!78669 (arr!37963 (Array (_ BitVec 32) ValueCell!14770)) (size!38500 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78668)

(declare-fun mapDefault!48319 () ValueCell!14770)

