; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76690 () Bool)

(assert start!76690)

(declare-fun b!897412 () Bool)

(declare-fun b_free!15985 () Bool)

(declare-fun b_next!15985 () Bool)

(assert (=> b!897412 (= b_free!15985 (not b_next!15985))))

(declare-fun tp!56009 () Bool)

(declare-fun b_and!26295 () Bool)

(assert (=> b!897412 (= tp!56009 b_and!26295)))

(declare-fun b!897408 () Bool)

(declare-fun res!606683 () Bool)

(declare-fun e!501864 () Bool)

(assert (=> b!897408 (=> res!606683 e!501864)))

(declare-datatypes ((array!52640 0))(
  ( (array!52641 (arr!25298 (Array (_ BitVec 32) (_ BitVec 64))) (size!25754 (_ BitVec 32))) )
))
(declare-datatypes ((V!29383 0))(
  ( (V!29384 (val!9207 Int)) )
))
(declare-datatypes ((ValueCell!8675 0))(
  ( (ValueCellFull!8675 (v!11694 V!29383)) (EmptyCell!8675) )
))
(declare-datatypes ((array!52642 0))(
  ( (array!52643 (arr!25299 (Array (_ BitVec 32) ValueCell!8675)) (size!25755 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4366 0))(
  ( (LongMapFixedSize!4367 (defaultEntry!5395 Int) (mask!26084 (_ BitVec 32)) (extraKeys!5106 (_ BitVec 32)) (zeroValue!5210 V!29383) (minValue!5210 V!29383) (_size!2238 (_ BitVec 32)) (_keys!10152 array!52640) (_values!5397 array!52642) (_vacant!2238 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4366)

(assert (=> b!897408 (= res!606683 (or (not (= (size!25755 (_values!5397 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26084 thiss!1181)))) (not (= (size!25754 (_keys!10152 thiss!1181)) (size!25755 (_values!5397 thiss!1181)))) (bvslt (mask!26084 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!5106 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!5106 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!897409 () Bool)

(declare-fun e!501870 () Bool)

(assert (=> b!897409 (= e!501870 e!501864)))

(declare-fun res!606688 () Bool)

(assert (=> b!897409 (=> res!606688 e!501864)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!897409 (= res!606688 (not (validMask!0 (mask!26084 thiss!1181))))))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!52640 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!897409 (arrayContainsKey!0 (_keys!10152 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-datatypes ((SeekEntryResult!8899 0))(
  ( (MissingZero!8899 (index!37966 (_ BitVec 32))) (Found!8899 (index!37967 (_ BitVec 32))) (Intermediate!8899 (undefined!9711 Bool) (index!37968 (_ BitVec 32)) (x!76457 (_ BitVec 32))) (Undefined!8899) (MissingVacant!8899 (index!37969 (_ BitVec 32))) )
))
(declare-fun lt!405171 () SeekEntryResult!8899)

(declare-datatypes ((Unit!30479 0))(
  ( (Unit!30480) )
))
(declare-fun lt!405169 () Unit!30479)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52640 (_ BitVec 64) (_ BitVec 32)) Unit!30479)

(assert (=> b!897409 (= lt!405169 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10152 thiss!1181) key!785 (index!37967 lt!405171)))))

(declare-fun res!606686 () Bool)

(declare-fun e!501863 () Bool)

(assert (=> start!76690 (=> (not res!606686) (not e!501863))))

(declare-fun valid!1669 (LongMapFixedSize!4366) Bool)

(assert (=> start!76690 (= res!606686 (valid!1669 thiss!1181))))

(assert (=> start!76690 e!501863))

(declare-fun e!501867 () Bool)

(assert (=> start!76690 e!501867))

(assert (=> start!76690 true))

(declare-fun b!897410 () Bool)

(declare-fun e!501866 () Bool)

(declare-fun tp_is_empty!18313 () Bool)

(assert (=> b!897410 (= e!501866 tp_is_empty!18313)))

(declare-fun b!897411 () Bool)

(declare-fun res!606687 () Bool)

(assert (=> b!897411 (=> (not res!606687) (not e!501863))))

(assert (=> b!897411 (= res!606687 (not (= key!785 (bvneg key!785))))))

(declare-fun e!501869 () Bool)

(declare-fun array_inv!19832 (array!52640) Bool)

(declare-fun array_inv!19833 (array!52642) Bool)

(assert (=> b!897412 (= e!501867 (and tp!56009 tp_is_empty!18313 (array_inv!19832 (_keys!10152 thiss!1181)) (array_inv!19833 (_values!5397 thiss!1181)) e!501869))))

(declare-fun b!897413 () Bool)

(declare-fun e!501865 () Bool)

(declare-fun mapRes!29109 () Bool)

(assert (=> b!897413 (= e!501869 (and e!501865 mapRes!29109))))

(declare-fun condMapEmpty!29109 () Bool)

(declare-fun mapDefault!29109 () ValueCell!8675)

