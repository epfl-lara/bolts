; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20214 () Bool)

(assert start!20214)

(declare-fun b_free!4861 () Bool)

(declare-fun b_next!4861 () Bool)

(assert (=> start!20214 (= b_free!4861 (not b_next!4861))))

(declare-fun tp!17614 () Bool)

(declare-fun b_and!11625 () Bool)

(assert (=> start!20214 (= tp!17614 b_and!11625)))

(declare-fun b!198420 () Bool)

(declare-fun res!94099 () Bool)

(declare-fun e!130417 () Bool)

(assert (=> b!198420 (=> (not res!94099) (not e!130417))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!8682 0))(
  ( (array!8683 (arr!4091 (Array (_ BitVec 32) (_ BitVec 64))) (size!4416 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8682)

(assert (=> b!198420 (= res!94099 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4416 _keys!825))))))

(declare-fun res!94104 () Bool)

(assert (=> start!20214 (=> (not res!94104) (not e!130417))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20214 (= res!94104 (validMask!0 mask!1149))))

(assert (=> start!20214 e!130417))

(declare-datatypes ((V!5937 0))(
  ( (V!5938 (val!2403 Int)) )
))
(declare-datatypes ((ValueCell!2015 0))(
  ( (ValueCellFull!2015 (v!4369 V!5937)) (EmptyCell!2015) )
))
(declare-datatypes ((array!8684 0))(
  ( (array!8685 (arr!4092 (Array (_ BitVec 32) ValueCell!2015)) (size!4417 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8684)

(declare-fun e!130418 () Bool)

(declare-fun array_inv!2669 (array!8684) Bool)

(assert (=> start!20214 (and (array_inv!2669 _values!649) e!130418)))

(assert (=> start!20214 true))

(declare-fun tp_is_empty!4717 () Bool)

(assert (=> start!20214 tp_is_empty!4717))

(declare-fun array_inv!2670 (array!8682) Bool)

(assert (=> start!20214 (array_inv!2670 _keys!825)))

(assert (=> start!20214 tp!17614))

(declare-fun mapNonEmpty!8144 () Bool)

(declare-fun mapRes!8144 () Bool)

(declare-fun tp!17615 () Bool)

(declare-fun e!130419 () Bool)

(assert (=> mapNonEmpty!8144 (= mapRes!8144 (and tp!17615 e!130419))))

(declare-fun mapKey!8144 () (_ BitVec 32))

(declare-fun mapRest!8144 () (Array (_ BitVec 32) ValueCell!2015))

(declare-fun mapValue!8144 () ValueCell!2015)

(assert (=> mapNonEmpty!8144 (= (arr!4092 _values!649) (store mapRest!8144 mapKey!8144 mapValue!8144))))

(declare-fun b!198421 () Bool)

(declare-fun e!130420 () Bool)

(assert (=> b!198421 (= e!130418 (and e!130420 mapRes!8144))))

(declare-fun condMapEmpty!8144 () Bool)

(declare-fun mapDefault!8144 () ValueCell!2015)

