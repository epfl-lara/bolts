; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33460 () Bool)

(assert start!33460)

(declare-fun b!331852 () Bool)

(declare-fun e!203715 () Bool)

(declare-fun e!203714 () Bool)

(declare-fun mapRes!11442 () Bool)

(assert (=> b!331852 (= e!203715 (and e!203714 mapRes!11442))))

(declare-fun condMapEmpty!11442 () Bool)

(declare-datatypes ((V!9917 0))(
  ( (V!9918 (val!3397 Int)) )
))
(declare-datatypes ((ValueCell!3009 0))(
  ( (ValueCellFull!3009 (v!5552 V!9917)) (EmptyCell!3009) )
))
(declare-datatypes ((array!17007 0))(
  ( (array!17008 (arr!8035 (Array (_ BitVec 32) ValueCell!3009)) (size!8387 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17007)

(declare-fun mapDefault!11442 () ValueCell!3009)

(assert (=> b!331852 (= condMapEmpty!11442 (= (arr!8035 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3009)) mapDefault!11442)))))

(declare-fun mapNonEmpty!11442 () Bool)

(declare-fun tp!23817 () Bool)

(declare-fun e!203712 () Bool)

(assert (=> mapNonEmpty!11442 (= mapRes!11442 (and tp!23817 e!203712))))

(declare-fun mapRest!11442 () (Array (_ BitVec 32) ValueCell!3009))

(declare-fun mapValue!11442 () ValueCell!3009)

(declare-fun mapKey!11442 () (_ BitVec 32))

(assert (=> mapNonEmpty!11442 (= (arr!8035 _values!1525) (store mapRest!11442 mapKey!11442 mapValue!11442))))

(declare-fun res!182897 () Bool)

(declare-fun e!203711 () Bool)

(assert (=> start!33460 (=> (not res!182897) (not e!203711))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33460 (= res!182897 (validMask!0 mask!2385))))

(assert (=> start!33460 e!203711))

(assert (=> start!33460 true))

(declare-fun array_inv!5974 (array!17007) Bool)

(assert (=> start!33460 (and (array_inv!5974 _values!1525) e!203715)))

(declare-datatypes ((array!17009 0))(
  ( (array!17010 (arr!8036 (Array (_ BitVec 32) (_ BitVec 64))) (size!8388 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17009)

(declare-fun array_inv!5975 (array!17009) Bool)

(assert (=> start!33460 (array_inv!5975 _keys!1895)))

(declare-fun b!331853 () Bool)

(declare-fun res!182896 () Bool)

(assert (=> b!331853 (=> (not res!182896) (not e!203711))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!331853 (= res!182896 (and (= (size!8387 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8388 _keys!1895) (size!8387 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!331854 () Bool)

(declare-fun res!182895 () Bool)

(assert (=> b!331854 (=> (not res!182895) (not e!203711))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17009 (_ BitVec 32)) Bool)

(assert (=> b!331854 (= res!182895 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!331855 () Bool)

(declare-fun tp_is_empty!6705 () Bool)

(assert (=> b!331855 (= e!203712 tp_is_empty!6705)))

(declare-fun b!331856 () Bool)

(assert (=> b!331856 (= e!203711 false)))

(declare-fun lt!158913 () Bool)

(declare-datatypes ((List!4603 0))(
  ( (Nil!4600) (Cons!4599 (h!5455 (_ BitVec 64)) (t!9693 List!4603)) )
))
(declare-fun arrayNoDuplicates!0 (array!17009 (_ BitVec 32) List!4603) Bool)

(assert (=> b!331856 (= lt!158913 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4600))))

(declare-fun b!331857 () Bool)

(assert (=> b!331857 (= e!203714 tp_is_empty!6705)))

(declare-fun mapIsEmpty!11442 () Bool)

(assert (=> mapIsEmpty!11442 mapRes!11442))

(assert (= (and start!33460 res!182897) b!331853))

(assert (= (and b!331853 res!182896) b!331854))

(assert (= (and b!331854 res!182895) b!331856))

(assert (= (and b!331852 condMapEmpty!11442) mapIsEmpty!11442))

(assert (= (and b!331852 (not condMapEmpty!11442)) mapNonEmpty!11442))

(get-info :version)

(assert (= (and mapNonEmpty!11442 ((_ is ValueCellFull!3009) mapValue!11442)) b!331855))

(assert (= (and b!331852 ((_ is ValueCellFull!3009) mapDefault!11442)) b!331857))

(assert (= start!33460 b!331852))

(declare-fun m!336545 () Bool)

(assert (=> mapNonEmpty!11442 m!336545))

(declare-fun m!336547 () Bool)

(assert (=> start!33460 m!336547))

(declare-fun m!336549 () Bool)

(assert (=> start!33460 m!336549))

(declare-fun m!336551 () Bool)

(assert (=> start!33460 m!336551))

(declare-fun m!336553 () Bool)

(assert (=> b!331854 m!336553))

(declare-fun m!336555 () Bool)

(assert (=> b!331856 m!336555))

(check-sat tp_is_empty!6705 (not mapNonEmpty!11442) (not start!33460) (not b!331856) (not b!331854))
(check-sat)
