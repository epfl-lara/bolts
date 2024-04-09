; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77862 () Bool)

(assert start!77862)

(declare-fun b_free!16393 () Bool)

(declare-fun b_next!16393 () Bool)

(assert (=> start!77862 (= b_free!16393 (not b_next!16393))))

(declare-fun tp!57444 () Bool)

(declare-fun b_and!26961 () Bool)

(assert (=> start!77862 (= tp!57444 b_and!26961)))

(declare-fun mapIsEmpty!29932 () Bool)

(declare-fun mapRes!29932 () Bool)

(assert (=> mapIsEmpty!29932 mapRes!29932))

(declare-fun b!908569 () Bool)

(declare-fun e!509260 () Bool)

(declare-fun e!509265 () Bool)

(assert (=> b!908569 (= e!509260 (and e!509265 mapRes!29932))))

(declare-fun condMapEmpty!29932 () Bool)

(declare-datatypes ((V!30047 0))(
  ( (V!30048 (val!9456 Int)) )
))
(declare-datatypes ((ValueCell!8924 0))(
  ( (ValueCellFull!8924 (v!11963 V!30047)) (EmptyCell!8924) )
))
(declare-datatypes ((array!53646 0))(
  ( (array!53647 (arr!25777 (Array (_ BitVec 32) ValueCell!8924)) (size!26237 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53646)

(declare-fun mapDefault!29932 () ValueCell!8924)

