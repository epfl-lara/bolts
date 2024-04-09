; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91520 () Bool)

(assert start!91520)

(declare-fun b!1042187 () Bool)

(declare-fun b_free!21055 () Bool)

(declare-fun b_next!21055 () Bool)

(assert (=> b!1042187 (= b_free!21055 (not b_next!21055))))

(declare-fun tp!74389 () Bool)

(declare-fun b_and!33605 () Bool)

(assert (=> b!1042187 (= tp!74389 b_and!33605)))

(declare-fun tp_is_empty!24775 () Bool)

(declare-datatypes ((V!37907 0))(
  ( (V!37908 (val!12438 Int)) )
))
(declare-datatypes ((ValueCell!11684 0))(
  ( (ValueCellFull!11684 (v!15030 V!37907)) (EmptyCell!11684) )
))
(declare-datatypes ((array!65686 0))(
  ( (array!65687 (arr!31597 (Array (_ BitVec 32) (_ BitVec 64))) (size!32133 (_ BitVec 32))) )
))
(declare-datatypes ((array!65688 0))(
  ( (array!65689 (arr!31598 (Array (_ BitVec 32) ValueCell!11684)) (size!32134 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5962 0))(
  ( (LongMapFixedSize!5963 (defaultEntry!6363 Int) (mask!30415 (_ BitVec 32)) (extraKeys!6091 (_ BitVec 32)) (zeroValue!6197 V!37907) (minValue!6197 V!37907) (_size!3036 (_ BitVec 32)) (_keys!11608 array!65686) (_values!6386 array!65688) (_vacant!3036 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5962)

(declare-fun e!590366 () Bool)

(declare-fun e!590368 () Bool)

(declare-fun array_inv!24257 (array!65686) Bool)

(declare-fun array_inv!24258 (array!65688) Bool)

(assert (=> b!1042187 (= e!590368 (and tp!74389 tp_is_empty!24775 (array_inv!24257 (_keys!11608 thiss!1427)) (array_inv!24258 (_values!6386 thiss!1427)) e!590366))))

(declare-fun b!1042188 () Bool)

(declare-fun e!590372 () Bool)

(assert (=> b!1042188 (= e!590372 tp_is_empty!24775)))

(declare-fun b!1042189 () Bool)

(declare-fun e!590370 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65686 (_ BitVec 32)) Bool)

(assert (=> b!1042189 (= e!590370 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11608 thiss!1427) (mask!30415 thiss!1427)))))

(declare-fun b!1042190 () Bool)

(declare-fun res!694546 () Bool)

(assert (=> b!1042190 (=> res!694546 e!590370)))

(assert (=> b!1042190 (= res!694546 (or (not (= (size!32134 (_values!6386 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30415 thiss!1427)))) (not (= (size!32133 (_keys!11608 thiss!1427)) (size!32134 (_values!6386 thiss!1427)))) (bvslt (mask!30415 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!6091 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!6091 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun b!1042191 () Bool)

(declare-fun res!694547 () Bool)

(declare-fun e!590371 () Bool)

(assert (=> b!1042191 (=> (not res!694547) (not e!590371))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1042191 (= res!694547 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1042192 () Bool)

(declare-fun e!590369 () Bool)

(declare-fun mapRes!38768 () Bool)

(assert (=> b!1042192 (= e!590366 (and e!590369 mapRes!38768))))

(declare-fun condMapEmpty!38768 () Bool)

(declare-fun mapDefault!38768 () ValueCell!11684)

