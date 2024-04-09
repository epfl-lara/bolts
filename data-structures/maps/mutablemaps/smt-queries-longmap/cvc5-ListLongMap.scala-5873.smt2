; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75796 () Bool)

(assert start!75796)

(declare-fun b!890912 () Bool)

(declare-fun b_free!15739 () Bool)

(declare-fun b_next!15739 () Bool)

(assert (=> b!890912 (= b_free!15739 (not b_next!15739))))

(declare-fun tp!55187 () Bool)

(declare-fun b_and!25997 () Bool)

(assert (=> b!890912 (= tp!55187 b_and!25997)))

(declare-fun b!890909 () Bool)

(declare-fun e!497082 () Bool)

(declare-fun e!497089 () Bool)

(assert (=> b!890909 (= e!497082 (not e!497089))))

(declare-fun res!603730 () Bool)

(assert (=> b!890909 (=> res!603730 e!497089)))

(declare-datatypes ((SeekEntryResult!8809 0))(
  ( (MissingZero!8809 (index!37606 (_ BitVec 32))) (Found!8809 (index!37607 (_ BitVec 32))) (Intermediate!8809 (undefined!9621 Bool) (index!37608 (_ BitVec 32)) (x!75698 (_ BitVec 32))) (Undefined!8809) (MissingVacant!8809 (index!37609 (_ BitVec 32))) )
))
(declare-fun lt!402469 () SeekEntryResult!8809)

(assert (=> b!890909 (= res!603730 (not (is-Found!8809 lt!402469)))))

(declare-fun e!497085 () Bool)

(assert (=> b!890909 e!497085))

(declare-fun res!603731 () Bool)

(assert (=> b!890909 (=> res!603731 e!497085)))

(assert (=> b!890909 (= res!603731 (not (is-Found!8809 lt!402469)))))

(declare-datatypes ((Unit!30303 0))(
  ( (Unit!30304) )
))
(declare-fun lt!402471 () Unit!30303)

(declare-datatypes ((array!52100 0))(
  ( (array!52101 (arr!25052 (Array (_ BitVec 32) (_ BitVec 64))) (size!25497 (_ BitVec 32))) )
))
(declare-datatypes ((V!29055 0))(
  ( (V!29056 (val!9084 Int)) )
))
(declare-datatypes ((ValueCell!8552 0))(
  ( (ValueCellFull!8552 (v!11556 V!29055)) (EmptyCell!8552) )
))
(declare-datatypes ((array!52102 0))(
  ( (array!52103 (arr!25053 (Array (_ BitVec 32) ValueCell!8552)) (size!25498 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4120 0))(
  ( (LongMapFixedSize!4121 (defaultEntry!5257 Int) (mask!25737 (_ BitVec 32)) (extraKeys!4951 (_ BitVec 32)) (zeroValue!5055 V!29055) (minValue!5055 V!29055) (_size!2115 (_ BitVec 32)) (_keys!9936 array!52100) (_values!5242 array!52102) (_vacant!2115 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4120)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!30 (array!52100 array!52102 (_ BitVec 32) (_ BitVec 32) V!29055 V!29055 (_ BitVec 64)) Unit!30303)

(assert (=> b!890909 (= lt!402471 (lemmaSeekEntryGivesInRangeIndex!30 (_keys!9936 thiss!1181) (_values!5242 thiss!1181) (mask!25737 thiss!1181) (extraKeys!4951 thiss!1181) (zeroValue!5055 thiss!1181) (minValue!5055 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52100 (_ BitVec 32)) SeekEntryResult!8809)

(assert (=> b!890909 (= lt!402469 (seekEntry!0 key!785 (_keys!9936 thiss!1181) (mask!25737 thiss!1181)))))

(declare-fun b!890911 () Bool)

(declare-fun res!603729 () Bool)

(assert (=> b!890911 (=> (not res!603729) (not e!497082))))

(assert (=> b!890911 (= res!603729 (not (= key!785 (bvneg key!785))))))

(declare-fun mapNonEmpty!28655 () Bool)

(declare-fun mapRes!28655 () Bool)

(declare-fun tp!55186 () Bool)

(declare-fun e!497090 () Bool)

(assert (=> mapNonEmpty!28655 (= mapRes!28655 (and tp!55186 e!497090))))

(declare-fun mapValue!28655 () ValueCell!8552)

(declare-fun mapKey!28655 () (_ BitVec 32))

(declare-fun mapRest!28655 () (Array (_ BitVec 32) ValueCell!8552))

(assert (=> mapNonEmpty!28655 (= (arr!25053 (_values!5242 thiss!1181)) (store mapRest!28655 mapKey!28655 mapValue!28655))))

(declare-fun tp_is_empty!18067 () Bool)

(declare-fun e!497083 () Bool)

(declare-fun e!497087 () Bool)

(declare-fun array_inv!19662 (array!52100) Bool)

(declare-fun array_inv!19663 (array!52102) Bool)

(assert (=> b!890912 (= e!497087 (and tp!55187 tp_is_empty!18067 (array_inv!19662 (_keys!9936 thiss!1181)) (array_inv!19663 (_values!5242 thiss!1181)) e!497083))))

(declare-fun b!890913 () Bool)

(declare-fun e!497088 () Bool)

(assert (=> b!890913 (= e!497088 true)))

(declare-fun lt!402470 () Bool)

(declare-datatypes ((List!17815 0))(
  ( (Nil!17812) (Cons!17811 (h!18942 (_ BitVec 64)) (t!25122 List!17815)) )
))
(declare-fun arrayNoDuplicates!0 (array!52100 (_ BitVec 32) List!17815) Bool)

(assert (=> b!890913 (= lt!402470 (arrayNoDuplicates!0 (_keys!9936 thiss!1181) #b00000000000000000000000000000000 Nil!17812))))

(declare-fun b!890914 () Bool)

(declare-fun res!603735 () Bool)

(assert (=> b!890914 (=> res!603735 e!497088)))

(assert (=> b!890914 (= res!603735 (or (not (= (size!25498 (_values!5242 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25737 thiss!1181)))) (not (= (size!25497 (_keys!9936 thiss!1181)) (size!25498 (_values!5242 thiss!1181)))) (bvslt (mask!25737 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4951 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4951 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!890915 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!890915 (= e!497085 (inRange!0 (index!37607 lt!402469) (mask!25737 thiss!1181)))))

(declare-fun b!890916 () Bool)

(declare-fun e!497084 () Bool)

(assert (=> b!890916 (= e!497083 (and e!497084 mapRes!28655))))

(declare-fun condMapEmpty!28655 () Bool)

(declare-fun mapDefault!28655 () ValueCell!8552)

