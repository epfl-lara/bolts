; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35298 () Bool)

(assert start!35298)

(declare-fun b!353402 () Bool)

(declare-fun res!195994 () Bool)

(declare-fun e!216470 () Bool)

(assert (=> b!353402 (=> (not res!195994) (not e!216470))))

(declare-datatypes ((array!19121 0))(
  ( (array!19122 (arr!9055 (Array (_ BitVec 32) (_ BitVec 64))) (size!9407 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19121)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19121 (_ BitVec 32)) Bool)

(assert (=> b!353402 (= res!195994 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!353403 () Bool)

(declare-fun e!216472 () Bool)

(declare-fun e!216473 () Bool)

(declare-fun mapRes!13173 () Bool)

(assert (=> b!353403 (= e!216472 (and e!216473 mapRes!13173))))

(declare-fun condMapEmpty!13173 () Bool)

(declare-datatypes ((V!11357 0))(
  ( (V!11358 (val!3937 Int)) )
))
(declare-datatypes ((ValueCell!3549 0))(
  ( (ValueCellFull!3549 (v!6126 V!11357)) (EmptyCell!3549) )
))
(declare-datatypes ((array!19123 0))(
  ( (array!19124 (arr!9056 (Array (_ BitVec 32) ValueCell!3549)) (size!9408 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19123)

(declare-fun mapDefault!13173 () ValueCell!3549)

(assert (=> b!353403 (= condMapEmpty!13173 (= (arr!9056 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3549)) mapDefault!13173)))))

(declare-fun res!195995 () Bool)

(assert (=> start!35298 (=> (not res!195995) (not e!216470))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35298 (= res!195995 (validMask!0 mask!1842))))

(assert (=> start!35298 e!216470))

(assert (=> start!35298 true))

(declare-fun array_inv!6668 (array!19123) Bool)

(assert (=> start!35298 (and (array_inv!6668 _values!1208) e!216472)))

(declare-fun array_inv!6669 (array!19121) Bool)

(assert (=> start!35298 (array_inv!6669 _keys!1456)))

(declare-fun mapIsEmpty!13173 () Bool)

(assert (=> mapIsEmpty!13173 mapRes!13173))

(declare-fun b!353404 () Bool)

(declare-fun res!195993 () Bool)

(assert (=> b!353404 (=> (not res!195993) (not e!216470))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!353404 (= res!195993 (and (= (size!9408 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9407 _keys!1456) (size!9408 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!13173 () Bool)

(declare-fun tp!27069 () Bool)

(declare-fun e!216474 () Bool)

(assert (=> mapNonEmpty!13173 (= mapRes!13173 (and tp!27069 e!216474))))

(declare-fun mapKey!13173 () (_ BitVec 32))

(declare-fun mapValue!13173 () ValueCell!3549)

(declare-fun mapRest!13173 () (Array (_ BitVec 32) ValueCell!3549))

(assert (=> mapNonEmpty!13173 (= (arr!9056 _values!1208) (store mapRest!13173 mapKey!13173 mapValue!13173))))

(declare-fun b!353405 () Bool)

(declare-fun tp_is_empty!7785 () Bool)

(assert (=> b!353405 (= e!216473 tp_is_empty!7785)))

(declare-fun b!353406 () Bool)

(assert (=> b!353406 (= e!216470 (and (bvsle #b00000000000000000000000000000000 (size!9407 _keys!1456)) (bvsge (size!9407 _keys!1456) #b01111111111111111111111111111111)))))

(declare-fun b!353407 () Bool)

(assert (=> b!353407 (= e!216474 tp_is_empty!7785)))

(assert (= (and start!35298 res!195995) b!353404))

(assert (= (and b!353404 res!195993) b!353402))

(assert (= (and b!353402 res!195994) b!353406))

(assert (= (and b!353403 condMapEmpty!13173) mapIsEmpty!13173))

(assert (= (and b!353403 (not condMapEmpty!13173)) mapNonEmpty!13173))

(get-info :version)

(assert (= (and mapNonEmpty!13173 ((_ is ValueCellFull!3549) mapValue!13173)) b!353407))

(assert (= (and b!353403 ((_ is ValueCellFull!3549) mapDefault!13173)) b!353405))

(assert (= start!35298 b!353403))

(declare-fun m!352759 () Bool)

(assert (=> b!353402 m!352759))

(declare-fun m!352761 () Bool)

(assert (=> start!35298 m!352761))

(declare-fun m!352763 () Bool)

(assert (=> start!35298 m!352763))

(declare-fun m!352765 () Bool)

(assert (=> start!35298 m!352765))

(declare-fun m!352767 () Bool)

(assert (=> mapNonEmpty!13173 m!352767))

(check-sat (not b!353402) (not start!35298) (not mapNonEmpty!13173) tp_is_empty!7785)
(check-sat)
(get-model)

(declare-fun bm!27140 () Bool)

(declare-fun call!27143 () Bool)

(assert (=> bm!27140 (= call!27143 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1456 mask!1842))))

(declare-fun b!353434 () Bool)

(declare-fun e!216497 () Bool)

(assert (=> b!353434 (= e!216497 call!27143)))

(declare-fun b!353435 () Bool)

(declare-fun e!216496 () Bool)

(assert (=> b!353435 (= e!216496 call!27143)))

(declare-fun d!71499 () Bool)

(declare-fun res!196010 () Bool)

(declare-fun e!216498 () Bool)

(assert (=> d!71499 (=> res!196010 e!216498)))

(assert (=> d!71499 (= res!196010 (bvsge #b00000000000000000000000000000000 (size!9407 _keys!1456)))))

(assert (=> d!71499 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842) e!216498)))

(declare-fun b!353436 () Bool)

(assert (=> b!353436 (= e!216498 e!216497)))

(declare-fun c!53618 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!353436 (= c!53618 (validKeyInArray!0 (select (arr!9055 _keys!1456) #b00000000000000000000000000000000)))))

(declare-fun b!353437 () Bool)

(assert (=> b!353437 (= e!216497 e!216496)))

(declare-fun lt!165552 () (_ BitVec 64))

(assert (=> b!353437 (= lt!165552 (select (arr!9055 _keys!1456) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10917 0))(
  ( (Unit!10918) )
))
(declare-fun lt!165551 () Unit!10917)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!19121 (_ BitVec 64) (_ BitVec 32)) Unit!10917)

(assert (=> b!353437 (= lt!165551 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1456 lt!165552 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!19121 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!353437 (arrayContainsKey!0 _keys!1456 lt!165552 #b00000000000000000000000000000000)))

(declare-fun lt!165550 () Unit!10917)

(assert (=> b!353437 (= lt!165550 lt!165551)))

(declare-fun res!196009 () Bool)

(declare-datatypes ((SeekEntryResult!3475 0))(
  ( (MissingZero!3475 (index!16079 (_ BitVec 32))) (Found!3475 (index!16080 (_ BitVec 32))) (Intermediate!3475 (undefined!4287 Bool) (index!16081 (_ BitVec 32)) (x!35184 (_ BitVec 32))) (Undefined!3475) (MissingVacant!3475 (index!16082 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!19121 (_ BitVec 32)) SeekEntryResult!3475)

(assert (=> b!353437 (= res!196009 (= (seekEntryOrOpen!0 (select (arr!9055 _keys!1456) #b00000000000000000000000000000000) _keys!1456 mask!1842) (Found!3475 #b00000000000000000000000000000000)))))

(assert (=> b!353437 (=> (not res!196009) (not e!216496))))

(assert (= (and d!71499 (not res!196010)) b!353436))

(assert (= (and b!353436 c!53618) b!353437))

(assert (= (and b!353436 (not c!53618)) b!353434))

(assert (= (and b!353437 res!196009) b!353435))

(assert (= (or b!353435 b!353434) bm!27140))

(declare-fun m!352779 () Bool)

(assert (=> bm!27140 m!352779))

(declare-fun m!352781 () Bool)

(assert (=> b!353436 m!352781))

(assert (=> b!353436 m!352781))

(declare-fun m!352783 () Bool)

(assert (=> b!353436 m!352783))

(assert (=> b!353437 m!352781))

(declare-fun m!352785 () Bool)

(assert (=> b!353437 m!352785))

(declare-fun m!352787 () Bool)

(assert (=> b!353437 m!352787))

(assert (=> b!353437 m!352781))

(declare-fun m!352789 () Bool)

(assert (=> b!353437 m!352789))

(assert (=> b!353402 d!71499))

(declare-fun d!71501 () Bool)

(assert (=> d!71501 (= (validMask!0 mask!1842) (and (or (= mask!1842 #b00000000000000000000000000000111) (= mask!1842 #b00000000000000000000000000001111) (= mask!1842 #b00000000000000000000000000011111) (= mask!1842 #b00000000000000000000000000111111) (= mask!1842 #b00000000000000000000000001111111) (= mask!1842 #b00000000000000000000000011111111) (= mask!1842 #b00000000000000000000000111111111) (= mask!1842 #b00000000000000000000001111111111) (= mask!1842 #b00000000000000000000011111111111) (= mask!1842 #b00000000000000000000111111111111) (= mask!1842 #b00000000000000000001111111111111) (= mask!1842 #b00000000000000000011111111111111) (= mask!1842 #b00000000000000000111111111111111) (= mask!1842 #b00000000000000001111111111111111) (= mask!1842 #b00000000000000011111111111111111) (= mask!1842 #b00000000000000111111111111111111) (= mask!1842 #b00000000000001111111111111111111) (= mask!1842 #b00000000000011111111111111111111) (= mask!1842 #b00000000000111111111111111111111) (= mask!1842 #b00000000001111111111111111111111) (= mask!1842 #b00000000011111111111111111111111) (= mask!1842 #b00000000111111111111111111111111) (= mask!1842 #b00000001111111111111111111111111) (= mask!1842 #b00000011111111111111111111111111) (= mask!1842 #b00000111111111111111111111111111) (= mask!1842 #b00001111111111111111111111111111) (= mask!1842 #b00011111111111111111111111111111) (= mask!1842 #b00111111111111111111111111111111)) (bvsle mask!1842 #b00111111111111111111111111111111)))))

(assert (=> start!35298 d!71501))

(declare-fun d!71503 () Bool)

(assert (=> d!71503 (= (array_inv!6668 _values!1208) (bvsge (size!9408 _values!1208) #b00000000000000000000000000000000))))

(assert (=> start!35298 d!71503))

(declare-fun d!71505 () Bool)

(assert (=> d!71505 (= (array_inv!6669 _keys!1456) (bvsge (size!9407 _keys!1456) #b00000000000000000000000000000000))))

(assert (=> start!35298 d!71505))

(declare-fun mapIsEmpty!13179 () Bool)

(declare-fun mapRes!13179 () Bool)

(assert (=> mapIsEmpty!13179 mapRes!13179))

(declare-fun mapNonEmpty!13179 () Bool)

(declare-fun tp!27075 () Bool)

(declare-fun e!216504 () Bool)

(assert (=> mapNonEmpty!13179 (= mapRes!13179 (and tp!27075 e!216504))))

(declare-fun mapKey!13179 () (_ BitVec 32))

(declare-fun mapRest!13179 () (Array (_ BitVec 32) ValueCell!3549))

(declare-fun mapValue!13179 () ValueCell!3549)

(assert (=> mapNonEmpty!13179 (= mapRest!13173 (store mapRest!13179 mapKey!13179 mapValue!13179))))

(declare-fun condMapEmpty!13179 () Bool)

(declare-fun mapDefault!13179 () ValueCell!3549)

(assert (=> mapNonEmpty!13173 (= condMapEmpty!13179 (= mapRest!13173 ((as const (Array (_ BitVec 32) ValueCell!3549)) mapDefault!13179)))))

(declare-fun e!216503 () Bool)

(assert (=> mapNonEmpty!13173 (= tp!27069 (and e!216503 mapRes!13179))))

(declare-fun b!353444 () Bool)

(assert (=> b!353444 (= e!216504 tp_is_empty!7785)))

(declare-fun b!353445 () Bool)

(assert (=> b!353445 (= e!216503 tp_is_empty!7785)))

(assert (= (and mapNonEmpty!13173 condMapEmpty!13179) mapIsEmpty!13179))

(assert (= (and mapNonEmpty!13173 (not condMapEmpty!13179)) mapNonEmpty!13179))

(assert (= (and mapNonEmpty!13179 ((_ is ValueCellFull!3549) mapValue!13179)) b!353444))

(assert (= (and mapNonEmpty!13173 ((_ is ValueCellFull!3549) mapDefault!13179)) b!353445))

(declare-fun m!352791 () Bool)

(assert (=> mapNonEmpty!13179 m!352791))

(check-sat tp_is_empty!7785 (not b!353436) (not mapNonEmpty!13179) (not b!353437) (not bm!27140))
(check-sat)
