; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83020 () Bool)

(assert start!83020)

(declare-fun b!968428 () Bool)

(declare-fun e!545833 () Bool)

(declare-fun tp_is_empty!21921 () Bool)

(assert (=> b!968428 (= e!545833 tp_is_empty!21921)))

(declare-fun mapIsEmpty!34879 () Bool)

(declare-fun mapRes!34879 () Bool)

(assert (=> mapIsEmpty!34879 mapRes!34879))

(declare-fun b!968429 () Bool)

(declare-fun e!545831 () Bool)

(assert (=> b!968429 (= e!545831 tp_is_empty!21921)))

(declare-fun b!968430 () Bool)

(declare-fun e!545830 () Bool)

(declare-datatypes ((array!59893 0))(
  ( (array!59894 (arr!28810 (Array (_ BitVec 32) (_ BitVec 64))) (size!29290 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!59893)

(assert (=> b!968430 (= e!545830 (bvsgt #b00000000000000000000000000000000 (size!29290 _keys!1717)))))

(declare-fun b!968431 () Bool)

(declare-fun e!545832 () Bool)

(assert (=> b!968431 (= e!545832 (and e!545833 mapRes!34879))))

(declare-fun condMapEmpty!34879 () Bool)

(declare-datatypes ((V!34211 0))(
  ( (V!34212 (val!11011 Int)) )
))
(declare-datatypes ((ValueCell!10479 0))(
  ( (ValueCellFull!10479 (v!13569 V!34211)) (EmptyCell!10479) )
))
(declare-datatypes ((array!59895 0))(
  ( (array!59896 (arr!28811 (Array (_ BitVec 32) ValueCell!10479)) (size!29291 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59895)

(declare-fun mapDefault!34879 () ValueCell!10479)

(assert (=> b!968431 (= condMapEmpty!34879 (= (arr!28811 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10479)) mapDefault!34879)))))

(declare-fun b!968432 () Bool)

(declare-fun res!648412 () Bool)

(assert (=> b!968432 (=> (not res!648412) (not e!545830))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59893 (_ BitVec 32)) Bool)

(assert (=> b!968432 (= res!648412 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!968433 () Bool)

(declare-fun res!648411 () Bool)

(assert (=> b!968433 (=> (not res!648411) (not e!545830))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!968433 (= res!648411 (and (= (size!29291 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29290 _keys!1717) (size!29291 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun res!648413 () Bool)

(assert (=> start!83020 (=> (not res!648413) (not e!545830))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83020 (= res!648413 (validMask!0 mask!2147))))

(assert (=> start!83020 e!545830))

(assert (=> start!83020 true))

(declare-fun array_inv!22197 (array!59895) Bool)

(assert (=> start!83020 (and (array_inv!22197 _values!1425) e!545832)))

(declare-fun array_inv!22198 (array!59893) Bool)

(assert (=> start!83020 (array_inv!22198 _keys!1717)))

(declare-fun mapNonEmpty!34879 () Bool)

(declare-fun tp!66448 () Bool)

(assert (=> mapNonEmpty!34879 (= mapRes!34879 (and tp!66448 e!545831))))

(declare-fun mapKey!34879 () (_ BitVec 32))

(declare-fun mapValue!34879 () ValueCell!10479)

(declare-fun mapRest!34879 () (Array (_ BitVec 32) ValueCell!10479))

(assert (=> mapNonEmpty!34879 (= (arr!28811 _values!1425) (store mapRest!34879 mapKey!34879 mapValue!34879))))

(assert (= (and start!83020 res!648413) b!968433))

(assert (= (and b!968433 res!648411) b!968432))

(assert (= (and b!968432 res!648412) b!968430))

(assert (= (and b!968431 condMapEmpty!34879) mapIsEmpty!34879))

(assert (= (and b!968431 (not condMapEmpty!34879)) mapNonEmpty!34879))

(get-info :version)

(assert (= (and mapNonEmpty!34879 ((_ is ValueCellFull!10479) mapValue!34879)) b!968429))

(assert (= (and b!968431 ((_ is ValueCellFull!10479) mapDefault!34879)) b!968428))

(assert (= start!83020 b!968431))

(declare-fun m!896839 () Bool)

(assert (=> b!968432 m!896839))

(declare-fun m!896841 () Bool)

(assert (=> start!83020 m!896841))

(declare-fun m!896843 () Bool)

(assert (=> start!83020 m!896843))

(declare-fun m!896845 () Bool)

(assert (=> start!83020 m!896845))

(declare-fun m!896847 () Bool)

(assert (=> mapNonEmpty!34879 m!896847))

(check-sat (not b!968432) (not start!83020) (not mapNonEmpty!34879) tp_is_empty!21921)
(check-sat)
(get-model)

(declare-fun bm!41729 () Bool)

(declare-fun call!41732 () Bool)

(assert (=> bm!41729 (= call!41732 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1717 mask!2147))))

(declare-fun d!116163 () Bool)

(declare-fun res!648428 () Bool)

(declare-fun e!545855 () Bool)

(assert (=> d!116163 (=> res!648428 e!545855)))

(assert (=> d!116163 (= res!648428 (bvsge #b00000000000000000000000000000000 (size!29290 _keys!1717)))))

(assert (=> d!116163 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147) e!545855)))

(declare-fun b!968460 () Bool)

(declare-fun e!545856 () Bool)

(assert (=> b!968460 (= e!545856 call!41732)))

(declare-fun b!968461 () Bool)

(declare-fun e!545857 () Bool)

(assert (=> b!968461 (= e!545856 e!545857)))

(declare-fun lt!431475 () (_ BitVec 64))

(assert (=> b!968461 (= lt!431475 (select (arr!28810 _keys!1717) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32331 0))(
  ( (Unit!32332) )
))
(declare-fun lt!431473 () Unit!32331)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!59893 (_ BitVec 64) (_ BitVec 32)) Unit!32331)

(assert (=> b!968461 (= lt!431473 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1717 lt!431475 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!59893 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!968461 (arrayContainsKey!0 _keys!1717 lt!431475 #b00000000000000000000000000000000)))

(declare-fun lt!431474 () Unit!32331)

(assert (=> b!968461 (= lt!431474 lt!431473)))

(declare-fun res!648427 () Bool)

(declare-datatypes ((SeekEntryResult!9185 0))(
  ( (MissingZero!9185 (index!39110 (_ BitVec 32))) (Found!9185 (index!39111 (_ BitVec 32))) (Intermediate!9185 (undefined!9997 Bool) (index!39112 (_ BitVec 32)) (x!83598 (_ BitVec 32))) (Undefined!9185) (MissingVacant!9185 (index!39113 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!59893 (_ BitVec 32)) SeekEntryResult!9185)

(assert (=> b!968461 (= res!648427 (= (seekEntryOrOpen!0 (select (arr!28810 _keys!1717) #b00000000000000000000000000000000) _keys!1717 mask!2147) (Found!9185 #b00000000000000000000000000000000)))))

(assert (=> b!968461 (=> (not res!648427) (not e!545857))))

(declare-fun b!968462 () Bool)

(assert (=> b!968462 (= e!545855 e!545856)))

(declare-fun c!99838 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!968462 (= c!99838 (validKeyInArray!0 (select (arr!28810 _keys!1717) #b00000000000000000000000000000000)))))

(declare-fun b!968463 () Bool)

(assert (=> b!968463 (= e!545857 call!41732)))

(assert (= (and d!116163 (not res!648428)) b!968462))

(assert (= (and b!968462 c!99838) b!968461))

(assert (= (and b!968462 (not c!99838)) b!968460))

(assert (= (and b!968461 res!648427) b!968463))

(assert (= (or b!968463 b!968460) bm!41729))

(declare-fun m!896859 () Bool)

(assert (=> bm!41729 m!896859))

(declare-fun m!896861 () Bool)

(assert (=> b!968461 m!896861))

(declare-fun m!896863 () Bool)

(assert (=> b!968461 m!896863))

(declare-fun m!896865 () Bool)

(assert (=> b!968461 m!896865))

(assert (=> b!968461 m!896861))

(declare-fun m!896867 () Bool)

(assert (=> b!968461 m!896867))

(assert (=> b!968462 m!896861))

(assert (=> b!968462 m!896861))

(declare-fun m!896869 () Bool)

(assert (=> b!968462 m!896869))

(assert (=> b!968432 d!116163))

(declare-fun d!116165 () Bool)

(assert (=> d!116165 (= (validMask!0 mask!2147) (and (or (= mask!2147 #b00000000000000000000000000000111) (= mask!2147 #b00000000000000000000000000001111) (= mask!2147 #b00000000000000000000000000011111) (= mask!2147 #b00000000000000000000000000111111) (= mask!2147 #b00000000000000000000000001111111) (= mask!2147 #b00000000000000000000000011111111) (= mask!2147 #b00000000000000000000000111111111) (= mask!2147 #b00000000000000000000001111111111) (= mask!2147 #b00000000000000000000011111111111) (= mask!2147 #b00000000000000000000111111111111) (= mask!2147 #b00000000000000000001111111111111) (= mask!2147 #b00000000000000000011111111111111) (= mask!2147 #b00000000000000000111111111111111) (= mask!2147 #b00000000000000001111111111111111) (= mask!2147 #b00000000000000011111111111111111) (= mask!2147 #b00000000000000111111111111111111) (= mask!2147 #b00000000000001111111111111111111) (= mask!2147 #b00000000000011111111111111111111) (= mask!2147 #b00000000000111111111111111111111) (= mask!2147 #b00000000001111111111111111111111) (= mask!2147 #b00000000011111111111111111111111) (= mask!2147 #b00000000111111111111111111111111) (= mask!2147 #b00000001111111111111111111111111) (= mask!2147 #b00000011111111111111111111111111) (= mask!2147 #b00000111111111111111111111111111) (= mask!2147 #b00001111111111111111111111111111) (= mask!2147 #b00011111111111111111111111111111) (= mask!2147 #b00111111111111111111111111111111)) (bvsle mask!2147 #b00111111111111111111111111111111)))))

(assert (=> start!83020 d!116165))

(declare-fun d!116167 () Bool)

(assert (=> d!116167 (= (array_inv!22197 _values!1425) (bvsge (size!29291 _values!1425) #b00000000000000000000000000000000))))

(assert (=> start!83020 d!116167))

(declare-fun d!116169 () Bool)

(assert (=> d!116169 (= (array_inv!22198 _keys!1717) (bvsge (size!29290 _keys!1717) #b00000000000000000000000000000000))))

(assert (=> start!83020 d!116169))

(declare-fun condMapEmpty!34885 () Bool)

(declare-fun mapDefault!34885 () ValueCell!10479)

(assert (=> mapNonEmpty!34879 (= condMapEmpty!34885 (= mapRest!34879 ((as const (Array (_ BitVec 32) ValueCell!10479)) mapDefault!34885)))))

(declare-fun e!545862 () Bool)

(declare-fun mapRes!34885 () Bool)

(assert (=> mapNonEmpty!34879 (= tp!66448 (and e!545862 mapRes!34885))))

(declare-fun b!968470 () Bool)

(declare-fun e!545863 () Bool)

(assert (=> b!968470 (= e!545863 tp_is_empty!21921)))

(declare-fun mapNonEmpty!34885 () Bool)

(declare-fun tp!66454 () Bool)

(assert (=> mapNonEmpty!34885 (= mapRes!34885 (and tp!66454 e!545863))))

(declare-fun mapRest!34885 () (Array (_ BitVec 32) ValueCell!10479))

(declare-fun mapValue!34885 () ValueCell!10479)

(declare-fun mapKey!34885 () (_ BitVec 32))

(assert (=> mapNonEmpty!34885 (= mapRest!34879 (store mapRest!34885 mapKey!34885 mapValue!34885))))

(declare-fun mapIsEmpty!34885 () Bool)

(assert (=> mapIsEmpty!34885 mapRes!34885))

(declare-fun b!968471 () Bool)

(assert (=> b!968471 (= e!545862 tp_is_empty!21921)))

(assert (= (and mapNonEmpty!34879 condMapEmpty!34885) mapIsEmpty!34885))

(assert (= (and mapNonEmpty!34879 (not condMapEmpty!34885)) mapNonEmpty!34885))

(assert (= (and mapNonEmpty!34885 ((_ is ValueCellFull!10479) mapValue!34885)) b!968470))

(assert (= (and mapNonEmpty!34879 ((_ is ValueCellFull!10479) mapDefault!34885)) b!968471))

(declare-fun m!896871 () Bool)

(assert (=> mapNonEmpty!34885 m!896871))

(check-sat (not b!968462) (not b!968461) (not mapNonEmpty!34885) (not bm!41729) tp_is_empty!21921)
(check-sat)
