; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19598 () Bool)

(assert start!19598)

(declare-fun b!192126 () Bool)

(declare-fun b_free!4691 () Bool)

(declare-fun b_next!4691 () Bool)

(assert (=> b!192126 (= b_free!4691 (not b_next!4691))))

(declare-fun tp!16926 () Bool)

(declare-fun b_and!11395 () Bool)

(assert (=> b!192126 (= tp!16926 b_and!11395)))

(declare-fun mapIsEmpty!7711 () Bool)

(declare-fun mapRes!7711 () Bool)

(assert (=> mapIsEmpty!7711 mapRes!7711))

(declare-fun b!192119 () Bool)

(declare-datatypes ((Unit!5811 0))(
  ( (Unit!5812) )
))
(declare-fun e!126441 () Unit!5811)

(declare-fun Unit!5813 () Unit!5811)

(assert (=> b!192119 (= e!126441 Unit!5813)))

(declare-fun lt!95516 () Unit!5811)

(declare-datatypes ((V!5597 0))(
  ( (V!5598 (val!2276 Int)) )
))
(declare-datatypes ((ValueCell!1888 0))(
  ( (ValueCellFull!1888 (v!4217 V!5597)) (EmptyCell!1888) )
))
(declare-datatypes ((array!8166 0))(
  ( (array!8167 (arr!3846 (Array (_ BitVec 32) (_ BitVec 64))) (size!4169 (_ BitVec 32))) )
))
(declare-datatypes ((array!8168 0))(
  ( (array!8169 (arr!3847 (Array (_ BitVec 32) ValueCell!1888)) (size!4170 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2684 0))(
  ( (LongMapFixedSize!2685 (defaultEntry!3922 Int) (mask!9152 (_ BitVec 32)) (extraKeys!3659 (_ BitVec 32)) (zeroValue!3763 V!5597) (minValue!3763 V!5597) (_size!1391 (_ BitVec 32)) (_keys!5904 array!8166) (_values!3905 array!8168) (_vacant!1391 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2684)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!182 (array!8166 array!8168 (_ BitVec 32) (_ BitVec 32) V!5597 V!5597 (_ BitVec 64) Int) Unit!5811)

(assert (=> b!192119 (= lt!95516 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!182 (_keys!5904 thiss!1248) (_values!3905 thiss!1248) (mask!9152 thiss!1248) (extraKeys!3659 thiss!1248) (zeroValue!3763 thiss!1248) (minValue!3763 thiss!1248) key!828 (defaultEntry!3922 thiss!1248)))))

(assert (=> b!192119 false))

(declare-fun b!192120 () Bool)

(declare-fun e!126443 () Bool)

(declare-fun tp_is_empty!4463 () Bool)

(assert (=> b!192120 (= e!126443 tp_is_empty!4463)))

(declare-fun res!90801 () Bool)

(declare-fun e!126444 () Bool)

(assert (=> start!19598 (=> (not res!90801) (not e!126444))))

(declare-fun valid!1094 (LongMapFixedSize!2684) Bool)

(assert (=> start!19598 (= res!90801 (valid!1094 thiss!1248))))

(assert (=> start!19598 e!126444))

(declare-fun e!126447 () Bool)

(assert (=> start!19598 e!126447))

(assert (=> start!19598 true))

(assert (=> start!19598 tp_is_empty!4463))

(declare-fun b!192121 () Bool)

(declare-fun res!90800 () Bool)

(assert (=> b!192121 (=> (not res!90800) (not e!126444))))

(assert (=> b!192121 (= res!90800 (not (= key!828 (bvneg key!828))))))

(declare-fun b!192122 () Bool)

(declare-fun e!126445 () Bool)

(assert (=> b!192122 (= e!126445 (and e!126443 mapRes!7711))))

(declare-fun condMapEmpty!7711 () Bool)

(declare-fun mapDefault!7711 () ValueCell!1888)

