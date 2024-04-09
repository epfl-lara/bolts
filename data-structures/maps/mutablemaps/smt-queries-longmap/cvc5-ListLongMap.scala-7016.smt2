; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89144 () Bool)

(assert start!89144)

(declare-fun b!1021496 () Bool)

(declare-fun b_free!20149 () Bool)

(declare-fun b_next!20149 () Bool)

(assert (=> b!1021496 (= b_free!20149 (not b_next!20149))))

(declare-fun tp!71482 () Bool)

(declare-fun b_and!32365 () Bool)

(assert (=> b!1021496 (= tp!71482 b_and!32365)))

(declare-fun res!684500 () Bool)

(declare-fun e!575386 () Bool)

(assert (=> start!89144 (=> (not res!684500) (not e!575386))))

(declare-datatypes ((V!36699 0))(
  ( (V!36700 (val!11985 Int)) )
))
(declare-datatypes ((ValueCell!11231 0))(
  ( (ValueCellFull!11231 (v!14555 V!36699)) (EmptyCell!11231) )
))
(declare-datatypes ((array!63766 0))(
  ( (array!63767 (arr!30691 (Array (_ BitVec 32) (_ BitVec 64))) (size!31203 (_ BitVec 32))) )
))
(declare-datatypes ((array!63768 0))(
  ( (array!63769 (arr!30692 (Array (_ BitVec 32) ValueCell!11231)) (size!31204 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5056 0))(
  ( (LongMapFixedSize!5057 (defaultEntry!5880 Int) (mask!29448 (_ BitVec 32)) (extraKeys!5612 (_ BitVec 32)) (zeroValue!5716 V!36699) (minValue!5716 V!36699) (_size!2583 (_ BitVec 32)) (_keys!11022 array!63766) (_values!5903 array!63768) (_vacant!2583 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5056)

(declare-fun valid!1895 (LongMapFixedSize!5056) Bool)

(assert (=> start!89144 (= res!684500 (valid!1895 thiss!1427))))

(assert (=> start!89144 e!575386))

(declare-fun e!575389 () Bool)

(assert (=> start!89144 e!575389))

(assert (=> start!89144 true))

(declare-fun e!575384 () Bool)

(declare-fun tp_is_empty!23869 () Bool)

(declare-fun array_inv!23665 (array!63766) Bool)

(declare-fun array_inv!23666 (array!63768) Bool)

(assert (=> b!1021496 (= e!575389 (and tp!71482 tp_is_empty!23869 (array_inv!23665 (_keys!11022 thiss!1427)) (array_inv!23666 (_values!5903 thiss!1427)) e!575384))))

(declare-fun b!1021497 () Bool)

(assert (=> b!1021497 (= e!575386 false)))

(declare-fun lt!450094 () Bool)

(declare-datatypes ((List!21771 0))(
  ( (Nil!21768) (Cons!21767 (h!22965 (_ BitVec 64)) (t!30792 List!21771)) )
))
(declare-fun arrayNoDuplicates!0 (array!63766 (_ BitVec 32) List!21771) Bool)

(assert (=> b!1021497 (= lt!450094 (arrayNoDuplicates!0 (_keys!11022 thiss!1427) #b00000000000000000000000000000000 Nil!21768))))

(declare-fun b!1021498 () Bool)

(declare-fun res!684498 () Bool)

(assert (=> b!1021498 (=> (not res!684498) (not e!575386))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63766 (_ BitVec 32)) Bool)

(assert (=> b!1021498 (= res!684498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11022 thiss!1427) (mask!29448 thiss!1427)))))

(declare-fun b!1021499 () Bool)

(declare-fun e!575385 () Bool)

(assert (=> b!1021499 (= e!575385 tp_is_empty!23869)))

(declare-fun b!1021500 () Bool)

(declare-fun res!684501 () Bool)

(assert (=> b!1021500 (=> (not res!684501) (not e!575386))))

(assert (=> b!1021500 (= res!684501 (and (= (size!31204 (_values!5903 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29448 thiss!1427))) (= (size!31203 (_keys!11022 thiss!1427)) (size!31204 (_values!5903 thiss!1427))) (bvsge (mask!29448 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5612 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5612 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5612 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5612 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5612 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5612 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (= (bvand (bvand (extraKeys!5612 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1021501 () Bool)

(declare-fun e!575387 () Bool)

(assert (=> b!1021501 (= e!575387 tp_is_empty!23869)))

(declare-fun b!1021502 () Bool)

(declare-fun mapRes!37221 () Bool)

(assert (=> b!1021502 (= e!575384 (and e!575387 mapRes!37221))))

(declare-fun condMapEmpty!37221 () Bool)

(declare-fun mapDefault!37221 () ValueCell!11231)

