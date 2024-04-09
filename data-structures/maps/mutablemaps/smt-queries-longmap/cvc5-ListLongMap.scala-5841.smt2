; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75460 () Bool)

(assert start!75460)

(declare-fun b!887828 () Bool)

(declare-fun b_free!15547 () Bool)

(declare-fun b_next!15547 () Bool)

(assert (=> b!887828 (= b_free!15547 (not b_next!15547))))

(declare-fun tp!54588 () Bool)

(declare-fun b_and!25801 () Bool)

(assert (=> b!887828 (= tp!54588 b_and!25801)))

(declare-fun res!602240 () Bool)

(declare-fun e!494638 () Bool)

(assert (=> start!75460 (=> (not res!602240) (not e!494638))))

(declare-datatypes ((array!51704 0))(
  ( (array!51705 (arr!24860 (Array (_ BitVec 32) (_ BitVec 64))) (size!25301 (_ BitVec 32))) )
))
(declare-datatypes ((V!28799 0))(
  ( (V!28800 (val!8988 Int)) )
))
(declare-datatypes ((ValueCell!8456 0))(
  ( (ValueCellFull!8456 (v!11454 V!28799)) (EmptyCell!8456) )
))
(declare-datatypes ((array!51706 0))(
  ( (array!51707 (arr!24861 (Array (_ BitVec 32) ValueCell!8456)) (size!25302 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3928 0))(
  ( (LongMapFixedSize!3929 (defaultEntry!5155 Int) (mask!25558 (_ BitVec 32)) (extraKeys!4849 (_ BitVec 32)) (zeroValue!4953 V!28799) (minValue!4953 V!28799) (_size!2019 (_ BitVec 32)) (_keys!9828 array!51704) (_values!5140 array!51706) (_vacant!2019 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3928)

(declare-fun valid!1521 (LongMapFixedSize!3928) Bool)

(assert (=> start!75460 (= res!602240 (valid!1521 thiss!1181))))

(assert (=> start!75460 e!494638))

(declare-fun e!494640 () Bool)

(assert (=> start!75460 e!494640))

(assert (=> start!75460 true))

(declare-fun b!887826 () Bool)

(declare-fun e!494637 () Bool)

(declare-fun tp_is_empty!17875 () Bool)

(assert (=> b!887826 (= e!494637 tp_is_empty!17875)))

(declare-fun b!887827 () Bool)

(declare-fun e!494639 () Bool)

(assert (=> b!887827 (= e!494639 tp_is_empty!17875)))

(declare-fun mapNonEmpty!28345 () Bool)

(declare-fun mapRes!28345 () Bool)

(declare-fun tp!54589 () Bool)

(assert (=> mapNonEmpty!28345 (= mapRes!28345 (and tp!54589 e!494639))))

(declare-fun mapValue!28345 () ValueCell!8456)

(declare-fun mapRest!28345 () (Array (_ BitVec 32) ValueCell!8456))

(declare-fun mapKey!28345 () (_ BitVec 32))

(assert (=> mapNonEmpty!28345 (= (arr!24861 (_values!5140 thiss!1181)) (store mapRest!28345 mapKey!28345 mapValue!28345))))

(declare-fun e!494636 () Bool)

(declare-fun array_inv!19540 (array!51704) Bool)

(declare-fun array_inv!19541 (array!51706) Bool)

(assert (=> b!887828 (= e!494640 (and tp!54588 tp_is_empty!17875 (array_inv!19540 (_keys!9828 thiss!1181)) (array_inv!19541 (_values!5140 thiss!1181)) e!494636))))

(declare-fun b!887829 () Bool)

(assert (=> b!887829 (= e!494636 (and e!494637 mapRes!28345))))

(declare-fun condMapEmpty!28345 () Bool)

(declare-fun mapDefault!28345 () ValueCell!8456)

