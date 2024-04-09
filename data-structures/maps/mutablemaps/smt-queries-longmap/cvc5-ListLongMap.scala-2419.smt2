; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38250 () Bool)

(assert start!38250)

(declare-datatypes ((array!23387 0))(
  ( (array!23388 (arr!11147 (Array (_ BitVec 32) (_ BitVec 64))) (size!11499 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23387)

(declare-fun b!394411 () Bool)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14107 0))(
  ( (V!14108 (val!4920 Int)) )
))
(declare-datatypes ((ValueCell!4532 0))(
  ( (ValueCellFull!4532 (v!7161 V!14107)) (EmptyCell!4532) )
))
(declare-datatypes ((array!23389 0))(
  ( (array!23390 (arr!11148 (Array (_ BitVec 32) ValueCell!4532)) (size!11500 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23389)

(declare-fun e!238747 () Bool)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!394411 (= e!238747 (and (= (size!11500 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11499 _keys!709) (size!11500 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011) (not (= (size!11499 _keys!709) (bvadd #b00000000000000000000000000000001 mask!1025)))))))

(declare-fun b!394412 () Bool)

(declare-fun e!238746 () Bool)

(declare-fun tp_is_empty!9751 () Bool)

(assert (=> b!394412 (= e!238746 tp_is_empty!9751)))

(declare-fun b!394413 () Bool)

(declare-fun e!238748 () Bool)

(assert (=> b!394413 (= e!238748 tp_is_empty!9751)))

(declare-fun mapIsEmpty!16227 () Bool)

(declare-fun mapRes!16227 () Bool)

(assert (=> mapIsEmpty!16227 mapRes!16227))

(declare-fun b!394414 () Bool)

(declare-fun res!226159 () Bool)

(assert (=> b!394414 (=> (not res!226159) (not e!238747))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!394414 (= res!226159 (validMask!0 mask!1025))))

(declare-fun b!394415 () Bool)

(declare-fun e!238745 () Bool)

(assert (=> b!394415 (= e!238745 (and e!238748 mapRes!16227))))

(declare-fun condMapEmpty!16227 () Bool)

(declare-fun mapDefault!16227 () ValueCell!4532)

