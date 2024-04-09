; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76216 () Bool)

(assert start!76216)

(declare-fun b!894632 () Bool)

(declare-fun b_free!15883 () Bool)

(declare-fun b_next!15883 () Bool)

(assert (=> b!894632 (= b_free!15883 (not b_next!15883))))

(declare-fun tp!55644 () Bool)

(declare-fun b_and!26193 () Bool)

(assert (=> b!894632 (= tp!55644 b_and!26193)))

(declare-fun b!894629 () Bool)

(declare-fun e!499784 () Bool)

(declare-fun tp_is_empty!18211 () Bool)

(assert (=> b!894629 (= e!499784 tp_is_empty!18211)))

(declare-fun b!894631 () Bool)

(declare-fun e!499780 () Bool)

(declare-fun e!499785 () Bool)

(assert (=> b!894631 (= e!499780 e!499785)))

(declare-fun res!605476 () Bool)

(assert (=> b!894631 (=> (not res!605476) (not e!499785))))

(declare-datatypes ((array!52402 0))(
  ( (array!52403 (arr!25196 (Array (_ BitVec 32) (_ BitVec 64))) (size!25644 (_ BitVec 32))) )
))
(declare-datatypes ((V!29247 0))(
  ( (V!29248 (val!9156 Int)) )
))
(declare-datatypes ((ValueCell!8624 0))(
  ( (ValueCellFull!8624 (v!11643 V!29247)) (EmptyCell!8624) )
))
(declare-datatypes ((array!52404 0))(
  ( (array!52405 (arr!25197 (Array (_ BitVec 32) ValueCell!8624)) (size!25645 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4264 0))(
  ( (LongMapFixedSize!4265 (defaultEntry!5344 Int) (mask!25908 (_ BitVec 32)) (extraKeys!5040 (_ BitVec 32)) (zeroValue!5144 V!29247) (minValue!5144 V!29247) (_size!2187 (_ BitVec 32)) (_keys!10042 array!52402) (_values!5331 array!52404) (_vacant!2187 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4264)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!894631 (= res!605476 (validMask!0 (mask!25908 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8864 0))(
  ( (MissingZero!8864 (index!37826 (_ BitVec 32))) (Found!8864 (index!37827 (_ BitVec 32))) (Intermediate!8864 (undefined!9676 Bool) (index!37828 (_ BitVec 32)) (x!76078 (_ BitVec 32))) (Undefined!8864) (MissingVacant!8864 (index!37829 (_ BitVec 32))) )
))
(declare-fun lt!404304 () SeekEntryResult!8864)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52402 (_ BitVec 32)) SeekEntryResult!8864)

(assert (=> b!894631 (= lt!404304 (seekEntry!0 key!785 (_keys!10042 thiss!1181) (mask!25908 thiss!1181)))))

(declare-fun mapNonEmpty!28897 () Bool)

(declare-fun mapRes!28897 () Bool)

(declare-fun tp!55645 () Bool)

(declare-fun e!499782 () Bool)

(assert (=> mapNonEmpty!28897 (= mapRes!28897 (and tp!55645 e!499782))))

(declare-fun mapRest!28897 () (Array (_ BitVec 32) ValueCell!8624))

(declare-fun mapValue!28897 () ValueCell!8624)

(declare-fun mapKey!28897 () (_ BitVec 32))

(assert (=> mapNonEmpty!28897 (= (arr!25197 (_values!5331 thiss!1181)) (store mapRest!28897 mapKey!28897 mapValue!28897))))

(declare-fun e!499786 () Bool)

(declare-fun e!499781 () Bool)

(declare-fun array_inv!19764 (array!52402) Bool)

(declare-fun array_inv!19765 (array!52404) Bool)

(assert (=> b!894632 (= e!499786 (and tp!55644 tp_is_empty!18211 (array_inv!19764 (_keys!10042 thiss!1181)) (array_inv!19765 (_values!5331 thiss!1181)) e!499781))))

(declare-fun mapIsEmpty!28897 () Bool)

(assert (=> mapIsEmpty!28897 mapRes!28897))

(declare-fun b!894633 () Bool)

(assert (=> b!894633 (= e!499785 (and (= (size!25645 (_values!5331 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25908 thiss!1181))) (not (= (size!25644 (_keys!10042 thiss!1181)) (size!25645 (_values!5331 thiss!1181))))))))

(declare-fun b!894630 () Bool)

(assert (=> b!894630 (= e!499781 (and e!499784 mapRes!28897))))

(declare-fun condMapEmpty!28897 () Bool)

(declare-fun mapDefault!28897 () ValueCell!8624)

