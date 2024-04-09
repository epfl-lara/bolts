; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43274 () Bool)

(assert start!43274)

(declare-fun b_free!12133 () Bool)

(declare-fun b_next!12133 () Bool)

(assert (=> start!43274 (= b_free!12133 (not b_next!12133))))

(declare-fun tp!42670 () Bool)

(declare-fun b_and!20903 () Bool)

(assert (=> start!43274 (= tp!42670 b_and!20903)))

(declare-fun mapIsEmpty!22165 () Bool)

(declare-fun mapRes!22165 () Bool)

(assert (=> mapIsEmpty!22165 mapRes!22165))

(declare-fun b!479168 () Bool)

(declare-fun res!285902 () Bool)

(declare-fun e!281907 () Bool)

(assert (=> b!479168 (=> (not res!285902) (not e!281907))))

(declare-datatypes ((array!30929 0))(
  ( (array!30930 (arr!14868 (Array (_ BitVec 32) (_ BitVec 64))) (size!15226 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30929)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30929 (_ BitVec 32)) Bool)

(assert (=> b!479168 (= res!285902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!479169 () Bool)

(declare-fun e!281906 () Bool)

(declare-fun tp_is_empty!13645 () Bool)

(assert (=> b!479169 (= e!281906 tp_is_empty!13645)))

(declare-fun b!479170 () Bool)

(declare-fun res!285901 () Bool)

(assert (=> b!479170 (=> (not res!285901) (not e!281907))))

(declare-datatypes ((List!9123 0))(
  ( (Nil!9120) (Cons!9119 (h!9975 (_ BitVec 64)) (t!15337 List!9123)) )
))
(declare-fun arrayNoDuplicates!0 (array!30929 (_ BitVec 32) List!9123) Bool)

(assert (=> b!479170 (= res!285901 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9120))))

(declare-fun b!479171 () Bool)

(declare-fun e!281908 () Bool)

(assert (=> b!479171 (= e!281908 (and e!281906 mapRes!22165))))

(declare-fun condMapEmpty!22165 () Bool)

(declare-datatypes ((V!19265 0))(
  ( (V!19266 (val!6870 Int)) )
))
(declare-datatypes ((ValueCell!6461 0))(
  ( (ValueCellFull!6461 (v!9155 V!19265)) (EmptyCell!6461) )
))
(declare-datatypes ((array!30931 0))(
  ( (array!30932 (arr!14869 (Array (_ BitVec 32) ValueCell!6461)) (size!15227 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30931)

(declare-fun mapDefault!22165 () ValueCell!6461)

