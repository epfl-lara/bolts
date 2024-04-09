; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76262 () Bool)

(assert start!76262)

(declare-fun b!894927 () Bool)

(declare-fun b_free!15895 () Bool)

(declare-fun b_next!15895 () Bool)

(assert (=> b!894927 (= b_free!15895 (not b_next!15895))))

(declare-fun tp!55687 () Bool)

(declare-fun b_and!26205 () Bool)

(assert (=> b!894927 (= tp!55687 b_and!26205)))

(declare-fun b!894923 () Bool)

(declare-fun e!499999 () Bool)

(declare-datatypes ((array!52430 0))(
  ( (array!52431 (arr!25208 (Array (_ BitVec 32) (_ BitVec 64))) (size!25657 (_ BitVec 32))) )
))
(declare-datatypes ((V!29263 0))(
  ( (V!29264 (val!9162 Int)) )
))
(declare-datatypes ((ValueCell!8630 0))(
  ( (ValueCellFull!8630 (v!11649 V!29263)) (EmptyCell!8630) )
))
(declare-datatypes ((array!52432 0))(
  ( (array!52433 (arr!25209 (Array (_ BitVec 32) ValueCell!8630)) (size!25658 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4276 0))(
  ( (LongMapFixedSize!4277 (defaultEntry!5350 Int) (mask!25926 (_ BitVec 32)) (extraKeys!5046 (_ BitVec 32)) (zeroValue!5150 V!29263) (minValue!5150 V!29263) (_size!2193 (_ BitVec 32)) (_keys!10053 array!52430) (_values!5337 array!52432) (_vacant!2193 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4276)

(assert (=> b!894923 (= e!499999 (and (= (size!25658 (_values!5337 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25926 thiss!1181))) (= (size!25657 (_keys!10053 thiss!1181)) (size!25658 (_values!5337 thiss!1181))) (bvsge (mask!25926 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!5046 thiss!1181) #b00000000000000000000000000000000)))))

(declare-fun b!894924 () Bool)

(declare-fun e!499998 () Bool)

(declare-fun tp_is_empty!18223 () Bool)

(assert (=> b!894924 (= e!499998 tp_is_empty!18223)))

(declare-fun b!894925 () Bool)

(declare-fun res!605587 () Bool)

(declare-fun e!500004 () Bool)

(assert (=> b!894925 (=> (not res!605587) (not e!500004))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!894925 (= res!605587 (not (= key!785 (bvneg key!785))))))

(declare-fun mapIsEmpty!28922 () Bool)

(declare-fun mapRes!28922 () Bool)

(assert (=> mapIsEmpty!28922 mapRes!28922))

(declare-fun b!894926 () Bool)

(assert (=> b!894926 (= e!500004 e!499999)))

(declare-fun res!605586 () Bool)

(assert (=> b!894926 (=> (not res!605586) (not e!499999))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!894926 (= res!605586 (validMask!0 (mask!25926 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8867 0))(
  ( (MissingZero!8867 (index!37838 (_ BitVec 32))) (Found!8867 (index!37839 (_ BitVec 32))) (Intermediate!8867 (undefined!9679 Bool) (index!37840 (_ BitVec 32)) (x!76122 (_ BitVec 32))) (Undefined!8867) (MissingVacant!8867 (index!37841 (_ BitVec 32))) )
))
(declare-fun lt!404376 () SeekEntryResult!8867)

(declare-fun seekEntry!0 ((_ BitVec 64) array!52430 (_ BitVec 32)) SeekEntryResult!8867)

(assert (=> b!894926 (= lt!404376 (seekEntry!0 key!785 (_keys!10053 thiss!1181) (mask!25926 thiss!1181)))))

(declare-fun mapNonEmpty!28922 () Bool)

(declare-fun tp!55688 () Bool)

(assert (=> mapNonEmpty!28922 (= mapRes!28922 (and tp!55688 e!499998))))

(declare-fun mapValue!28922 () ValueCell!8630)

(declare-fun mapRest!28922 () (Array (_ BitVec 32) ValueCell!8630))

(declare-fun mapKey!28922 () (_ BitVec 32))

(assert (=> mapNonEmpty!28922 (= (arr!25209 (_values!5337 thiss!1181)) (store mapRest!28922 mapKey!28922 mapValue!28922))))

(declare-fun e!500001 () Bool)

(declare-fun e!500003 () Bool)

(declare-fun array_inv!19770 (array!52430) Bool)

(declare-fun array_inv!19771 (array!52432) Bool)

(assert (=> b!894927 (= e!500003 (and tp!55687 tp_is_empty!18223 (array_inv!19770 (_keys!10053 thiss!1181)) (array_inv!19771 (_values!5337 thiss!1181)) e!500001))))

(declare-fun b!894928 () Bool)

(declare-fun e!500000 () Bool)

(assert (=> b!894928 (= e!500001 (and e!500000 mapRes!28922))))

(declare-fun condMapEmpty!28922 () Bool)

(declare-fun mapDefault!28922 () ValueCell!8630)

