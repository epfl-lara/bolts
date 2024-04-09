; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75704 () Bool)

(assert start!75704)

(declare-fun b!889599 () Bool)

(declare-fun b_free!15647 () Bool)

(declare-fun b_next!15647 () Bool)

(assert (=> b!889599 (= b_free!15647 (not b_next!15647))))

(declare-fun tp!54910 () Bool)

(declare-fun b_and!25905 () Bool)

(assert (=> b!889599 (= tp!54910 b_and!25905)))

(declare-fun b!889591 () Bool)

(declare-fun e!495973 () Bool)

(assert (=> b!889591 (= e!495973 false)))

(declare-fun lt!402044 () Bool)

(declare-datatypes ((array!51916 0))(
  ( (array!51917 (arr!24960 (Array (_ BitVec 32) (_ BitVec 64))) (size!25405 (_ BitVec 32))) )
))
(declare-datatypes ((V!28931 0))(
  ( (V!28932 (val!9038 Int)) )
))
(declare-datatypes ((ValueCell!8506 0))(
  ( (ValueCellFull!8506 (v!11510 V!28931)) (EmptyCell!8506) )
))
(declare-datatypes ((array!51918 0))(
  ( (array!51919 (arr!24961 (Array (_ BitVec 32) ValueCell!8506)) (size!25406 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4028 0))(
  ( (LongMapFixedSize!4029 (defaultEntry!5211 Int) (mask!25659 (_ BitVec 32)) (extraKeys!4905 (_ BitVec 32)) (zeroValue!5009 V!28931) (minValue!5009 V!28931) (_size!2069 (_ BitVec 32)) (_keys!9890 array!51916) (_values!5196 array!51918) (_vacant!2069 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4028)

(declare-datatypes ((List!17793 0))(
  ( (Nil!17790) (Cons!17789 (h!18920 (_ BitVec 64)) (t!25100 List!17793)) )
))
(declare-fun arrayNoDuplicates!0 (array!51916 (_ BitVec 32) List!17793) Bool)

(assert (=> b!889591 (= lt!402044 (arrayNoDuplicates!0 (_keys!9890 thiss!1181) #b00000000000000000000000000000000 Nil!17790))))

(declare-fun b!889592 () Bool)

(declare-fun e!495968 () Bool)

(declare-fun tp_is_empty!17975 () Bool)

(assert (=> b!889592 (= e!495968 tp_is_empty!17975)))

(declare-fun b!889593 () Bool)

(declare-fun res!602964 () Bool)

(assert (=> b!889593 (=> (not res!602964) (not e!495973))))

(assert (=> b!889593 (= res!602964 (and (= (size!25406 (_values!5196 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25659 thiss!1181))) (= (size!25405 (_keys!9890 thiss!1181)) (size!25406 (_values!5196 thiss!1181))) (bvsge (mask!25659 thiss!1181) #b00000000000000000000000000000000) (bvsge (extraKeys!4905 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!4905 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!889594 () Bool)

(declare-fun res!602965 () Bool)

(declare-fun e!495970 () Bool)

(assert (=> b!889594 (=> (not res!602965) (not e!495970))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!889594 (= res!602965 (not (= key!785 (bvneg key!785))))))

(declare-fun b!889595 () Bool)

(declare-fun res!602966 () Bool)

(assert (=> b!889595 (=> (not res!602966) (not e!495973))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51916 (_ BitVec 32)) Bool)

(assert (=> b!889595 (= res!602966 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9890 thiss!1181) (mask!25659 thiss!1181)))))

(declare-fun b!889596 () Bool)

(declare-fun e!495969 () Bool)

(assert (=> b!889596 (= e!495969 tp_is_empty!17975)))

(declare-fun b!889597 () Bool)

(declare-fun e!495974 () Bool)

(declare-fun mapRes!28517 () Bool)

(assert (=> b!889597 (= e!495974 (and e!495969 mapRes!28517))))

(declare-fun condMapEmpty!28517 () Bool)

(declare-fun mapDefault!28517 () ValueCell!8506)

