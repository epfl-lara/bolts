; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20188 () Bool)

(assert start!20188)

(declare-fun b_free!4835 () Bool)

(declare-fun b_next!4835 () Bool)

(assert (=> start!20188 (= b_free!4835 (not b_next!4835))))

(declare-fun tp!17537 () Bool)

(declare-fun b_and!11599 () Bool)

(assert (=> start!20188 (= tp!17537 b_and!11599)))

(declare-fun b!198030 () Bool)

(declare-fun res!93831 () Bool)

(declare-fun e!130222 () Bool)

(assert (=> b!198030 (=> (not res!93831) (not e!130222))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!8632 0))(
  ( (array!8633 (arr!4066 (Array (_ BitVec 32) (_ BitVec 64))) (size!4391 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8632)

(assert (=> b!198030 (= res!93831 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4391 _keys!825))))))

(declare-fun b!198031 () Bool)

(declare-fun e!130225 () Bool)

(declare-fun tp_is_empty!4691 () Bool)

(assert (=> b!198031 (= e!130225 tp_is_empty!4691)))

(declare-fun b!198032 () Bool)

(declare-fun res!93829 () Bool)

(assert (=> b!198032 (=> (not res!93829) (not e!130222))))

(declare-datatypes ((List!2561 0))(
  ( (Nil!2558) (Cons!2557 (h!3199 (_ BitVec 64)) (t!7500 List!2561)) )
))
(declare-fun arrayNoDuplicates!0 (array!8632 (_ BitVec 32) List!2561) Bool)

(assert (=> b!198032 (= res!93829 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2558))))

(declare-fun b!198033 () Bool)

(declare-fun res!93830 () Bool)

(assert (=> b!198033 (=> (not res!93830) (not e!130222))))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!198033 (= res!93830 (= (select (arr!4066 _keys!825) i!601) k!843))))

(declare-fun b!198034 () Bool)

(declare-fun res!93827 () Bool)

(assert (=> b!198034 (=> (not res!93827) (not e!130222))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!5901 0))(
  ( (V!5902 (val!2390 Int)) )
))
(declare-datatypes ((ValueCell!2002 0))(
  ( (ValueCellFull!2002 (v!4356 V!5901)) (EmptyCell!2002) )
))
(declare-datatypes ((array!8634 0))(
  ( (array!8635 (arr!4067 (Array (_ BitVec 32) ValueCell!2002)) (size!4392 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8634)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!198034 (= res!93827 (and (= (size!4392 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4391 _keys!825) (size!4392 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!93826 () Bool)

(assert (=> start!20188 (=> (not res!93826) (not e!130222))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20188 (= res!93826 (validMask!0 mask!1149))))

(assert (=> start!20188 e!130222))

(declare-fun e!130224 () Bool)

(declare-fun array_inv!2649 (array!8634) Bool)

(assert (=> start!20188 (and (array_inv!2649 _values!649) e!130224)))

(assert (=> start!20188 true))

(assert (=> start!20188 tp_is_empty!4691))

(declare-fun array_inv!2650 (array!8632) Bool)

(assert (=> start!20188 (array_inv!2650 _keys!825)))

(assert (=> start!20188 tp!17537))

(declare-fun mapNonEmpty!8105 () Bool)

(declare-fun mapRes!8105 () Bool)

(declare-fun tp!17536 () Bool)

(assert (=> mapNonEmpty!8105 (= mapRes!8105 (and tp!17536 e!130225))))

(declare-fun mapKey!8105 () (_ BitVec 32))

(declare-fun mapValue!8105 () ValueCell!2002)

(declare-fun mapRest!8105 () (Array (_ BitVec 32) ValueCell!2002))

(assert (=> mapNonEmpty!8105 (= (arr!4067 _values!649) (store mapRest!8105 mapKey!8105 mapValue!8105))))

(declare-fun b!198035 () Bool)

(declare-fun e!130221 () Bool)

(assert (=> b!198035 (= e!130224 (and e!130221 mapRes!8105))))

(declare-fun condMapEmpty!8105 () Bool)

(declare-fun mapDefault!8105 () ValueCell!2002)

