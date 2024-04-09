; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75434 () Bool)

(assert start!75434)

(declare-fun b!887667 () Bool)

(declare-fun b_free!15533 () Bool)

(declare-fun b_next!15533 () Bool)

(assert (=> b!887667 (= b_free!15533 (not b_next!15533))))

(declare-fun tp!54544 () Bool)

(declare-fun b_and!25787 () Bool)

(assert (=> b!887667 (= tp!54544 b_and!25787)))

(declare-fun b!887661 () Bool)

(declare-fun e!494474 () Bool)

(declare-fun e!494475 () Bool)

(assert (=> b!887661 (= e!494474 e!494475)))

(declare-fun mapIsEmpty!28321 () Bool)

(declare-fun mapRes!28321 () Bool)

(assert (=> mapIsEmpty!28321 mapRes!28321))

(declare-fun mapNonEmpty!28321 () Bool)

(declare-fun tp!54543 () Bool)

(declare-fun e!494476 () Bool)

(assert (=> mapNonEmpty!28321 (= mapRes!28321 (and tp!54543 e!494476))))

(declare-datatypes ((V!28779 0))(
  ( (V!28780 (val!8981 Int)) )
))
(declare-datatypes ((array!51674 0))(
  ( (array!51675 (arr!24846 (Array (_ BitVec 32) (_ BitVec 64))) (size!25287 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!8449 0))(
  ( (ValueCellFull!8449 (v!11442 V!28779)) (EmptyCell!8449) )
))
(declare-datatypes ((array!51676 0))(
  ( (array!51677 (arr!24847 (Array (_ BitVec 32) ValueCell!8449)) (size!25288 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3914 0))(
  ( (LongMapFixedSize!3915 (defaultEntry!5148 Int) (mask!25545 (_ BitVec 32)) (extraKeys!4842 (_ BitVec 32)) (zeroValue!4946 V!28779) (minValue!4946 V!28779) (_size!2012 (_ BitVec 32)) (_keys!9821 array!51674) (_values!5133 array!51676) (_vacant!2012 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1068 0))(
  ( (Cell!1069 (v!11443 LongMapFixedSize!3914)) )
))
(declare-datatypes ((LongMap!1068 0))(
  ( (LongMap!1069 (underlying!545 Cell!1068)) )
))
(declare-fun thiss!821 () LongMap!1068)

(declare-fun mapKey!28321 () (_ BitVec 32))

(declare-fun mapRest!28321 () (Array (_ BitVec 32) ValueCell!8449))

(declare-fun mapValue!28321 () ValueCell!8449)

(assert (=> mapNonEmpty!28321 (= (arr!24847 (_values!5133 (v!11443 (underlying!545 thiss!821)))) (store mapRest!28321 mapKey!28321 mapValue!28321))))

(declare-fun b!887663 () Bool)

(declare-fun e!494478 () Bool)

(declare-fun e!494472 () Bool)

(assert (=> b!887663 (= e!494478 (and e!494472 mapRes!28321))))

(declare-fun condMapEmpty!28321 () Bool)

(declare-fun mapDefault!28321 () ValueCell!8449)

