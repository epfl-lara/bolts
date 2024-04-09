; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75722 () Bool)

(assert start!75722)

(declare-fun b!889834 () Bool)

(declare-fun b_free!15665 () Bool)

(declare-fun b_next!15665 () Bool)

(assert (=> b!889834 (= b_free!15665 (not b_next!15665))))

(declare-fun tp!54965 () Bool)

(declare-fun b_and!25923 () Bool)

(assert (=> b!889834 (= tp!54965 b_and!25923)))

(declare-fun e!496163 () Bool)

(declare-fun e!496160 () Bool)

(declare-fun tp_is_empty!17993 () Bool)

(declare-datatypes ((array!51952 0))(
  ( (array!51953 (arr!24978 (Array (_ BitVec 32) (_ BitVec 64))) (size!25423 (_ BitVec 32))) )
))
(declare-datatypes ((V!28955 0))(
  ( (V!28956 (val!9047 Int)) )
))
(declare-datatypes ((ValueCell!8515 0))(
  ( (ValueCellFull!8515 (v!11519 V!28955)) (EmptyCell!8515) )
))
(declare-datatypes ((array!51954 0))(
  ( (array!51955 (arr!24979 (Array (_ BitVec 32) ValueCell!8515)) (size!25424 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4046 0))(
  ( (LongMapFixedSize!4047 (defaultEntry!5220 Int) (mask!25674 (_ BitVec 32)) (extraKeys!4914 (_ BitVec 32)) (zeroValue!5018 V!28955) (minValue!5018 V!28955) (_size!2078 (_ BitVec 32)) (_keys!9899 array!51952) (_values!5205 array!51954) (_vacant!2078 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4046)

(declare-fun array_inv!19614 (array!51952) Bool)

(declare-fun array_inv!19615 (array!51954) Bool)

(assert (=> b!889834 (= e!496163 (and tp!54965 tp_is_empty!17993 (array_inv!19614 (_keys!9899 thiss!1181)) (array_inv!19615 (_values!5205 thiss!1181)) e!496160))))

(declare-fun b!889835 () Bool)

(declare-fun res!603099 () Bool)

(declare-fun e!496158 () Bool)

(assert (=> b!889835 (=> (not res!603099) (not e!496158))))

(assert (=> b!889835 (= res!603099 (and (= (size!25424 (_values!5205 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25674 thiss!1181))) (= (size!25423 (_keys!9899 thiss!1181)) (size!25424 (_values!5205 thiss!1181))) (bvsge (mask!25674 thiss!1181) #b00000000000000000000000000000000) (bvsge (extraKeys!4914 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!4914 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!889836 () Bool)

(declare-fun res!603100 () Bool)

(assert (=> b!889836 (=> (not res!603100) (not e!496158))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51952 (_ BitVec 32)) Bool)

(assert (=> b!889836 (= res!603100 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9899 thiss!1181) (mask!25674 thiss!1181)))))

(declare-fun b!889837 () Bool)

(declare-fun res!603101 () Bool)

(declare-fun e!496159 () Bool)

(assert (=> b!889837 (=> (not res!603101) (not e!496159))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!889837 (= res!603101 (not (= key!785 (bvneg key!785))))))

(declare-fun b!889838 () Bool)

(declare-fun e!496157 () Bool)

(declare-fun mapRes!28544 () Bool)

(assert (=> b!889838 (= e!496160 (and e!496157 mapRes!28544))))

(declare-fun condMapEmpty!28544 () Bool)

(declare-fun mapDefault!28544 () ValueCell!8515)

