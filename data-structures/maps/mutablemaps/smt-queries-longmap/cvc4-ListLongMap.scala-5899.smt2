; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76266 () Bool)

(assert start!76266)

(declare-fun b!894967 () Bool)

(declare-fun b_free!15899 () Bool)

(declare-fun b_next!15899 () Bool)

(assert (=> b!894967 (= b_free!15899 (not b_next!15899))))

(declare-fun tp!55699 () Bool)

(declare-fun b_and!26209 () Bool)

(assert (=> b!894967 (= tp!55699 b_and!26209)))

(declare-fun b!894965 () Bool)

(declare-fun e!500043 () Bool)

(declare-fun e!500046 () Bool)

(assert (=> b!894965 (= e!500043 e!500046)))

(declare-fun res!605605 () Bool)

(assert (=> b!894965 (=> (not res!605605) (not e!500046))))

(declare-datatypes ((array!52438 0))(
  ( (array!52439 (arr!25212 (Array (_ BitVec 32) (_ BitVec 64))) (size!25661 (_ BitVec 32))) )
))
(declare-datatypes ((V!29267 0))(
  ( (V!29268 (val!9164 Int)) )
))
(declare-datatypes ((ValueCell!8632 0))(
  ( (ValueCellFull!8632 (v!11651 V!29267)) (EmptyCell!8632) )
))
(declare-datatypes ((array!52440 0))(
  ( (array!52441 (arr!25213 (Array (_ BitVec 32) ValueCell!8632)) (size!25662 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4280 0))(
  ( (LongMapFixedSize!4281 (defaultEntry!5352 Int) (mask!25928 (_ BitVec 32)) (extraKeys!5048 (_ BitVec 32)) (zeroValue!5152 V!29267) (minValue!5152 V!29267) (_size!2195 (_ BitVec 32)) (_keys!10055 array!52438) (_values!5339 array!52440) (_vacant!2195 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4280)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!894965 (= res!605605 (validMask!0 (mask!25928 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8869 0))(
  ( (MissingZero!8869 (index!37846 (_ BitVec 32))) (Found!8869 (index!37847 (_ BitVec 32))) (Intermediate!8869 (undefined!9681 Bool) (index!37848 (_ BitVec 32)) (x!76124 (_ BitVec 32))) (Undefined!8869) (MissingVacant!8869 (index!37849 (_ BitVec 32))) )
))
(declare-fun lt!404382 () SeekEntryResult!8869)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52438 (_ BitVec 32)) SeekEntryResult!8869)

(assert (=> b!894965 (= lt!404382 (seekEntry!0 key!785 (_keys!10055 thiss!1181) (mask!25928 thiss!1181)))))

(declare-fun b!894966 () Bool)

(assert (=> b!894966 (= e!500046 (and (= (size!25662 (_values!5339 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25928 thiss!1181))) (= (size!25661 (_keys!10055 thiss!1181)) (size!25662 (_values!5339 thiss!1181))) (bvsge (mask!25928 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!5048 thiss!1181) #b00000000000000000000000000000000)))))

(declare-fun tp_is_empty!18227 () Bool)

(declare-fun e!500044 () Bool)

(declare-fun e!500041 () Bool)

(declare-fun array_inv!19774 (array!52438) Bool)

(declare-fun array_inv!19775 (array!52440) Bool)

(assert (=> b!894967 (= e!500044 (and tp!55699 tp_is_empty!18227 (array_inv!19774 (_keys!10055 thiss!1181)) (array_inv!19775 (_values!5339 thiss!1181)) e!500041))))

(declare-fun res!605604 () Bool)

(assert (=> start!76266 (=> (not res!605604) (not e!500043))))

(declare-fun valid!1642 (LongMapFixedSize!4280) Bool)

(assert (=> start!76266 (= res!605604 (valid!1642 thiss!1181))))

(assert (=> start!76266 e!500043))

(assert (=> start!76266 e!500044))

(assert (=> start!76266 true))

(declare-fun b!894968 () Bool)

(declare-fun res!605603 () Bool)

(assert (=> b!894968 (=> (not res!605603) (not e!500043))))

(assert (=> b!894968 (= res!605603 (not (= key!785 (bvneg key!785))))))

(declare-fun mapIsEmpty!28928 () Bool)

(declare-fun mapRes!28928 () Bool)

(assert (=> mapIsEmpty!28928 mapRes!28928))

(declare-fun b!894969 () Bool)

(declare-fun e!500040 () Bool)

(assert (=> b!894969 (= e!500041 (and e!500040 mapRes!28928))))

(declare-fun condMapEmpty!28928 () Bool)

(declare-fun mapDefault!28928 () ValueCell!8632)

