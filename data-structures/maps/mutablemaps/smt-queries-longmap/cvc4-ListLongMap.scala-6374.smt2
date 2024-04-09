; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82012 () Bool)

(assert start!82012)

(declare-fun b!956089 () Bool)

(declare-fun e!538728 () Bool)

(declare-fun tp_is_empty!21023 () Bool)

(assert (=> b!956089 (= e!538728 tp_is_empty!21023)))

(declare-fun mapNonEmpty!33496 () Bool)

(declare-fun mapRes!33496 () Bool)

(declare-fun tp!64075 () Bool)

(declare-fun e!538729 () Bool)

(assert (=> mapNonEmpty!33496 (= mapRes!33496 (and tp!64075 e!538729))))

(declare-datatypes ((V!33013 0))(
  ( (V!33014 (val!10562 Int)) )
))
(declare-datatypes ((ValueCell!10030 0))(
  ( (ValueCellFull!10030 (v!13117 V!33013)) (EmptyCell!10030) )
))
(declare-fun mapValue!33496 () ValueCell!10030)

(declare-datatypes ((array!58167 0))(
  ( (array!58168 (arr!27959 (Array (_ BitVec 32) ValueCell!10030)) (size!28439 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58167)

(declare-fun mapKey!33496 () (_ BitVec 32))

(declare-fun mapRest!33496 () (Array (_ BitVec 32) ValueCell!10030))

(assert (=> mapNonEmpty!33496 (= (arr!27959 _values!1197) (store mapRest!33496 mapKey!33496 mapValue!33496))))

(declare-fun b!956090 () Bool)

(declare-fun e!538731 () Bool)

(assert (=> b!956090 (= e!538731 false)))

(declare-fun lt!430057 () Bool)

(declare-datatypes ((array!58169 0))(
  ( (array!58170 (arr!27960 (Array (_ BitVec 32) (_ BitVec 64))) (size!28440 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58169)

(declare-datatypes ((List!19618 0))(
  ( (Nil!19615) (Cons!19614 (h!20776 (_ BitVec 64)) (t!27987 List!19618)) )
))
(declare-fun arrayNoDuplicates!0 (array!58169 (_ BitVec 32) List!19618) Bool)

(assert (=> b!956090 (= lt!430057 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19615))))

(declare-fun b!956091 () Bool)

(declare-fun e!538730 () Bool)

(assert (=> b!956091 (= e!538730 (and e!538728 mapRes!33496))))

(declare-fun condMapEmpty!33496 () Bool)

(declare-fun mapDefault!33496 () ValueCell!10030)

