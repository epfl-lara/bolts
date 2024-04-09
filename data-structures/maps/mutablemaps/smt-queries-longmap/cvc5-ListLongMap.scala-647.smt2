; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16242 () Bool)

(assert start!16242)

(declare-fun b!161854 () Bool)

(declare-fun b_free!3691 () Bool)

(declare-fun b_next!3691 () Bool)

(assert (=> b!161854 (= b_free!3691 (not b_next!3691))))

(declare-fun tp!13643 () Bool)

(declare-fun b_and!10123 () Bool)

(assert (=> b!161854 (= tp!13643 b_and!10123)))

(declare-fun b!161847 () Bool)

(declare-fun res!76681 () Bool)

(declare-fun e!105909 () Bool)

(assert (=> b!161847 (=> (not res!76681) (not e!105909))))

(declare-datatypes ((V!4305 0))(
  ( (V!4306 (val!1791 Int)) )
))
(declare-datatypes ((ValueCell!1403 0))(
  ( (ValueCellFull!1403 (v!3652 V!4305)) (EmptyCell!1403) )
))
(declare-datatypes ((array!6064 0))(
  ( (array!6065 (arr!2876 (Array (_ BitVec 32) (_ BitVec 64))) (size!3160 (_ BitVec 32))) )
))
(declare-datatypes ((array!6066 0))(
  ( (array!6067 (arr!2877 (Array (_ BitVec 32) ValueCell!1403)) (size!3161 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1714 0))(
  ( (LongMapFixedSize!1715 (defaultEntry!3299 Int) (mask!7905 (_ BitVec 32)) (extraKeys!3040 (_ BitVec 32)) (zeroValue!3142 V!4305) (minValue!3142 V!4305) (_size!906 (_ BitVec 32)) (_keys!5100 array!6064) (_values!3282 array!6066) (_vacant!906 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!2960 0))(
  ( (tuple2!2961 (_1!1490 Bool) (_2!1490 LongMapFixedSize!1714)) )
))
(declare-fun lt!82331 () tuple2!2960)

(assert (=> b!161847 (= res!76681 (_1!1490 lt!82331))))

(declare-fun b!161848 () Bool)

(declare-fun e!105905 () Bool)

(declare-fun tp_is_empty!3493 () Bool)

(assert (=> b!161848 (= e!105905 tp_is_empty!3493)))

(declare-fun mapIsEmpty!5927 () Bool)

(declare-fun mapRes!5927 () Bool)

(assert (=> mapIsEmpty!5927 mapRes!5927))

(declare-fun b!161849 () Bool)

(declare-fun e!105910 () Bool)

(assert (=> b!161849 (= e!105910 tp_is_empty!3493)))

(declare-fun b!161850 () Bool)

(declare-fun res!76685 () Bool)

(declare-fun e!105911 () Bool)

(assert (=> b!161850 (=> (not res!76685) (not e!105911))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!161850 (= res!76685 (not (= key!828 (bvneg key!828))))))

(declare-fun b!161851 () Bool)

(declare-fun e!105907 () Bool)

(assert (=> b!161851 (= e!105907 (and e!105905 mapRes!5927))))

(declare-fun condMapEmpty!5927 () Bool)

(declare-fun thiss!1248 () LongMapFixedSize!1714)

(declare-fun mapDefault!5927 () ValueCell!1403)

