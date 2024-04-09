; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13698 () Bool)

(assert start!13698)

(declare-fun b!126138 () Bool)

(declare-fun b_free!2853 () Bool)

(declare-fun b_next!2853 () Bool)

(assert (=> b!126138 (= b_free!2853 (not b_next!2853))))

(declare-fun tp!10966 () Bool)

(declare-fun b_and!7781 () Bool)

(assert (=> b!126138 (= tp!10966 b_and!7781)))

(declare-fun b!126126 () Bool)

(declare-fun b_free!2855 () Bool)

(declare-fun b_next!2855 () Bool)

(assert (=> b!126126 (= b_free!2855 (not b_next!2855))))

(declare-fun tp!10968 () Bool)

(declare-fun b_and!7783 () Bool)

(assert (=> b!126126 (= tp!10968 b_and!7783)))

(declare-fun b!126124 () Bool)

(declare-fun e!82420 () Bool)

(declare-fun tp_is_empty!2843 () Bool)

(assert (=> b!126124 (= e!82420 tp_is_empty!2843)))

(declare-fun mapNonEmpty!4505 () Bool)

(declare-fun mapRes!4505 () Bool)

(declare-fun tp!10967 () Bool)

(declare-fun e!82417 () Bool)

(assert (=> mapNonEmpty!4505 (= mapRes!4505 (and tp!10967 e!82417))))

(declare-fun mapKey!4506 () (_ BitVec 32))

(declare-datatypes ((V!3437 0))(
  ( (V!3438 (val!1466 Int)) )
))
(declare-datatypes ((array!4702 0))(
  ( (array!4703 (arr!2226 (Array (_ BitVec 32) (_ BitVec 64))) (size!2490 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1078 0))(
  ( (ValueCellFull!1078 (v!3123 V!3437)) (EmptyCell!1078) )
))
(declare-datatypes ((array!4704 0))(
  ( (array!4705 (arr!2227 (Array (_ BitVec 32) ValueCell!1078)) (size!2491 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1064 0))(
  ( (LongMapFixedSize!1065 (defaultEntry!2784 Int) (mask!7040 (_ BitVec 32)) (extraKeys!2565 (_ BitVec 32)) (zeroValue!2647 V!3437) (minValue!2647 V!3437) (_size!581 (_ BitVec 32)) (_keys!4517 array!4702) (_values!2767 array!4704) (_vacant!581 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1064)

(declare-fun mapValue!4505 () ValueCell!1078)

(declare-fun mapRest!4505 () (Array (_ BitVec 32) ValueCell!1078))

(assert (=> mapNonEmpty!4505 (= (arr!2227 (_values!2767 newMap!16)) (store mapRest!4505 mapKey!4506 mapValue!4505))))

(declare-fun b!126125 () Bool)

(declare-fun e!82424 () Bool)

(assert (=> b!126125 (= e!82424 tp_is_empty!2843)))

(declare-fun e!82422 () Bool)

(declare-fun e!82425 () Bool)

(declare-fun array_inv!1365 (array!4702) Bool)

(declare-fun array_inv!1366 (array!4704) Bool)

(assert (=> b!126126 (= e!82425 (and tp!10968 tp_is_empty!2843 (array_inv!1365 (_keys!4517 newMap!16)) (array_inv!1366 (_values!2767 newMap!16)) e!82422))))

(declare-fun b!126127 () Bool)

(assert (=> b!126127 (= e!82422 (and e!82420 mapRes!4505))))

(declare-fun condMapEmpty!4505 () Bool)

(declare-fun mapDefault!4506 () ValueCell!1078)

