; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20094 () Bool)

(assert start!20094)

(declare-fun b_free!4741 () Bool)

(declare-fun b_next!4741 () Bool)

(assert (=> start!20094 (= b_free!4741 (not b_next!4741))))

(declare-fun tp!17254 () Bool)

(declare-fun b_and!11505 () Bool)

(assert (=> start!20094 (= tp!17254 b_and!11505)))

(declare-fun mapIsEmpty!7964 () Bool)

(declare-fun mapRes!7964 () Bool)

(assert (=> mapIsEmpty!7964 mapRes!7964))

(declare-fun b!196620 () Bool)

(declare-fun res!92839 () Bool)

(declare-fun e!129519 () Bool)

(assert (=> b!196620 (=> (not res!92839) (not e!129519))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!196620 (= res!92839 (validKeyInArray!0 k!843))))

(declare-fun b!196621 () Bool)

(assert (=> b!196621 (= e!129519 false)))

(declare-datatypes ((V!5777 0))(
  ( (V!5778 (val!2343 Int)) )
))
(declare-datatypes ((ValueCell!1955 0))(
  ( (ValueCellFull!1955 (v!4309 V!5777)) (EmptyCell!1955) )
))
(declare-datatypes ((array!8450 0))(
  ( (array!8451 (arr!3975 (Array (_ BitVec 32) ValueCell!1955)) (size!4300 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8450)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((tuple2!3566 0))(
  ( (tuple2!3567 (_1!1793 (_ BitVec 64)) (_2!1793 V!5777)) )
))
(declare-datatypes ((List!2501 0))(
  ( (Nil!2498) (Cons!2497 (h!3139 tuple2!3566) (t!7440 List!2501)) )
))
(declare-datatypes ((ListLongMap!2493 0))(
  ( (ListLongMap!2494 (toList!1262 List!2501)) )
))
(declare-fun lt!97663 () ListLongMap!2493)

(declare-fun zeroValue!615 () V!5777)

(declare-datatypes ((array!8452 0))(
  ( (array!8453 (arr!3976 (Array (_ BitVec 32) (_ BitVec 64))) (size!4301 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8452)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!5777)

(declare-fun getCurrentListMapNoExtraKeys!219 (array!8452 array!8450 (_ BitVec 32) (_ BitVec 32) V!5777 V!5777 (_ BitVec 32) Int) ListLongMap!2493)

(assert (=> b!196621 (= lt!97663 (getCurrentListMapNoExtraKeys!219 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapNonEmpty!7964 () Bool)

(declare-fun tp!17255 () Bool)

(declare-fun e!129516 () Bool)

(assert (=> mapNonEmpty!7964 (= mapRes!7964 (and tp!17255 e!129516))))

(declare-fun mapKey!7964 () (_ BitVec 32))

(declare-fun mapValue!7964 () ValueCell!1955)

(declare-fun mapRest!7964 () (Array (_ BitVec 32) ValueCell!1955))

(assert (=> mapNonEmpty!7964 (= (arr!3975 _values!649) (store mapRest!7964 mapKey!7964 mapValue!7964))))

(declare-fun b!196622 () Bool)

(declare-fun tp_is_empty!4597 () Bool)

(assert (=> b!196622 (= e!129516 tp_is_empty!4597)))

(declare-fun res!92840 () Bool)

(assert (=> start!20094 (=> (not res!92840) (not e!129519))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20094 (= res!92840 (validMask!0 mask!1149))))

(assert (=> start!20094 e!129519))

(declare-fun e!129520 () Bool)

(declare-fun array_inv!2583 (array!8450) Bool)

(assert (=> start!20094 (and (array_inv!2583 _values!649) e!129520)))

(assert (=> start!20094 true))

(assert (=> start!20094 tp_is_empty!4597))

(declare-fun array_inv!2584 (array!8452) Bool)

(assert (=> start!20094 (array_inv!2584 _keys!825)))

(assert (=> start!20094 tp!17254))

(declare-fun b!196623 () Bool)

(declare-fun res!92844 () Bool)

(assert (=> b!196623 (=> (not res!92844) (not e!129519))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!196623 (= res!92844 (= (select (arr!3976 _keys!825) i!601) k!843))))

(declare-fun b!196624 () Bool)

(declare-fun res!92841 () Bool)

(assert (=> b!196624 (=> (not res!92841) (not e!129519))))

(declare-datatypes ((List!2502 0))(
  ( (Nil!2499) (Cons!2498 (h!3140 (_ BitVec 64)) (t!7441 List!2502)) )
))
(declare-fun arrayNoDuplicates!0 (array!8452 (_ BitVec 32) List!2502) Bool)

(assert (=> b!196624 (= res!92841 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2499))))

(declare-fun b!196625 () Bool)

(declare-fun e!129517 () Bool)

(assert (=> b!196625 (= e!129520 (and e!129517 mapRes!7964))))

(declare-fun condMapEmpty!7964 () Bool)

(declare-fun mapDefault!7964 () ValueCell!1955)

