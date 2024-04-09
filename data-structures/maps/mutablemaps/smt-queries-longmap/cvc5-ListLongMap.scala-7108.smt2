; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90130 () Bool)

(assert start!90130)

(declare-fun b!1032089 () Bool)

(declare-fun b_free!20701 () Bool)

(declare-fun b_next!20701 () Bool)

(assert (=> b!1032089 (= b_free!20701 (not b_next!20701))))

(declare-fun tp!73175 () Bool)

(declare-fun b_and!33187 () Bool)

(assert (=> b!1032089 (= tp!73175 b_and!33187)))

(declare-fun b!1032084 () Bool)

(declare-fun e!583100 () Bool)

(assert (=> b!1032084 (= e!583100 false)))

(declare-datatypes ((SeekEntryResult!9717 0))(
  ( (MissingZero!9717 (index!41238 (_ BitVec 32))) (Found!9717 (index!41239 (_ BitVec 32))) (Intermediate!9717 (undefined!10529 Bool) (index!41240 (_ BitVec 32)) (x!91944 (_ BitVec 32))) (Undefined!9717) (MissingVacant!9717 (index!41241 (_ BitVec 32))) )
))
(declare-fun lt!455973 () SeekEntryResult!9717)

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!37435 0))(
  ( (V!37436 (val!12261 Int)) )
))
(declare-datatypes ((ValueCell!11507 0))(
  ( (ValueCellFull!11507 (v!14839 V!37435)) (EmptyCell!11507) )
))
(declare-datatypes ((array!64890 0))(
  ( (array!64891 (arr!31243 (Array (_ BitVec 32) (_ BitVec 64))) (size!31761 (_ BitVec 32))) )
))
(declare-datatypes ((array!64892 0))(
  ( (array!64893 (arr!31244 (Array (_ BitVec 32) ValueCell!11507)) (size!31762 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5608 0))(
  ( (LongMapFixedSize!5609 (defaultEntry!6178 Int) (mask!29983 (_ BitVec 32)) (extraKeys!5910 (_ BitVec 32)) (zeroValue!6014 V!37435) (minValue!6014 V!37435) (_size!2859 (_ BitVec 32)) (_keys!11348 array!64890) (_values!6201 array!64892) (_vacant!2859 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5608)

(declare-fun seekEntry!0 ((_ BitVec 64) array!64890 (_ BitVec 32)) SeekEntryResult!9717)

(assert (=> b!1032084 (= lt!455973 (seekEntry!0 key!909 (_keys!11348 thiss!1427) (mask!29983 thiss!1427)))))

(declare-fun b!1032085 () Bool)

(declare-fun e!583104 () Bool)

(declare-fun tp_is_empty!24421 () Bool)

(assert (=> b!1032085 (= e!583104 tp_is_empty!24421)))

(declare-fun b!1032086 () Bool)

(declare-fun e!583103 () Bool)

(assert (=> b!1032086 (= e!583103 tp_is_empty!24421)))

(declare-fun b!1032087 () Bool)

(declare-fun res!689988 () Bool)

(assert (=> b!1032087 (=> (not res!689988) (not e!583100))))

(assert (=> b!1032087 (= res!689988 (not (= key!909 (bvneg key!909))))))

(declare-fun mapNonEmpty!38085 () Bool)

(declare-fun mapRes!38085 () Bool)

(declare-fun tp!73174 () Bool)

(assert (=> mapNonEmpty!38085 (= mapRes!38085 (and tp!73174 e!583104))))

(declare-fun mapValue!38085 () ValueCell!11507)

(declare-fun mapKey!38085 () (_ BitVec 32))

(declare-fun mapRest!38085 () (Array (_ BitVec 32) ValueCell!11507))

(assert (=> mapNonEmpty!38085 (= (arr!31244 (_values!6201 thiss!1427)) (store mapRest!38085 mapKey!38085 mapValue!38085))))

(declare-fun b!1032088 () Bool)

(declare-fun e!583105 () Bool)

(assert (=> b!1032088 (= e!583105 (and e!583103 mapRes!38085))))

(declare-fun condMapEmpty!38085 () Bool)

(declare-fun mapDefault!38085 () ValueCell!11507)

