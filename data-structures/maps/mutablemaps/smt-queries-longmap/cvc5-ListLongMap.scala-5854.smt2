; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75682 () Bool)

(assert start!75682)

(declare-fun b!889295 () Bool)

(declare-fun b_free!15625 () Bool)

(declare-fun b_next!15625 () Bool)

(assert (=> b!889295 (= b_free!15625 (not b_next!15625))))

(declare-fun tp!54845 () Bool)

(declare-fun b_and!25883 () Bool)

(assert (=> b!889295 (= tp!54845 b_and!25883)))

(declare-fun mapNonEmpty!28484 () Bool)

(declare-fun mapRes!28484 () Bool)

(declare-fun tp!54844 () Bool)

(declare-fun e!495741 () Bool)

(assert (=> mapNonEmpty!28484 (= mapRes!28484 (and tp!54844 e!495741))))

(declare-datatypes ((V!28903 0))(
  ( (V!28904 (val!9027 Int)) )
))
(declare-datatypes ((ValueCell!8495 0))(
  ( (ValueCellFull!8495 (v!11499 V!28903)) (EmptyCell!8495) )
))
(declare-fun mapValue!28484 () ValueCell!8495)

(declare-datatypes ((array!51872 0))(
  ( (array!51873 (arr!24938 (Array (_ BitVec 32) (_ BitVec 64))) (size!25383 (_ BitVec 32))) )
))
(declare-datatypes ((array!51874 0))(
  ( (array!51875 (arr!24939 (Array (_ BitVec 32) ValueCell!8495)) (size!25384 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4006 0))(
  ( (LongMapFixedSize!4007 (defaultEntry!5200 Int) (mask!25642 (_ BitVec 32)) (extraKeys!4894 (_ BitVec 32)) (zeroValue!4998 V!28903) (minValue!4998 V!28903) (_size!2058 (_ BitVec 32)) (_keys!9879 array!51872) (_values!5185 array!51874) (_vacant!2058 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4006)

(declare-fun mapKey!28484 () (_ BitVec 32))

(declare-fun mapRest!28484 () (Array (_ BitVec 32) ValueCell!8495))

(assert (=> mapNonEmpty!28484 (= (arr!24939 (_values!5185 thiss!1181)) (store mapRest!28484 mapKey!28484 mapValue!28484))))

(declare-fun b!889294 () Bool)

(declare-fun tp_is_empty!17953 () Bool)

(assert (=> b!889294 (= e!495741 tp_is_empty!17953)))

(declare-fun e!495742 () Bool)

(declare-fun e!495743 () Bool)

(declare-fun array_inv!19588 (array!51872) Bool)

(declare-fun array_inv!19589 (array!51874) Bool)

(assert (=> b!889295 (= e!495743 (and tp!54845 tp_is_empty!17953 (array_inv!19588 (_keys!9879 thiss!1181)) (array_inv!19589 (_values!5185 thiss!1181)) e!495742))))

(declare-fun b!889296 () Bool)

(declare-fun res!602800 () Bool)

(declare-fun e!495739 () Bool)

(assert (=> b!889296 (=> (not res!602800) (not e!495739))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51872 (_ BitVec 32)) Bool)

(assert (=> b!889296 (= res!602800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9879 thiss!1181) (mask!25642 thiss!1181)))))

(declare-fun b!889297 () Bool)

(assert (=> b!889297 (= e!495739 false)))

(declare-fun lt!401978 () Bool)

(declare-datatypes ((List!17785 0))(
  ( (Nil!17782) (Cons!17781 (h!18912 (_ BitVec 64)) (t!25092 List!17785)) )
))
(declare-fun arrayNoDuplicates!0 (array!51872 (_ BitVec 32) List!17785) Bool)

(assert (=> b!889297 (= lt!401978 (arrayNoDuplicates!0 (_keys!9879 thiss!1181) #b00000000000000000000000000000000 Nil!17782))))

(declare-fun mapIsEmpty!28484 () Bool)

(assert (=> mapIsEmpty!28484 mapRes!28484))

(declare-fun b!889298 () Bool)

(declare-fun res!602802 () Bool)

(declare-fun e!495737 () Bool)

(assert (=> b!889298 (=> (not res!602802) (not e!495737))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!889298 (= res!602802 (not (= key!785 (bvneg key!785))))))

(declare-fun b!889299 () Bool)

(declare-fun e!495740 () Bool)

(assert (=> b!889299 (= e!495742 (and e!495740 mapRes!28484))))

(declare-fun condMapEmpty!28484 () Bool)

(declare-fun mapDefault!28484 () ValueCell!8495)

