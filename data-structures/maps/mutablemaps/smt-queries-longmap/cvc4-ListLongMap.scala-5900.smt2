; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76296 () Bool)

(assert start!76296)

(declare-fun b!895166 () Bool)

(declare-fun b_free!15905 () Bool)

(declare-fun b_next!15905 () Bool)

(assert (=> b!895166 (= b_free!15905 (not b_next!15905))))

(declare-fun tp!55721 () Bool)

(declare-fun b_and!26215 () Bool)

(assert (=> b!895166 (= tp!55721 b_and!26215)))

(declare-fun mapIsEmpty!28941 () Bool)

(declare-fun mapRes!28941 () Bool)

(assert (=> mapIsEmpty!28941 mapRes!28941))

(declare-fun res!605677 () Bool)

(declare-fun e!500179 () Bool)

(assert (=> start!76296 (=> (not res!605677) (not e!500179))))

(declare-datatypes ((array!52452 0))(
  ( (array!52453 (arr!25218 (Array (_ BitVec 32) (_ BitVec 64))) (size!25668 (_ BitVec 32))) )
))
(declare-datatypes ((V!29275 0))(
  ( (V!29276 (val!9167 Int)) )
))
(declare-datatypes ((ValueCell!8635 0))(
  ( (ValueCellFull!8635 (v!11654 V!29275)) (EmptyCell!8635) )
))
(declare-datatypes ((array!52454 0))(
  ( (array!52455 (arr!25219 (Array (_ BitVec 32) ValueCell!8635)) (size!25669 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4286 0))(
  ( (LongMapFixedSize!4287 (defaultEntry!5355 Int) (mask!25939 (_ BitVec 32)) (extraKeys!5051 (_ BitVec 32)) (zeroValue!5155 V!29275) (minValue!5155 V!29275) (_size!2198 (_ BitVec 32)) (_keys!10062 array!52452) (_values!5342 array!52454) (_vacant!2198 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4286)

(declare-fun valid!1645 (LongMapFixedSize!4286) Bool)

(assert (=> start!76296 (= res!605677 (valid!1645 thiss!1181))))

(assert (=> start!76296 e!500179))

(declare-fun e!500178 () Bool)

(assert (=> start!76296 e!500178))

(assert (=> start!76296 true))

(declare-fun b!895161 () Bool)

(declare-fun e!500183 () Bool)

(declare-fun tp_is_empty!18233 () Bool)

(assert (=> b!895161 (= e!500183 tp_is_empty!18233)))

(declare-fun mapNonEmpty!28941 () Bool)

(declare-fun tp!55722 () Bool)

(declare-fun e!500180 () Bool)

(assert (=> mapNonEmpty!28941 (= mapRes!28941 (and tp!55722 e!500180))))

(declare-fun mapKey!28941 () (_ BitVec 32))

(declare-fun mapValue!28941 () ValueCell!8635)

(declare-fun mapRest!28941 () (Array (_ BitVec 32) ValueCell!8635))

(assert (=> mapNonEmpty!28941 (= (arr!25219 (_values!5342 thiss!1181)) (store mapRest!28941 mapKey!28941 mapValue!28941))))

(declare-fun b!895162 () Bool)

(assert (=> b!895162 (= e!500180 tp_is_empty!18233)))

(declare-fun b!895163 () Bool)

(declare-fun res!605678 () Bool)

(assert (=> b!895163 (=> (not res!605678) (not e!500179))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!895163 (= res!605678 (not (= key!785 (bvneg key!785))))))

(declare-fun b!895164 () Bool)

(declare-fun e!500182 () Bool)

(assert (=> b!895164 (= e!500182 (and (= (size!25669 (_values!5342 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25939 thiss!1181))) (= (size!25668 (_keys!10062 thiss!1181)) (size!25669 (_values!5342 thiss!1181))) (bvsge (mask!25939 thiss!1181) #b00000000000000000000000000000000) (bvsge (extraKeys!5051 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!5051 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!895165 () Bool)

(assert (=> b!895165 (= e!500179 e!500182)))

(declare-fun res!605676 () Bool)

(assert (=> b!895165 (=> (not res!605676) (not e!500182))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!895165 (= res!605676 (validMask!0 (mask!25939 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8872 0))(
  ( (MissingZero!8872 (index!37858 (_ BitVec 32))) (Found!8872 (index!37859 (_ BitVec 32))) (Intermediate!8872 (undefined!9684 Bool) (index!37860 (_ BitVec 32)) (x!76152 (_ BitVec 32))) (Undefined!8872) (MissingVacant!8872 (index!37861 (_ BitVec 32))) )
))
(declare-fun lt!404433 () SeekEntryResult!8872)

(declare-fun seekEntry!0 ((_ BitVec 64) array!52452 (_ BitVec 32)) SeekEntryResult!8872)

(assert (=> b!895165 (= lt!404433 (seekEntry!0 key!785 (_keys!10062 thiss!1181) (mask!25939 thiss!1181)))))

(declare-fun e!500177 () Bool)

(declare-fun array_inv!19780 (array!52452) Bool)

(declare-fun array_inv!19781 (array!52454) Bool)

(assert (=> b!895166 (= e!500178 (and tp!55721 tp_is_empty!18233 (array_inv!19780 (_keys!10062 thiss!1181)) (array_inv!19781 (_values!5342 thiss!1181)) e!500177))))

(declare-fun b!895167 () Bool)

(assert (=> b!895167 (= e!500177 (and e!500183 mapRes!28941))))

(declare-fun condMapEmpty!28941 () Bool)

(declare-fun mapDefault!28941 () ValueCell!8635)

