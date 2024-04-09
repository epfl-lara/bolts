; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20254 () Bool)

(assert start!20254)

(declare-fun b_free!4901 () Bool)

(declare-fun b_next!4901 () Bool)

(assert (=> start!20254 (= b_free!4901 (not b_next!4901))))

(declare-fun tp!17735 () Bool)

(declare-fun b_and!11665 () Bool)

(assert (=> start!20254 (= tp!17735 b_and!11665)))

(declare-fun b!199020 () Bool)

(declare-fun res!94525 () Bool)

(declare-fun e!130719 () Bool)

(assert (=> b!199020 (=> (not res!94525) (not e!130719))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!8754 0))(
  ( (array!8755 (arr!4127 (Array (_ BitVec 32) (_ BitVec 64))) (size!4452 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8754)

(assert (=> b!199020 (= res!94525 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4452 _keys!825))))))

(declare-fun b!199021 () Bool)

(declare-fun e!130720 () Bool)

(declare-fun tp_is_empty!4757 () Bool)

(assert (=> b!199021 (= e!130720 tp_is_empty!4757)))

(declare-fun b!199022 () Bool)

(declare-fun e!130717 () Bool)

(assert (=> b!199022 (= e!130717 tp_is_empty!4757)))

(declare-fun b!199023 () Bool)

(declare-fun res!94521 () Bool)

(assert (=> b!199023 (=> (not res!94521) (not e!130719))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!199023 (= res!94521 (validKeyInArray!0 k!843))))

(declare-fun b!199024 () Bool)

(declare-fun res!94524 () Bool)

(assert (=> b!199024 (=> (not res!94524) (not e!130719))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8754 (_ BitVec 32)) Bool)

(assert (=> b!199024 (= res!94524 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun res!94523 () Bool)

(assert (=> start!20254 (=> (not res!94523) (not e!130719))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20254 (= res!94523 (validMask!0 mask!1149))))

(assert (=> start!20254 e!130719))

(declare-datatypes ((V!5989 0))(
  ( (V!5990 (val!2423 Int)) )
))
(declare-datatypes ((ValueCell!2035 0))(
  ( (ValueCellFull!2035 (v!4389 V!5989)) (EmptyCell!2035) )
))
(declare-datatypes ((array!8756 0))(
  ( (array!8757 (arr!4128 (Array (_ BitVec 32) ValueCell!2035)) (size!4453 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8756)

(declare-fun e!130718 () Bool)

(declare-fun array_inv!2695 (array!8756) Bool)

(assert (=> start!20254 (and (array_inv!2695 _values!649) e!130718)))

(assert (=> start!20254 true))

(assert (=> start!20254 tp_is_empty!4757))

(declare-fun array_inv!2696 (array!8754) Bool)

(assert (=> start!20254 (array_inv!2696 _keys!825)))

(assert (=> start!20254 tp!17735))

(declare-fun b!199025 () Bool)

(declare-fun mapRes!8204 () Bool)

(assert (=> b!199025 (= e!130718 (and e!130720 mapRes!8204))))

(declare-fun condMapEmpty!8204 () Bool)

(declare-fun mapDefault!8204 () ValueCell!2035)

