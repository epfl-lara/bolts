; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15740 () Bool)

(assert start!15740)

(declare-fun b!156895 () Bool)

(declare-fun b_free!3395 () Bool)

(declare-fun b_next!3395 () Bool)

(assert (=> b!156895 (= b_free!3395 (not b_next!3395))))

(declare-fun tp!12709 () Bool)

(declare-fun b_and!9827 () Bool)

(assert (=> b!156895 (= tp!12709 b_and!9827)))

(declare-fun e!102631 () Bool)

(declare-datatypes ((V!3909 0))(
  ( (V!3910 (val!1643 Int)) )
))
(declare-datatypes ((ValueCell!1255 0))(
  ( (ValueCellFull!1255 (v!3504 V!3909)) (EmptyCell!1255) )
))
(declare-datatypes ((array!5446 0))(
  ( (array!5447 (arr!2580 (Array (_ BitVec 32) (_ BitVec 64))) (size!2858 (_ BitVec 32))) )
))
(declare-datatypes ((array!5448 0))(
  ( (array!5449 (arr!2581 (Array (_ BitVec 32) ValueCell!1255)) (size!2859 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1418 0))(
  ( (LongMapFixedSize!1419 (defaultEntry!3151 Int) (mask!7614 (_ BitVec 32)) (extraKeys!2892 (_ BitVec 32)) (zeroValue!2994 V!3909) (minValue!2994 V!3909) (_size!758 (_ BitVec 32)) (_keys!4926 array!5446) (_values!3134 array!5448) (_vacant!758 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1418)

(declare-fun e!102632 () Bool)

(declare-fun tp_is_empty!3197 () Bool)

(declare-fun array_inv!1629 (array!5446) Bool)

(declare-fun array_inv!1630 (array!5448) Bool)

(assert (=> b!156895 (= e!102631 (and tp!12709 tp_is_empty!3197 (array_inv!1629 (_keys!4926 thiss!1248)) (array_inv!1630 (_values!3134 thiss!1248)) e!102632))))

(declare-fun b!156896 () Bool)

(declare-fun res!74189 () Bool)

(declare-fun e!102629 () Bool)

(assert (=> b!156896 (=> (not res!74189) (not e!102629))))

(assert (=> b!156896 (= res!74189 (and (= (size!2859 (_values!3134 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7614 thiss!1248))) (= (size!2858 (_keys!4926 thiss!1248)) (size!2859 (_values!3134 thiss!1248))) (bvsge (mask!7614 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2892 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2892 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2892 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2892 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!2892 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!2892 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (not (= (bvand (bvor (extraKeys!2892 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!156897 () Bool)

(declare-fun res!74190 () Bool)

(assert (=> b!156897 (=> (not res!74190) (not e!102629))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5446 (_ BitVec 32)) Bool)

(assert (=> b!156897 (= res!74190 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4926 thiss!1248) (mask!7614 thiss!1248)))))

(declare-fun b!156898 () Bool)

(declare-fun e!102630 () Bool)

(declare-fun mapRes!5438 () Bool)

(assert (=> b!156898 (= e!102632 (and e!102630 mapRes!5438))))

(declare-fun condMapEmpty!5438 () Bool)

(declare-fun mapDefault!5438 () ValueCell!1255)

