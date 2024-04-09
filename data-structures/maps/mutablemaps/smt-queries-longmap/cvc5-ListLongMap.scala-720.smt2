; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16836 () Bool)

(assert start!16836)

(declare-fun b!169601 () Bool)

(declare-fun b_free!4159 () Bool)

(declare-fun b_next!4159 () Bool)

(assert (=> b!169601 (= b_free!4159 (not b_next!4159))))

(declare-fun tp!15078 () Bool)

(declare-fun b_and!10591 () Bool)

(assert (=> b!169601 (= tp!15078 b_and!10591)))

(declare-fun res!80648 () Bool)

(declare-fun e!111854 () Bool)

(assert (=> start!16836 (=> (not res!80648) (not e!111854))))

(declare-datatypes ((V!4889 0))(
  ( (V!4890 (val!2010 Int)) )
))
(declare-datatypes ((ValueCell!1622 0))(
  ( (ValueCellFull!1622 (v!3871 V!4889)) (EmptyCell!1622) )
))
(declare-datatypes ((array!6958 0))(
  ( (array!6959 (arr!3314 (Array (_ BitVec 32) (_ BitVec 64))) (size!3602 (_ BitVec 32))) )
))
(declare-datatypes ((array!6960 0))(
  ( (array!6961 (arr!3315 (Array (_ BitVec 32) ValueCell!1622)) (size!3603 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2152 0))(
  ( (LongMapFixedSize!2153 (defaultEntry!3518 Int) (mask!8307 (_ BitVec 32)) (extraKeys!3259 (_ BitVec 32)) (zeroValue!3361 V!4889) (minValue!3361 V!4889) (_size!1125 (_ BitVec 32)) (_keys!5343 array!6958) (_values!3501 array!6960) (_vacant!1125 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2152)

(declare-fun valid!918 (LongMapFixedSize!2152) Bool)

(assert (=> start!16836 (= res!80648 (valid!918 thiss!1248))))

(assert (=> start!16836 e!111854))

(declare-fun e!111859 () Bool)

(assert (=> start!16836 e!111859))

(assert (=> start!16836 true))

(declare-fun b!169598 () Bool)

(declare-fun e!111858 () Bool)

(declare-fun tp_is_empty!3931 () Bool)

(assert (=> b!169598 (= e!111858 tp_is_empty!3931)))

(declare-fun b!169599 () Bool)

(declare-fun res!80649 () Bool)

(assert (=> b!169599 (=> (not res!80649) (not e!111854))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!169599 (= res!80649 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!169600 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!169600 (= e!111854 (not (validMask!0 (mask!8307 thiss!1248))))))

(declare-fun e!111855 () Bool)

(declare-fun array_inv!2117 (array!6958) Bool)

(declare-fun array_inv!2118 (array!6960) Bool)

(assert (=> b!169601 (= e!111859 (and tp!15078 tp_is_empty!3931 (array_inv!2117 (_keys!5343 thiss!1248)) (array_inv!2118 (_values!3501 thiss!1248)) e!111855))))

(declare-fun b!169602 () Bool)

(declare-fun e!111857 () Bool)

(declare-fun mapRes!6660 () Bool)

(assert (=> b!169602 (= e!111855 (and e!111857 mapRes!6660))))

(declare-fun condMapEmpty!6660 () Bool)

(declare-fun mapDefault!6660 () ValueCell!1622)

