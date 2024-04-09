; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22054 () Bool)

(assert start!22054)

(declare-fun b!227633 () Bool)

(declare-fun b_free!6109 () Bool)

(declare-fun b_next!6109 () Bool)

(assert (=> b!227633 (= b_free!6109 (not b_next!6109))))

(declare-fun tp!21469 () Bool)

(declare-fun b_and!13025 () Bool)

(assert (=> b!227633 (= tp!21469 b_and!13025)))

(declare-fun b!227632 () Bool)

(declare-fun res!112077 () Bool)

(declare-fun e!147698 () Bool)

(assert (=> b!227632 (=> res!112077 e!147698)))

(declare-datatypes ((V!7609 0))(
  ( (V!7610 (val!3030 Int)) )
))
(declare-datatypes ((ValueCell!2642 0))(
  ( (ValueCellFull!2642 (v!5046 V!7609)) (EmptyCell!2642) )
))
(declare-datatypes ((array!11184 0))(
  ( (array!11185 (arr!5311 (Array (_ BitVec 32) ValueCell!2642)) (size!5644 (_ BitVec 32))) )
))
(declare-datatypes ((array!11186 0))(
  ( (array!11187 (arr!5312 (Array (_ BitVec 32) (_ BitVec 64))) (size!5645 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3184 0))(
  ( (LongMapFixedSize!3185 (defaultEntry!4251 Int) (mask!10115 (_ BitVec 32)) (extraKeys!3988 (_ BitVec 32)) (zeroValue!4092 V!7609) (minValue!4092 V!7609) (_size!1641 (_ BitVec 32)) (_keys!6305 array!11186) (_values!4234 array!11184) (_vacant!1641 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3184)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11186 (_ BitVec 32)) Bool)

(assert (=> b!227632 (= res!112077 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6305 thiss!1504) (mask!10115 thiss!1504))))))

(declare-fun tp_is_empty!5971 () Bool)

(declare-fun e!147700 () Bool)

(declare-fun e!147687 () Bool)

(declare-fun array_inv!3501 (array!11186) Bool)

(declare-fun array_inv!3502 (array!11184) Bool)

(assert (=> b!227633 (= e!147700 (and tp!21469 tp_is_empty!5971 (array_inv!3501 (_keys!6305 thiss!1504)) (array_inv!3502 (_values!4234 thiss!1504)) e!147687))))

(declare-fun b!227634 () Bool)

(declare-fun e!147696 () Bool)

(assert (=> b!227634 (= e!147696 tp_is_empty!5971)))

(declare-fun b!227635 () Bool)

(declare-fun e!147693 () Bool)

(declare-fun mapRes!10126 () Bool)

(assert (=> b!227635 (= e!147687 (and e!147693 mapRes!10126))))

(declare-fun condMapEmpty!10126 () Bool)

(declare-fun mapDefault!10126 () ValueCell!2642)

