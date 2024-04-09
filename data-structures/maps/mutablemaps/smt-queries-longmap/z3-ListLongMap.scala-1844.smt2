; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33420 () Bool)

(assert start!33420)

(declare-fun b!331599 () Bool)

(declare-fun res!182753 () Bool)

(declare-fun e!203518 () Bool)

(assert (=> b!331599 (=> (not res!182753) (not e!203518))))

(declare-datatypes ((array!16971 0))(
  ( (array!16972 (arr!8019 (Array (_ BitVec 32) (_ BitVec 64))) (size!8371 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!16971)

(assert (=> b!331599 (= res!182753 (and (bvsle #b00000000000000000000000000000000 (size!8371 _keys!1895)) (bvslt (size!8371 _keys!1895) #b01111111111111111111111111111111)))))

(declare-fun b!331601 () Bool)

(declare-fun res!182752 () Bool)

(assert (=> b!331601 (=> (not res!182752) (not e!203518))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16971 (_ BitVec 32)) Bool)

(assert (=> b!331601 (= res!182752 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!11409 () Bool)

(declare-fun mapRes!11409 () Bool)

(declare-fun tp!23784 () Bool)

(declare-fun e!203517 () Bool)

(assert (=> mapNonEmpty!11409 (= mapRes!11409 (and tp!23784 e!203517))))

(declare-datatypes ((V!9893 0))(
  ( (V!9894 (val!3388 Int)) )
))
(declare-datatypes ((ValueCell!3000 0))(
  ( (ValueCellFull!3000 (v!5542 V!9893)) (EmptyCell!3000) )
))
(declare-fun mapValue!11409 () ValueCell!3000)

(declare-fun mapKey!11409 () (_ BitVec 32))

(declare-fun mapRest!11409 () (Array (_ BitVec 32) ValueCell!3000))

(declare-datatypes ((array!16973 0))(
  ( (array!16974 (arr!8020 (Array (_ BitVec 32) ValueCell!3000)) (size!8372 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!16973)

(assert (=> mapNonEmpty!11409 (= (arr!8020 _values!1525) (store mapRest!11409 mapKey!11409 mapValue!11409))))

(declare-fun b!331602 () Bool)

(declare-fun tp_is_empty!6687 () Bool)

(assert (=> b!331602 (= e!203517 tp_is_empty!6687)))

(declare-fun mapIsEmpty!11409 () Bool)

(assert (=> mapIsEmpty!11409 mapRes!11409))

(declare-fun b!331603 () Bool)

(declare-fun res!182754 () Bool)

(assert (=> b!331603 (=> (not res!182754) (not e!203518))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!331603 (= res!182754 (and (= (size!8372 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8371 _keys!1895) (size!8372 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!331604 () Bool)

(declare-fun e!203520 () Bool)

(declare-fun e!203521 () Bool)

(assert (=> b!331604 (= e!203520 (and e!203521 mapRes!11409))))

(declare-fun condMapEmpty!11409 () Bool)

(declare-fun mapDefault!11409 () ValueCell!3000)

(assert (=> b!331604 (= condMapEmpty!11409 (= (arr!8020 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3000)) mapDefault!11409)))))

(declare-fun b!331605 () Bool)

(assert (=> b!331605 (= e!203521 tp_is_empty!6687)))

(declare-fun res!182751 () Bool)

(assert (=> start!33420 (=> (not res!182751) (not e!203518))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33420 (= res!182751 (validMask!0 mask!2385))))

(assert (=> start!33420 e!203518))

(assert (=> start!33420 true))

(declare-fun array_inv!5964 (array!16973) Bool)

(assert (=> start!33420 (and (array_inv!5964 _values!1525) e!203520)))

(declare-fun array_inv!5965 (array!16971) Bool)

(assert (=> start!33420 (array_inv!5965 _keys!1895)))

(declare-fun b!331600 () Bool)

(declare-datatypes ((List!4596 0))(
  ( (Nil!4593) (Cons!4592 (h!5448 (_ BitVec 64)) (t!9686 List!4596)) )
))
(declare-fun noDuplicate!174 (List!4596) Bool)

(assert (=> b!331600 (= e!203518 (not (noDuplicate!174 Nil!4593)))))

(assert (= (and start!33420 res!182751) b!331603))

(assert (= (and b!331603 res!182754) b!331601))

(assert (= (and b!331601 res!182752) b!331599))

(assert (= (and b!331599 res!182753) b!331600))

(assert (= (and b!331604 condMapEmpty!11409) mapIsEmpty!11409))

(assert (= (and b!331604 (not condMapEmpty!11409)) mapNonEmpty!11409))

(get-info :version)

(assert (= (and mapNonEmpty!11409 ((_ is ValueCellFull!3000) mapValue!11409)) b!331602))

(assert (= (and b!331604 ((_ is ValueCellFull!3000) mapDefault!11409)) b!331605))

(assert (= start!33420 b!331604))

(declare-fun m!336379 () Bool)

(assert (=> b!331601 m!336379))

(declare-fun m!336381 () Bool)

(assert (=> mapNonEmpty!11409 m!336381))

(declare-fun m!336383 () Bool)

(assert (=> start!33420 m!336383))

(declare-fun m!336385 () Bool)

(assert (=> start!33420 m!336385))

(declare-fun m!336387 () Bool)

(assert (=> start!33420 m!336387))

(declare-fun m!336389 () Bool)

(assert (=> b!331600 m!336389))

(check-sat (not start!33420) (not b!331600) tp_is_empty!6687 (not b!331601) (not mapNonEmpty!11409))
(check-sat)
(get-model)

(declare-fun d!70345 () Bool)

(assert (=> d!70345 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!33420 d!70345))

(declare-fun d!70347 () Bool)

(assert (=> d!70347 (= (array_inv!5964 _values!1525) (bvsge (size!8372 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!33420 d!70347))

(declare-fun d!70349 () Bool)

(assert (=> d!70349 (= (array_inv!5965 _keys!1895) (bvsge (size!8371 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!33420 d!70349))

(declare-fun d!70351 () Bool)

(declare-fun res!182771 () Bool)

(declare-fun e!203541 () Bool)

(assert (=> d!70351 (=> res!182771 e!203541)))

(assert (=> d!70351 (= res!182771 ((_ is Nil!4593) Nil!4593))))

(assert (=> d!70351 (= (noDuplicate!174 Nil!4593) e!203541)))

(declare-fun b!331631 () Bool)

(declare-fun e!203542 () Bool)

(assert (=> b!331631 (= e!203541 e!203542)))

(declare-fun res!182772 () Bool)

(assert (=> b!331631 (=> (not res!182772) (not e!203542))))

(declare-fun contains!2001 (List!4596 (_ BitVec 64)) Bool)

(assert (=> b!331631 (= res!182772 (not (contains!2001 (t!9686 Nil!4593) (h!5448 Nil!4593))))))

(declare-fun b!331632 () Bool)

(assert (=> b!331632 (= e!203542 (noDuplicate!174 (t!9686 Nil!4593)))))

(assert (= (and d!70351 (not res!182771)) b!331631))

(assert (= (and b!331631 res!182772) b!331632))

(declare-fun m!336403 () Bool)

(assert (=> b!331631 m!336403))

(declare-fun m!336405 () Bool)

(assert (=> b!331632 m!336405))

(assert (=> b!331600 d!70351))

(declare-fun b!331641 () Bool)

(declare-fun e!203551 () Bool)

(declare-fun call!26201 () Bool)

(assert (=> b!331641 (= e!203551 call!26201)))

(declare-fun d!70353 () Bool)

(declare-fun res!182777 () Bool)

(declare-fun e!203550 () Bool)

(assert (=> d!70353 (=> res!182777 e!203550)))

(assert (=> d!70353 (= res!182777 (bvsge #b00000000000000000000000000000000 (size!8371 _keys!1895)))))

(assert (=> d!70353 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!203550)))

(declare-fun b!331642 () Bool)

(assert (=> b!331642 (= e!203550 e!203551)))

(declare-fun c!51998 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!331642 (= c!51998 (validKeyInArray!0 (select (arr!8019 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun bm!26198 () Bool)

(assert (=> bm!26198 (= call!26201 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun b!331643 () Bool)

(declare-fun e!203549 () Bool)

(assert (=> b!331643 (= e!203549 call!26201)))

(declare-fun b!331644 () Bool)

(assert (=> b!331644 (= e!203551 e!203549)))

(declare-fun lt!158883 () (_ BitVec 64))

(assert (=> b!331644 (= lt!158883 (select (arr!8019 _keys!1895) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10356 0))(
  ( (Unit!10357) )
))
(declare-fun lt!158884 () Unit!10356)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16971 (_ BitVec 64) (_ BitVec 32)) Unit!10356)

(assert (=> b!331644 (= lt!158884 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!158883 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!16971 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!331644 (arrayContainsKey!0 _keys!1895 lt!158883 #b00000000000000000000000000000000)))

(declare-fun lt!158885 () Unit!10356)

(assert (=> b!331644 (= lt!158885 lt!158884)))

(declare-fun res!182778 () Bool)

(declare-datatypes ((SeekEntryResult!3140 0))(
  ( (MissingZero!3140 (index!14739 (_ BitVec 32))) (Found!3140 (index!14740 (_ BitVec 32))) (Intermediate!3140 (undefined!3952 Bool) (index!14741 (_ BitVec 32)) (x!33035 (_ BitVec 32))) (Undefined!3140) (MissingVacant!3140 (index!14742 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16971 (_ BitVec 32)) SeekEntryResult!3140)

(assert (=> b!331644 (= res!182778 (= (seekEntryOrOpen!0 (select (arr!8019 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3140 #b00000000000000000000000000000000)))))

(assert (=> b!331644 (=> (not res!182778) (not e!203549))))

(assert (= (and d!70353 (not res!182777)) b!331642))

(assert (= (and b!331642 c!51998) b!331644))

(assert (= (and b!331642 (not c!51998)) b!331641))

(assert (= (and b!331644 res!182778) b!331643))

(assert (= (or b!331643 b!331641) bm!26198))

(declare-fun m!336407 () Bool)

(assert (=> b!331642 m!336407))

(assert (=> b!331642 m!336407))

(declare-fun m!336409 () Bool)

(assert (=> b!331642 m!336409))

(declare-fun m!336411 () Bool)

(assert (=> bm!26198 m!336411))

(assert (=> b!331644 m!336407))

(declare-fun m!336413 () Bool)

(assert (=> b!331644 m!336413))

(declare-fun m!336415 () Bool)

(assert (=> b!331644 m!336415))

(assert (=> b!331644 m!336407))

(declare-fun m!336417 () Bool)

(assert (=> b!331644 m!336417))

(assert (=> b!331601 d!70353))

(declare-fun mapIsEmpty!11415 () Bool)

(declare-fun mapRes!11415 () Bool)

(assert (=> mapIsEmpty!11415 mapRes!11415))

(declare-fun condMapEmpty!11415 () Bool)

(declare-fun mapDefault!11415 () ValueCell!3000)

(assert (=> mapNonEmpty!11409 (= condMapEmpty!11415 (= mapRest!11409 ((as const (Array (_ BitVec 32) ValueCell!3000)) mapDefault!11415)))))

(declare-fun e!203557 () Bool)

(assert (=> mapNonEmpty!11409 (= tp!23784 (and e!203557 mapRes!11415))))

(declare-fun b!331652 () Bool)

(assert (=> b!331652 (= e!203557 tp_is_empty!6687)))

(declare-fun b!331651 () Bool)

(declare-fun e!203556 () Bool)

(assert (=> b!331651 (= e!203556 tp_is_empty!6687)))

(declare-fun mapNonEmpty!11415 () Bool)

(declare-fun tp!23790 () Bool)

(assert (=> mapNonEmpty!11415 (= mapRes!11415 (and tp!23790 e!203556))))

(declare-fun mapKey!11415 () (_ BitVec 32))

(declare-fun mapRest!11415 () (Array (_ BitVec 32) ValueCell!3000))

(declare-fun mapValue!11415 () ValueCell!3000)

(assert (=> mapNonEmpty!11415 (= mapRest!11409 (store mapRest!11415 mapKey!11415 mapValue!11415))))

(assert (= (and mapNonEmpty!11409 condMapEmpty!11415) mapIsEmpty!11415))

(assert (= (and mapNonEmpty!11409 (not condMapEmpty!11415)) mapNonEmpty!11415))

(assert (= (and mapNonEmpty!11415 ((_ is ValueCellFull!3000) mapValue!11415)) b!331651))

(assert (= (and mapNonEmpty!11409 ((_ is ValueCellFull!3000) mapDefault!11415)) b!331652))

(declare-fun m!336419 () Bool)

(assert (=> mapNonEmpty!11415 m!336419))

(check-sat (not b!331631) (not b!331642) (not b!331632) (not b!331644) tp_is_empty!6687 (not mapNonEmpty!11415) (not bm!26198))
(check-sat)
