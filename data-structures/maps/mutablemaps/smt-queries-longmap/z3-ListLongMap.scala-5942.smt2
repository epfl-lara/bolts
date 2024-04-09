; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77498 () Bool)

(assert start!77498)

(declare-fun b!902662 () Bool)

(declare-fun res!609214 () Bool)

(declare-fun e!505661 () Bool)

(assert (=> b!902662 (=> (not res!609214) (not e!505661))))

(declare-datatypes ((V!29609 0))(
  ( (V!29610 (val!9292 Int)) )
))
(declare-datatypes ((ValueCell!8760 0))(
  ( (ValueCellFull!8760 (v!11797 V!29609)) (EmptyCell!8760) )
))
(declare-datatypes ((array!53016 0))(
  ( (array!53017 (arr!25464 (Array (_ BitVec 32) ValueCell!8760)) (size!25924 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53016)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!53018 0))(
  ( (array!53019 (arr!25465 (Array (_ BitVec 32) (_ BitVec 64))) (size!25925 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53018)

(assert (=> b!902662 (= res!609214 (and (= (size!25924 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25925 _keys!1386) (size!25924 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!902663 () Bool)

(declare-fun e!505657 () Bool)

(declare-fun tp_is_empty!18483 () Bool)

(assert (=> b!902663 (= e!505657 tp_is_empty!18483)))

(declare-fun b!902664 () Bool)

(declare-fun e!505658 () Bool)

(declare-fun mapRes!29434 () Bool)

(assert (=> b!902664 (= e!505658 (and e!505657 mapRes!29434))))

(declare-fun condMapEmpty!29434 () Bool)

(declare-fun mapDefault!29434 () ValueCell!8760)

(assert (=> b!902664 (= condMapEmpty!29434 (= (arr!25464 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8760)) mapDefault!29434)))))

(declare-fun b!902665 () Bool)

(declare-fun res!609215 () Bool)

(assert (=> b!902665 (=> (not res!609215) (not e!505661))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53018 (_ BitVec 32)) Bool)

(assert (=> b!902665 (= res!609215 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapIsEmpty!29434 () Bool)

(assert (=> mapIsEmpty!29434 mapRes!29434))

(declare-fun b!902666 () Bool)

(assert (=> b!902666 (= e!505661 false)))

(declare-fun lt!407864 () Bool)

(declare-datatypes ((List!17974 0))(
  ( (Nil!17971) (Cons!17970 (h!19116 (_ BitVec 64)) (t!25365 List!17974)) )
))
(declare-fun arrayNoDuplicates!0 (array!53018 (_ BitVec 32) List!17974) Bool)

(assert (=> b!902666 (= lt!407864 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!17971))))

(declare-fun mapNonEmpty!29434 () Bool)

(declare-fun tp!56494 () Bool)

(declare-fun e!505659 () Bool)

(assert (=> mapNonEmpty!29434 (= mapRes!29434 (and tp!56494 e!505659))))

(declare-fun mapKey!29434 () (_ BitVec 32))

(declare-fun mapRest!29434 () (Array (_ BitVec 32) ValueCell!8760))

(declare-fun mapValue!29434 () ValueCell!8760)

(assert (=> mapNonEmpty!29434 (= (arr!25464 _values!1152) (store mapRest!29434 mapKey!29434 mapValue!29434))))

(declare-fun res!609216 () Bool)

(assert (=> start!77498 (=> (not res!609216) (not e!505661))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77498 (= res!609216 (validMask!0 mask!1756))))

(assert (=> start!77498 e!505661))

(assert (=> start!77498 true))

(declare-fun array_inv!19938 (array!53016) Bool)

(assert (=> start!77498 (and (array_inv!19938 _values!1152) e!505658)))

(declare-fun array_inv!19939 (array!53018) Bool)

(assert (=> start!77498 (array_inv!19939 _keys!1386)))

(declare-fun b!902667 () Bool)

(assert (=> b!902667 (= e!505659 tp_is_empty!18483)))

(assert (= (and start!77498 res!609216) b!902662))

(assert (= (and b!902662 res!609214) b!902665))

(assert (= (and b!902665 res!609215) b!902666))

(assert (= (and b!902664 condMapEmpty!29434) mapIsEmpty!29434))

(assert (= (and b!902664 (not condMapEmpty!29434)) mapNonEmpty!29434))

(get-info :version)

(assert (= (and mapNonEmpty!29434 ((_ is ValueCellFull!8760) mapValue!29434)) b!902667))

(assert (= (and b!902664 ((_ is ValueCellFull!8760) mapDefault!29434)) b!902663))

(assert (= start!77498 b!902664))

(declare-fun m!838643 () Bool)

(assert (=> b!902665 m!838643))

(declare-fun m!838645 () Bool)

(assert (=> b!902666 m!838645))

(declare-fun m!838647 () Bool)

(assert (=> mapNonEmpty!29434 m!838647))

(declare-fun m!838649 () Bool)

(assert (=> start!77498 m!838649))

(declare-fun m!838651 () Bool)

(assert (=> start!77498 m!838651))

(declare-fun m!838653 () Bool)

(assert (=> start!77498 m!838653))

(check-sat (not b!902666) (not b!902665) (not start!77498) tp_is_empty!18483 (not mapNonEmpty!29434))
(check-sat)
