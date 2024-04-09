; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35188 () Bool)

(assert start!35188)

(declare-fun b_free!7773 () Bool)

(declare-fun b_next!7773 () Bool)

(assert (=> start!35188 (= b_free!7773 (not b_next!7773))))

(declare-fun tp!26910 () Bool)

(declare-fun b_and!15029 () Bool)

(assert (=> start!35188 (= tp!26910 b_and!15029)))

(declare-fun b!352442 () Bool)

(declare-fun e!215841 () Bool)

(declare-fun tp_is_empty!7725 () Bool)

(assert (=> b!352442 (= e!215841 tp_is_empty!7725)))

(declare-fun res!195493 () Bool)

(declare-fun e!215838 () Bool)

(assert (=> start!35188 (=> (not res!195493) (not e!215838))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35188 (= res!195493 (validMask!0 mask!2385))))

(assert (=> start!35188 e!215838))

(assert (=> start!35188 true))

(assert (=> start!35188 tp_is_empty!7725))

(assert (=> start!35188 tp!26910))

(declare-datatypes ((V!11277 0))(
  ( (V!11278 (val!3907 Int)) )
))
(declare-datatypes ((ValueCell!3519 0))(
  ( (ValueCellFull!3519 (v!6094 V!11277)) (EmptyCell!3519) )
))
(declare-datatypes ((array!18999 0))(
  ( (array!19000 (arr!8998 (Array (_ BitVec 32) ValueCell!3519)) (size!9350 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18999)

(declare-fun e!215839 () Bool)

(declare-fun array_inv!6628 (array!18999) Bool)

(assert (=> start!35188 (and (array_inv!6628 _values!1525) e!215839)))

(declare-datatypes ((array!19001 0))(
  ( (array!19002 (arr!8999 (Array (_ BitVec 32) (_ BitVec 64))) (size!9351 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!19001)

(declare-fun array_inv!6629 (array!19001) Bool)

(assert (=> start!35188 (array_inv!6629 _keys!1895)))

(declare-fun b!352443 () Bool)

(declare-fun res!195494 () Bool)

(assert (=> b!352443 (=> (not res!195494) (not e!215838))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!352443 (= res!195494 (validKeyInArray!0 k0!1348))))

(declare-fun b!352444 () Bool)

(declare-fun res!195490 () Bool)

(assert (=> b!352444 (=> (not res!195490) (not e!215838))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!352444 (= res!195490 (and (= (size!9350 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9351 _keys!1895) (size!9350 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!352445 () Bool)

(declare-fun e!215840 () Bool)

(declare-fun mapRes!13071 () Bool)

(assert (=> b!352445 (= e!215839 (and e!215840 mapRes!13071))))

(declare-fun condMapEmpty!13071 () Bool)

(declare-fun mapDefault!13071 () ValueCell!3519)

(assert (=> b!352445 (= condMapEmpty!13071 (= (arr!8998 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3519)) mapDefault!13071)))))

(declare-fun b!352446 () Bool)

(declare-fun res!195492 () Bool)

(assert (=> b!352446 (=> (not res!195492) (not e!215838))))

(declare-fun zeroValue!1467 () V!11277)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!11277)

(declare-datatypes ((tuple2!5634 0))(
  ( (tuple2!5635 (_1!2827 (_ BitVec 64)) (_2!2827 V!11277)) )
))
(declare-datatypes ((List!5270 0))(
  ( (Nil!5267) (Cons!5266 (h!6122 tuple2!5634) (t!10424 List!5270)) )
))
(declare-datatypes ((ListLongMap!4561 0))(
  ( (ListLongMap!4562 (toList!2296 List!5270)) )
))
(declare-fun contains!2365 (ListLongMap!4561 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1813 (array!19001 array!18999 (_ BitVec 32) (_ BitVec 32) V!11277 V!11277 (_ BitVec 32) Int) ListLongMap!4561)

(assert (=> b!352446 (= res!195492 (not (contains!2365 (getCurrentListMap!1813 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!352447 () Bool)

(declare-fun res!195489 () Bool)

(assert (=> b!352447 (=> (not res!195489) (not e!215838))))

(declare-datatypes ((List!5271 0))(
  ( (Nil!5268) (Cons!5267 (h!6123 (_ BitVec 64)) (t!10425 List!5271)) )
))
(declare-fun arrayNoDuplicates!0 (array!19001 (_ BitVec 32) List!5271) Bool)

(assert (=> b!352447 (= res!195489 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5268))))

(declare-fun b!352448 () Bool)

(assert (=> b!352448 (= e!215838 false)))

(declare-datatypes ((SeekEntryResult!3460 0))(
  ( (MissingZero!3460 (index!16019 (_ BitVec 32))) (Found!3460 (index!16020 (_ BitVec 32))) (Intermediate!3460 (undefined!4272 Bool) (index!16021 (_ BitVec 32)) (x!35063 (_ BitVec 32))) (Undefined!3460) (MissingVacant!3460 (index!16022 (_ BitVec 32))) )
))
(declare-fun lt!165285 () SeekEntryResult!3460)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!19001 (_ BitVec 32)) SeekEntryResult!3460)

(assert (=> b!352448 (= lt!165285 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!352449 () Bool)

(assert (=> b!352449 (= e!215840 tp_is_empty!7725)))

(declare-fun mapNonEmpty!13071 () Bool)

(declare-fun tp!26909 () Bool)

(assert (=> mapNonEmpty!13071 (= mapRes!13071 (and tp!26909 e!215841))))

(declare-fun mapRest!13071 () (Array (_ BitVec 32) ValueCell!3519))

(declare-fun mapKey!13071 () (_ BitVec 32))

(declare-fun mapValue!13071 () ValueCell!3519)

(assert (=> mapNonEmpty!13071 (= (arr!8998 _values!1525) (store mapRest!13071 mapKey!13071 mapValue!13071))))

(declare-fun mapIsEmpty!13071 () Bool)

(assert (=> mapIsEmpty!13071 mapRes!13071))

(declare-fun b!352450 () Bool)

(declare-fun res!195491 () Bool)

(assert (=> b!352450 (=> (not res!195491) (not e!215838))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19001 (_ BitVec 32)) Bool)

(assert (=> b!352450 (= res!195491 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(assert (= (and start!35188 res!195493) b!352444))

(assert (= (and b!352444 res!195490) b!352450))

(assert (= (and b!352450 res!195491) b!352447))

(assert (= (and b!352447 res!195489) b!352443))

(assert (= (and b!352443 res!195494) b!352446))

(assert (= (and b!352446 res!195492) b!352448))

(assert (= (and b!352445 condMapEmpty!13071) mapIsEmpty!13071))

(assert (= (and b!352445 (not condMapEmpty!13071)) mapNonEmpty!13071))

(get-info :version)

(assert (= (and mapNonEmpty!13071 ((_ is ValueCellFull!3519) mapValue!13071)) b!352442))

(assert (= (and b!352445 ((_ is ValueCellFull!3519) mapDefault!13071)) b!352449))

(assert (= start!35188 b!352445))

(declare-fun m!352067 () Bool)

(assert (=> b!352450 m!352067))

(declare-fun m!352069 () Bool)

(assert (=> b!352447 m!352069))

(declare-fun m!352071 () Bool)

(assert (=> b!352448 m!352071))

(declare-fun m!352073 () Bool)

(assert (=> b!352446 m!352073))

(assert (=> b!352446 m!352073))

(declare-fun m!352075 () Bool)

(assert (=> b!352446 m!352075))

(declare-fun m!352077 () Bool)

(assert (=> mapNonEmpty!13071 m!352077))

(declare-fun m!352079 () Bool)

(assert (=> b!352443 m!352079))

(declare-fun m!352081 () Bool)

(assert (=> start!35188 m!352081))

(declare-fun m!352083 () Bool)

(assert (=> start!35188 m!352083))

(declare-fun m!352085 () Bool)

(assert (=> start!35188 m!352085))

(check-sat tp_is_empty!7725 (not b!352448) (not b!352443) (not mapNonEmpty!13071) (not b!352450) (not b_next!7773) (not start!35188) (not b!352446) (not b!352447) b_and!15029)
(check-sat b_and!15029 (not b_next!7773))
