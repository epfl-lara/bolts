; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38488 () Bool)

(assert start!38488)

(declare-fun b!397061 () Bool)

(declare-fun res!228016 () Bool)

(declare-fun e!240166 () Bool)

(assert (=> b!397061 (=> (not res!228016) (not e!240166))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!397061 (= res!228016 (validMask!0 mask!1025))))

(declare-fun res!228022 () Bool)

(assert (=> start!38488 (=> (not res!228022) (not e!240166))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!23681 0))(
  ( (array!23682 (arr!11287 (Array (_ BitVec 32) (_ BitVec 64))) (size!11639 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23681)

(assert (=> start!38488 (= res!228022 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11639 _keys!709))))))

(assert (=> start!38488 e!240166))

(assert (=> start!38488 true))

(declare-datatypes ((V!14303 0))(
  ( (V!14304 (val!4994 Int)) )
))
(declare-datatypes ((ValueCell!4606 0))(
  ( (ValueCellFull!4606 (v!7237 V!14303)) (EmptyCell!4606) )
))
(declare-datatypes ((array!23683 0))(
  ( (array!23684 (arr!11288 (Array (_ BitVec 32) ValueCell!4606)) (size!11640 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23683)

(declare-fun e!240165 () Bool)

(declare-fun array_inv!8262 (array!23683) Bool)

(assert (=> start!38488 (and (array_inv!8262 _values!549) e!240165)))

(declare-fun array_inv!8263 (array!23681) Bool)

(assert (=> start!38488 (array_inv!8263 _keys!709)))

(declare-fun b!397062 () Bool)

(declare-fun e!240168 () Bool)

(declare-fun mapRes!16470 () Bool)

(assert (=> b!397062 (= e!240165 (and e!240168 mapRes!16470))))

(declare-fun condMapEmpty!16470 () Bool)

(declare-fun mapDefault!16470 () ValueCell!4606)

