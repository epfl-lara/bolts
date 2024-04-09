; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19980 () Bool)

(assert start!19980)

(declare-fun res!92383 () Bool)

(declare-fun e!128860 () Bool)

(assert (=> start!19980 (=> (not res!92383) (not e!128860))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!19980 (= res!92383 (validMask!0 mask!1149))))

(assert (=> start!19980 e!128860))

(assert (=> start!19980 true))

(declare-datatypes ((V!5675 0))(
  ( (V!5676 (val!2305 Int)) )
))
(declare-datatypes ((ValueCell!1917 0))(
  ( (ValueCellFull!1917 (v!4270 V!5675)) (EmptyCell!1917) )
))
(declare-datatypes ((array!8298 0))(
  ( (array!8299 (arr!3903 (Array (_ BitVec 32) ValueCell!1917)) (size!4228 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8298)

(declare-fun e!128861 () Bool)

(declare-fun array_inv!2527 (array!8298) Bool)

(assert (=> start!19980 (and (array_inv!2527 _values!649) e!128861)))

(declare-datatypes ((array!8300 0))(
  ( (array!8301 (arr!3904 (Array (_ BitVec 32) (_ BitVec 64))) (size!4229 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8300)

(declare-fun array_inv!2528 (array!8300) Bool)

(assert (=> start!19980 (array_inv!2528 _keys!825)))

(declare-fun b!195765 () Bool)

(declare-fun res!92382 () Bool)

(assert (=> b!195765 (=> (not res!92382) (not e!128860))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8300 (_ BitVec 32)) Bool)

(assert (=> b!195765 (= res!92382 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!195766 () Bool)

(declare-fun res!92384 () Bool)

(assert (=> b!195766 (=> (not res!92384) (not e!128860))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!195766 (= res!92384 (and (= (size!4228 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4229 _keys!825) (size!4228 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!195767 () Bool)

(assert (=> b!195767 (= e!128860 (bvsgt #b00000000000000000000000000000000 (size!4229 _keys!825)))))

(declare-fun b!195768 () Bool)

(declare-fun e!128858 () Bool)

(declare-fun mapRes!7838 () Bool)

(assert (=> b!195768 (= e!128861 (and e!128858 mapRes!7838))))

(declare-fun condMapEmpty!7838 () Bool)

(declare-fun mapDefault!7838 () ValueCell!1917)

(assert (=> b!195768 (= condMapEmpty!7838 (= (arr!3903 _values!649) ((as const (Array (_ BitVec 32) ValueCell!1917)) mapDefault!7838)))))

(declare-fun mapNonEmpty!7838 () Bool)

(declare-fun tp!17126 () Bool)

(declare-fun e!128859 () Bool)

(assert (=> mapNonEmpty!7838 (= mapRes!7838 (and tp!17126 e!128859))))

(declare-fun mapValue!7838 () ValueCell!1917)

(declare-fun mapRest!7838 () (Array (_ BitVec 32) ValueCell!1917))

(declare-fun mapKey!7838 () (_ BitVec 32))

(assert (=> mapNonEmpty!7838 (= (arr!3903 _values!649) (store mapRest!7838 mapKey!7838 mapValue!7838))))

(declare-fun mapIsEmpty!7838 () Bool)

(assert (=> mapIsEmpty!7838 mapRes!7838))

(declare-fun b!195769 () Bool)

(declare-fun tp_is_empty!4521 () Bool)

(assert (=> b!195769 (= e!128859 tp_is_empty!4521)))

(declare-fun b!195770 () Bool)

(assert (=> b!195770 (= e!128858 tp_is_empty!4521)))

(assert (= (and start!19980 res!92383) b!195766))

(assert (= (and b!195766 res!92384) b!195765))

(assert (= (and b!195765 res!92382) b!195767))

(assert (= (and b!195768 condMapEmpty!7838) mapIsEmpty!7838))

(assert (= (and b!195768 (not condMapEmpty!7838)) mapNonEmpty!7838))

(get-info :version)

(assert (= (and mapNonEmpty!7838 ((_ is ValueCellFull!1917) mapValue!7838)) b!195769))

(assert (= (and b!195768 ((_ is ValueCellFull!1917) mapDefault!7838)) b!195770))

(assert (= start!19980 b!195768))

(declare-fun m!223289 () Bool)

(assert (=> start!19980 m!223289))

(declare-fun m!223291 () Bool)

(assert (=> start!19980 m!223291))

(declare-fun m!223293 () Bool)

(assert (=> start!19980 m!223293))

(declare-fun m!223295 () Bool)

(assert (=> b!195765 m!223295))

(declare-fun m!223297 () Bool)

(assert (=> mapNonEmpty!7838 m!223297))

(check-sat (not b!195765) (not start!19980) (not mapNonEmpty!7838) tp_is_empty!4521)
(check-sat)
(get-model)

(declare-fun d!57449 () Bool)

(declare-fun res!92398 () Bool)

(declare-fun e!128884 () Bool)

(assert (=> d!57449 (=> res!92398 e!128884)))

(assert (=> d!57449 (= res!92398 (bvsge #b00000000000000000000000000000000 (size!4229 _keys!825)))))

(assert (=> d!57449 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149) e!128884)))

(declare-fun b!195797 () Bool)

(declare-fun e!128885 () Bool)

(declare-fun e!128883 () Bool)

(assert (=> b!195797 (= e!128885 e!128883)))

(declare-fun lt!97555 () (_ BitVec 64))

(assert (=> b!195797 (= lt!97555 (select (arr!3904 _keys!825) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5939 0))(
  ( (Unit!5940) )
))
(declare-fun lt!97557 () Unit!5939)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!8300 (_ BitVec 64) (_ BitVec 32)) Unit!5939)

(assert (=> b!195797 (= lt!97557 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!825 lt!97555 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!8300 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!195797 (arrayContainsKey!0 _keys!825 lt!97555 #b00000000000000000000000000000000)))

(declare-fun lt!97556 () Unit!5939)

(assert (=> b!195797 (= lt!97556 lt!97557)))

(declare-fun res!92399 () Bool)

(declare-datatypes ((SeekEntryResult!710 0))(
  ( (MissingZero!710 (index!5010 (_ BitVec 32))) (Found!710 (index!5011 (_ BitVec 32))) (Intermediate!710 (undefined!1522 Bool) (index!5012 (_ BitVec 32)) (x!20811 (_ BitVec 32))) (Undefined!710) (MissingVacant!710 (index!5013 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8300 (_ BitVec 32)) SeekEntryResult!710)

(assert (=> b!195797 (= res!92399 (= (seekEntryOrOpen!0 (select (arr!3904 _keys!825) #b00000000000000000000000000000000) _keys!825 mask!1149) (Found!710 #b00000000000000000000000000000000)))))

(assert (=> b!195797 (=> (not res!92399) (not e!128883))))

(declare-fun b!195798 () Bool)

(declare-fun call!19765 () Bool)

(assert (=> b!195798 (= e!128885 call!19765)))

(declare-fun bm!19762 () Bool)

(assert (=> bm!19762 (= call!19765 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!825 mask!1149))))

(declare-fun b!195799 () Bool)

(assert (=> b!195799 (= e!128884 e!128885)))

(declare-fun c!35407 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!195799 (= c!35407 (validKeyInArray!0 (select (arr!3904 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!195800 () Bool)

(assert (=> b!195800 (= e!128883 call!19765)))

(assert (= (and d!57449 (not res!92398)) b!195799))

(assert (= (and b!195799 c!35407) b!195797))

(assert (= (and b!195799 (not c!35407)) b!195798))

(assert (= (and b!195797 res!92399) b!195800))

(assert (= (or b!195800 b!195798) bm!19762))

(declare-fun m!223309 () Bool)

(assert (=> b!195797 m!223309))

(declare-fun m!223311 () Bool)

(assert (=> b!195797 m!223311))

(declare-fun m!223313 () Bool)

(assert (=> b!195797 m!223313))

(assert (=> b!195797 m!223309))

(declare-fun m!223315 () Bool)

(assert (=> b!195797 m!223315))

(declare-fun m!223317 () Bool)

(assert (=> bm!19762 m!223317))

(assert (=> b!195799 m!223309))

(assert (=> b!195799 m!223309))

(declare-fun m!223319 () Bool)

(assert (=> b!195799 m!223319))

(assert (=> b!195765 d!57449))

(declare-fun d!57451 () Bool)

(assert (=> d!57451 (= (validMask!0 mask!1149) (and (or (= mask!1149 #b00000000000000000000000000000111) (= mask!1149 #b00000000000000000000000000001111) (= mask!1149 #b00000000000000000000000000011111) (= mask!1149 #b00000000000000000000000000111111) (= mask!1149 #b00000000000000000000000001111111) (= mask!1149 #b00000000000000000000000011111111) (= mask!1149 #b00000000000000000000000111111111) (= mask!1149 #b00000000000000000000001111111111) (= mask!1149 #b00000000000000000000011111111111) (= mask!1149 #b00000000000000000000111111111111) (= mask!1149 #b00000000000000000001111111111111) (= mask!1149 #b00000000000000000011111111111111) (= mask!1149 #b00000000000000000111111111111111) (= mask!1149 #b00000000000000001111111111111111) (= mask!1149 #b00000000000000011111111111111111) (= mask!1149 #b00000000000000111111111111111111) (= mask!1149 #b00000000000001111111111111111111) (= mask!1149 #b00000000000011111111111111111111) (= mask!1149 #b00000000000111111111111111111111) (= mask!1149 #b00000000001111111111111111111111) (= mask!1149 #b00000000011111111111111111111111) (= mask!1149 #b00000000111111111111111111111111) (= mask!1149 #b00000001111111111111111111111111) (= mask!1149 #b00000011111111111111111111111111) (= mask!1149 #b00000111111111111111111111111111) (= mask!1149 #b00001111111111111111111111111111) (= mask!1149 #b00011111111111111111111111111111) (= mask!1149 #b00111111111111111111111111111111)) (bvsle mask!1149 #b00111111111111111111111111111111)))))

(assert (=> start!19980 d!57451))

(declare-fun d!57453 () Bool)

(assert (=> d!57453 (= (array_inv!2527 _values!649) (bvsge (size!4228 _values!649) #b00000000000000000000000000000000))))

(assert (=> start!19980 d!57453))

(declare-fun d!57455 () Bool)

(assert (=> d!57455 (= (array_inv!2528 _keys!825) (bvsge (size!4229 _keys!825) #b00000000000000000000000000000000))))

(assert (=> start!19980 d!57455))

(declare-fun mapNonEmpty!7844 () Bool)

(declare-fun mapRes!7844 () Bool)

(declare-fun tp!17132 () Bool)

(declare-fun e!128891 () Bool)

(assert (=> mapNonEmpty!7844 (= mapRes!7844 (and tp!17132 e!128891))))

(declare-fun mapValue!7844 () ValueCell!1917)

(declare-fun mapRest!7844 () (Array (_ BitVec 32) ValueCell!1917))

(declare-fun mapKey!7844 () (_ BitVec 32))

(assert (=> mapNonEmpty!7844 (= mapRest!7838 (store mapRest!7844 mapKey!7844 mapValue!7844))))

(declare-fun b!195808 () Bool)

(declare-fun e!128890 () Bool)

(assert (=> b!195808 (= e!128890 tp_is_empty!4521)))

(declare-fun condMapEmpty!7844 () Bool)

(declare-fun mapDefault!7844 () ValueCell!1917)

(assert (=> mapNonEmpty!7838 (= condMapEmpty!7844 (= mapRest!7838 ((as const (Array (_ BitVec 32) ValueCell!1917)) mapDefault!7844)))))

(assert (=> mapNonEmpty!7838 (= tp!17126 (and e!128890 mapRes!7844))))

(declare-fun mapIsEmpty!7844 () Bool)

(assert (=> mapIsEmpty!7844 mapRes!7844))

(declare-fun b!195807 () Bool)

(assert (=> b!195807 (= e!128891 tp_is_empty!4521)))

(assert (= (and mapNonEmpty!7838 condMapEmpty!7844) mapIsEmpty!7844))

(assert (= (and mapNonEmpty!7838 (not condMapEmpty!7844)) mapNonEmpty!7844))

(assert (= (and mapNonEmpty!7844 ((_ is ValueCellFull!1917) mapValue!7844)) b!195807))

(assert (= (and mapNonEmpty!7838 ((_ is ValueCellFull!1917) mapDefault!7844)) b!195808))

(declare-fun m!223321 () Bool)

(assert (=> mapNonEmpty!7844 m!223321))

(check-sat tp_is_empty!4521 (not bm!19762) (not mapNonEmpty!7844) (not b!195799) (not b!195797))
(check-sat)
