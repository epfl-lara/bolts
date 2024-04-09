; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40054 () Bool)

(assert start!40054)

(declare-fun b_free!10313 () Bool)

(declare-fun b_next!10313 () Bool)

(assert (=> start!40054 (= b_free!10313 (not b_next!10313))))

(declare-fun tp!36467 () Bool)

(declare-fun b_and!18299 () Bool)

(assert (=> start!40054 (= tp!36467 b_and!18299)))

(declare-fun res!257557 () Bool)

(declare-fun e!257825 () Bool)

(assert (=> start!40054 (=> (not res!257557) (not e!257825))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!26731 0))(
  ( (array!26732 (arr!12812 (Array (_ BitVec 32) (_ BitVec 64))) (size!13164 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26731)

(assert (=> start!40054 (= res!257557 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13164 _keys!709))))))

(assert (=> start!40054 e!257825))

(declare-fun tp_is_empty!11465 () Bool)

(assert (=> start!40054 tp_is_empty!11465))

(assert (=> start!40054 tp!36467))

(assert (=> start!40054 true))

(declare-datatypes ((V!16391 0))(
  ( (V!16392 (val!5777 Int)) )
))
(declare-datatypes ((ValueCell!5389 0))(
  ( (ValueCellFull!5389 (v!8020 V!16391)) (EmptyCell!5389) )
))
(declare-datatypes ((array!26733 0))(
  ( (array!26734 (arr!12813 (Array (_ BitVec 32) ValueCell!5389)) (size!13165 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26733)

(declare-fun e!257824 () Bool)

(declare-fun array_inv!9306 (array!26733) Bool)

(assert (=> start!40054 (and (array_inv!9306 _values!549) e!257824)))

(declare-fun array_inv!9307 (array!26731) Bool)

(assert (=> start!40054 (array_inv!9307 _keys!709)))

(declare-fun b!436673 () Bool)

(declare-fun e!257823 () Bool)

(declare-fun mapRes!18819 () Bool)

(assert (=> b!436673 (= e!257824 (and e!257823 mapRes!18819))))

(declare-fun condMapEmpty!18819 () Bool)

(declare-fun mapDefault!18819 () ValueCell!5389)

