; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75430 () Bool)

(assert start!75430)

(declare-fun b!887623 () Bool)

(declare-fun b_free!15529 () Bool)

(declare-fun b_next!15529 () Bool)

(assert (=> b!887623 (= b_free!15529 (not b_next!15529))))

(declare-fun tp!54532 () Bool)

(declare-fun b_and!25783 () Bool)

(assert (=> b!887623 (= tp!54532 b_and!25783)))

(declare-fun res!602217 () Bool)

(declare-fun e!494425 () Bool)

(assert (=> start!75430 (=> (not res!602217) (not e!494425))))

(declare-datatypes ((V!28775 0))(
  ( (V!28776 (val!8979 Int)) )
))
(declare-datatypes ((array!51666 0))(
  ( (array!51667 (arr!24842 (Array (_ BitVec 32) (_ BitVec 64))) (size!25283 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!8447 0))(
  ( (ValueCellFull!8447 (v!11438 V!28775)) (EmptyCell!8447) )
))
(declare-datatypes ((array!51668 0))(
  ( (array!51669 (arr!24843 (Array (_ BitVec 32) ValueCell!8447)) (size!25284 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3910 0))(
  ( (LongMapFixedSize!3911 (defaultEntry!5146 Int) (mask!25543 (_ BitVec 32)) (extraKeys!4840 (_ BitVec 32)) (zeroValue!4944 V!28775) (minValue!4944 V!28775) (_size!2010 (_ BitVec 32)) (_keys!9819 array!51666) (_values!5131 array!51668) (_vacant!2010 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1064 0))(
  ( (Cell!1065 (v!11439 LongMapFixedSize!3910)) )
))
(declare-datatypes ((LongMap!1064 0))(
  ( (LongMap!1065 (underlying!543 Cell!1064)) )
))
(declare-fun thiss!821 () LongMap!1064)

(declare-fun valid!1515 (LongMap!1064) Bool)

(assert (=> start!75430 (= res!602217 (valid!1515 thiss!821))))

(assert (=> start!75430 e!494425))

(declare-fun e!494430 () Bool)

(assert (=> start!75430 e!494430))

(assert (=> start!75430 true))

(declare-fun b!887619 () Bool)

(declare-fun e!494431 () Bool)

(assert (=> b!887619 (= e!494430 e!494431)))

(declare-fun mapIsEmpty!28315 () Bool)

(declare-fun mapRes!28315 () Bool)

(assert (=> mapIsEmpty!28315 mapRes!28315))

(declare-fun b!887620 () Bool)

(declare-fun e!494426 () Bool)

(declare-fun tp_is_empty!17857 () Bool)

(assert (=> b!887620 (= e!494426 tp_is_empty!17857)))

(declare-fun mapNonEmpty!28315 () Bool)

(declare-fun tp!54531 () Bool)

(declare-fun e!494424 () Bool)

(assert (=> mapNonEmpty!28315 (= mapRes!28315 (and tp!54531 e!494424))))

(declare-fun mapValue!28315 () ValueCell!8447)

(declare-fun mapKey!28315 () (_ BitVec 32))

(declare-fun mapRest!28315 () (Array (_ BitVec 32) ValueCell!8447))

(assert (=> mapNonEmpty!28315 (= (arr!24843 (_values!5131 (v!11439 (underlying!543 thiss!821)))) (store mapRest!28315 mapKey!28315 mapValue!28315))))

(declare-fun b!887621 () Bool)

(assert (=> b!887621 (= e!494425 false)))

(declare-fun lt!401401 () Bool)

(declare-fun key!666 () (_ BitVec 64))

(declare-fun contains!4308 (LongMapFixedSize!3910 (_ BitVec 64)) Bool)

(assert (=> b!887621 (= lt!401401 (contains!4308 (v!11439 (underlying!543 thiss!821)) key!666))))

(declare-fun b!887622 () Bool)

(assert (=> b!887622 (= e!494424 tp_is_empty!17857)))

(declare-fun e!494428 () Bool)

(declare-fun e!494427 () Bool)

(declare-fun array_inv!19528 (array!51666) Bool)

(declare-fun array_inv!19529 (array!51668) Bool)

(assert (=> b!887623 (= e!494427 (and tp!54532 tp_is_empty!17857 (array_inv!19528 (_keys!9819 (v!11439 (underlying!543 thiss!821)))) (array_inv!19529 (_values!5131 (v!11439 (underlying!543 thiss!821)))) e!494428))))

(declare-fun b!887624 () Bool)

(assert (=> b!887624 (= e!494431 e!494427)))

(declare-fun b!887625 () Bool)

(assert (=> b!887625 (= e!494428 (and e!494426 mapRes!28315))))

(declare-fun condMapEmpty!28315 () Bool)

(declare-fun mapDefault!28315 () ValueCell!8447)

