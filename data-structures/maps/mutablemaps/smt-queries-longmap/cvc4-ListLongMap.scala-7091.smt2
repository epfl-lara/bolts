; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89926 () Bool)

(assert start!89926)

(declare-fun b!1029695 () Bool)

(declare-fun b_free!20603 () Bool)

(declare-fun b_next!20603 () Bool)

(assert (=> b!1029695 (= b_free!20603 (not b_next!20603))))

(declare-fun tp!72874 () Bool)

(declare-fun b_and!32967 () Bool)

(assert (=> b!1029695 (= tp!72874 b_and!32967)))

(declare-fun b!1029689 () Bool)

(declare-fun e!581435 () Bool)

(declare-datatypes ((V!37303 0))(
  ( (V!37304 (val!12212 Int)) )
))
(declare-datatypes ((ValueCell!11458 0))(
  ( (ValueCellFull!11458 (v!14788 V!37303)) (EmptyCell!11458) )
))
(declare-datatypes ((Unit!33596 0))(
  ( (Unit!33597) )
))
(declare-datatypes ((array!64690 0))(
  ( (array!64691 (arr!31145 (Array (_ BitVec 32) (_ BitVec 64))) (size!31662 (_ BitVec 32))) )
))
(declare-datatypes ((array!64692 0))(
  ( (array!64693 (arr!31146 (Array (_ BitVec 32) ValueCell!11458)) (size!31663 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5510 0))(
  ( (LongMapFixedSize!5511 (defaultEntry!6123 Int) (mask!29881 (_ BitVec 32)) (extraKeys!5855 (_ BitVec 32)) (zeroValue!5959 V!37303) (minValue!5959 V!37303) (_size!2810 (_ BitVec 32)) (_keys!11286 array!64690) (_values!6146 array!64692) (_vacant!2810 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15662 0))(
  ( (tuple2!15663 (_1!7841 Unit!33596) (_2!7841 LongMapFixedSize!5510)) )
))
(declare-fun lt!454007 () tuple2!15662)

(assert (=> b!1029689 (= e!581435 (or (not (= (size!31663 (_values!6146 (_2!7841 lt!454007))) (bvadd #b00000000000000000000000000000001 (mask!29881 (_2!7841 lt!454007))))) (not (= (size!31662 (_keys!11286 (_2!7841 lt!454007))) (size!31663 (_values!6146 (_2!7841 lt!454007))))) (bvslt (mask!29881 (_2!7841 lt!454007)) #b00000000000000000000000000000000) (bvslt (extraKeys!5855 (_2!7841 lt!454007)) #b00000000000000000000000000000000) (bvsle (extraKeys!5855 (_2!7841 lt!454007)) #b00000000000000000000000000000011)))))

(declare-fun b!1029690 () Bool)

(declare-fun res!688797 () Bool)

(declare-fun e!581433 () Bool)

(assert (=> b!1029690 (=> (not res!688797) (not e!581433))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1029690 (= res!688797 (not (= key!909 (bvneg key!909))))))

(declare-fun res!688798 () Bool)

(assert (=> start!89926 (=> (not res!688798) (not e!581433))))

(declare-fun thiss!1427 () LongMapFixedSize!5510)

(declare-fun valid!2040 (LongMapFixedSize!5510) Bool)

(assert (=> start!89926 (= res!688798 (valid!2040 thiss!1427))))

(assert (=> start!89926 e!581433))

(declare-fun e!581428 () Bool)

(assert (=> start!89926 e!581428))

(assert (=> start!89926 true))

(declare-fun b!1029691 () Bool)

(declare-fun e!581434 () Bool)

(declare-fun tp_is_empty!24323 () Bool)

(assert (=> b!1029691 (= e!581434 tp_is_empty!24323)))

(declare-fun b!1029692 () Bool)

(declare-fun e!581430 () Bool)

(assert (=> b!1029692 (= e!581430 tp_is_empty!24323)))

(declare-fun b!1029693 () Bool)

(declare-fun e!581431 () Bool)

(declare-fun mapRes!37931 () Bool)

(assert (=> b!1029693 (= e!581431 (and e!581434 mapRes!37931))))

(declare-fun condMapEmpty!37931 () Bool)

(declare-fun mapDefault!37931 () ValueCell!11458)

