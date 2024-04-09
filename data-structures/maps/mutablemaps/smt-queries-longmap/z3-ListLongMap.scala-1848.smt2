; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33466 () Bool)

(assert start!33466)

(declare-fun b!331906 () Bool)

(declare-fun e!203759 () Bool)

(assert (=> b!331906 (= e!203759 false)))

(declare-fun lt!158922 () Bool)

(declare-datatypes ((array!17019 0))(
  ( (array!17020 (arr!8041 (Array (_ BitVec 32) (_ BitVec 64))) (size!8393 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17019)

(declare-datatypes ((List!4605 0))(
  ( (Nil!4602) (Cons!4601 (h!5457 (_ BitVec 64)) (t!9695 List!4605)) )
))
(declare-fun arrayNoDuplicates!0 (array!17019 (_ BitVec 32) List!4605) Bool)

(assert (=> b!331906 (= lt!158922 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4602))))

(declare-fun b!331907 () Bool)

(declare-fun res!182923 () Bool)

(assert (=> b!331907 (=> (not res!182923) (not e!203759))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17019 (_ BitVec 32)) Bool)

(assert (=> b!331907 (= res!182923 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!331908 () Bool)

(declare-fun res!182922 () Bool)

(assert (=> b!331908 (=> (not res!182922) (not e!203759))))

(declare-datatypes ((V!9925 0))(
  ( (V!9926 (val!3400 Int)) )
))
(declare-datatypes ((ValueCell!3012 0))(
  ( (ValueCellFull!3012 (v!5555 V!9925)) (EmptyCell!3012) )
))
(declare-datatypes ((array!17021 0))(
  ( (array!17022 (arr!8042 (Array (_ BitVec 32) ValueCell!3012)) (size!8394 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17021)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!331908 (= res!182922 (and (= (size!8394 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8393 _keys!1895) (size!8394 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun res!182924 () Bool)

(assert (=> start!33466 (=> (not res!182924) (not e!203759))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33466 (= res!182924 (validMask!0 mask!2385))))

(assert (=> start!33466 e!203759))

(assert (=> start!33466 true))

(declare-fun e!203756 () Bool)

(declare-fun array_inv!5976 (array!17021) Bool)

(assert (=> start!33466 (and (array_inv!5976 _values!1525) e!203756)))

(declare-fun array_inv!5977 (array!17019) Bool)

(assert (=> start!33466 (array_inv!5977 _keys!1895)))

(declare-fun mapNonEmpty!11451 () Bool)

(declare-fun mapRes!11451 () Bool)

(declare-fun tp!23826 () Bool)

(declare-fun e!203757 () Bool)

(assert (=> mapNonEmpty!11451 (= mapRes!11451 (and tp!23826 e!203757))))

(declare-fun mapRest!11451 () (Array (_ BitVec 32) ValueCell!3012))

(declare-fun mapValue!11451 () ValueCell!3012)

(declare-fun mapKey!11451 () (_ BitVec 32))

(assert (=> mapNonEmpty!11451 (= (arr!8042 _values!1525) (store mapRest!11451 mapKey!11451 mapValue!11451))))

(declare-fun mapIsEmpty!11451 () Bool)

(assert (=> mapIsEmpty!11451 mapRes!11451))

(declare-fun b!331909 () Bool)

(declare-fun e!203758 () Bool)

(declare-fun tp_is_empty!6711 () Bool)

(assert (=> b!331909 (= e!203758 tp_is_empty!6711)))

(declare-fun b!331910 () Bool)

(assert (=> b!331910 (= e!203756 (and e!203758 mapRes!11451))))

(declare-fun condMapEmpty!11451 () Bool)

(declare-fun mapDefault!11451 () ValueCell!3012)

(assert (=> b!331910 (= condMapEmpty!11451 (= (arr!8042 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3012)) mapDefault!11451)))))

(declare-fun b!331911 () Bool)

(assert (=> b!331911 (= e!203757 tp_is_empty!6711)))

(assert (= (and start!33466 res!182924) b!331908))

(assert (= (and b!331908 res!182922) b!331907))

(assert (= (and b!331907 res!182923) b!331906))

(assert (= (and b!331910 condMapEmpty!11451) mapIsEmpty!11451))

(assert (= (and b!331910 (not condMapEmpty!11451)) mapNonEmpty!11451))

(get-info :version)

(assert (= (and mapNonEmpty!11451 ((_ is ValueCellFull!3012) mapValue!11451)) b!331911))

(assert (= (and b!331910 ((_ is ValueCellFull!3012) mapDefault!11451)) b!331909))

(assert (= start!33466 b!331910))

(declare-fun m!336581 () Bool)

(assert (=> b!331906 m!336581))

(declare-fun m!336583 () Bool)

(assert (=> b!331907 m!336583))

(declare-fun m!336585 () Bool)

(assert (=> start!33466 m!336585))

(declare-fun m!336587 () Bool)

(assert (=> start!33466 m!336587))

(declare-fun m!336589 () Bool)

(assert (=> start!33466 m!336589))

(declare-fun m!336591 () Bool)

(assert (=> mapNonEmpty!11451 m!336591))

(check-sat (not mapNonEmpty!11451) (not b!331906) tp_is_empty!6711 (not start!33466) (not b!331907))
(check-sat)
