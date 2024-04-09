; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35914 () Bool)

(assert start!35914)

(declare-fun b!360822 () Bool)

(declare-fun e!220883 () Bool)

(declare-fun e!220882 () Bool)

(declare-fun mapRes!14025 () Bool)

(assert (=> b!360822 (= e!220883 (and e!220882 mapRes!14025))))

(declare-fun condMapEmpty!14025 () Bool)

(declare-datatypes ((V!12101 0))(
  ( (V!12102 (val!4216 Int)) )
))
(declare-datatypes ((ValueCell!3828 0))(
  ( (ValueCellFull!3828 (v!6406 V!12101)) (EmptyCell!3828) )
))
(declare-datatypes ((array!20209 0))(
  ( (array!20210 (arr!9594 (Array (_ BitVec 32) ValueCell!3828)) (size!9946 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20209)

(declare-fun mapDefault!14025 () ValueCell!3828)

(assert (=> b!360822 (= condMapEmpty!14025 (= (arr!9594 _values!1277) ((as const (Array (_ BitVec 32) ValueCell!3828)) mapDefault!14025)))))

(declare-fun mapIsEmpty!14025 () Bool)

(assert (=> mapIsEmpty!14025 mapRes!14025))

(declare-fun mapNonEmpty!14025 () Bool)

(declare-fun tp!28101 () Bool)

(declare-fun e!220885 () Bool)

(assert (=> mapNonEmpty!14025 (= mapRes!14025 (and tp!28101 e!220885))))

(declare-fun mapKey!14025 () (_ BitVec 32))

(declare-fun mapRest!14025 () (Array (_ BitVec 32) ValueCell!3828))

(declare-fun mapValue!14025 () ValueCell!3828)

(assert (=> mapNonEmpty!14025 (= (arr!9594 _values!1277) (store mapRest!14025 mapKey!14025 mapValue!14025))))

(declare-fun b!360824 () Bool)

(declare-fun tp_is_empty!8343 () Bool)

(assert (=> b!360824 (= e!220885 tp_is_empty!8343)))

(declare-datatypes ((array!20211 0))(
  ( (array!20212 (arr!9595 (Array (_ BitVec 32) (_ BitVec 64))) (size!9947 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20211)

(declare-fun b!360825 () Bool)

(declare-fun extraKeys!1198 () (_ BitVec 32))

(declare-fun e!220881 () Bool)

(declare-fun mask!1943 () (_ BitVec 32))

(assert (=> b!360825 (= e!220881 (and (= (size!9946 _values!1277) (bvadd #b00000000000000000000000000000001 mask!1943)) (= (size!9947 _keys!1541) (size!9946 _values!1277)) (bvsge mask!1943 #b00000000000000000000000000000000) (bvsge extraKeys!1198 #b00000000000000000000000000000000) (bvsle extraKeys!1198 #b00000000000000000000000000000011) (not (= (size!9947 _keys!1541) (bvadd #b00000000000000000000000000000001 mask!1943)))))))

(declare-fun b!360823 () Bool)

(assert (=> b!360823 (= e!220882 tp_is_empty!8343)))

(declare-fun res!200820 () Bool)

(assert (=> start!35914 (=> (not res!200820) (not e!220881))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35914 (= res!200820 (validMask!0 mask!1943))))

(assert (=> start!35914 e!220881))

(assert (=> start!35914 true))

(declare-fun array_inv!7054 (array!20209) Bool)

(assert (=> start!35914 (and (array_inv!7054 _values!1277) e!220883)))

(declare-fun array_inv!7055 (array!20211) Bool)

(assert (=> start!35914 (array_inv!7055 _keys!1541)))

(assert (= (and start!35914 res!200820) b!360825))

(assert (= (and b!360822 condMapEmpty!14025) mapIsEmpty!14025))

(assert (= (and b!360822 (not condMapEmpty!14025)) mapNonEmpty!14025))

(get-info :version)

(assert (= (and mapNonEmpty!14025 ((_ is ValueCellFull!3828) mapValue!14025)) b!360824))

(assert (= (and b!360822 ((_ is ValueCellFull!3828) mapDefault!14025)) b!360823))

(assert (= start!35914 b!360822))

(declare-fun m!357853 () Bool)

(assert (=> mapNonEmpty!14025 m!357853))

(declare-fun m!357855 () Bool)

(assert (=> start!35914 m!357855))

(declare-fun m!357857 () Bool)

(assert (=> start!35914 m!357857))

(declare-fun m!357859 () Bool)

(assert (=> start!35914 m!357859))

(check-sat (not start!35914) (not mapNonEmpty!14025) tp_is_empty!8343)
(check-sat)
