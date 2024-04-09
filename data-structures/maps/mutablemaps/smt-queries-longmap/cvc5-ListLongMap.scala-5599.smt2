; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73406 () Bool)

(assert start!73406)

(declare-fun b_free!14293 () Bool)

(declare-fun b_next!14293 () Bool)

(assert (=> start!73406 (= b_free!14293 (not b_next!14293))))

(declare-fun tp!50384 () Bool)

(declare-fun b_and!23667 () Bool)

(assert (=> start!73406 (= tp!50384 b_and!23667)))

(declare-fun b!856248 () Bool)

(declare-fun e!477328 () Bool)

(declare-fun e!477326 () Bool)

(declare-fun mapRes!26243 () Bool)

(assert (=> b!856248 (= e!477328 (and e!477326 mapRes!26243))))

(declare-fun condMapEmpty!26243 () Bool)

(declare-datatypes ((V!26953 0))(
  ( (V!26954 (val!8262 Int)) )
))
(declare-datatypes ((ValueCell!7775 0))(
  ( (ValueCellFull!7775 (v!10683 V!26953)) (EmptyCell!7775) )
))
(declare-datatypes ((array!49028 0))(
  ( (array!49029 (arr!23541 (Array (_ BitVec 32) ValueCell!7775)) (size!23982 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49028)

(declare-fun mapDefault!26243 () ValueCell!7775)

