; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75778 () Bool)

(assert start!75778)

(declare-fun b!890614 () Bool)

(declare-fun b_free!15721 () Bool)

(declare-fun b_next!15721 () Bool)

(assert (=> b!890614 (= b_free!15721 (not b_next!15721))))

(declare-fun tp!55133 () Bool)

(declare-fun b_and!25979 () Bool)

(assert (=> b!890614 (= tp!55133 b_and!25979)))

(declare-fun b!890612 () Bool)

(declare-fun res!603543 () Bool)

(declare-fun e!496847 () Bool)

(assert (=> b!890612 (=> (not res!603543) (not e!496847))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!890612 (= res!603543 (not (= key!785 (bvneg key!785))))))

(declare-fun b!890613 () Bool)

(declare-fun e!496843 () Bool)

(declare-datatypes ((SeekEntryResult!8802 0))(
  ( (MissingZero!8802 (index!37578 (_ BitVec 32))) (Found!8802 (index!37579 (_ BitVec 32))) (Intermediate!8802 (undefined!9614 Bool) (index!37580 (_ BitVec 32)) (x!75667 (_ BitVec 32))) (Undefined!8802) (MissingVacant!8802 (index!37581 (_ BitVec 32))) )
))
(declare-fun lt!402362 () SeekEntryResult!8802)

(declare-datatypes ((array!52064 0))(
  ( (array!52065 (arr!25034 (Array (_ BitVec 32) (_ BitVec 64))) (size!25479 (_ BitVec 32))) )
))
(declare-datatypes ((V!29031 0))(
  ( (V!29032 (val!9075 Int)) )
))
(declare-datatypes ((ValueCell!8543 0))(
  ( (ValueCellFull!8543 (v!11547 V!29031)) (EmptyCell!8543) )
))
(declare-datatypes ((array!52066 0))(
  ( (array!52067 (arr!25035 (Array (_ BitVec 32) ValueCell!8543)) (size!25480 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4102 0))(
  ( (LongMapFixedSize!4103 (defaultEntry!5248 Int) (mask!25722 (_ BitVec 32)) (extraKeys!4942 (_ BitVec 32)) (zeroValue!5046 V!29031) (minValue!5046 V!29031) (_size!2106 (_ BitVec 32)) (_keys!9927 array!52064) (_values!5233 array!52066) (_vacant!2106 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4102)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!890613 (= e!496843 (inRange!0 (index!37579 lt!402362) (mask!25722 thiss!1181)))))

(declare-fun tp_is_empty!18049 () Bool)

(declare-fun e!496839 () Bool)

(declare-fun e!496844 () Bool)

(declare-fun array_inv!19654 (array!52064) Bool)

(declare-fun array_inv!19655 (array!52066) Bool)

(assert (=> b!890614 (= e!496844 (and tp!55133 tp_is_empty!18049 (array_inv!19654 (_keys!9927 thiss!1181)) (array_inv!19655 (_values!5233 thiss!1181)) e!496839))))

(declare-fun b!890615 () Bool)

(declare-fun res!603541 () Bool)

(declare-fun e!496840 () Bool)

(assert (=> b!890615 (=> res!603541 e!496840)))

(assert (=> b!890615 (= res!603541 (or (not (= (size!25480 (_values!5233 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25722 thiss!1181)))) (not (= (size!25479 (_keys!9927 thiss!1181)) (size!25480 (_values!5233 thiss!1181)))) (bvslt (mask!25722 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4942 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4942 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!890616 () Bool)

(declare-fun e!496841 () Bool)

(assert (=> b!890616 (= e!496841 e!496840)))

(declare-fun res!603544 () Bool)

(assert (=> b!890616 (=> res!603544 e!496840)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!890616 (= res!603544 (not (validMask!0 (mask!25722 thiss!1181))))))

(declare-fun arrayContainsKey!0 (array!52064 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!890616 (arrayContainsKey!0 (_keys!9927 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30289 0))(
  ( (Unit!30290) )
))
(declare-fun lt!402360 () Unit!30289)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52064 (_ BitVec 64) (_ BitVec 32)) Unit!30289)

(assert (=> b!890616 (= lt!402360 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9927 thiss!1181) key!785 (index!37579 lt!402362)))))

(declare-fun res!603545 () Bool)

(assert (=> start!75778 (=> (not res!603545) (not e!496847))))

(declare-fun valid!1582 (LongMapFixedSize!4102) Bool)

(assert (=> start!75778 (= res!603545 (valid!1582 thiss!1181))))

(assert (=> start!75778 e!496847))

(assert (=> start!75778 e!496844))

(assert (=> start!75778 true))

(declare-fun b!890617 () Bool)

(assert (=> b!890617 (= e!496847 (not e!496841))))

(declare-fun res!603540 () Bool)

(assert (=> b!890617 (=> res!603540 e!496841)))

(assert (=> b!890617 (= res!603540 (not (is-Found!8802 lt!402362)))))

(assert (=> b!890617 e!496843))

(declare-fun res!603542 () Bool)

(assert (=> b!890617 (=> res!603542 e!496843)))

(assert (=> b!890617 (= res!603542 (not (is-Found!8802 lt!402362)))))

(declare-fun lt!402361 () Unit!30289)

(declare-fun lemmaSeekEntryGivesInRangeIndex!24 (array!52064 array!52066 (_ BitVec 32) (_ BitVec 32) V!29031 V!29031 (_ BitVec 64)) Unit!30289)

(assert (=> b!890617 (= lt!402361 (lemmaSeekEntryGivesInRangeIndex!24 (_keys!9927 thiss!1181) (_values!5233 thiss!1181) (mask!25722 thiss!1181) (extraKeys!4942 thiss!1181) (zeroValue!5046 thiss!1181) (minValue!5046 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52064 (_ BitVec 32)) SeekEntryResult!8802)

(assert (=> b!890617 (= lt!402362 (seekEntry!0 key!785 (_keys!9927 thiss!1181) (mask!25722 thiss!1181)))))

(declare-fun b!890618 () Bool)

(declare-fun e!496842 () Bool)

(assert (=> b!890618 (= e!496842 tp_is_empty!18049)))

(declare-fun mapIsEmpty!28628 () Bool)

(declare-fun mapRes!28628 () Bool)

(assert (=> mapIsEmpty!28628 mapRes!28628))

(declare-fun b!890619 () Bool)

(declare-fun e!496846 () Bool)

(assert (=> b!890619 (= e!496846 tp_is_empty!18049)))

(declare-fun mapNonEmpty!28628 () Bool)

(declare-fun tp!55132 () Bool)

(assert (=> mapNonEmpty!28628 (= mapRes!28628 (and tp!55132 e!496842))))

(declare-fun mapRest!28628 () (Array (_ BitVec 32) ValueCell!8543))

(declare-fun mapKey!28628 () (_ BitVec 32))

(declare-fun mapValue!28628 () ValueCell!8543)

(assert (=> mapNonEmpty!28628 (= (arr!25035 (_values!5233 thiss!1181)) (store mapRest!28628 mapKey!28628 mapValue!28628))))

(declare-fun b!890620 () Bool)

(assert (=> b!890620 (= e!496840 true)))

(declare-fun lt!402363 () Bool)

(declare-datatypes ((List!17810 0))(
  ( (Nil!17807) (Cons!17806 (h!18937 (_ BitVec 64)) (t!25117 List!17810)) )
))
(declare-fun arrayNoDuplicates!0 (array!52064 (_ BitVec 32) List!17810) Bool)

(assert (=> b!890620 (= lt!402363 (arrayNoDuplicates!0 (_keys!9927 thiss!1181) #b00000000000000000000000000000000 Nil!17807))))

(declare-fun b!890621 () Bool)

(assert (=> b!890621 (= e!496839 (and e!496846 mapRes!28628))))

(declare-fun condMapEmpty!28628 () Bool)

(declare-fun mapDefault!28628 () ValueCell!8543)

