; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21126 () Bool)

(assert start!21126)

(declare-fun b_free!5605 () Bool)

(declare-fun b_next!5605 () Bool)

(assert (=> start!21126 (= b_free!5605 (not b_next!5605))))

(declare-fun tp!19879 () Bool)

(declare-fun b_and!12465 () Bool)

(assert (=> start!21126 (= tp!19879 b_and!12465)))

(declare-fun res!103884 () Bool)

(declare-fun e!138230 () Bool)

(assert (=> start!21126 (=> (not res!103884) (not e!138230))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!21126 (= res!103884 (validMask!0 mask!1149))))

(assert (=> start!21126 e!138230))

(declare-datatypes ((V!6937 0))(
  ( (V!6938 (val!2778 Int)) )
))
(declare-datatypes ((ValueCell!2390 0))(
  ( (ValueCellFull!2390 (v!4776 V!6937)) (EmptyCell!2390) )
))
(declare-datatypes ((array!10138 0))(
  ( (array!10139 (arr!4811 (Array (_ BitVec 32) ValueCell!2390)) (size!5136 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10138)

(declare-fun e!138233 () Bool)

(declare-fun array_inv!3175 (array!10138) Bool)

(assert (=> start!21126 (and (array_inv!3175 _values!649) e!138233)))

(assert (=> start!21126 true))

(declare-fun tp_is_empty!5467 () Bool)

(assert (=> start!21126 tp_is_empty!5467))

(declare-datatypes ((array!10140 0))(
  ( (array!10141 (arr!4812 (Array (_ BitVec 32) (_ BitVec 64))) (size!5137 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10140)

(declare-fun array_inv!3176 (array!10140) Bool)

(assert (=> start!21126 (array_inv!3176 _keys!825)))

(assert (=> start!21126 tp!19879))

(declare-fun b!212438 () Bool)

(declare-fun e!138232 () Bool)

(assert (=> b!212438 (= e!138232 tp_is_empty!5467)))

(declare-fun mapNonEmpty!9293 () Bool)

(declare-fun mapRes!9293 () Bool)

(declare-fun tp!19880 () Bool)

(assert (=> mapNonEmpty!9293 (= mapRes!9293 (and tp!19880 e!138232))))

(declare-fun mapValue!9293 () ValueCell!2390)

(declare-fun mapRest!9293 () (Array (_ BitVec 32) ValueCell!2390))

(declare-fun mapKey!9293 () (_ BitVec 32))

(assert (=> mapNonEmpty!9293 (= (arr!4811 _values!649) (store mapRest!9293 mapKey!9293 mapValue!9293))))

(declare-fun b!212439 () Bool)

(declare-fun res!103879 () Bool)

(assert (=> b!212439 (=> (not res!103879) (not e!138230))))

(declare-datatypes ((List!3115 0))(
  ( (Nil!3112) (Cons!3111 (h!3753 (_ BitVec 64)) (t!8070 List!3115)) )
))
(declare-fun arrayNoDuplicates!0 (array!10140 (_ BitVec 32) List!3115) Bool)

(assert (=> b!212439 (= res!103879 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3112))))

(declare-fun b!212440 () Bool)

(declare-fun res!103885 () Bool)

(assert (=> b!212440 (=> (not res!103885) (not e!138230))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!212440 (= res!103885 (validKeyInArray!0 k!843))))

(declare-fun b!212441 () Bool)

(declare-fun res!103881 () Bool)

(assert (=> b!212441 (=> (not res!103881) (not e!138230))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!212441 (= res!103881 (and (= (size!5136 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5137 _keys!825) (size!5136 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!9293 () Bool)

(assert (=> mapIsEmpty!9293 mapRes!9293))

(declare-datatypes ((tuple2!4202 0))(
  ( (tuple2!4203 (_1!2111 (_ BitVec 64)) (_2!2111 V!6937)) )
))
(declare-fun lt!109560 () tuple2!4202)

(declare-fun e!138235 () Bool)

(declare-fun b!212442 () Bool)

(declare-datatypes ((List!3116 0))(
  ( (Nil!3113) (Cons!3112 (h!3754 tuple2!4202) (t!8071 List!3116)) )
))
(declare-datatypes ((ListLongMap!3129 0))(
  ( (ListLongMap!3130 (toList!1580 List!3116)) )
))
(declare-fun lt!109567 () ListLongMap!3129)

(declare-fun lt!109565 () ListLongMap!3129)

(declare-fun +!573 (ListLongMap!3129 tuple2!4202) ListLongMap!3129)

(assert (=> b!212442 (= e!138235 (= lt!109565 (+!573 lt!109567 lt!109560)))))

(declare-fun lt!109562 () ListLongMap!3129)

(assert (=> b!212442 (= lt!109565 (+!573 lt!109562 lt!109560))))

(declare-fun minValue!615 () V!6937)

(assert (=> b!212442 (= lt!109560 (tuple2!4203 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!212443 () Bool)

(declare-fun e!138234 () Bool)

(assert (=> b!212443 (= e!138233 (and e!138234 mapRes!9293))))

(declare-fun condMapEmpty!9293 () Bool)

(declare-fun mapDefault!9293 () ValueCell!2390)

