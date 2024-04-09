; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33532 () Bool)

(assert start!33532)

(declare-fun b_free!6813 () Bool)

(declare-fun b_next!6813 () Bool)

(assert (=> start!33532 (= b_free!6813 (not b_next!6813))))

(declare-fun tp!23934 () Bool)

(declare-fun b_and!14005 () Bool)

(assert (=> start!33532 (= tp!23934 b_and!14005)))

(declare-fun b!332496 () Bool)

(declare-fun e!204189 () Bool)

(declare-fun tp_is_empty!6765 () Bool)

(assert (=> b!332496 (= e!204189 tp_is_empty!6765)))

(declare-fun b!332497 () Bool)

(declare-fun e!204188 () Bool)

(declare-fun mapRes!11535 () Bool)

(assert (=> b!332497 (= e!204188 (and e!204189 mapRes!11535))))

(declare-fun condMapEmpty!11535 () Bool)

(declare-datatypes ((V!9997 0))(
  ( (V!9998 (val!3427 Int)) )
))
(declare-datatypes ((ValueCell!3039 0))(
  ( (ValueCellFull!3039 (v!5582 V!9997)) (EmptyCell!3039) )
))
(declare-datatypes ((array!17123 0))(
  ( (array!17124 (arr!8092 (Array (_ BitVec 32) ValueCell!3039)) (size!8444 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17123)

(declare-fun mapDefault!11535 () ValueCell!3039)

(assert (=> b!332497 (= condMapEmpty!11535 (= (arr!8092 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3039)) mapDefault!11535)))))

(declare-fun b!332498 () Bool)

(declare-fun res!183252 () Bool)

(declare-fun e!204190 () Bool)

(assert (=> b!332498 (=> (not res!183252) (not e!204190))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((array!17125 0))(
  ( (array!17126 (arr!8093 (Array (_ BitVec 32) (_ BitVec 64))) (size!8445 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17125)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!332498 (= res!183252 (and (= (size!8444 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8445 _keys!1895) (size!8444 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!332499 () Bool)

(declare-fun res!183251 () Bool)

(assert (=> b!332499 (=> (not res!183251) (not e!204190))))

(declare-datatypes ((List!4625 0))(
  ( (Nil!4622) (Cons!4621 (h!5477 (_ BitVec 64)) (t!9715 List!4625)) )
))
(declare-fun arrayNoDuplicates!0 (array!17125 (_ BitVec 32) List!4625) Bool)

(assert (=> b!332499 (= res!183251 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4622))))

(declare-fun res!183249 () Bool)

(assert (=> start!33532 (=> (not res!183249) (not e!204190))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33532 (= res!183249 (validMask!0 mask!2385))))

(assert (=> start!33532 e!204190))

(assert (=> start!33532 true))

(assert (=> start!33532 tp_is_empty!6765))

(assert (=> start!33532 tp!23934))

(declare-fun array_inv!6016 (array!17123) Bool)

(assert (=> start!33532 (and (array_inv!6016 _values!1525) e!204188)))

(declare-fun array_inv!6017 (array!17125) Bool)

(assert (=> start!33532 (array_inv!6017 _keys!1895)))

(declare-fun b!332500 () Bool)

(declare-fun res!183250 () Bool)

(assert (=> b!332500 (=> (not res!183250) (not e!204190))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!332500 (= res!183250 (validKeyInArray!0 k0!1348))))

(declare-fun mapNonEmpty!11535 () Bool)

(declare-fun tp!23933 () Bool)

(declare-fun e!204191 () Bool)

(assert (=> mapNonEmpty!11535 (= mapRes!11535 (and tp!23933 e!204191))))

(declare-fun mapValue!11535 () ValueCell!3039)

(declare-fun mapRest!11535 () (Array (_ BitVec 32) ValueCell!3039))

(declare-fun mapKey!11535 () (_ BitVec 32))

(assert (=> mapNonEmpty!11535 (= (arr!8092 _values!1525) (store mapRest!11535 mapKey!11535 mapValue!11535))))

(declare-fun mapIsEmpty!11535 () Bool)

(assert (=> mapIsEmpty!11535 mapRes!11535))

(declare-fun b!332501 () Bool)

(assert (=> b!332501 (= e!204191 tp_is_empty!6765)))

(declare-fun b!332502 () Bool)

(assert (=> b!332502 (= e!204190 (not (= (size!8445 _keys!1895) (bvadd #b00000000000000000000000000000001 mask!2385))))))

(declare-fun b!332503 () Bool)

(declare-fun res!183254 () Bool)

(assert (=> b!332503 (=> (not res!183254) (not e!204190))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17125 (_ BitVec 32)) Bool)

(assert (=> b!332503 (= res!183254 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!332504 () Bool)

(declare-fun res!183253 () Bool)

(assert (=> b!332504 (=> (not res!183253) (not e!204190))))

(declare-fun zeroValue!1467 () V!9997)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!9997)

(declare-datatypes ((tuple2!4986 0))(
  ( (tuple2!4987 (_1!2503 (_ BitVec 64)) (_2!2503 V!9997)) )
))
(declare-datatypes ((List!4626 0))(
  ( (Nil!4623) (Cons!4622 (h!5478 tuple2!4986) (t!9716 List!4626)) )
))
(declare-datatypes ((ListLongMap!3913 0))(
  ( (ListLongMap!3914 (toList!1972 List!4626)) )
))
(declare-fun contains!2009 (ListLongMap!3913 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1495 (array!17125 array!17123 (_ BitVec 32) (_ BitVec 32) V!9997 V!9997 (_ BitVec 32) Int) ListLongMap!3913)

(assert (=> b!332504 (= res!183253 (not (contains!2009 (getCurrentListMap!1495 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(assert (= (and start!33532 res!183249) b!332498))

(assert (= (and b!332498 res!183252) b!332503))

(assert (= (and b!332503 res!183254) b!332499))

(assert (= (and b!332499 res!183251) b!332500))

(assert (= (and b!332500 res!183250) b!332504))

(assert (= (and b!332504 res!183253) b!332502))

(assert (= (and b!332497 condMapEmpty!11535) mapIsEmpty!11535))

(assert (= (and b!332497 (not condMapEmpty!11535)) mapNonEmpty!11535))

(get-info :version)

(assert (= (and mapNonEmpty!11535 ((_ is ValueCellFull!3039) mapValue!11535)) b!332501))

(assert (= (and b!332497 ((_ is ValueCellFull!3039) mapDefault!11535)) b!332496))

(assert (= start!33532 b!332497))

(declare-fun m!336971 () Bool)

(assert (=> start!33532 m!336971))

(declare-fun m!336973 () Bool)

(assert (=> start!33532 m!336973))

(declare-fun m!336975 () Bool)

(assert (=> start!33532 m!336975))

(declare-fun m!336977 () Bool)

(assert (=> b!332500 m!336977))

(declare-fun m!336979 () Bool)

(assert (=> b!332503 m!336979))

(declare-fun m!336981 () Bool)

(assert (=> b!332504 m!336981))

(assert (=> b!332504 m!336981))

(declare-fun m!336983 () Bool)

(assert (=> b!332504 m!336983))

(declare-fun m!336985 () Bool)

(assert (=> b!332499 m!336985))

(declare-fun m!336987 () Bool)

(assert (=> mapNonEmpty!11535 m!336987))

(check-sat (not b!332503) (not start!33532) b_and!14005 tp_is_empty!6765 (not b!332499) (not b!332504) (not b!332500) (not mapNonEmpty!11535) (not b_next!6813))
(check-sat b_and!14005 (not b_next!6813))
