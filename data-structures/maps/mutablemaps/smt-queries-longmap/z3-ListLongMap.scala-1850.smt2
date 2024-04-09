; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33478 () Bool)

(assert start!33478)

(declare-fun b!332014 () Bool)

(declare-fun e!203850 () Bool)

(declare-fun tp_is_empty!6723 () Bool)

(assert (=> b!332014 (= e!203850 tp_is_empty!6723)))

(declare-fun b!332015 () Bool)

(declare-fun e!203846 () Bool)

(assert (=> b!332015 (= e!203846 false)))

(declare-fun lt!158940 () Bool)

(declare-datatypes ((array!17041 0))(
  ( (array!17042 (arr!8052 (Array (_ BitVec 32) (_ BitVec 64))) (size!8404 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17041)

(declare-datatypes ((List!4608 0))(
  ( (Nil!4605) (Cons!4604 (h!5460 (_ BitVec 64)) (t!9698 List!4608)) )
))
(declare-fun arrayNoDuplicates!0 (array!17041 (_ BitVec 32) List!4608) Bool)

(assert (=> b!332015 (= lt!158940 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4605))))

(declare-fun b!332017 () Bool)

(declare-fun e!203847 () Bool)

(assert (=> b!332017 (= e!203847 tp_is_empty!6723)))

(declare-fun b!332018 () Bool)

(declare-fun e!203848 () Bool)

(declare-fun mapRes!11469 () Bool)

(assert (=> b!332018 (= e!203848 (and e!203847 mapRes!11469))))

(declare-fun condMapEmpty!11469 () Bool)

(declare-datatypes ((V!9941 0))(
  ( (V!9942 (val!3406 Int)) )
))
(declare-datatypes ((ValueCell!3018 0))(
  ( (ValueCellFull!3018 (v!5561 V!9941)) (EmptyCell!3018) )
))
(declare-datatypes ((array!17043 0))(
  ( (array!17044 (arr!8053 (Array (_ BitVec 32) ValueCell!3018)) (size!8405 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17043)

(declare-fun mapDefault!11469 () ValueCell!3018)

(assert (=> b!332018 (= condMapEmpty!11469 (= (arr!8053 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3018)) mapDefault!11469)))))

(declare-fun b!332019 () Bool)

(declare-fun res!182977 () Bool)

(assert (=> b!332019 (=> (not res!182977) (not e!203846))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17041 (_ BitVec 32)) Bool)

(assert (=> b!332019 (= res!182977 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!11469 () Bool)

(declare-fun tp!23844 () Bool)

(assert (=> mapNonEmpty!11469 (= mapRes!11469 (and tp!23844 e!203850))))

(declare-fun mapKey!11469 () (_ BitVec 32))

(declare-fun mapValue!11469 () ValueCell!3018)

(declare-fun mapRest!11469 () (Array (_ BitVec 32) ValueCell!3018))

(assert (=> mapNonEmpty!11469 (= (arr!8053 _values!1525) (store mapRest!11469 mapKey!11469 mapValue!11469))))

(declare-fun mapIsEmpty!11469 () Bool)

(assert (=> mapIsEmpty!11469 mapRes!11469))

(declare-fun b!332016 () Bool)

(declare-fun res!182978 () Bool)

(assert (=> b!332016 (=> (not res!182978) (not e!203846))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!332016 (= res!182978 (and (= (size!8405 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8404 _keys!1895) (size!8405 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun res!182976 () Bool)

(assert (=> start!33478 (=> (not res!182976) (not e!203846))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33478 (= res!182976 (validMask!0 mask!2385))))

(assert (=> start!33478 e!203846))

(assert (=> start!33478 true))

(declare-fun array_inv!5986 (array!17043) Bool)

(assert (=> start!33478 (and (array_inv!5986 _values!1525) e!203848)))

(declare-fun array_inv!5987 (array!17041) Bool)

(assert (=> start!33478 (array_inv!5987 _keys!1895)))

(assert (= (and start!33478 res!182976) b!332016))

(assert (= (and b!332016 res!182978) b!332019))

(assert (= (and b!332019 res!182977) b!332015))

(assert (= (and b!332018 condMapEmpty!11469) mapIsEmpty!11469))

(assert (= (and b!332018 (not condMapEmpty!11469)) mapNonEmpty!11469))

(get-info :version)

(assert (= (and mapNonEmpty!11469 ((_ is ValueCellFull!3018) mapValue!11469)) b!332014))

(assert (= (and b!332018 ((_ is ValueCellFull!3018) mapDefault!11469)) b!332017))

(assert (= start!33478 b!332018))

(declare-fun m!336653 () Bool)

(assert (=> b!332015 m!336653))

(declare-fun m!336655 () Bool)

(assert (=> b!332019 m!336655))

(declare-fun m!336657 () Bool)

(assert (=> mapNonEmpty!11469 m!336657))

(declare-fun m!336659 () Bool)

(assert (=> start!33478 m!336659))

(declare-fun m!336661 () Bool)

(assert (=> start!33478 m!336661))

(declare-fun m!336663 () Bool)

(assert (=> start!33478 m!336663))

(check-sat (not mapNonEmpty!11469) (not b!332019) (not start!33478) (not b!332015) tp_is_empty!6723)
(check-sat)
