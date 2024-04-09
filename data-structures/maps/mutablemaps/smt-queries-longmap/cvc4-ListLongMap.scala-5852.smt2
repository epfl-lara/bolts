; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75674 () Bool)

(assert start!75674)

(declare-fun b!889194 () Bool)

(declare-fun b_free!15617 () Bool)

(declare-fun b_next!15617 () Bool)

(assert (=> b!889194 (= b_free!15617 (not b_next!15617))))

(declare-fun tp!54820 () Bool)

(declare-fun b_and!25875 () Bool)

(assert (=> b!889194 (= tp!54820 b_and!25875)))

(declare-fun b!889186 () Bool)

(declare-fun e!495656 () Bool)

(declare-fun e!495653 () Bool)

(assert (=> b!889186 (= e!495656 e!495653)))

(declare-fun res!602739 () Bool)

(assert (=> b!889186 (=> (not res!602739) (not e!495653))))

(declare-datatypes ((array!51856 0))(
  ( (array!51857 (arr!24930 (Array (_ BitVec 32) (_ BitVec 64))) (size!25375 (_ BitVec 32))) )
))
(declare-datatypes ((V!28891 0))(
  ( (V!28892 (val!9023 Int)) )
))
(declare-datatypes ((ValueCell!8491 0))(
  ( (ValueCellFull!8491 (v!11495 V!28891)) (EmptyCell!8491) )
))
(declare-datatypes ((array!51858 0))(
  ( (array!51859 (arr!24931 (Array (_ BitVec 32) ValueCell!8491)) (size!25376 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3998 0))(
  ( (LongMapFixedSize!3999 (defaultEntry!5196 Int) (mask!25634 (_ BitVec 32)) (extraKeys!4890 (_ BitVec 32)) (zeroValue!4994 V!28891) (minValue!4994 V!28891) (_size!2054 (_ BitVec 32)) (_keys!9875 array!51856) (_values!5181 array!51858) (_vacant!2054 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3998)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!889186 (= res!602739 (validMask!0 (mask!25634 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8761 0))(
  ( (MissingZero!8761 (index!37414 (_ BitVec 32))) (Found!8761 (index!37415 (_ BitVec 32))) (Intermediate!8761 (undefined!9573 Bool) (index!37416 (_ BitVec 32)) (x!75482 (_ BitVec 32))) (Undefined!8761) (MissingVacant!8761 (index!37417 (_ BitVec 32))) )
))
(declare-fun lt!401955 () SeekEntryResult!8761)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!51856 (_ BitVec 32)) SeekEntryResult!8761)

(assert (=> b!889186 (= lt!401955 (seekEntry!0 key!785 (_keys!9875 thiss!1181) (mask!25634 thiss!1181)))))

(declare-fun b!889187 () Bool)

(declare-fun e!495659 () Bool)

(declare-fun tp_is_empty!17945 () Bool)

(assert (=> b!889187 (= e!495659 tp_is_empty!17945)))

(declare-fun res!602741 () Bool)

(assert (=> start!75674 (=> (not res!602741) (not e!495656))))

(declare-fun valid!1545 (LongMapFixedSize!3998) Bool)

(assert (=> start!75674 (= res!602741 (valid!1545 thiss!1181))))

(assert (=> start!75674 e!495656))

(declare-fun e!495657 () Bool)

(assert (=> start!75674 e!495657))

(assert (=> start!75674 true))

(declare-fun b!889188 () Bool)

(assert (=> b!889188 (= e!495653 false)))

(declare-fun lt!401954 () Bool)

(declare-datatypes ((List!17782 0))(
  ( (Nil!17779) (Cons!17778 (h!18909 (_ BitVec 64)) (t!25089 List!17782)) )
))
(declare-fun arrayNoDuplicates!0 (array!51856 (_ BitVec 32) List!17782) Bool)

(assert (=> b!889188 (= lt!401954 (arrayNoDuplicates!0 (_keys!9875 thiss!1181) #b00000000000000000000000000000000 Nil!17779))))

(declare-fun b!889189 () Bool)

(declare-fun res!602738 () Bool)

(assert (=> b!889189 (=> (not res!602738) (not e!495653))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51856 (_ BitVec 32)) Bool)

(assert (=> b!889189 (= res!602738 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9875 thiss!1181) (mask!25634 thiss!1181)))))

(declare-fun b!889190 () Bool)

(declare-fun res!602742 () Bool)

(assert (=> b!889190 (=> (not res!602742) (not e!495653))))

(assert (=> b!889190 (= res!602742 (and (= (size!25376 (_values!5181 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25634 thiss!1181))) (= (size!25375 (_keys!9875 thiss!1181)) (size!25376 (_values!5181 thiss!1181))) (bvsge (mask!25634 thiss!1181) #b00000000000000000000000000000000) (bvsge (extraKeys!4890 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!4890 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!28472 () Bool)

(declare-fun mapRes!28472 () Bool)

(declare-fun tp!54821 () Bool)

(declare-fun e!495655 () Bool)

(assert (=> mapNonEmpty!28472 (= mapRes!28472 (and tp!54821 e!495655))))

(declare-fun mapKey!28472 () (_ BitVec 32))

(declare-fun mapRest!28472 () (Array (_ BitVec 32) ValueCell!8491))

(declare-fun mapValue!28472 () ValueCell!8491)

(assert (=> mapNonEmpty!28472 (= (arr!24931 (_values!5181 thiss!1181)) (store mapRest!28472 mapKey!28472 mapValue!28472))))

(declare-fun b!889191 () Bool)

(declare-fun res!602740 () Bool)

(assert (=> b!889191 (=> (not res!602740) (not e!495656))))

(assert (=> b!889191 (= res!602740 (not (= key!785 (bvneg key!785))))))

(declare-fun mapIsEmpty!28472 () Bool)

(assert (=> mapIsEmpty!28472 mapRes!28472))

(declare-fun b!889192 () Bool)

(declare-fun e!495658 () Bool)

(assert (=> b!889192 (= e!495658 (and e!495659 mapRes!28472))))

(declare-fun condMapEmpty!28472 () Bool)

(declare-fun mapDefault!28472 () ValueCell!8491)

