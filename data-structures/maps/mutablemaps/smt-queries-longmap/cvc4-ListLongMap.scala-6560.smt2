; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83276 () Bool)

(assert start!83276)

(declare-fun b_free!19241 () Bool)

(declare-fun b_next!19241 () Bool)

(assert (=> start!83276 (= b_free!19241 (not b_next!19241))))

(declare-fun tp!67002 () Bool)

(declare-fun b_and!30747 () Bool)

(assert (=> start!83276 (= tp!67002 b_and!30747)))

(declare-fun res!650221 () Bool)

(declare-fun e!547554 () Bool)

(assert (=> start!83276 (=> (not res!650221) (not e!547554))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83276 (= res!650221 (validMask!0 mask!2147))))

(assert (=> start!83276 e!547554))

(assert (=> start!83276 true))

(declare-datatypes ((V!34501 0))(
  ( (V!34502 (val!11120 Int)) )
))
(declare-datatypes ((ValueCell!10588 0))(
  ( (ValueCellFull!10588 (v!13679 V!34501)) (EmptyCell!10588) )
))
(declare-datatypes ((array!60311 0))(
  ( (array!60312 (arr!29015 (Array (_ BitVec 32) ValueCell!10588)) (size!29495 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60311)

(declare-fun e!547556 () Bool)

(declare-fun array_inv!22345 (array!60311) Bool)

(assert (=> start!83276 (and (array_inv!22345 _values!1425) e!547556)))

(declare-fun tp_is_empty!22139 () Bool)

(assert (=> start!83276 tp_is_empty!22139))

(assert (=> start!83276 tp!67002))

(declare-datatypes ((array!60313 0))(
  ( (array!60314 (arr!29016 (Array (_ BitVec 32) (_ BitVec 64))) (size!29496 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60313)

(declare-fun array_inv!22346 (array!60313) Bool)

(assert (=> start!83276 (array_inv!22346 _keys!1717)))

(declare-fun b!971269 () Bool)

(declare-fun e!547557 () Bool)

(declare-fun mapRes!35218 () Bool)

(assert (=> b!971269 (= e!547556 (and e!547557 mapRes!35218))))

(declare-fun condMapEmpty!35218 () Bool)

(declare-fun mapDefault!35218 () ValueCell!10588)

