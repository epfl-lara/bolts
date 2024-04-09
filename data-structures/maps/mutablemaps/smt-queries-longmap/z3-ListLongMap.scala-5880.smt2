; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75840 () Bool)

(assert start!75840)

(declare-fun b!891690 () Bool)

(declare-fun b_free!15783 () Bool)

(declare-fun b_next!15783 () Bool)

(assert (=> b!891690 (= b_free!15783 (not b_next!15783))))

(declare-fun tp!55319 () Bool)

(declare-fun b_and!26041 () Bool)

(assert (=> b!891690 (= tp!55319 b_and!26041)))

(declare-fun mapIsEmpty!28721 () Bool)

(declare-fun mapRes!28721 () Bool)

(assert (=> mapIsEmpty!28721 mapRes!28721))

(declare-fun mapNonEmpty!28721 () Bool)

(declare-fun tp!55318 () Bool)

(declare-fun e!497684 () Bool)

(assert (=> mapNonEmpty!28721 (= mapRes!28721 (and tp!55318 e!497684))))

(declare-datatypes ((V!29113 0))(
  ( (V!29114 (val!9106 Int)) )
))
(declare-datatypes ((ValueCell!8574 0))(
  ( (ValueCellFull!8574 (v!11578 V!29113)) (EmptyCell!8574) )
))
(declare-fun mapValue!28721 () ValueCell!8574)

(declare-datatypes ((array!52188 0))(
  ( (array!52189 (arr!25096 (Array (_ BitVec 32) (_ BitVec 64))) (size!25541 (_ BitVec 32))) )
))
(declare-datatypes ((array!52190 0))(
  ( (array!52191 (arr!25097 (Array (_ BitVec 32) ValueCell!8574)) (size!25542 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4164 0))(
  ( (LongMapFixedSize!4165 (defaultEntry!5279 Int) (mask!25773 (_ BitVec 32)) (extraKeys!4973 (_ BitVec 32)) (zeroValue!5077 V!29113) (minValue!5077 V!29113) (_size!2137 (_ BitVec 32)) (_keys!9958 array!52188) (_values!5264 array!52190) (_vacant!2137 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4164)

(declare-fun mapKey!28721 () (_ BitVec 32))

(declare-fun mapRest!28721 () (Array (_ BitVec 32) ValueCell!8574))

(assert (=> mapNonEmpty!28721 (= (arr!25097 (_values!5264 thiss!1181)) (store mapRest!28721 mapKey!28721 mapValue!28721))))

(declare-fun b!891686 () Bool)

(declare-fun res!604244 () Bool)

(declare-fun e!497676 () Bool)

(assert (=> b!891686 (=> res!604244 e!497676)))

(declare-datatypes ((List!17837 0))(
  ( (Nil!17834) (Cons!17833 (h!18964 (_ BitVec 64)) (t!25144 List!17837)) )
))
(declare-fun arrayNoDuplicates!0 (array!52188 (_ BitVec 32) List!17837) Bool)

(assert (=> b!891686 (= res!604244 (not (arrayNoDuplicates!0 (_keys!9958 thiss!1181) #b00000000000000000000000000000000 Nil!17834)))))

(declare-fun b!891687 () Bool)

(declare-fun res!604243 () Bool)

(declare-fun e!497680 () Bool)

(assert (=> b!891687 (=> (not res!604243) (not e!497680))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!891687 (= res!604243 (not (= key!785 (bvneg key!785))))))

(declare-fun b!891688 () Bool)

(declare-fun res!604246 () Bool)

(assert (=> b!891688 (=> res!604246 e!497676)))

(assert (=> b!891688 (= res!604246 (or (not (= (size!25542 (_values!5264 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25773 thiss!1181)))) (not (= (size!25541 (_keys!9958 thiss!1181)) (size!25542 (_values!5264 thiss!1181)))) (bvslt (mask!25773 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4973 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4973 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!891689 () Bool)

(declare-fun e!497683 () Bool)

(declare-fun tp_is_empty!18111 () Bool)

(assert (=> b!891689 (= e!497683 tp_is_empty!18111)))

(declare-fun e!497678 () Bool)

(declare-fun e!497682 () Bool)

(declare-fun array_inv!19688 (array!52188) Bool)

(declare-fun array_inv!19689 (array!52190) Bool)

(assert (=> b!891690 (= e!497682 (and tp!55319 tp_is_empty!18111 (array_inv!19688 (_keys!9958 thiss!1181)) (array_inv!19689 (_values!5264 thiss!1181)) e!497678))))

(declare-fun b!891691 () Bool)

(assert (=> b!891691 (= e!497684 tp_is_empty!18111)))

(declare-fun b!891692 () Bool)

(declare-fun e!497677 () Bool)

(assert (=> b!891692 (= e!497680 (not e!497677))))

(declare-fun res!604241 () Bool)

(assert (=> b!891692 (=> res!604241 e!497677)))

(declare-datatypes ((SeekEntryResult!8826 0))(
  ( (MissingZero!8826 (index!37674 (_ BitVec 32))) (Found!8826 (index!37675 (_ BitVec 32))) (Intermediate!8826 (undefined!9638 Bool) (index!37676 (_ BitVec 32)) (x!75771 (_ BitVec 32))) (Undefined!8826) (MissingVacant!8826 (index!37677 (_ BitVec 32))) )
))
(declare-fun lt!402835 () SeekEntryResult!8826)

(get-info :version)

(assert (=> b!891692 (= res!604241 (not ((_ is Found!8826) lt!402835)))))

(declare-fun e!497679 () Bool)

(assert (=> b!891692 e!497679))

(declare-fun res!604242 () Bool)

(assert (=> b!891692 (=> res!604242 e!497679)))

(assert (=> b!891692 (= res!604242 (not ((_ is Found!8826) lt!402835)))))

(declare-datatypes ((Unit!30335 0))(
  ( (Unit!30336) )
))
(declare-fun lt!402832 () Unit!30335)

(declare-fun lemmaSeekEntryGivesInRangeIndex!44 (array!52188 array!52190 (_ BitVec 32) (_ BitVec 32) V!29113 V!29113 (_ BitVec 64)) Unit!30335)

(assert (=> b!891692 (= lt!402832 (lemmaSeekEntryGivesInRangeIndex!44 (_keys!9958 thiss!1181) (_values!5264 thiss!1181) (mask!25773 thiss!1181) (extraKeys!4973 thiss!1181) (zeroValue!5077 thiss!1181) (minValue!5077 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52188 (_ BitVec 32)) SeekEntryResult!8826)

(assert (=> b!891692 (= lt!402835 (seekEntry!0 key!785 (_keys!9958 thiss!1181) (mask!25773 thiss!1181)))))

(declare-fun b!891685 () Bool)

(assert (=> b!891685 (= e!497678 (and e!497683 mapRes!28721))))

(declare-fun condMapEmpty!28721 () Bool)

(declare-fun mapDefault!28721 () ValueCell!8574)

(assert (=> b!891685 (= condMapEmpty!28721 (= (arr!25097 (_values!5264 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8574)) mapDefault!28721)))))

(declare-fun res!604247 () Bool)

(assert (=> start!75840 (=> (not res!604247) (not e!497680))))

(declare-fun valid!1600 (LongMapFixedSize!4164) Bool)

(assert (=> start!75840 (= res!604247 (valid!1600 thiss!1181))))

(assert (=> start!75840 e!497680))

(assert (=> start!75840 e!497682))

(assert (=> start!75840 true))

(declare-fun b!891693 () Bool)

(declare-fun res!604248 () Bool)

(assert (=> b!891693 (=> res!604248 e!497676)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52188 (_ BitVec 32)) Bool)

(assert (=> b!891693 (= res!604248 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9958 thiss!1181) (mask!25773 thiss!1181))))))

(declare-fun b!891694 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!891694 (= e!497679 (inRange!0 (index!37675 lt!402835) (mask!25773 thiss!1181)))))

(declare-fun b!891695 () Bool)

(assert (=> b!891695 (= e!497676 true)))

(declare-fun lt!402834 () Bool)

(declare-datatypes ((tuple2!11988 0))(
  ( (tuple2!11989 (_1!6004 (_ BitVec 64)) (_2!6004 V!29113)) )
))
(declare-datatypes ((List!17838 0))(
  ( (Nil!17835) (Cons!17834 (h!18965 tuple2!11988) (t!25145 List!17838)) )
))
(declare-datatypes ((ListLongMap!10699 0))(
  ( (ListLongMap!10700 (toList!5365 List!17838)) )
))
(declare-fun lt!402833 () ListLongMap!10699)

(declare-fun contains!4342 (ListLongMap!10699 (_ BitVec 64)) Bool)

(assert (=> b!891695 (= lt!402834 (contains!4342 lt!402833 key!785))))

(declare-fun b!891696 () Bool)

(assert (=> b!891696 (= e!497677 e!497676)))

(declare-fun res!604245 () Bool)

(assert (=> b!891696 (=> res!604245 e!497676)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!891696 (= res!604245 (not (validMask!0 (mask!25773 thiss!1181))))))

(assert (=> b!891696 (contains!4342 lt!402833 (select (arr!25096 (_keys!9958 thiss!1181)) (index!37675 lt!402835)))))

(declare-fun getCurrentListMap!2618 (array!52188 array!52190 (_ BitVec 32) (_ BitVec 32) V!29113 V!29113 (_ BitVec 32) Int) ListLongMap!10699)

(assert (=> b!891696 (= lt!402833 (getCurrentListMap!2618 (_keys!9958 thiss!1181) (_values!5264 thiss!1181) (mask!25773 thiss!1181) (extraKeys!4973 thiss!1181) (zeroValue!5077 thiss!1181) (minValue!5077 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5279 thiss!1181)))))

(declare-fun lt!402837 () Unit!30335)

(declare-fun lemmaValidKeyInArrayIsInListMap!211 (array!52188 array!52190 (_ BitVec 32) (_ BitVec 32) V!29113 V!29113 (_ BitVec 32) Int) Unit!30335)

(assert (=> b!891696 (= lt!402837 (lemmaValidKeyInArrayIsInListMap!211 (_keys!9958 thiss!1181) (_values!5264 thiss!1181) (mask!25773 thiss!1181) (extraKeys!4973 thiss!1181) (zeroValue!5077 thiss!1181) (minValue!5077 thiss!1181) (index!37675 lt!402835) (defaultEntry!5279 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52188 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!891696 (arrayContainsKey!0 (_keys!9958 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!402836 () Unit!30335)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52188 (_ BitVec 64) (_ BitVec 32)) Unit!30335)

(assert (=> b!891696 (= lt!402836 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9958 thiss!1181) key!785 (index!37675 lt!402835)))))

(assert (= (and start!75840 res!604247) b!891687))

(assert (= (and b!891687 res!604243) b!891692))

(assert (= (and b!891692 (not res!604242)) b!891694))

(assert (= (and b!891692 (not res!604241)) b!891696))

(assert (= (and b!891696 (not res!604245)) b!891688))

(assert (= (and b!891688 (not res!604246)) b!891693))

(assert (= (and b!891693 (not res!604248)) b!891686))

(assert (= (and b!891686 (not res!604244)) b!891695))

(assert (= (and b!891685 condMapEmpty!28721) mapIsEmpty!28721))

(assert (= (and b!891685 (not condMapEmpty!28721)) mapNonEmpty!28721))

(assert (= (and mapNonEmpty!28721 ((_ is ValueCellFull!8574) mapValue!28721)) b!891691))

(assert (= (and b!891685 ((_ is ValueCellFull!8574) mapDefault!28721)) b!891689))

(assert (= b!891690 b!891685))

(assert (= start!75840 b!891690))

(declare-fun m!830081 () Bool)

(assert (=> mapNonEmpty!28721 m!830081))

(declare-fun m!830083 () Bool)

(assert (=> b!891695 m!830083))

(declare-fun m!830085 () Bool)

(assert (=> b!891694 m!830085))

(declare-fun m!830087 () Bool)

(assert (=> b!891690 m!830087))

(declare-fun m!830089 () Bool)

(assert (=> b!891690 m!830089))

(declare-fun m!830091 () Bool)

(assert (=> b!891696 m!830091))

(declare-fun m!830093 () Bool)

(assert (=> b!891696 m!830093))

(declare-fun m!830095 () Bool)

(assert (=> b!891696 m!830095))

(declare-fun m!830097 () Bool)

(assert (=> b!891696 m!830097))

(declare-fun m!830099 () Bool)

(assert (=> b!891696 m!830099))

(assert (=> b!891696 m!830095))

(declare-fun m!830101 () Bool)

(assert (=> b!891696 m!830101))

(declare-fun m!830103 () Bool)

(assert (=> b!891696 m!830103))

(declare-fun m!830105 () Bool)

(assert (=> b!891692 m!830105))

(declare-fun m!830107 () Bool)

(assert (=> b!891692 m!830107))

(declare-fun m!830109 () Bool)

(assert (=> start!75840 m!830109))

(declare-fun m!830111 () Bool)

(assert (=> b!891693 m!830111))

(declare-fun m!830113 () Bool)

(assert (=> b!891686 m!830113))

(check-sat (not b_next!15783) b_and!26041 (not b!891696) (not b!891690) (not b!891695) (not start!75840) (not b!891692) (not b!891686) tp_is_empty!18111 (not b!891693) (not b!891694) (not mapNonEmpty!28721))
(check-sat b_and!26041 (not b_next!15783))
