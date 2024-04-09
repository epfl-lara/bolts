; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75676 () Bool)

(assert start!75676)

(declare-fun b!889220 () Bool)

(declare-fun b_free!15619 () Bool)

(declare-fun b_next!15619 () Bool)

(assert (=> b!889220 (= b_free!15619 (not b_next!15619))))

(declare-fun tp!54826 () Bool)

(declare-fun b_and!25877 () Bool)

(assert (=> b!889220 (= tp!54826 b_and!25877)))

(declare-fun mapIsEmpty!28475 () Bool)

(declare-fun mapRes!28475 () Bool)

(assert (=> mapIsEmpty!28475 mapRes!28475))

(declare-fun b!889213 () Bool)

(declare-fun e!495675 () Bool)

(declare-fun e!495679 () Bool)

(assert (=> b!889213 (= e!495675 e!495679)))

(declare-fun res!602756 () Bool)

(assert (=> b!889213 (=> (not res!602756) (not e!495679))))

(declare-datatypes ((array!51860 0))(
  ( (array!51861 (arr!24932 (Array (_ BitVec 32) (_ BitVec 64))) (size!25377 (_ BitVec 32))) )
))
(declare-datatypes ((V!28895 0))(
  ( (V!28896 (val!9024 Int)) )
))
(declare-datatypes ((ValueCell!8492 0))(
  ( (ValueCellFull!8492 (v!11496 V!28895)) (EmptyCell!8492) )
))
(declare-datatypes ((array!51862 0))(
  ( (array!51863 (arr!24933 (Array (_ BitVec 32) ValueCell!8492)) (size!25378 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4000 0))(
  ( (LongMapFixedSize!4001 (defaultEntry!5197 Int) (mask!25637 (_ BitVec 32)) (extraKeys!4891 (_ BitVec 32)) (zeroValue!4995 V!28895) (minValue!4995 V!28895) (_size!2055 (_ BitVec 32)) (_keys!9876 array!51860) (_values!5182 array!51862) (_vacant!2055 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4000)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!889213 (= res!602756 (validMask!0 (mask!25637 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8762 0))(
  ( (MissingZero!8762 (index!37418 (_ BitVec 32))) (Found!8762 (index!37419 (_ BitVec 32))) (Intermediate!8762 (undefined!9574 Bool) (index!37420 (_ BitVec 32)) (x!75491 (_ BitVec 32))) (Undefined!8762) (MissingVacant!8762 (index!37421 (_ BitVec 32))) )
))
(declare-fun lt!401960 () SeekEntryResult!8762)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!51860 (_ BitVec 32)) SeekEntryResult!8762)

(assert (=> b!889213 (= lt!401960 (seekEntry!0 key!785 (_keys!9876 thiss!1181) (mask!25637 thiss!1181)))))

(declare-fun b!889214 () Bool)

(declare-fun res!602755 () Bool)

(assert (=> b!889214 (=> (not res!602755) (not e!495679))))

(assert (=> b!889214 (= res!602755 (and (= (size!25378 (_values!5182 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25637 thiss!1181))) (= (size!25377 (_keys!9876 thiss!1181)) (size!25378 (_values!5182 thiss!1181))) (bvsge (mask!25637 thiss!1181) #b00000000000000000000000000000000) (bvsge (extraKeys!4891 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!4891 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!28475 () Bool)

(declare-fun tp!54827 () Bool)

(declare-fun e!495677 () Bool)

(assert (=> mapNonEmpty!28475 (= mapRes!28475 (and tp!54827 e!495677))))

(declare-fun mapKey!28475 () (_ BitVec 32))

(declare-fun mapRest!28475 () (Array (_ BitVec 32) ValueCell!8492))

(declare-fun mapValue!28475 () ValueCell!8492)

(assert (=> mapNonEmpty!28475 (= (arr!24933 (_values!5182 thiss!1181)) (store mapRest!28475 mapKey!28475 mapValue!28475))))

(declare-fun b!889215 () Bool)

(declare-fun res!602753 () Bool)

(assert (=> b!889215 (=> (not res!602753) (not e!495675))))

(assert (=> b!889215 (= res!602753 (not (= key!785 (bvneg key!785))))))

(declare-fun res!602757 () Bool)

(assert (=> start!75676 (=> (not res!602757) (not e!495675))))

(declare-fun valid!1546 (LongMapFixedSize!4000) Bool)

(assert (=> start!75676 (= res!602757 (valid!1546 thiss!1181))))

(assert (=> start!75676 e!495675))

(declare-fun e!495680 () Bool)

(assert (=> start!75676 e!495680))

(assert (=> start!75676 true))

(declare-fun b!889216 () Bool)

(declare-fun e!495676 () Bool)

(declare-fun tp_is_empty!17947 () Bool)

(assert (=> b!889216 (= e!495676 tp_is_empty!17947)))

(declare-fun b!889217 () Bool)

(assert (=> b!889217 (= e!495679 false)))

(declare-fun lt!401961 () Bool)

(declare-datatypes ((List!17783 0))(
  ( (Nil!17780) (Cons!17779 (h!18910 (_ BitVec 64)) (t!25090 List!17783)) )
))
(declare-fun arrayNoDuplicates!0 (array!51860 (_ BitVec 32) List!17783) Bool)

(assert (=> b!889217 (= lt!401961 (arrayNoDuplicates!0 (_keys!9876 thiss!1181) #b00000000000000000000000000000000 Nil!17780))))

(declare-fun b!889218 () Bool)

(assert (=> b!889218 (= e!495677 tp_is_empty!17947)))

(declare-fun b!889219 () Bool)

(declare-fun e!495674 () Bool)

(assert (=> b!889219 (= e!495674 (and e!495676 mapRes!28475))))

(declare-fun condMapEmpty!28475 () Bool)

(declare-fun mapDefault!28475 () ValueCell!8492)

