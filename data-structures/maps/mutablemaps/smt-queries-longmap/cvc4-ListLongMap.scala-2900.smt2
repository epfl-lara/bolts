; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41554 () Bool)

(assert start!41554)

(declare-fun b_free!11213 () Bool)

(declare-fun b_next!11213 () Bool)

(assert (=> start!41554 (= b_free!11213 (not b_next!11213))))

(declare-fun tp!39636 () Bool)

(declare-fun b_and!19571 () Bool)

(assert (=> start!41554 (= tp!39636 b_and!19571)))

(declare-fun b!463888 () Bool)

(declare-fun e!270937 () Bool)

(declare-fun e!270936 () Bool)

(declare-fun mapRes!20638 () Bool)

(assert (=> b!463888 (= e!270937 (and e!270936 mapRes!20638))))

(declare-fun condMapEmpty!20638 () Bool)

(declare-datatypes ((V!17959 0))(
  ( (V!17960 (val!6365 Int)) )
))
(declare-datatypes ((ValueCell!5977 0))(
  ( (ValueCellFull!5977 (v!8648 V!17959)) (EmptyCell!5977) )
))
(declare-datatypes ((array!29037 0))(
  ( (array!29038 (arr!13947 (Array (_ BitVec 32) ValueCell!5977)) (size!14299 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29037)

(declare-fun mapDefault!20638 () ValueCell!5977)

