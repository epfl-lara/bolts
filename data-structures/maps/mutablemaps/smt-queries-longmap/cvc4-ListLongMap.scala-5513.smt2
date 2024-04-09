; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72894 () Bool)

(assert start!72894)

(declare-fun b_free!13781 () Bool)

(declare-fun b_next!13781 () Bool)

(assert (=> start!72894 (= b_free!13781 (not b_next!13781))))

(declare-fun tp!48848 () Bool)

(declare-fun b_and!22885 () Bool)

(assert (=> start!72894 (= tp!48848 b_and!22885)))

(declare-fun b!845620 () Bool)

(declare-fun res!574597 () Bool)

(declare-fun e!472065 () Bool)

(assert (=> b!845620 (=> (not res!574597) (not e!472065))))

(declare-datatypes ((array!48034 0))(
  ( (array!48035 (arr!23044 (Array (_ BitVec 32) (_ BitVec 64))) (size!23485 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48034)

(declare-datatypes ((List!16384 0))(
  ( (Nil!16381) (Cons!16380 (h!17511 (_ BitVec 64)) (t!22763 List!16384)) )
))
(declare-fun arrayNoDuplicates!0 (array!48034 (_ BitVec 32) List!16384) Bool)

(assert (=> b!845620 (= res!574597 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16381))))

(declare-fun b!845622 () Bool)

(declare-fun e!472064 () Bool)

(declare-fun e!472061 () Bool)

(declare-fun mapRes!25475 () Bool)

(assert (=> b!845622 (= e!472064 (and e!472061 mapRes!25475))))

(declare-fun condMapEmpty!25475 () Bool)

(declare-datatypes ((V!26269 0))(
  ( (V!26270 (val!8006 Int)) )
))
(declare-datatypes ((ValueCell!7519 0))(
  ( (ValueCellFull!7519 (v!10427 V!26269)) (EmptyCell!7519) )
))
(declare-datatypes ((array!48036 0))(
  ( (array!48037 (arr!23045 (Array (_ BitVec 32) ValueCell!7519)) (size!23486 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48036)

(declare-fun mapDefault!25475 () ValueCell!7519)

