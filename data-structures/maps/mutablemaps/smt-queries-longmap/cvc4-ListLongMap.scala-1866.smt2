; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33642 () Bool)

(assert start!33642)

(declare-fun b_free!6869 () Bool)

(declare-fun b_next!6869 () Bool)

(assert (=> start!33642 (= b_free!6869 (not b_next!6869))))

(declare-fun tp!24111 () Bool)

(declare-fun b_and!14067 () Bool)

(assert (=> start!33642 (= tp!24111 b_and!14067)))

(declare-fun mapNonEmpty!11628 () Bool)

(declare-fun mapRes!11628 () Bool)

(declare-fun tp!24110 () Bool)

(declare-fun e!204861 () Bool)

(assert (=> mapNonEmpty!11628 (= mapRes!11628 (and tp!24110 e!204861))))

(declare-datatypes ((V!10071 0))(
  ( (V!10072 (val!3455 Int)) )
))
(declare-datatypes ((ValueCell!3067 0))(
  ( (ValueCellFull!3067 (v!5613 V!10071)) (EmptyCell!3067) )
))
(declare-fun mapValue!11628 () ValueCell!3067)

(declare-fun mapRest!11628 () (Array (_ BitVec 32) ValueCell!3067))

(declare-fun mapKey!11628 () (_ BitVec 32))

(declare-datatypes ((array!17233 0))(
  ( (array!17234 (arr!8144 (Array (_ BitVec 32) ValueCell!3067)) (size!8496 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17233)

(assert (=> mapNonEmpty!11628 (= (arr!8144 _values!1525) (store mapRest!11628 mapKey!11628 mapValue!11628))))

(declare-fun b!333641 () Bool)

(declare-fun res!183895 () Bool)

(declare-fun e!204860 () Bool)

(assert (=> b!333641 (=> (not res!183895) (not e!204860))))

(declare-datatypes ((array!17235 0))(
  ( (array!17236 (arr!8145 (Array (_ BitVec 32) (_ BitVec 64))) (size!8497 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17235)

(declare-datatypes ((List!4664 0))(
  ( (Nil!4661) (Cons!4660 (h!5516 (_ BitVec 64)) (t!9760 List!4664)) )
))
(declare-fun arrayNoDuplicates!0 (array!17235 (_ BitVec 32) List!4664) Bool)

(assert (=> b!333641 (= res!183895 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4661))))

(declare-fun b!333642 () Bool)

(declare-fun res!183897 () Bool)

(assert (=> b!333642 (=> (not res!183897) (not e!204860))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!10071)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10071)

(declare-datatypes ((tuple2!5022 0))(
  ( (tuple2!5023 (_1!2521 (_ BitVec 64)) (_2!2521 V!10071)) )
))
(declare-datatypes ((List!4665 0))(
  ( (Nil!4662) (Cons!4661 (h!5517 tuple2!5022) (t!9761 List!4665)) )
))
(declare-datatypes ((ListLongMap!3949 0))(
  ( (ListLongMap!3950 (toList!1990 List!4665)) )
))
(declare-fun contains!2030 (ListLongMap!3949 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1513 (array!17235 array!17233 (_ BitVec 32) (_ BitVec 32) V!10071 V!10071 (_ BitVec 32) Int) ListLongMap!3949)

(assert (=> b!333642 (= res!183897 (not (contains!2030 (getCurrentListMap!1513 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!333643 () Bool)

(declare-fun e!204863 () Bool)

(declare-fun e!204862 () Bool)

(assert (=> b!333643 (= e!204863 (and e!204862 mapRes!11628))))

(declare-fun condMapEmpty!11628 () Bool)

(declare-fun mapDefault!11628 () ValueCell!3067)

